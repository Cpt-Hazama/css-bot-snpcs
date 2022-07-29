AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {
	"models/player/hostage/hostage_01.mdl",
	"models/player/hostage/hostage_02.mdl",
	"models/player/hostage/hostage_03.mdl",
	"models/player/hostage/hostage_04.mdl"
}
ENT.StartHealth = 100
ENT.HullType = HULL_HUMAN
ENT.BloodColor = "Red"
ENT.HasMeleeAttack = false
ENT.PoseParameterLooking_Names = {pitch={"aim_pitch"},yaw={"aim_yaw"},roll={}}
ENT.FootStepTimeRun = 0.3
ENT.FootStepTimeWalk = 0.5

ENT.Behavior = VJ_BEHAVIOR_PASSIVE
ENT.Weapon_NoSpawnMenu = true 
ENT.HasGrenadeAttack = false

ENT.HasCallForHelpAnimation = false
ENT.AnimTbl_CallForHelp = {0}
ENT.CallForBackUpOnDamageAnimation = {0}

ENT.SoundTbl_FollowPlayer = {
	"hostage/huse/getouttahere.wav",
	"hostage/huse/illfollow.wav",
	"hostage/huse/letsdoit.wav",
	"hostage/huse/letsgo.wav",
	"hostage/huse/letshurry.wav",
	"hostage/huse/letsmove.wav",
	"hostage/huse/okletsgo.wav",
	"hostage/huse/youlead.wav",
}

ENT.SoundTbl_UnFollowPlayer = {
	"hostage/hunuse/comeback.wav",
	"hostage/hunuse/dontleaveme.wav",
	"hostage/hunuse/illstayhere.wav",
	"hostage/hunuse/notleaveme.wav",
	"hostage/hunuse/yeahillstay.wav",
}

ENT.SoundTbl_Pain = {
	"hostage/hpain/hpain1.wav",
	"hostage/hpain/hpain2.wav",
	"hostage/hpain/hpain3.wav",
	"hostage/hpain/hpain4.wav",
	"hostage/hpain/hpain5.wav",
	"hostage/hpain/hpain6.wav"
}

ENT.SoundTbl_Death = {
	"hostage/hpain/hpain1.wav",
	"hostage/hpain/hpain2.wav",
	"hostage/hpain/hpain3.wav",
	"hostage/hpain/hpain4.wav",
	"hostage/hpain/hpain5.wav",
	"hostage/hpain/hpain6.wav"
}

ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100

ENT.AnimTbl_IdleStand = {ACT_HL2MP_IDLE}
ENT.AnimTbl_Walk = {ACT_HL2MP_WALK}
ENT.AnimTbl_Run = {ACT_HL2MP_RUN}
ENT.AnimTbl_ScaredBehaviorStand = {ACT_HL2MP_IDLE_CROUCH}	
ENT.AnimTbl_TakingCover = {ACT_HL2MP_IDLE_CROUCH}
ENT.AnimTbl_MoveToCover = {ACT_HL2MP_WALK_CROUCH}

ENT.FootSteps = {
	[MAT_ANTLION] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_BLOODYFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_CONCRETE] = {
		"player/footsteps/concrete1.wav",
		"player/footsteps/concrete2.wav",
		"player/footsteps/concrete3.wav",
		"player/footsteps/concrete4.wav",
	},
	[MAT_DIRT] = {
		"player/footsteps/dirt1.wav",
		"player/footsteps/dirt2.wav",
		"player/footsteps/dirt3.wav",
		"player/footsteps/dirt4.wav",
	},
	[MAT_FLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_GRATE] = {
		"player/footsteps/metalgrate1.wav",
		"player/footsteps/metalgrate2.wav",
		"player/footsteps/metalgrate3.wav",
		"player/footsteps/metalgrate4.wav",
	},
	[MAT_ALIENFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[74] = { -- Snow
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_PLASTIC] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_METAL] = {
		"player/footsteps/metal1.wav",
		"player/footsteps/metal2.wav",
		"player/footsteps/metal3.wav",
		"player/footsteps/metal4.wav",
	},
	[MAT_SAND] = {
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_FOLIAGE] = {
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_COMPUTER] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_SLOSH] = {
		"player/footsteps/slosh1.wav",
		"player/footsteps/slosh2.wav",
		"player/footsteps/slosh3.wav",
		"player/footsteps/slosh4.wav",
	},
	[MAT_TILE] = {
		"player/footsteps/tile1.wav",
		"player/footsteps/tile2.wav",
		"player/footsteps/tile3.wav",
		"player/footsteps/tile4.wav",
	},
	[85] = { -- Grass
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_VENT] = {
		"player/footsteps/duct1.wav",
		"player/footsteps/duct2.wav",
		"player/footsteps/duct3.wav",
		"player/footsteps/duct4.wav",
	},
	[MAT_WOOD] = {
		"player/footsteps/wood1.wav",
		"player/footsteps/wood2.wav",
		"player/footsteps/wood3.wav",
		"player/footsteps/wood4.wav",
		"player/footsteps/woodpanel1.wav",
		"player/footsteps/woodpanel2.wav",
		"player/footsteps/woodpanel3.wav",
		"player/footsteps/woodpanel4.wav",
	},
	[MAT_GLASS] = {
		"physics/glass/glass_sheet_step1.wav",
		"physics/glass/glass_sheet_step2.wav",
		"physics/glass/glass_sheet_step3.wav",
		"physics/glass/glass_sheet_step4.wav",
	}
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFootStepSound()
	if !self:IsOnGround() then return end
	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() +Vector(0,0,-150),
		filter = {self}
	})
	if tr.Hit && self.FootSteps[tr.MatType] then
		VJ_EmitSound(self,VJ_PICK(self.FootSteps[tr.MatType]),self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
	end
	if self:WaterLevel() > 0 && self:WaterLevel() < 3 then
		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
	self:CapabilitiesAdd(bit.bor(CAP_USE))
	self:CapabilitiesAdd(bit.bor(CAP_OPEN_DOORS))
	self:CapabilitiesAdd(bit.bor(CAP_ANIMATEDFACE))
	
	self.CurrentHoldType = "none"
	self.CurrentFireType = 1
	
	self.FollowingEntity = NULL
	
	if self:VJ_CSS_HostageActive() then
		self.NextObjectiveT = CurTime() +1
		self.GM = true
		self.Behavior = VJ_BEHAVIOR_PASSIVE_NATURE
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetFollowEntity(ent)
	if IsValid(ent) then
		self.FollowingEntity = ent
		VJ_CreateSound(self,self.SoundTbl_FollowPlayer,80)
	else
		self.FollowingEntity = NULL
		VJ_CreateSound(self,self.SoundTbl_UnFollowPlayer,80)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "Use" && activator:IsPlayer() && self.GM && activator.VJ_NPC_Class && VJ_HasValue(activator.VJ_NPC_Class,"CLASS_CSS_CT") then
		if !IsValid(self.FollowPlayer_Entity) then
			self.FollowPlayer_Entity = activator
			VJ_CreateSound(self,self.SoundTbl_FollowPlayer,80)
			activator:ChatPrint("Hostage is now following you!")
		else
			if activator == self.FollowPlayer_Entity then
				self.FollowPlayer_Entity = NULL
				VJ_CreateSound(self,self.SoundTbl_UnFollowPlayer,80)
				activator:ChatPrint("Hostage is no longer following you!")
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if hitgroup == HITGROUP_HEAD then
		VJ_EmitSound(self,{"player/headshot1.wav","player/headshot2.wav"})
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnFireBullet(ent,data)
	if self.CurrentHoldType == "dual" then
		local seq = nil
		if self.CurrentFireType == 1 then
			self.CurrentFireType = 2
			seq = "range_dual_l"
		else
			self.CurrentFireType = 1
			seq = "range_dual_r"
		end
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] = VJ_SequenceToActivity(self,seq)
		self:GetActiveWeapon().PrimaryEffects_MuzzleAttachment = self.CurrentFireType
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Between(a,b)
	local waypoint = self:GetCurWaypointPos()
	local ang = (waypoint -self:GetPos()):Angle()
	local dif = math.AngleDifference(self:GetAngles().y,ang.y)
	return dif < a && dif > b
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DecideXY()
	local x = 0
	local y = 0
	if self:Between(30,-30) then
		x = 1
		y = 0
	elseif self:Between(70,30) then
		x = 1
		y = 1
	elseif self:Between(120,70) then
		x = 0
		y = 1
	elseif self:Between(150,120) then
		x = -1
		y = 1
	elseif !self:Between(150,-150) then
		x = -1
		y = 0
	elseif self:Between(-110,-150) then
		x = -1
		y = -1
	elseif self:Between(-70,-110) then
		x = 0
		y = -1
	elseif self:Between(-30,-70) then
		x = 1
		y = -1
	end
	
	self:SetPoseParameter("move_x",x)
	self:SetPoseParameter("move_y",y)
end
---------------------------------------------------------------------------------------------------------------------------------------------
local c = 0
local debug = false
function ENT:CustomOnThink()
	self:DecideXY()
	if self:IsMoving() then
		if !self.DoingWeaponAttack && self:GetPos():Distance(self:GetCurWaypointPos()) > 75 then
			self:FaceCertainPosition(self:GetCurWaypointPos())
		end
	end
	if IsValid(self.FollowPlayer_Entity) && !IsValid(self.FollowingEntity) then
		self.FollowingEntity = self.FollowPlayer_Entity
	end
	if IsValid(self.FollowingEntity) then
		local zones = self:VJ_CSS_FindRescueZones()
		for _,v in pairs(zones) do
			if v:GetPos():Distance(self:GetPos()) <= 175 then
				local ent = self:VJ_CSS_HostageModeEntity()
				if IsValid(ent) then
					self:Remove()
					ent:CheckHostages(true)
				end
				break
			end
		end

		if !self:IsMoving() && (self:GetPos():Distance(self.FollowingEntity:GetPos()) > 220) then
			self:SetTarget(self.FollowingEntity)
			if self:BusyWithActivity() == false then
				self:StopMoving()
				self:VJ_TASK_FACE_X("TASK_FACE_TARGET", function(x)
					x.RunCode_OnFinish = function()
						if IsValid(self.FollowingEntity) then
							local movet = ((self:GetPos():Distance(self.FollowingEntity:GetPos()) < 220) and "TASK_WALK_PATH") or "TASK_RUN_PATH"
							self:VJ_TASK_GOTO_TARGET(movet, function(y) y.CanShootWhenMoving = true y.ConstantlyFaceEnemy = true end)
						end
					end
				end)
			end
		end
	end
	if IsValid(self.FollowingEntity) && self.FollowingEntity:IsNPC() then
		self.FollowPlayer = false
	else
		self.FollowPlayer = true
	end
	if debug then
		if CurTime() > c && self:GetCurWaypointPos() then
			local vec = self:GetCurWaypointPos()
			VJ_CreateTestObject(vec +Vector(0,0,10))
			c = CurTime() +0.1
		end
	end
	self.DisableWandering = self.GM
	if self.GM then
		self.Behavior = VJ_BEHAVIOR_PASSIVE_NATURE
		if !self:VJ_CSS_HostageActive() then
			self.GM = false
			self.Behavior = VJ_BEHAVIOR_PASSIVE
			return
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled()
	local ent = self:VJ_CSS_HostageModeEntity()
	if IsValid(ent) then
		ent:CheckHostages()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:FootStepSoundCode(CustomTbl)
	if self.HasSounds == false or self.HasFootStepSound == false or self.MovementType == VJ_MOVETYPE_STATIONARY then return end
	if self:IsOnGround() && self:GetGroundEntity() != NULL then
		if self.DisableFootStepSoundTimer == true then
			self:CustomOnFootStepSound()
			return
		elseif self:IsMoving() && CurTime() > self.FootStepT then
			self:CustomOnFootStepSound()
			local CurSched = self.CurrentSchedule
			if self.DisableFootStepOnRun == false && ((VJ_HasValue(self.AnimTbl_Run,self:GetMovementActivity())) or (CurSched != nil  && CurSched.IsMovingTask_Run == true)) /*(VJ_HasValue(VJ_RunActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomRunActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Run()
				self.FootStepT = CurTime() + self.FootStepTimeRun
				return
			elseif self.DisableFootStepOnWalk == false && (VJ_HasValue(self.AnimTbl_Walk,self:GetMovementActivity()) or (CurSched != nil  && CurSched.IsMovingTask_Walk == true)) /*(VJ_HasValue(VJ_WalkActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomWalkActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Walk()
				self.FootStepT = CurTime() + self.FootStepTimeWalk
				return
			end
		end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/