/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end

ENT.Type 			= "anim"
ENT.Base 			= "obj_vj_projectile_base"
ENT.PrintName		= "Smoke Grenade"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Information		= "Projectiles for my addons"
ENT.Category		= "VJ Base"

ENT.Spawnable = false
ENT.AdminOnly = false
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if !SERVER then return end

ENT.Model = {"models/weapons/w_eq_smokegrenade_thrown.mdl"} -- The models it should spawn with | Picks a random one from the table
ENT.MoveCollideType = nil -- Move type | Some examples: MOVECOLLIDE_FLY_BOUNCE, MOVECOLLIDE_FLY_SLIDE
ENT.CollisionGroupType = nil -- Collision type, recommended to keep it as it is
ENT.SolidType = SOLID_VPHYSICS -- Solid type, recommended to keep it as it is
ENT.RemoveOnHit = false -- Should it remove itself when it touches something? | It will run the hit sound, place a decal, etc.
ENT.DoesRadiusDamage = false -- Should it do a blast damage when it hits something?
ENT.SoundTbl_OnCollide = {"weapons/smokegrenade/grenade_hit1.wav"}

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
	self.TimeSinceSpawn = self.TimeSinceSpawn +0.2
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage(dmginfo)
	if IsValid(self:GetPhysicsObject()) then
		self:GetPhysicsObject():AddVelocity(dmginfo:GetDamageForce() *0.1)
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
	local function SmokeCode(self)
		for i = 1,math.random(2,4) do
			local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos() +Vector(math.Rand(-20,20),math.Rand(-20,20),math.Rand(-20,20)))
			util.Effect("VJ_CSS_Smoke",effectdata)
		end
	end

	VJ_EmitSound(self,"weapons/smokegrenade/sg_explode.wav",80,100)

	for i = 1,80 do
		timer.Simple(i *0.25,function()
			if IsValid(self) then
				SmokeCode(self)
			end
		end)
	end

	self:SetDeathVariablesTrue(nil,nil,false)
	timer.Simple(28,function() SafeRemoveEntity(self) end)
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/