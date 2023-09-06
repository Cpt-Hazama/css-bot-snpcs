AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/player/kleiner.mdl"}
ENT.StartHealth = 100
ENT.HullType = HULL_HUMAN
ENT.UsePlayerModelMovement = true
ENT.PoseParameterLooking_Names = {pitch={"aim_pitch"},yaw={"aim_yaw"},roll={}}

ENT.BloodColor = "Red"

ENT.HasMeleeAttack = false

-- ENT.DisableWeaponFiringGesture = true

ENT.TimeUntilGrenadeIsReleased = 0.85 -- Time until the grenade is released
ENT.GrenadeAttackModel = "models/weapons/w_eq_fraggrenade_thrown.mdl"
ENT.AnimTbl_GrenadeAttack = {"vjges_gesture_item_throw"}
ENT.GrenadeAttackAttachment = "anim_attachment_RH"

ENT.AnimTbl_Medic_GiveHealth = {"vjges_gesture_item_drop"}
ENT.AnimTbl_CallForHelp = {"vjges_gesture_signal_group","vjges_gesture_signal_forward"}
ENT.CallForBackUpOnDamageAnimation = {"vjges_gesture_signal_halt"}

ENT.NextMoveRandomlyWhenShootingTime1 = 2
ENT.NextMoveRandomlyWhenShootingTime2 = 3

ENT.CanFlinch = 1
ENT.NextFlinchTime = 3
ENT.AnimTbl_Flinch = {"vjges_flinch_01","vjges_flinch_02"}
ENT.HitGroupFlinching_Values = {
	{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_01","vjges_flinch_head_02"}},
	{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_phys_01","vjges_flinch_phys_02","vjges_flinch_back_01"}},
	{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02"}},
	{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_shoulder_l"}},
	{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_shoulder_r"}}
}

ENT.FootStepTimeRun = 0.3
ENT.FootStepTimeWalk = 0.5

ENT.SoundTbl_IdleDialogue = {
	"radio/com_getinpos.wav",
	"radio/com_go.wav",
	"radio/com_reportin.wav",
	"radio/followme.wav",
	"radio/position.wav",
	"radio/regroup.wav",
	"radio/sticktog.wav",
	"radio/stormfront.wav",
	"radio/takepoint.wav",
	"radio/vip.wav",
	"bot/anyone_see_anything.wav",
	"bot/anyone_see_them.wav",
	"bot/good_job_team.wav",
	"bot/good_one.wav",
	"bot/good_one2.wav",
	"bot/heading_to_a.wav",
	"bot/heading_to_b.wav",
	"bot/lets_hold_up_here_for_a_minute.wav",
	"bot/lets_wait_here.wav",
	"bot/nice_work_team.wav",
}
ENT.SoundTbl_IdleDialogueAnswer = {
	"radio/ct_affirm.wav",
	"radio/ct_inpos.wav",
	"radio/ct_reportingin.wav",
	"radio/negative.wav",
	"radio/roger.wav",
	"bot/affirmative.wav",
	"bot/ahh_negative.wav",
	"bot/all_clear_here.wav",
	"bot/all_quiet.wav",
	"bot/alright.wav",
	"bot/alright2.wav",
	"bot/alright_lets_do_this.wav",
	"bot/aw_hell.wav",
	"bot/aww_man.wav",
	"bot/clear4.wav",
	"bot/do_not_mess_with_me.wav",
	"bot/dont_worry_hell_get_it.wav",
	"bot/good_idea.wav",
	"bot/good_one_sir.wav",
	"bot/good_one_sir2.wav",
	"bot/great.wav",
	"bot/hey.wav",
	"bot/hey2.wav",
	"bot/i_dont_think_so.wav",
	"bot/i_got_nothing.wav",
	"bot/i_got_your_back.wav",
	"bot/i_got_your_back2.wav",
	"bot/i_wasnt_worried_for_a_minute.wav",
	"bot/ill_come_with_you.wav",
	"bot/ill_go_too.wav",
	"bot/ill_go_with_you.wav",
	"bot/im_with_you.wav",
	"bot/lead_on_sir.wav",
	"bot/me_too.wav",
	"bot/naa.wav",
	"bot/nnno_sir.wav",
	"bot/no.wav",
	"bot/no2.wav",
	"bot/no_sir.wav",
	"bot/no_thanks.wav",
	"bot/noo.wav",
	"bot/nothing.wav",
	"bot/oh.wav",
	"bot/oh_man.wav",
	"bot/ok.wav",
	"bot/ok2.wav",
	"bot/thats_not_good.wav",
	"bot/very_nice.wav",
	"bot/yea_baby.wav",
	"bot/yea_ok.wav",
	"bot/yesss.wav",
	"bot/yesss2.wav",
}
ENT.SoundTbl_CombatIdle = {
	"bot/a_bunch_of_them.wav",
	"bot/in_combat.wav",
	"bot/in_combat2.wav",
	"bot/its_a_party.wav",
	"bot/oh_boy.wav",
	"bot/oh_boy2.wav",
	"bot/oh_my_god.wav",
	"bot/oh_no.wav",
	"bot/returning_fire.wav",
}
ENT.SoundTbl_CallForHelp = {
	"bot/help.wav",
	"bot/i_could_use_some_help.wav",
	"bot/i_could_use_some_help_over_here.wav",
	"bot/im_in_trouble.wav",
	"bot/im_pinned_down.wav",
	"bot/need_help.wav",
	"bot/need_help2.wav",
	"bot/taking_fire_need_assistance2.wav",
	"bot/the_actions_hot_here.wav",
	"bot/theres_too_many.wav",
	"bot/theres_too_many_of_them.wav",
	"bot/too_many2.wav"
}
ENT.SoundTbl_OnReceiveOrder = {
	"bot/im_coming.wav",
	"bot/on_my_way.wav",
	"bot/on_my_way2.wav",
	"bot/roger.wav",
	"bot/roger_that.wav",
}
ENT.SoundTbl_Pain = {
	"bot/ouch.wav",
	"bot/ow.wav",
	"bot/pain2.wav",
	"bot/pain4.wav"
}
ENT.SoundTbl_Death = {
	"bot/pain5.wav",
	"bot/pain8.wav",
	"bot/pain9.wav",
	"bot/pain10.wav",
	"player/death1.wav",
	"player/death2.wav",
	"player/death3.wav",
	"player/death4.wav",
	"player/death5.wav",
	"player/death6.wav",
}

ENT.tbl_Names = {
	"Adam",
	"Andy",
	"Chris",
	"Colin",
	"Dennis",
	"Doug",
	"Duffy",
	"Gary",
	"Grant",
	"Greg",
	"Ian",
	"Jerry",
	"Jon",
	"Keith",
	"Mark",
	"Matt",
	"Mike",
	"Nate",
	"Paul",
	"Scott",
	"Steve",
	"Tom",
	"Yahn"
}

ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100

ENT.ThrowGrenadeChance = 3

ENT.PrimaryWeapons = {
	["CT"] = {
		"weapon_vj_css_m16",
		"weapon_vj_css_aug",
		"weapon_vj_css_tmp",
		"weapon_vj_css_famas",
		"weapon_vj_css_sg550",
		"weapon_vj_css_m3super",
		"weapon_vj_css_xm1014",
		"weapon_vj_css_mp5",
		"weapon_vj_css_p90",
		"weapon_vj_css_ump",
		"weapon_vj_css_awp",
		"weapon_vj_css_scout",
		"weapon_vj_css_m249"
	},
	["T"] = {
		"weapon_vj_css_ak47",
		"weapon_vj_css_mac10",
		"weapon_vj_css_galil",
		"weapon_vj_css_sg552",
		"weapon_vj_css_m3super",
		"weapon_vj_css_xm1014",
		"weapon_vj_css_mp5",
		"weapon_vj_css_p90",
		"weapon_vj_css_ump",
		"weapon_vj_css_awp",
		"weapon_vj_css_scout",
		"weapon_vj_css_m249"
	},
}

ENT.SecondaryWeapons = {
	["CT"] = {
		"weapon_vj_css_fiveseven",
		"weapon_vj_css_deagle",
		"weapon_vj_css_dualelite",
		"weapon_vj_css_p228"
	},
	["T"] = {
		"weapon_vj_css_glock",
		"weapon_vj_css_deagle",
		"weapon_vj_css_dualelite",
		"weapon_vj_css_p228"
	},
}

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
local c = 0
local debug = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert()
	self:RefreshAI(math.Rand(0.5,2))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
    local att = self:LookupAttachment("eyes") -- Not all models have it, must check for validity
    return att != 0 && self:GetAttachment(att).Ang:Forward() or self:GetForward()
end
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
function ENT:SetGrenade(g)
	self.GrenadeAttackEntity = (g == 1 && "obj_vj_grenade") or (g == 2 && "obj_vj_css_flashbang") or (g == 3 && "obj_vj_css_smokegren")
	self.GrenadeAttackModel = (g == 1 && "models/weapons/w_eq_fraggrenade_thrown.mdl") or (g == 2 && "models/weapons/w_eq_flashbang_thrown.mdl") or (g == 3 && "models/weapons/w_eq_smokegrenade_thrown.mdl")
	self.GrenadeCount = math.random(0,2)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnGrenadeAttack_BeforeThrowTime()
	self:GetActiveWeapon():SetNoDraw(true)
	local att = self:GetAttachment(self:LookupAttachment("anim_attachment_RH"))
	self.FakeGrenade = ents.Create("prop_vj_animatable")
	self.FakeGrenade:SetModel(self.GrenadeAttackModel)
	self.FakeGrenade:SetPos(att.Pos)
	self.FakeGrenade:SetAngles(att.Ang)
	self.FakeGrenade:SetParent(self)
	self.FakeGrenade:Fire("SetParentAttachment","anim_attachment_RH")
	self.FakeGrenade:Spawn()
	self.FakeGrenade:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
	self:DeleteOnRemove(self.FakeGrenade)
	timer.Simple(0.5,function()
		if IsValid(self) then
			local gest = self:AddGestureSequence(self:LookupSequence("range_grenade"))
			self:SetLayerPriority(gest,1)
			self:SetLayerPlaybackRate(gest,self.AnimationPlaybackRate *0.5)
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnGrenadeAttack_OnThrow(GrenadeEntity)
	SafeRemoveEntity(self.FakeGrenade)
	timer.Simple(0.1,function()
		if IsValid(self) then
			self:GetActiveWeapon():SetNoDraw(false)
		end
	end)
	self.GrenadeCount = self.GrenadeCount -1
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetWeapons()
	if !self.CanSwapWeapons then return end

	SafeRemoveEntity(self:GetActiveWeapon())
	self.Primary = VJ_PICK(self.PrimaryWeapons[self.VJ_NPC_Class[1] == "CLASS_CSS_CT" && "CT" or "T"])
	self.Secondary = VJ_PICK(self.SecondaryWeapons[self.VJ_NPC_Class[1] == "CLASS_CSS_CT" && "CT" or "T"])
	self:Give(self.Primary)
	timer.Simple(0.01,function()
		if IsValid(self) && !IsValid(self:GetActiveWeapon()) then
			self:SetWeapons()
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SwapWeapons()
	local class = self:GetActiveWeapon():GetClass()
	SafeRemoveEntity(self:GetActiveWeapon())
	local wep = class == self.Secondary && self.Primary or self.Secondary
	self:DoChangeWeapon(wep, false)
	self.NextSwitchT = CurTime() +math.Rand(2,5)
	self.NextChaseTime = 0
	self.NextIdleStandTime = 0
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RefreshAI(t)
	local time = (t && CurTime() +t) or 0
	self.NextObjectiveT = time
	self.NextSetMoveT = time
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:CapabilitiesAdd(bit.bor(CAP_ANIMATEDFACE,CAP_MOVE_JUMP,CAP_OPEN_DOORS,CAP_USE))
	self:DecideName()
	PrintMessage(HUD_PRINTTALK,self:GetName() .. " has connected")

	self:SetCollisionBounds(Vector(16,16,72),Vector(-16,-16,0))
	
	self.CurrentAnimationSet = nil
	self.CurrentHoldType = "none"
	self.CurrentFireType = 1
	self.Kevlar = 100

	self.Objective = nil
	self.TargetPosition = nil
	self.GrabBomb = nil
	self.NextObjectiveT = CurTime()
	self.RanBombInit = false
	self.NextSetMoveT = 0
	self.NextRefreshAnimT = 0
	self.Hostages = {}
	self.Cur_IsCrouched = false

	self.NextSwitchT = CurTime() +1
	self.CanSwapWeapons = self:VJ_IsDefaultWeaponSelected()
	timer.Simple(0,function()
		self:SetWeapons()
	end)
	-- timer.Simple(1,function()
		-- self:GoToSpot(1500)
	-- end)
	self:SetGrenade(math.random(1,3))
	
	if self:VJ_CSS_ModeActive() or self:VJ_CSS_HostageActive() then
		self.Team = self.VJ_NPC_Class[1] == "CLASS_CSS_CT" && 1 or 2
		self.GM = true
		self:RefreshAI(math.Rand(0.5,2))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CalculateKevlar(dmginfo,hitgroup)
	local flNew = dmginfo:GetDamage() *0.2
	local flArmor = dmginfo:GetDamage() -self.Kevlar
	
	if flArmor > self.Kevlar then -- Was there more damage than available kevlar?
		flArmor = self.Kevlar
		flNew = dmginfo:GetDamage() -flArmor
		self.Kevlar = 0
	else
		self.Kevlar = self.Kevlar -dmginfo:GetDamage()
	end

	return flNew
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup)
	if self.Kevlar > 0 then
		if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH or hitgroup == HITGROUP_GEAR then
			dmginfo:SetDamage(self:CalculateKevlar(dmginfo,hitgroup))
			if (dmginfo:IsBulletDamage()) then
				if self.HasSounds == true && self.HasImpactSounds == true then VJ_EmitSound(self,"vj_impact_metal/bullet_metal/metalsolid"..math.random(1,10)..".wav",70) end
				local spark = ents.Create("env_spark")
				spark:SetKeyValue("Magnitude","1")
				spark:SetKeyValue("Spark Trail Length","1")
				spark:SetPos(dmginfo:GetDamagePosition())
				spark:SetAngles(self:GetAngles())
				spark:SetParent(self)
				spark:Spawn()
				spark:Activate()
				spark:Fire("StartSpark","",0)
				spark:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(spark)
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup)
	if hitgroup == HITGROUP_HEAD then
		VJ_EmitSound(self,{"player/headshot1.wav","player/headshot2.wav"})
		if self.Kevlar > 0 then
			VJ_EmitSound(self,"player/bhit_helmet-1.wav")
		end
	end
	if self.Kevlar > 0 then
		if hitgroup == HITGROUP_HEAD or hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_STOMACH or hitgroup == HITGROUP_GEAR then
			VJ_EmitSound(self,"player/kevlar" .. math.random(1,5) .. ".wav")
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:BombInit()
	if SERVER then
		local ent = ents.Create("prop_vj_animatable")
		ent:SetModel("models/weapons/w_c4.mdl")
		ent:SetPos(self:GetPos() +self:OBBCenter())
		ent:Spawn()
		self:DeleteOnRemove(ent)
		ent:SetParent(self)
		self.Bomb = ent
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DecideName()
	local name = VJ_PICK(self.tbl_Names)
	local num = 0
	for _,v in pairs(player.GetAll()) do
		if string.find(v:Nick(),name) then
			num = num +1
		end
	end
	for _,v in pairs(ents.FindByClass(self:GetClass())) do
		if string.find(v:GetName(),name) then
			num = num +1
		end
	end
	if num > 0 then
		name = name .. " [" .. num +1 .. "]"
	end
	self:SetName("[Bot] " .. name)
	self.PrintName = "[Bot] " .. name
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DoApplyAnimations(animSet,autoPlayAnim)
	if self.CurrentAnimationSet == animSet then
		return
	end
	-- if self.CurrentAnimationSet != animSet then
	-- 	self.NextRefreshAnimT = 0
	-- 	print("Reset")
	-- end
	-- if CurTime() < self.NextRefreshAnimT then
	-- 	return
	-- end

	local wep = self:GetActiveWeapon()
	local wepID = wep.CSS_ID or "AUG"

	self.Layers = {}
	self:RemoveAllGestures()

	self.Layers.IdleUpper = self:VJ_AddLayeredAnimation(animSet .. "Upper_" .. wepID,false)
	self.Layers.BodyOffset = self:VJ_AddLayeredAnimation((autoPlayAnim or animSet) .. "BodyOffset_" .. wepID,false)
	self.Layers.HandPos = self:VJ_AddLayeredAnimation((autoPlayAnim or animSet) .. "HandPos_" .. wepID,false)

	self:SetLayerWeight(self.Layers.IdleUpper,1)

	-- local body = self:VJ_AddLayeredAnimation((autoPlayAnim or animSet) .. "BodyOffset_" .. wepID,false,1)
	-- local hand = self:VJ_AddLayeredAnimation((autoPlayAnim or animSet) .. "HandPos_" .. wepID,false,1)
	-- local main = self:VJ_AddLayeredAnimation(animSet .. "Upper_" .. wepID,false,1)

	-- self.NextRefreshAnimT = CurTime() +(0.25)


	print("------------------------------------------------------")
	print(animSet .. "Upper_" .. wepID)
	print(animSet .. "BodyOffset_" .. wepID)
	print(animSet .. "HandPos_" .. wepID)

	self.CurrentAnimationSet = animSet
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetParameters()
	local curSched = self.CurrentSchedule
	local moveType = curSched != nil && curSched.MoveType or false
	local shouldAim = self.DoingWeaponAttack
	local shouldCrouch = self.TakingCoverT > CurTime() or curSched != nil && curSched.Name == "vj_goto_cover"
	local targetAnim = "Idle_"
	local autoPlayAnim = "Idle_"

	if shouldAim then
		if moveType then
			targetAnim = moveType == 1 && "Run_Aim_" or "Walk_Aim_"
		else
			targetAnim = "Idle_Aim_"
			if shouldCrouch then
				targetAnim = "Crouch_Aim_"
			end
		end
	else
		if moveType then
			targetAnim = moveType == 1 && "Run_" or "Walk_"
		else
			targetAnim = "Idle_"
			if shouldCrouch then
				targetAnim = "Crouch_Idle_"
				autoPlayAnim = "Crouch_"
			end
		end
	end

	if self.Layers then
		for _,v in pairs(self.Layers) do
			if v && self:GetLayerCycle(v) == 1 then
				self:SetLayerCycle(v,0)
			end
		end
	end

	self:DoApplyAnimations(targetAnim,autoPlayAnim)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSetupWeaponHoldTypeAnims(hType)
	local wep = self:GetActiveWeapon()
	local wepID = wep.CSS_ID or "AK"

	self.CurrentHoldType = htype
	
	if hType == "ar2" && wep.CS_HType != "mach" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_AR2
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_AR2
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_AR2
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_AR2
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_AR2
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_AR2
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_AR2
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_AR2
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_AR2
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_AR2
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_AR2
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_AR2
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_AR2
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_AR2
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_AR2
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_AR2
	elseif hType == "ar2" && wep.CS_HType == "mach" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CROSSBOW
	elseif hType == "pistol" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_PISTOL
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_PISTOL
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_PISTOL
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_PISTOL
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_PISTOL
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_PISTOL
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_PISTOL
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_PISTOL
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_PISTOL
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_PISTOL
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_PISTOL
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_PISTOL
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_PISTOL
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_PISTOL
	elseif hType == "smg" && wep.CS_HType != "mac" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_SMG1
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_SMG1
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_smg1"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_smg1"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_SMG1
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_SMG1
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_SMG1
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_SMG1
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_SMG1
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_SMG1
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_SMG1
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_SMG1
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_SMG1
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_SMG1
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_SMG1
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_SMG1
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_SMG1
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_SMG1
	elseif hType == "smg" && wep.CS_HType == "mac" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_REVOLVER
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_REVOLVER
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_REVOLVER
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_REVOLVER
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_REVOLVER
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_REVOLVER
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_REVOLVER
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_REVOLVER
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_REVOLVER
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_REVOLVER
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_REVOLVER
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_REVOLVER
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_REVOLVER
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_REVOLVER
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_REVOLVER
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_REVOLVER
	elseif hType == "grenade" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_GRENADE
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_GRENADE
		-- self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		-- self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_GRENADE
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_GRENADE
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_GRENADE
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_GRENADE
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_GRENADE
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_GRENADE
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_GRENADE
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_GRENADE
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_GRENADE
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_GRENADE
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_GRENADE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_GRENADE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_GRENADE
	elseif hType == "shotgun" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_SHOTGUN
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_SHOTGUN
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_shotgun"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_shotgun"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_SHOTGUN
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_SHOTGUN
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_SHOTGUN
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_SHOTGUN
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_SHOTGUN
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_SHOTGUN
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_SHOTGUN
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_SHOTGUN
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_SHOTGUN
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_SHOTGUN
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_SHOTGUN
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_SHOTGUN
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_SHOTGUN
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_SHOTGUN
	elseif hType == "rpg" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_RPG
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_RPG
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_RPG
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_RPG
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_RPG
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_RPG
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_RPG
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_RPG
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_RPG
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_RPG
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_RPG
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_RPG
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_RPG
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_RPG
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_RPG
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_RPG
	elseif hType == "physgun" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_PHYSGUN
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_PHYSGUN
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_PHYSGUN
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_PHYSGUN
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_PHYSGUN
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_PHYSGUN
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_PHYSGUN
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_PHYSGUN
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_PHYSGUN
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_PHYSGUN
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_PHYSGUN
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_PHYSGUN
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_PHYSGUN
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_PHYSGUN
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_PHYSGUN
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_PHYSGUN
	elseif hType == "crossbow" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_ar2"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_CROSSBOW
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_CROSSBOW
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CROSSBOW
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CROSSBOW
	elseif hType == "slam" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_SLAM
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_SLAM
		-- self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		-- self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_SLAM
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_SLAM
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_SLAM
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_SLAM
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_SLAM
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_SLAM
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_SLAM
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_SLAM
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_SLAM
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_SLAM
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_SLAM
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_SLAM
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_SLAM
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_SLAM
	elseif hType == "duel" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_DUEL
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_DUEL
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_duel"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_duel"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_DUEL
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_DUEL
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_DUEL
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_DUEL
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_DUEL
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_DUEL
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_DUEL
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_DUEL
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_DUEL
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_DUEL
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_DUEL
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_DUEL
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_DUEL
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_DUEL
	elseif hType == "revolver" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_REVOLVER
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_REVOLVER
		self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_revolver"
		self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_revolver"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_REVOLVER
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_REVOLVER
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_REVOLVER
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_REVOLVER
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_REVOLVER
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_REVOLVER
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_REVOLVER
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_REVOLVER
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_REVOLVER
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_REVOLVER
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_REVOLVER
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_REVOLVER
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_REVOLVER
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_REVOLVER
	elseif hType == "melee" or hType == "melee_angry" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_MELEE
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_MELEE
		-- self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		-- self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_MELEE
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_MELEE
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_MELEE
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_MELEE
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_MELEE
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_MELEE
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_MELEE
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_MELEE
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_MELEE
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_MELEE
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_MELEE
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_MELEE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_MELEE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_MELEE
	elseif hType == "melee2" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_MELEE2
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_MELEE2
		-- self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		-- self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_MELEE2
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_MELEE2
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_MELEE2
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_MELEE2
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_MELEE2
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_MELEE2
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_MELEE2
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_MELEE2
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_MELEE2
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_MELEE2
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_MELEE2
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_MELEE2
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_MELEE2
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_MELEE2
	elseif hType == "knife" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_KNIFE
		self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_KNIFE
		-- self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		-- self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_KNIFE
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_KNIFE
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_KNIFE
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_KNIFE
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_KNIFE
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_KNIFE
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_KNIFE
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_KNIFE
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_KNIFE
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_KNIFE
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_KNIFE
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_KNIFE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_KNIFE
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_KNIFE
	elseif hType == "camera" then
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_HL2MP_IDLE_CAMERA
		-- self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_HL2MP_GESTURE_RANGE_ATTACK_CAMERA
		self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_HL2MP_IDLE_CROUCH_CAMERA
		-- self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_reload_pistol"
		-- self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_reload_pistol"
		self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_HL2MP_IDLE_CROUCH_CAMERA
		
		self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_HL2MP_IDLE_CAMERA
		self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_HL2MP_IDLE_CAMERA
		self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HL2MP_JUMP_CAMERA
		self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HL2MP_JUMP_CAMERA
		self.WeaponAnimTranslations[ACT_LAND] 							= ACT_HL2MP_IDLE_CAMERA
		
		self.WeaponAnimTranslations[ACT_WALK] 							= ACT_HL2MP_WALK_CAMERA
		self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_HL2MP_WALK_CAMERA
		self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CAMERA
		self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CAMERA
		
		self.WeaponAnimTranslations[ACT_RUN] 							= ACT_HL2MP_RUN_CAMERA
		self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_HL2MP_RUN_CAMERA
		self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_HL2MP_WALK_CROUCH_CAMERA
		self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_HL2MP_WALK_CROUCH_CAMERA
	end

	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
-- function ENT:CustomOnSetupWeaponHoldTypeAnims(hType)
-- 	local wep = self:GetActiveWeapon()
-- 	local wepID = wep.CSS_ID or "AK"

-- 	self.CurrentHoldType = htype
-- 	self.AnimationParameters = {}

-- 	self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_IDLE
-- 	self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_CROUCHIDLE
-- 	self.WeaponAnimTranslations[ACT_COVER_LOW] 						= ACT_CROUCHIDLE
	
-- 	self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_IDLE
-- 	self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE
-- 	self.WeaponAnimTranslations[ACT_JUMP] 							= ACT_HOP
-- 	self.WeaponAnimTranslations[ACT_GLIDE] 							= ACT_HOP
-- 	self.WeaponAnimTranslations[ACT_LAND] 							= ACT_IDLE
	
-- 	self.WeaponAnimTranslations[ACT_WALK] 							= ACT_WALK
-- 	self.WeaponAnimTranslations[ACT_WALK_AIM] 						= ACT_WALK
-- 	self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_RUN_CROUCH
-- 	self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_RUN_CROUCH
	
-- 	self.WeaponAnimTranslations[ACT_RUN] 							= ACT_RUN
-- 	self.WeaponAnimTranslations[ACT_RUN_AIM] 						= ACT_RUN
-- 	self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_RUN_CROUCH
-- 	self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH

-- 	self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= "vjges_Idle_Shoot_" .. wepID
-- 	self.WeaponAnimTranslations[ACT_RELOAD] 						= "vjges_Idle_Reload_" .. wepID
-- 	self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_Crouch_Idle_Reload_" .. wepID

-- 	self.AnimationParameters = {
-- 		BodyOffset = "BodyOffset_" .. wepID,
-- 		HandOffset = "HandPos_" .. wepID,
-- 		Idle = "Idle_Upper_" .. wepID,
-- 		Aim = "Idle_Aim_" .. wepID,
-- 		Shoot = "Idle_Shoot_" .. wepID,
-- 		Reload = "Idle_Reload_" .. wepID,

-- 		RefreshTime = VJ_GetSequenceDuration(self,"Idle_Upper_" .. wepID)
-- 	}

-- 	return true
-- end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnPlayCreateSound(sdData, sdFile)
	if VJ_HasValue(self.SoundTbl_Pain, sdFile) or VJ_HasValue(self.SoundTbl_Death, sdFile) or VJ_HasValue(self.DefaultSoundTbl_MeleeAttack, sdFile) then return end
	self:SetSpeaking(true)
	timer.Simple(SoundDuration(sdFile),function()
		if IsValid(self) && sdData:IsPlaying() then
			self:SetSpeaking(false)
		end
	end)
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
function ENT:PlayerName()
	local tb = {}
	for _,v in ipairs(player.GetAll()) do
		table.insert(tb,v:Nick())
	end
	for _,v in ipairs(ents.GetAll()) do
		if v:IsNPC() && v.VJ_CSSBot && v != self then
			table.insert(tb,v:GetName())
		end
	end
	return VJ_PICK(tb)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:BotChat(text)
	PrintMessage(HUD_PRINTTALK,self:GetName() .. ": " .. tostring(text))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlantTheBomb()
	local bomb = ents.Create("sent_vj_css_bomb")
	bomb:SetPos(self:GetPos() +self:GetForward() *35)
	bomb:Spawn()
	SafeRemoveEntity(self.Bomb)
	self.HasTheBomb = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.JumpHeight = 200
function ENT:AvoidThreat()
	local maxDist = 220
	local maxDepth = 20
	local targetPos = self:GetPos() +Vector(math.Rand(-maxDist,maxDist),math.Rand(-maxDist,maxDist),maxDepth)

	if self:GetVelocity():Length() <= 0 && self:GetActivity() != self.WeaponAnimTranslations[ACT_JUMP] then
		self:VJ_ACT_PLAYACTIVITY(self.WeaponAnimTranslations[ACT_JUMP],false,false,false)
		self:SetGroundEntity(NULL)
		self:SetVelocity((targetPos -self:GetPos()) +self:GetUp() *self.JumpHeight)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GoToSpot(dist,argent,hide)
	local spots = VJ_FindHidingSpots(dist,argent or self,hide)
	local foundPos = false
	if spots && #spots > 0 then
		local nav = VJ_PICK(spots)
		self:SetLastPosition(nav)
		self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(nav) > 600 && "TASK_WALK_PATH" or "TASK_RUN_PATH")
		if debug then
			local pTime = self:GetPathTimeToGoal() *2
			for _,v in pairs(spots) do
				if v != nav then
					local b = VJ_CreateTestObject(v +Vector(0,0,10),Angle(0,0,0),Color(255,0,0),10)
					b:SetModelScale(1.5)
				end
			end
			local b = VJ_CreateTestObject(nav,Angle(0,0,0),Color(0,255,0),10)
			b:SetModelScale(3)
		end
		foundPos = true
	end
	return foundPos
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Crouch(crouch)
	if crouch && self.Cur_IsCrouched != true then
		self:SetIdleAnimation({ACT_COVER_LOW},true)
		self.AnimTbl_WeaponAim = {ACT_COVER_LOW}
		self.AnimTbl_WeaponAttack = {ACT_COVER_LOW}
		self.AnimTbl_Walk = {ACT_WALK_CROUCH}
		self.AnimTbl_Run = {ACT_RUN_CROUCH}
		self.AnimTbl_ShootWhileMovingRun = {ACT_WALK_CROUCH_AIM}
		self.AnimTbl_ShootWhileMovingWalk = {ACT_RUN_CROUCH_AIM}
		self.NextChaseTime = 0
		self.Cur_IsCrouched = true
		self:SetCollisionBounds(Vector(16,16,36),Vector(-16,-16,0))
	elseif !crouch && self.Cur_IsCrouched != false then
		self:SetIdleAnimation({ACT_IDLE},true)
		self.AnimTbl_WeaponAim = {ACT_IDLE_ANGRY}
		self.AnimTbl_WeaponAttack = {ACT_IDLE}
		self.AnimTbl_Walk = {ACT_WALK}
		self.AnimTbl_Run = {ACT_RUN}
		self.AnimTbl_ShootWhileMovingRun = {ACT_RUN_AIM}
		self.AnimTbl_ShootWhileMovingWalk = {ACT_WALK_AIM}
		self.NextChaseTime = 0
		self.Cur_IsCrouched = false
		self:SetCollisionBounds(Vector(16,16,72),Vector(-16,-16,0))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
local defOffset = Vector(0,0,10)
function ENT:CustomOnThink()
	self:SetArrivalSpeed(9999)
	-- self:SetParameters() -- Layers won't loop for some reason despite being set to and other alternatives...
	
	debug = tobool(GetConVar("vj_css_bot_debug"):GetInt())
	local controller = self.VJ_TheController
	if self.HasTheBomb && !self.RanBombInit then
		self:BombInit()
		self.RanBombInit = true
	end

	self.DisableFootStepSoundTimer = !(self:GetActivity() == ACT_RUN)
	self.HasGrenadeAttack = self.GrenadeCount > 0

	if !IsValid(controller) then
		self:Crouch(VJ_ShouldDuck(self) or VJ_ShouldDuck(self:GetCurWaypointPos()))
	end

	local enemyEnt = self:GetEnemy()
	if IsValid(enemyEnt) then
		if math.random(1,100) <= 3 && !IsValid(controller) && self:Visible(enemyEnt) && self.DoingWeaponAttack then
			self:AvoidThreat()
		end
		if IsValid(controller) then
			if self.CanSwapWeapons && CurTime() > self.NextSwitchT && controller:KeyDown(IN_WALK) then
				self:SwapWeapons()
				self.NextSwitchT = CurTime() +1
			end
			self:Crouch(controller:KeyDown(IN_DUCK))
		else
			if self.CanSwapWeapons && self:Visible(enemyEnt) then
				local dist = enemyEnt:GetPos():Distance(self:GetPos())
				local class = self:GetActiveWeapon():GetClass()
				if class == self.Primary && dist <= 350 && math.random(1,70) == 1 && CurTime() > self.NextSwitchT then
					self:SwapWeapons()
				elseif class == self.Secondary && dist > 350 && math.random(1,20) == 1 && CurTime() > self.NextSwitchT then
					self:SwapWeapons()
				end
			end
		end
	end
	if SERVER then
		if IsValid(self.Bomb) then
			local bonepos,boneang = self:GetBonePosition(self:LookupBone("ValveBiped.Bip01_Spine1"))
			self.Bomb:SetPos(bonepos +self:GetForward() *-3 +self:GetUp() *-4)
			self.Bomb:SetAngles(boneang +Angle(-20,90,15))
			self.Bomb:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
		end
	end
	if debug then
		if CurTime() > c && self:GetCurWaypointPos() then
			local vec = self:GetCurWaypointPos()
			local targX = self:GetPos() +self:GetForward() *(75 *self:GetPoseParameter("move_x"))
			local targY = self:GetPos() +self:GetRight() *(75 *self:GetPoseParameter("move_y"))
			targX.z = vec.z
			targY.z = vec.z
			VJ_CreateTestObject(vec +defOffset,Angle(0,0,0),Color(0,100,255))
			VJ_CreateTestObject(targX,Angle(0,0,0),Color(255,0,0))
			VJ_CreateTestObject(targY,Angle(0,0,0),Color(0,255,13))
			c = CurTime() +0.5
		end
	end
	self.DisableWandering = self.GM
	if self.GM && !IsValid(controller) then
		local currentGM = self:VJ_CSS_HostageActive() or self:VJ_CSS_ModeActive()
		if !currentGM then
			self.GM = false
			return
		end
		local team = self.Team
		if IsValid(self:VJ_CSS_HostageModeEntity()) then
			local zones = self:VJ_CSS_FindRescueZones()
			local hostages = self:VJ_CSS_FindHostages()
			local waitingHostages = {}
			if team == 1 then // CT
				if !IsValid(enemyEnt) then
					if CurTime() > self.NextObjectiveT then
						for _,v in pairs(hostages) do
							if !IsValid(v.FollowingEntity) then
								table.insert(waitingHostages,v)
							end
						end
						if #waitingHostages > 0 then
							self.Objective = VJ_PICK(waitingHostages)
							if self.Objective then
								self.TargetPosition = self.Objective:GetPos()
								self.NextObjectiveT = CurTime() +math.Rand(12,20)
							end
						else
							self.Objective = VJ_PICK(zones)
							if self.Objective then
								self.TargetPosition = self.Objective:GetPos()
								self.NextObjectiveT = CurTime() +math.Rand(20,30)
							end
						end
					end
					if CurTime() > self.NextSetMoveT && self.TargetPosition then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self:RefreshAI(math.Rand(6,12))
					end
					if IsValid(self.Objective) && self.Objective:IsNPC() && self:GetPos():Distance(self.Objective:GetPos()) <= 80 then
						if !IsValid(self.Objective.FollowingEntity) then
							-- self.Objective.FollowingEntity = self
							self.Objective:SetFollowEntity(self)
							self:RefreshAI()
						end
					end
				end
			elseif team == 2 then // T
				if !IsValid(enemyEnt) then
					if CurTime() > self.NextObjectiveT then
						if math.random(1,8) == 1 then
							self.Objective = VJ_PICK(zones)
							if self.Objective then
								-- self.TargetPosition = self.Objective:GetPos() +Vector(math.Rand(-700,700),math.Rand(-700,700),math.Rand(0,200))
								local b = self:GoToSpot(800,self.Objective)
								if !b then
									self.TargetPosition = self.Objective:GetPos() +Vector(math.Rand(-700,700),math.Rand(-700,700),math.Rand(0,200))
								end
							end
							self.NextObjectiveT = CurTime() +math.Rand(45,60)
						else
							self.Objective = VJ_PICK(hostages)
							if self.Objective then
								-- self.TargetPosition = self.Objective:GetPos() +Vector(math.Rand(-1200,1200),math.Rand(-1200,1200),math.Rand(-20,200))
								local b = self:GoToSpot(1250,self.Objective)
								if !b then
									self.TargetPosition = self.Objective:GetPos() +Vector(math.Rand(-1200,1200),math.Rand(-1200,1200),math.Rand(-20,200))
								end
							end
							self.NextObjectiveT = CurTime() +math.Rand(20,30)
						end
					end
					if CurTime() > self.NextSetMoveT && self.TargetPosition then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self:RefreshAI(math.Rand(6,12))
					end
				end
			end
			return
		end
		local sites = self:VJ_CSS_FindBombSites()
		local theBomb = self:VJ_CSS_FindBomb()
		if team == 1 then // CT
			if !IsValid(theBomb) then
				if CurTime() > self.NextObjectiveT then
					self.Objective = math.random(1,2)
					self.TargetPosition = sites[self.Objective] +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200))
					self.NextObjectiveT = CurTime() +math.Rand(20,30)
				end
				if self.Objective && !IsValid(enemyEnt) then
					if CurTime() > self.NextSetMoveT then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self:RefreshAI(math.Rand(6,12))
					end
				end
			else
				if !IsValid(enemyEnt) or IsValid(enemyEnt) && enemyEnt:GetPos():Distance(self:GetPos()) > 1000 then
					if CurTime() > self.NextSetMoveT then
						self:SetLastPosition(!IsValid(theBomb.Diffuser) && theBomb:GetPos() or theBomb:GetPos() +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200)))
						self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
						self:RefreshAI(math.Rand(6,12))
					end
					if self:GetPos():Distance(theBomb:GetPos()) <= 110 && !IsValid(theBomb.Diffuser) then
						theBomb.Diffuser = self
					end
					if theBomb.Diffuser == self then
						self:StopMoving()
						self:ClearSchedule()
						self:FaceCertainPosition(theBomb:GetPos())
					end
				end
			end
		elseif team == 2 then // T
			if !IsValid(theBomb) then
				if CurTime() > self.NextObjectiveT then
					self.Objective = math.random(1,2)
					self.TargetPosition = !self.HasTheBomb && sites[self.Objective] +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200)) or sites[self.Objective] +Vector(math.Rand(-200,200),math.Rand(-200,200),math.Rand(0,150))
					self.NextObjectiveT = CurTime() +math.Rand(20,30)
					if IsValid(self:VJ_CSS_FindDroppedBomb()) then
						self.Objective = 3
						self.TargetPosition = self:GetPos()
						self.GrabBomb = self:VJ_CSS_FindDroppedBomb()
					end
				end
				if self.Objective then
					if !self.HasTheBomb && IsValid(enemyEnt) then return end
					if self.HasTheBomb && IsValid(enemyEnt) then
						if self:GetPos():Distance(self.TargetPosition) > 200 then
							return
						end
					end
					if self.Objective == 3 && IsValid(self.GrabBomb) then
						if CurTime() > self.NextSetMoveT then
							self:SetLastPosition(self.GrabBomb:GetPos())
							self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
							self:RefreshAI(math.Rand(6,12))
						end
						if self:GetPos():Distance(self.GrabBomb:GetPos()) < 150 then
							SafeRemoveEntity(self.GrabBomb)
							self.HasTheBomb = true
							self.Objective = math.random(1,2)
							self.TargetPosition = sites[self.Objective] +Vector(math.Rand(-200,200),math.Rand(-200,200),math.Rand(0,150))
						end
						return
					end
					if CurTime() > self.NextSetMoveT then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self:RefreshAI(math.Rand(6,12))
					end
					if self.HasTheBomb then
						if self:GetPos():Distance(self.TargetPosition) <= 120 then
							self:StopMoving()
							self:ClearSchedule()
							self:FaceCertainPosition(self.TargetPosition)
							self:PlantTheBomb()
						end
					end
				end
			else
				if !IsValid(enemyEnt) then
					if self:GetPos():Distance(theBomb:GetPos()) > 1000 then
						if CurTime() > self.NextSetMoveT then
							local b = self:GoToSpot(800,theBomb)
							if !b then
								self:SetLastPosition(theBomb:GetPos() +Vector(math.Rand(-700,700),math.Rand(-700,700),math.Rand(0,200)))
								self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
							end
							self:RefreshAI(math.Rand(6,12))
						end
					end
				end
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)
	if self.HasTheBomb then
		local ent = ents.Create("prop_physics")
		ent:SetModel("models/weapons/w_c4.mdl")
		ent:SetPos(self.Bomb:GetPos())
		ent:SetAngles(self.Bomb:GetAngles())
		ent:Spawn()
		ent:GetPhysicsObject():SetVelocity(self:GetVelocity())
		ent.VJ_CSS_Bomb = true
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	if self:Health() > 0 then
		PrintMessage(HUD_PRINTTALK,self:GetName() .. " has disconnected")
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
				-- self:CustomOnFootStepSound_Run()
				self.FootStepT = CurTime() + self.FootStepTimeRun
				return
			elseif self.DisableFootStepOnWalk == false && (VJ_HasValue(self.AnimTbl_Walk,self:GetMovementActivity()) or (CurSched != nil  && CurSched.IsMovingTask_Walk == true)) /*(VJ_HasValue(VJ_WalkActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomWalkActivites,self:GetMovementActivity()))*/ then
				-- self:CustomOnFootStepSound_Walk()
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