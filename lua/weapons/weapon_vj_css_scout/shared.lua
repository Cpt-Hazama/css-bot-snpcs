if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_base"
SWEP.PrintName							= "Scout"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""

SWEP.WorldModel							= "models/weapons/w_snip_scout.mdl"
SWEP.HoldType 							= "ar2"
SWEP.Spawnable							= false
SWEP.AdminSpawnable						= false

SWEP.NPC_NextPrimaryFire = 1.7
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}
SWEP.NPC_ExtraFireSound = {"weapons/scout/scout_bolt.wav"} -- Plays an extra sound after it fires (Example: Bolt action sound)
SWEP.NPC_ExtraFireSoundTime = 0.5 -- How much time until it plays the sound (After Firing)?

SWEP.Primary.Sound						= {"weapons/scout/scout_fire-1.wav"}
SWEP.Primary.Damage						= 75 /2
SWEP.Primary.ClipSize					= 10

SWEP.PrimaryEffects_MuzzleAttachment 	= 1
SWEP.PrimaryEffects_SpawnShells 		= true
SWEP.PrimaryEffects_ShellAttachment 	= 2
SWEP.PrimaryEffects_ShellType = "VJ_Weapon_RifleShell1"

SWEP.Primary.Force						= 5
SWEP.Primary.Ammo						= "SMG1"
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnFireAnimationEvent(pos,ang,event,options)
	if event == 5001 then return true end
end