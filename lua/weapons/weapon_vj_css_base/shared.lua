if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
// Welcome to laziness 101, today we will be creating this base file so I don't have to apply the same code to every weapon in the pack :)
SWEP.Base 								= "weapon_vj_base"
SWEP.Spawnable							= false
SWEP.AdminSpawnable						= false
SWEP.Category 							= "VJ Base - Counter-Strike: Source"
if (CLIENT) then
	SWEP.Slot							= 2
	SWEP.SlotPos						= 4
	SWEP.UseHands						= true
end

-- SWEP.Primary.Delay						= 0.35
-- SWEP.Automatic 							= false
-- SWEP.ViewModel							= "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.Reload_TimeUntilFinished 			= false

SWEP.Primary.Ammo						= "SMG1"
SWEP.Primary.PlayerDamage = "Double"
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnFireAnimationEvent(pos,ang,event,options)
	if event == 5001 then return true end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:Zoom(lvl)
	if self:GetOwner():IsNPC() then return end
	local calcLevel = self:GetZoomLevel() + 1 -- Calculate the new level
	local newLevel = (calcLevel > 2 and 0) or calcLevel -- The new level
	if lvl then
		newLevel = lvl
	end
	self:SetZoomLevel(newLevel)
	self:GetOwner():SetFOV((newLevel == 1) && 25 or (newLevel == 2) && 10 or 40, 0.5) -- Set the new FOV
	self:EmitSound(newLevel > 0 && "weapons/sniper/sniper_zoomin.wav" or "weapons/sniper/sniper_zoomout.wav", 65, 100)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:PrimaryAttackEffects()
	local owner = self:GetOwner()
	-- owner:RemoveAllGestures()
	-- owner:VJ_AddLayeredAnimation(owner.AnimationParameters.Shoot,true,2)

	if self:CustomOnPrimaryAttackEffects() != true or self.IsMeleeWeapon == true then return end

	if self.PrimaryEffects_MuzzleFlash == true then
		local muzzleattach = self.PrimaryEffects_MuzzleAttachment
		if isnumber(muzzleattach) == false then muzzleattach = self:LookupAttachment(muzzleattach) end
		local vjeffectmuz = EffectData()
		vjeffectmuz:SetOrigin(owner:GetShootPos())
		vjeffectmuz:SetEntity(self)
		vjeffectmuz:SetStart(owner:GetShootPos())
		vjeffectmuz:SetNormal(owner:GetAimVector())
		vjeffectmuz:SetAttachment(muzzleattach)
		util.Effect("VJ_CSS_Muzzle",vjeffectmuz)
	end

	if SERVER && self.PrimaryEffects_SpawnDynamicLight == true && GetConVarNumber("vj_wep_nomuszzleflash_dynamiclight") == 0 then
		local FireLight1 = ents.Create("light_dynamic")
		FireLight1:SetKeyValue("brightness", self.PrimaryEffects_DynamicLightBrightness)
		FireLight1:SetKeyValue("distance", self.PrimaryEffects_DynamicLightDistance)
		if owner:IsPlayer() then FireLight1:SetLocalPos(owner:GetShootPos() +self:GetForward()*40 + self:GetUp()*-10) else FireLight1:SetLocalPos(self:GetNWVector("VJ_CurBulletPos")) end
		FireLight1:SetLocalAngles(self:GetAngles())
		FireLight1:Fire("Color", self.PrimaryEffects_DynamicLightColor.r.." "..self.PrimaryEffects_DynamicLightColor.g.." "..self.PrimaryEffects_DynamicLightColor.b)
		//FireLight1:SetParent(self)
		FireLight1:Spawn()
		FireLight1:Activate()
		FireLight1:Fire("TurnOn","",0)
		FireLight1:Fire("Kill","",0.07)
		self:DeleteOnRemove(FireLight1)
	end

	if self.PrimaryEffects_SpawnShells == true && !owner:IsPlayer() && GetConVarNumber("vj_wep_nobulletshells") == 0 then
		local shellattach = self.PrimaryEffects_ShellAttachment
		if isnumber(shellattach) == false then shellattach = self:LookupAttachment(shellattach) end
		local vjeffect = EffectData()
		vjeffect:SetEntity(self)
		vjeffect:SetOrigin(owner:GetShootPos())
		vjeffect:SetNormal(owner:GetAimVector())
		vjeffect:SetAttachment(shellattach)
		util.Effect(self.PrimaryEffects_ShellType,vjeffect)
	end
end