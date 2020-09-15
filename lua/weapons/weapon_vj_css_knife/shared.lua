if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_css_base"
SWEP.PrintName					= "Knife"
SWEP.Author 					= "Cpt. Hazama"

SWEP.MadeForNPCsOnly 			= true
SWEP.NPC_NextPrimaryFire 		= 3.5 -- Next time it can use primary fire
SWEP.NPC_TimeUntilFire	 		= 0 -- How much time until the bullet/projectile is fired?

SWEP.WorldModel					= "models/weapons/w_stunbaton.mdl"
SWEP.HoldType 					= "knife"
SWEP.Spawnable					= false
SWEP.AdminSpawnable				= false

SWEP.Primary.ClipSize			= 999999999 -- Max amount of bullets per clip
SWEP.Primary.DisableBulletCode	= true -- The bullet won't spawn, this can be used when creating a projectile-based weapon
SWEP.PrimaryEffects_MuzzleFlash = false
SWEP.PrimaryEffects_SpawnShells = false
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnInitialize()
	if (CLIENT) then return end
	self.OldFireDistance = 3000
	self.Old_AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK1}
	self.Old_HasShootWhileMoving = self.Owner.HasShootWhileMoving
	self.Old_MoveRandomlyWhenShooting = self.Owner.MoveRandomlyWhenShooting
	if IsValid(self.Owner) && self.Owner:IsNPC() then
		self.OldFireDistance = self.Owner.Weapon_FiringDistanceFar
		-- self.Owner.Weapon_FiringDistanceFar = self.Owner.MeleeAttackDistance
		self.Owner.Weapon_FiringDistanceFar = 0
		self.Owner.AnimTbl_WeaponAttack = {ACT_MELEE_ATTACK_SWING}
		self.Owner.DefaultSoundTbl_MeleeAttack = {"weapons/stunstick/stunstick_fleshhit1.wav","weapons/stunstick/stunstick_fleshhit2.wav"}
		self.Owner.HasShootWhileMoving = false
		self.Owner.MoveRandomlyWhenShooting = false
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnRemove()
	if IsValid(self.Owner) && self.Owner:IsNPC() then
		self.Owner.Weapon_FiringDistanceFar = self.OldFireDistance
		self.Owner.AnimTbl_WeaponAttack = self.Old_AnimTbl_WeaponAttack
		self.Owner.HasShootWhileMoving = self.Old_HasShootWhileMoving
		self.Owner.MoveRandomlyWhenShooting = self.Old_MoveRandomlyWhenShooting
		self.Owner.DefaultSoundTbl_MeleeAttack = {"physics/body/body_medium_impact_hard1.wav","physics/body/body_medium_impact_hard2.wav","physics/body/body_medium_impact_hard3.wav","physics/body/body_medium_impact_hard4.wav","physics/body/body_medium_impact_hard5.wav","physics/body/body_medium_impact_hard6.wav"}
	end
end