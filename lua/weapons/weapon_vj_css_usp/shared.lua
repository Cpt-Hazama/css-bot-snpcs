if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_css_base"
SWEP.PrintName							= "USP Tactical"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Category							= "VJ Base - Counter-Strike: Source"

SWEP.Primary.Delay						= 0.1
SWEP.Primary.Automatic 					= false
SWEP.ViewModel							= "models/weapons/cstrike/c_pist_usp.mdl"

SWEP.WorldModel							= "models/weapons/w_pist_usp.mdl"
SWEP.HoldType 							= "pistol"
SWEP.Spawnable							= true
SWEP.AdminSpawnable						= false

SWEP.NPC_NextPrimaryFire = 0.25
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}

SWEP.Primary.Sound						= {"weapons/usp/usp_unsil-1.wav"}
SWEP.Primary.Damage						= 34 /2
SWEP.Primary.ClipSize					= 12

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