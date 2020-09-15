if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 								= "weapon_vj_css_base"
SWEP.PrintName							= "G3SG1"
SWEP.Author 							= "Cpt. Hazama"
SWEP.Contact							= ""
SWEP.Purpose							= ""
SWEP.Category							= "VJ Base - Counter-Strike: Source"

SWEP.Primary.Delay						= 0.2
SWEP.Primary.Automatic 					= true
SWEP.ViewModel							= "models/weapons/cstrike/c_snip_g3sg1.mdl"

SWEP.WorldModel							= "models/weapons/w_snip_g3sg1.mdl"
SWEP.HoldType 							= "ar2"
SWEP.Spawnable							= true
SWEP.AdminSpawnable						= false

SWEP.NPC_NextPrimaryFire = 0.18
SWEP.NPC_TimeUntilFire = 0
SWEP.NPC_TimeUntilFireExtraTimers = {}

SWEP.Primary.Sound						= {"weapons/g3sg1/g3sg1-1.wav"}
SWEP.Primary.Damage						= 80 /2
SWEP.Primary.ClipSize					= 20

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
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnReload()
	self:Zoom(0)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:SetupDataTables()
	self:NetworkVar("Bool", 0, "Zoomed")
	self:NetworkVar("Float", 0, "ZoomLevel")
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:SecondaryAttack()
	self:Zoom()
	self:SetNextSecondaryFire(CurTime() + 0.2)
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnThink()
	if IsValid(self:GetOwner()) then
		if self:GetOwner():IsPlayer() then
			if self:GetZoomLevel() == 0 then
				self:GetOwner():SetFOV(GetConVarNumber("fov_desired"), 0.1)
			end
			self:SetZoomed(self:GetZoomLevel() > 0)
			self.Primary.Cone = (self:GetZoomed() and 1) or 10
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
if (CLIENT) then
	local aimPos = Vector(-6,0,-32)
	local aimAng = Angle(0,0,0)
	---------------------------------------------------------------------------------------------------------------------------------------------
	function SWEP:GetViewModelPosition(pos, ang)
		if !self:GetZoomed() then return pos,ang end

		ang:RotateAroundAxis(ang:Right(),aimAng.x)
		ang:RotateAroundAxis(ang:Up(),aimAng.y)
		ang:RotateAroundAxis(ang:Forward(),aimAng.z)

		pos = pos +aimPos.x *ang:Right()
		pos = pos +aimPos.y *ang:Up()
		pos = pos +aimPos.z *ang:Forward()

		return pos, ang
	end
end