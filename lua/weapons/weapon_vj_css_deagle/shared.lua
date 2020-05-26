if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_base"
SWEP.PrintName							= "Deagle"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Instructions						= ""

SWEP.WorldModel							= "models/weapons/w_pist_deagle.mdl"
SWEP.HoldType 							= "revolver"
SWEP.Spawnable							= false
SWEP.AdminSpawnable						= false

SWEP.NPC_NextPrimaryFire = 0.8
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}

SWEP.Primary.Sound						= {"weapons/deagle/deagle-1.wav"}
SWEP.Primary.Damage						= 50 /2
SWEP.Primary.ClipSize					= 7

SWEP.PrimaryEffects_MuzzleAttachment 	= 1
SWEP.PrimaryEffects_SpawnShells 		= true
SWEP.PrimaryEffects_ShellAttachment 	= 2
SWEP.PrimaryEffects_ShellType = "VJ_Weapon_PistolShell1"

SWEP.Primary.Force						= 5
SWEP.Primary.Ammo						= "SMG1"
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnFireAnimationEvent(pos,ang,event,options)
	if event == 5001 then return true end
end