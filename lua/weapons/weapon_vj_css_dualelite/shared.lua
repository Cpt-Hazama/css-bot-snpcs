if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_css_base"
SWEP.PrintName							= "Dual Elites"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""

SWEP.ViewModel							= "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel							= "models/weapons/w_pist_elite.mdl"
SWEP.HoldType 							= "duel"
SWEP.Spawnable							= false
SWEP.AdminSpawnable						= false

SWEP.MadeForNPCsOnly = true
SWEP.NPC_NextPrimaryFire = 0.16
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}

SWEP.Primary.Sound						= {"weapons/elite/elite-1.wav"}
SWEP.Primary.Damage						= 38 /2
SWEP.Primary.ClipSize					= 30

SWEP.PrimaryEffects_MuzzleAttachment 	= 1
SWEP.PrimaryEffects_SpawnShells 		= true
SWEP.PrimaryEffects_ShellAttachment 	= 3
SWEP.PrimaryEffects_ShellType = "VJ_Weapon_PistolShell1"

SWEP.Primary.Force						= 5
SWEP.Primary.Ammo						= "SMG1"
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnFireAnimationEvent(pos,ang,event,options)
	if event == 5001 then return true end
end