if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end

ENT.Base 			= "base_gmodentity"
ENT.Type 			= "anim"
ENT.PrintName 		= ""
ENT.Author 			= ""
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= ""
ENT.Instructions 	= ""
-- ENT.Category		= "VJ Base"

ENT.Spawnable = false
ENT.AdminOnly = false
ENT.AutomaticFrameAdvance = true

ENT.CountDown = 45
ENT.NextT = CurTime() +1
---------------------------------------------------------------------------------------------------------------------------------------------
if (CLIENT) then
	function ENT:Draw()
		self:DrawModel()

		local ang = self:GetAngles()
		local rot = Vector(0,270,0)
		ang:RotateAroundAxis(ang:Right(),rot.x)
		ang:RotateAroundAxis(ang:Up(),rot.y)
		ang:RotateAroundAxis(ang:Forward(),rot.z)

		local TargetPos = self:GetPos() +self:GetUp() *9
		local m,s = self:FormatTime(self.CountDown)
		self.Text = !self:Diffused() && string.format("%02d",m) .. ":" .. string.format("%02d",s) or "- - : - -"

		cam.Start3D2D(TargetPos,ang,0.15)
			draw.SimpleText(self.Text,"Default",31,-22,Color(255,0,0,255),1,1)
		cam.End3D2D()
	end

	function ENT:FormatTime(seconds)
		local m = seconds %604800 %86400 %3600 /60
		local s = seconds %604800 %86400 %3600 %60
		return math.floor(m),math.floor(s)
	end
	
	function ENT:Diffused()
		return self:GetNWBool("Diffused")
	end
	
	function ENT:DrawTranslucent()
		self:Draw()
	end
	
	function ENT:Think()
		if self:Diffused() then return end
		if CurTime() > self.NextT then
			self.CountDown = math.Clamp(self.CountDown -1,0,45)
			self.NextT = CurTime() +1
		end
	end
end
