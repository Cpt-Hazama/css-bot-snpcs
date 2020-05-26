/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end

ENT.Type 			= "anim"
ENT.Base 			= "obj_vj_projectile_base"
ENT.PrintName		= "Flash Bang"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Information		= "Projectiles for my addons"
ENT.Category		= "VJ Base"

ENT.Spawnable = false
ENT.AdminOnly = false
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if !SERVER then return end

ENT.Model = {"models/weapons/w_eq_flashbang_thrown.mdl"} -- The models it should spawn with | Picks a random one from the table
ENT.MoveCollideType = nil -- Move type | Some examples: MOVECOLLIDE_FLY_BOUNCE, MOVECOLLIDE_FLY_SLIDE
ENT.CollisionGroupType = nil -- Collision type, recommended to keep it as it is
ENT.SolidType = SOLID_VPHYSICS -- Solid type, recommended to keep it as it is
ENT.RemoveOnHit = false -- Should it remove itself when it touches something? | It will run the hit sound, place a decal, etc.
ENT.SoundTbl_OnCollide = {"weapons/flashbang/grenade_hit1.wav"}

-- Custom
ENT.FussTime = 3
ENT.TimeSinceSpawn = 0
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:EnableGravity(true)
	phys:SetBuoyancyRatio(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	timer.Simple(self.FussTime,function() if IsValid(self) then self:DeathEffects() end end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	self.TimeSinceSpawn = self.TimeSinceSpawn + 0.2
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage(dmginfo)
	if IsValid(self:GetPhysicsObject()) then
		self:GetPhysicsObject():AddVelocity(dmginfo:GetDamageForce() * 0.1)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPhysicsCollide(data,phys)
	getvelocity = phys:GetVelocity()
	velocityspeed = getvelocity:Length()
	if velocityspeed > 500 then -- Or else it will go flying!
		phys:SetVelocity(getvelocity * 0.9)
	end
	
	if velocityspeed > 100 then -- If the grenade is going faster than 100, then play the touch sound
		self:OnCollideSoundCode()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DeathEffects()
	self.ExplosionLight1 = ents.Create("light_dynamic")
	self.ExplosionLight1:SetKeyValue("brightness","15")
	self.ExplosionLight1:SetKeyValue("distance","500")
	self.ExplosionLight1:SetLocalPos(self:GetPos())
	self.ExplosionLight1:SetLocalAngles(self:GetAngles())
	self.ExplosionLight1:Fire("Color","255 255 255")
	self.ExplosionLight1:SetParent(self)
	self.ExplosionLight1:Spawn()
	self.ExplosionLight1:Activate()
	self.ExplosionLight1:Fire("TurnOn","",0)
	self:DeleteOnRemove(self.ExplosionLight1)
	
	VJ_EmitSound(self,"weapons/flashbang/flashbang_explode2.wav",80,100)
	
	for _,v in ipairs(ents.FindInSphere(self:GetPos(),700)) do
		if v:IsNPC() or v:IsPlayer() && GetConVarNumber("ai_ignoreplayers") == 0 then
			if v:IsPlayer() then
				umsg.Start("VJ_CSS_ScreenFadeFX",v)
					umsg.Entity(v)
				umsg.End()
				v.VJ_FlashRing = CreateSound(v,"flashring.wav")
				v.VJ_FlashRing:SetSoundLevel(0)
				v.VJ_FlashRing:Play()
				v.VJ_FlashRing:ChangeVolume(50)
				timer.Simple(5.25,function()
					if IsValid(v) then
						v.VJ_FlashRing:ChangeVolume(35)
					end
				end)
				timer.Simple(5.75,function()
					if IsValid(v) then
						v.VJ_FlashRing:ChangeVolume(25)
					end
				end)
				timer.Simple(6,function()
					if IsValid(v) then
						v.VJ_FlashRing:Stop()
					end
				end)
			elseif v:IsNPC() then
				v:SetEnemy(NULL)
				v:ClearSchedule()
				if v.IsVJBaseSNPC then
					v.DisableFindEnemy = true
					v:ResetEnemy()
					timer.Simple(5,function()
						if IsValid(v) && v.DisableFindEnemy then
							v.DisableFindEnemy = false
						end
					end)
				end
			end
		end
	end
	
	self:SetDeathVariablesTrue(nil,nil,false)
	timer.Simple(0.2,function() SafeRemoveEntity(self) end)
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/