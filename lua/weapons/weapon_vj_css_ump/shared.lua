if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_css_base"
SWEP.PrintName							= "UMP45"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Category							= "VJ Base - Counter-Strike: Source"

SWEP.Primary.Delay						= 0.1
SWEP.Primary.Automatic 					= true
SWEP.ViewModel							= "models/weapons/cstrike/c_smg_ump45.mdl"

SWEP.WorldModel							= "models/weapons/w_smg_ump45.mdl"
SWEP.HoldType 							= "smg"
SWEP.Spawnable							= true
SWEP.AdminSpawnable						= false

SWEP.NPC_NextPrimaryFire = 0.1
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}

SWEP.Primary.Sound						= {"weapons/ump45/ump45-1.wav"}
SWEP.Primary.Damage						= 30 /2
SWEP.Primary.ClipSize					= 25

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