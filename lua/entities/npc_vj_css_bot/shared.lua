ENT.Base 			= "npc_vj_human_base"
ENT.Type 			= "ai"
ENT.PrintName 		= ""
ENT.Author 			= ""
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= ""

ENT.VJ_CSSBot = true

function ENT:SetupDataTables()
	self:NetworkVar("Bool",0,"Speaking")
end

if CLIENT then
    local speakIcon = Material("voice/speaker4")
    local vecOffset = Vector(0,0,24)
    
    function ENT:CustomOnDraw()
        local isSpeaking = self:GetSpeaking()
        if isSpeaking then
            local pos = self:GetBonePosition(self:LookupBone("ValveBiped.Bip01_Head1"))
            local ang = EyeAngles()
            ang = Angle(0,ang.y,0)
            ang:RotateAroundAxis(ang:Up(),-90)
            ang:RotateAroundAxis(ang:Forward(),90)
            cam.Start3D2D(pos +vecOffset +self:GetRight() *2,ang,0.1)
                surface.SetDrawColor(Color(255,183,0,255))
                surface.SetMaterial(speakIcon)
                surface.DrawTexturedRect(0,0,128,128)
            cam.End3D2D()
        end
    end
end