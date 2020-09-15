if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_css_base"
SWEP.PrintName							= "M3 Super"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Category							= "VJ Base - Counter-Strike: Source"

SWEP.Primary.Delay						= 1
SWEP.Primary.Automatic 					= false
SWEP.Primary.Cone = 25
SWEP.ViewModel							= "models/weapons/cstrike/c_shot_m3super90.mdl"

SWEP.WorldModel							= "models/weapons/w_shot_m3super90.mdl"
SWEP.HoldType 							= "shotgun"
SWEP.Spawnable							= true
SWEP.AdminSpawnable						= false

SWEP.NPC_NextPrimaryFire = 1
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}
SWEP.NPC_ExtraFireSound = {"weapons/m3/m3_pump.wav"} -- Plays an extra sound after it fires (Example: Bolt action sound)
SWEP.NPC_ExtraFireSoundTime = 0.5 -- How much time until it plays the sound (After Firing)?

SWEP.Primary.Sound						= {"weapons/m3/m3-1.wav"}
SWEP.Primary.Damage						= 25 /2
SWEP.Primary.ClipSize					= 8
SWEP.Primary.NumberOfShots				= 7

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