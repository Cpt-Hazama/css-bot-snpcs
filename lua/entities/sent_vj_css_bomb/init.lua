if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
AddCSLuaFile("shared.lua")
include("shared.lua")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
	self:SetModel("models/weapons/w_c4_planted.mdl")
	self:SetSolid(SOLID_OBB)
	-- self:SetCollisionGroup(COLLISION_GROUP_NONE)

	self.Exploded = false
	self.NextExplodeT = CurTime() +45
	self.Diffused = false
	self.Diffuser = NULL
	self.DiffuseAmount = 0
	self.DefuseDelay = 0
	self.NextBeepT = 0
	self:NWSound("radio/bombpl.wav")
	VJ_EmitSound(self,"weapons/c4/c4_plant.wav",70)
	self:SetNWBool("Diffused",false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Use(v)
	if !IsValid(self.Diffuser) && v:IsPlayer() then
		self.Diffuser = v
		v:ChatPrint("Defusing the bomb, stay close to the bomb or you will stop defusing it!")
		VJ_EmitSound(v,"weapons/c4/c4_disarm.wav",70)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SendWin(team)
	local ent = self:VJ_CSS_ModeEntity()
	if IsValid(ent) then
		ent:Winner(team)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:NWSound(snd)
	for _,v in pairs(player.GetAll()) do
		net.Start("vj_css_csound")
			net.WriteEntity(v)
			net.WriteString(snd)
		net.Send(v)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnDiffused()
	self:NWSound("radio/bombdef.wav")
	VJ_EmitSound(self,"buttons/bell1.wav",65)
	self:SetNWBool("Diffused",true)
	timer.Simple(5,function()
		self:SendWin(1)
		SafeRemoveEntity(self)
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Explode()
	self:SendWin(2)
	VJ_EmitSound(self,"weapons/c4/c4_explode1.wav",120)
	VJ_EmitSound(self,{"weapons/c4/c4_exp_deb1.wav","weapons/c4/c4_exp_deb2.wav"},100)
	for i = 1,math.random(4,10) do
		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos() +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(-50,300)))
		util.Effect("VJ_Medium_Explosion1",effectdata)
	end
	ParticleEffect("vj_explosion2",self:GetPos(),Angle(0,0,0),nil)
	util.VJ_SphereDamage(self,self,self:GetPos(),1000,1000,DMG_BLAST,false,true,{DisableVisibilityCheck=true,Force=500,DamageAttacker=true})
	self:Remove()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Think()
	if CurTime() >= self.NextExplodeT && !self.Exploded then
		self:Explode()
	end
	
	if CurTime() >= self.NextBeepT then
		if self.NextExplodeT > CurTime() +100 then return end
		VJ_EmitSound(self,"weapons/c4/c4_beep1.wav",75)
		self.NextBeepT = CurTime() +1
	end
	
	if self.DiffuseAmount < 1 then
		if IsValid(self.Diffuser) then
			if self.Diffuser:GetPos():Distance(self:GetPos()) <= 120 && (self.NextExplodeT -CurTime()) > 1 then
				if CurTime() > self.DefuseDelay then
					self.DiffuseAmount = math.Clamp(self.DiffuseAmount +0.02,0,1)
					self.DefuseDelay = CurTime() +0.1
				end
			end
			if self.Diffuser:GetPos():Distance(self:GetPos()) > 120 then
				self.Diffuser = NULL
			end
		end
	else
		if !self.Diffused then
			self.Diffused = true
			self:OnDiffused()
		end
		self.NextExplodeT = CurTime() +110
	end

	self:NextThink(CurTime())
	return true
end