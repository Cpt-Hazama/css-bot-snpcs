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
ENT.BloodColor = "Red"
ENT.HasMeleeAttack = false
ENT.PoseParameterLooking_Names = {pitch={"aim_pitch"},yaw={"aim_yaw"},roll={}}
ENT.FootStepTimeRun = 0.3
ENT.FootStepTimeWalk = 0.5

ENT.HasGrenadeAttack = true
ENT.GrenadeAttackEntity = "obj_vj_grenade"
ENT.GrenadeAttackModel = "models/weapons/w_eq_fraggrenade_thrown.mdl"
ENT.AnimTbl_GrenadeAttack = {"idle_grenade"}
ENT.TimeUntilGrenadeIsReleased = 0.7
ENT.GrenadeAttackAttachment = "anim_attachment_RH"

ENT.NextMoveRandomlyWhenShootingTime1 = 2
ENT.NextMoveRandomlyWhenShootingTime2 = 3

ENT.HasCallForHelpAnimation = false
ENT.AnimTbl_CallForHelp = {0}
ENT.CallForBackUpOnDamageAnimation = {0}

ENT.SoundTbl_FootStep = {
	"player/footsteps/concrete1.wav",
	"player/footsteps/concrete2.wav",
	"player/footsteps/concrete3.wav",
	"player/footsteps/concrete4.wav"
}
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
	self:Give(wep)
	self.NextSwitchT = CurTime() +math.Rand(2,5)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_JUMP))
	self:CapabilitiesAdd(bit.bor(CAP_USE))
	self:CapabilitiesAdd(bit.bor(CAP_OPEN_DOORS))
	self:CapabilitiesAdd(bit.bor(CAP_ANIMATEDFACE))
	self:DecideName()
	PrintMessage(HUD_PRINTTALK,self:GetName() .. " has connected")
	
	self.CurrentHoldType = "none"
	self.CurrentFireType = 1
	self.Kevlar = 100

	self.Objective = nil
	self.TargetPosition = nil
	self.GrabBomb = nil
	self.NextObjectiveT = CurTime()
	self.RanBombInit = false
	self.NextSetMoveT = 0
	self.Hostages = {}

	self.NextSwitchT = CurTime() +1
	self.CanSwapWeapons = self:VJ_IsDefaultWeaponSelected()
	timer.Simple(0,function()
		self:SetWeapons()
	end)
	self:SetGrenade(math.random(1,3))
	
	if self:VJ_CSS_ModeActive() or self:VJ_CSS_HostageActive() then
		self.NextObjectiveT = CurTime() +1
		self.Team = self.VJ_NPC_Class[1] == "CLASS_CSS_CT" && 1 or 2
		self.GM = true
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
				self.DamageSpark1 = ents.Create("env_spark")
				self.DamageSpark1:SetKeyValue("Magnitude","1")
				self.DamageSpark1:SetKeyValue("Spark Trail Length","1")
				self.DamageSpark1:SetPos(dmginfo:GetDamagePosition())
				self.DamageSpark1:SetAngles(self:GetAngles())
				self.DamageSpark1:SetParent(self)
				self.DamageSpark1:Spawn()
				self.DamageSpark1:Activate()
				self.DamageSpark1:Fire("StartSpark","",0)
				self.DamageSpark1:Fire("StopSpark","",0.001)
				self:DeleteOnRemove(self.DamageSpark1)
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
function ENT:SetAnimData(idle,crouch,crouch_move,walk,run,fire,reload,jump)
	if type(idle) == "string" then idle = VJ_SequenceToActivity(self,idle) end
	if type(crouch) == "string" then crouch = VJ_SequenceToActivity(self,crouch) end
	if type(crouch_move) == "string" then crouch_move = VJ_SequenceToActivity(self,crouch_move) end
	if type(walk) == "string" then walk = VJ_SequenceToActivity(self,walk) end
	if type(run) == "string" then run = VJ_SequenceToActivity(self,run) end
	if type(fire) == "string" then fire = VJ_SequenceToActivity(self,fire) end
	if type(reload) == "string" then reload = VJ_SequenceToActivity(self,reload) end
	if type(jump) == "string" then jump = VJ_SequenceToActivity(self,jump) end

	self.WeaponAnimTranslations[ACT_IDLE] 							= idle
	self.WeaponAnimTranslations[ACT_WALK] 							= walk
	self.WeaponAnimTranslations[ACT_RUN] 							= run
	self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= idle
	self.WeaponAnimTranslations[ACT_WALK_AIM] 						= walk
	self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= crouch_move
	self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= crouch_move
	self.WeaponAnimTranslations[ACT_RUN_AIM] 						= run
	self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= crouch_move
	self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= crouch_move
	self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= idle
	self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= fire
	self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= crouch
	self.WeaponAnimTranslations[ACT_RELOAD]							= "vjges_" .. VJ_GetSequenceName(self,reload)
	self.WeaponAnimTranslations[ACT_COVER_LOW] 						= crouch
	self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= "vjges_" .. VJ_GetSequenceName(self,reload)
	self.WeaponAnimTranslations[ACT_JUMP] 							= jump
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSetupWeaponHoldTypeAnims(htype)
	self.CurrentHoldType = htype
	local idle = ACT_HL2MP_IDLE
	local walk = ACT_HL2MP_WALK
	local crouch_move = ACT_HL2MP_WALK_CROUCH
	local run = ACT_HL2MP_RUN
	local fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST
	local crouch = ACT_HL2MP_IDLE_CROUCH
	local reload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
	if htype == "ar2" && self:GetActiveWeapon().CS_HType != "mach" then
		idle = ACT_HL2MP_IDLE_AR2
		walk = ACT_HL2MP_WALK_AR2
		crouch_move = ACT_HL2MP_WALK_CROUCH_AR2
		run = ACT_HL2MP_RUN_AR2
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
		crouch = ACT_HL2MP_IDLE_CROUCH_AR2
		reload = ACT_HL2MP_GESTURE_RELOAD_AR2
		jump = ACT_HL2MP_JUMP_AR2
	elseif htype == "smg" && self:GetActiveWeapon().CS_HType != "mac" then
		idle = ACT_HL2MP_IDLE_SMG1
		walk = ACT_HL2MP_WALK_SMG1
		crouch_move = ACT_HL2MP_WALK_CROUCH_SMG1
		run = ACT_HL2MP_RUN_SMG1
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
		crouch = ACT_HL2MP_IDLE_CROUCH_SMG1
		reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
		jump = ACT_HL2MP_JUMP_SMG1
	elseif htype == "shotgun" then
		idle = ACT_HL2MP_IDLE_SHOTGUN
		walk = ACT_HL2MP_WALK_SHOTGUN
		crouch_move = ACT_HL2MP_WALK_CROUCH_SHOTGUN
		run = ACT_HL2MP_RUN_SHOTGUN
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
		crouch = ACT_HL2MP_IDLE_CROUCH_SHOTGUN
		reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
		jump = ACT_HL2MP_JUMP_SHOTGUN
	elseif htype == "rpg" then
		idle = ACT_HL2MP_IDLE_RPG
		walk = ACT_HL2MP_WALK_RPG
		crouch_move = ACT_HL2MP_WALK_CROUCH_RPG
		run = ACT_HL2MP_RUN_RPG
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
		crouch = ACT_HL2MP_IDLE_CROUCH_RPG
		reload = ACT_HL2MP_GESTURE_RELOAD_RPG
		jump = ACT_HL2MP_JUMP_RPG
	elseif htype == "pistol" then
		idle = ACT_HL2MP_IDLE_REVOLVER
		walk = ACT_HL2MP_WALK_REVOLVER
		crouch_move = ACT_HL2MP_WALK_CROUCH_PISTOL
		run = ACT_HL2MP_RUN_REVOLVER
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
		crouch = ACT_HL2MP_IDLE_CROUCH_PISTOL
		reload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
		jump = ACT_HL2MP_JUMP_REVOLVER
	elseif htype == "dual" then
		idle = "idle_dual"
		walk = "walk_dual"
		crouch_move = "cwalk_dual"
		run = "run_dual"
		fire = "range_dual_r"
		crouch = "cidle_dual"
		reload = "reload_dual"
		jump = "jump_dual"
	elseif htype == "revolver" then
		idle = ACT_HL2MP_IDLE_REVOLVER
		walk = ACT_HL2MP_WALK_REVOLVER
		crouch_move = ACT_HL2MP_WALK_CROUCH_REVOLVER
		run = ACT_HL2MP_RUN_REVOLVER
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
		crouch = ACT_HL2MP_IDLE_CROUCH_REVOLVER
		reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
		jump = ACT_HL2MP_JUMP_REVOLVER
	elseif htype == "crossbow" then
		idle = ACT_HL2MP_IDLE_CROSSBOW
		walk = ACT_HL2MP_WALK_CROSSBOW
		crouch_move = ACT_HL2MP_WALK_CROUCH_CROSSBOW
		run = ACT_HL2MP_RUN_CROSSBOW
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
		crouch = ACT_HL2MP_IDLE_CROUCH_CROSSBOW
		reload = ACT_HL2MP_GESTURE_RELOAD_CROSSBOW
		jump = ACT_HL2MP_JUMP_CROSSBOW
	elseif htype == "knife" then
		idle = ACT_HL2MP_IDLE_KNIFE
		walk = ACT_HL2MP_WALK_KNIFE
		crouch_move = ACT_HL2MP_WALK_CROUCH_KNIFE
		run = ACT_HL2MP_RUN_KNIFE
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
		crouch = ACT_HL2MP_IDLE_CROUCH_KNIFE
		reload = ACT_HL2MP_GESTURE_RELOAD_KNIFE
		jump = ACT_HL2MP_JUMP_KNIFE
	elseif htype == "grenade" then
		idle = ACT_HL2MP_IDLE_GRENADE
		walk = ACT_HL2MP_WALK_GRENADE
		crouch_move = ACT_HL2MP_WALK_CROUCH_GRENADE
		run = ACT_HL2MP_RUN_GRENADE
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
		crouch = ACT_HL2MP_IDLE_CROUCH_GRENADE
		reload = ACT_HL2MP_GESTURE_RELOAD_GRENADE
		jump = ACT_HL2MP_JUMP_GRENADE
	elseif htype == "melee" then
		idle = ACT_HL2MP_IDLE_MELEE
		walk = ACT_HL2MP_WALK_MELEE
		crouch_move = ACT_HL2MP_WALK_CROUCH_MELEE
		run = ACT_HL2MP_RUN_MELEE
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
		crouch = ACT_HL2MP_IDLE_CROUCH_MELEE
		reload = ACT_HL2MP_GESTURE_RELOAD_MELEE
		jump = ACT_HL2MP_JUMP_MELEE
	elseif htype == "melee_angry" then
		idle = "idle_melee_angry"
		walk = ACT_HL2MP_WALK_MELEE
		crouch_move = ACT_HL2MP_WALK_CROUCH_MELEE
		run = ACT_HL2MP_RUN_MELEE
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
		crouch = ACT_HL2MP_IDLE_CROUCH_MELEE
		reload = ACT_HL2MP_GESTURE_RELOAD_MELEE
		jump = ACT_HL2MP_JUMP_MELEE
	elseif htype == "melee2" then
		idle = ACT_HL2MP_IDLE_MELEE2
		walk = ACT_HL2MP_WALK_MELEE2
		crouch_move = ACT_HL2MP_WALK_CROUCH_MELEE2
		run = ACT_HL2MP_RUN_MELEE2
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2
		crouch = ACT_HL2MP_IDLE_CROUCH_MELEE2
		reload = ACT_HL2MP_GESTURE_RELOAD_MELEE2
		jump = ACT_HL2MP_JUMP_MELEE2
	elseif htype == "physgun" then
		idle = ACT_HL2MP_IDLE_PHYSGUN
		walk = ACT_HL2MP_WALK_PHYSGUN
		crouch_move = ACT_HL2MP_WALK_CROUCH_PHYSGUN
		run = ACT_HL2MP_RUN_PHYSGUN
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_PHYSGUN
		crouch = ACT_HL2MP_IDLE_CROUCH_PHYSGUN
		reload = ACT_HL2MP_GESTURE_RELOAD_PHYSGUN
		jump = ACT_HL2MP_JUMP_PHYSGUN
	elseif htype == "ar2" && self:GetActiveWeapon().CS_HType == "mach" then
		idle = ACT_HL2MP_IDLE_SHOTGUN
		walk = ACT_HL2MP_WALK_SHOTGUN
		crouch_move = ACT_HL2MP_WALK_CROUCH_SHOTGUN
		run = ACT_HL2MP_RUN_SHOTGUN
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
		crouch = ACT_HL2MP_IDLE_CROUCH_SHOTGUN
		reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
		jump = ACT_HL2MP_JUMP_SHOTGUN
	elseif htype == "smg" && self:GetActiveWeapon().CS_HType == "mac" then
		idle = ACT_HL2MP_IDLE_REVOLVER
		walk = ACT_HL2MP_WALK_REVOLVER
		crouch_move = ACT_HL2MP_WALK_CROUCH_REVOLVER
		run = ACT_HL2MP_RUN_REVOLVER
		fire = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
		crouch = ACT_HL2MP_IDLE_CROUCH_REVOLVER
		reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
		jump = ACT_HL2MP_JUMP_REVOLVER
	end
	self:SetAnimData(idle,crouch,crouch_move,walk,run,fire,reload,jump)
	return true
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
local c = 0
local debug = false
function ENT:CustomOnThink()
	self:DecideXY()
	if self.HasTheBomb && !self.RanBombInit then
		self:BombInit()
		self.RanBombInit = true
	end
	self.HasGrenadeAttack = self.GrenadeCount > 0
	-- if self:GetVelocity():Length() <= 0 && self:GetActivity() == self.WeaponAnimTranslations[ACT_JUMP] then
		-- self:StartEngineTask(GetTaskList("TASK_RESET_ACTIVITY"),0)
		-- self:StopMoving()
		-- self:ClearSchedule()
	-- end
	if IsValid(self:GetEnemy()) then
		if math.random(1,100) <= 3 && self:Visible(self:GetEnemy()) && self.DoingWeaponAttack then
			self:AvoidThreat()
		end
		if self.CanSwapWeapons && self:Visible(self:GetEnemy()) then
			local dist = self:GetEnemy():GetPos():Distance(self:GetPos())
			local class = self:GetActiveWeapon():GetClass()
			if class == self.Primary && dist <= 350 && math.random(1,70) == 1 && CurTime() > self.NextSwitchT then
				self:SwapWeapons()
			elseif class == self.Secondary && dist > 350 && math.random(1,20) == 1 && CurTime() > self.NextSwitchT then
				self:SwapWeapons()
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
	if self:IsMoving() then
		if !self.DoingWeaponAttack && self:GetPos():Distance(self:GetCurWaypointPos()) > 75 then
			self:FaceCertainPosition(self:GetCurWaypointPos())
		end
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
				if !IsValid(self:GetEnemy()) then
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
							end
							self.NextObjectiveT = CurTime() +math.Rand(12,20)
						else
							self.Objective = VJ_PICK(zones)
							if self.Objective then
								self.TargetPosition = self.Objective:GetPos()
							end
							self.NextObjectiveT = CurTime() +math.Rand(20,30)
						end
					end
					if CurTime() > self.NextSetMoveT && self.TargetPosition then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self.NextSetMoveT = CurTime() +math.Rand(6,12)
					end
					if IsValid(self.Objective) && self:GetPos():Distance(self.Objective:GetPos()) <= 80 then
						if !IsValid(self.Objective.FollowingEntity) then
							self.Objective.FollowingEntity = self
							self.NextObjectiveT = CurTime() +1
						end
					end
				end
			elseif team == 2 then // T
				if !IsValid(self:GetEnemy()) then
					if CurTime() > self.NextObjectiveT then
						if math.random(1,8) == 1 then
							self.Objective = VJ_PICK(zones)
							if self.Objective then
								self.TargetPosition = self.Objective:GetPos() +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200))
							end
							self.NextObjectiveT = CurTime() +math.Rand(45,60)
						else
							self.Objective = VJ_PICK(hostages)
							if self.Objective then
								self.TargetPosition = self.Objective:GetPos() +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200))
							end
							self.NextObjectiveT = CurTime() +math.Rand(20,30)
						end
					end
					if CurTime() > self.NextSetMoveT && self.TargetPosition then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self.NextSetMoveT = CurTime() +math.Rand(6,12)
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
				if self.Objective && !IsValid(self:GetEnemy()) then
					if CurTime() > self.NextSetMoveT then
						self:SetLastPosition(self.TargetPosition)
						self:VJ_TASK_GOTO_LASTPOS(self:GetPos():Distance(self.TargetPosition) > 600 && "TASK_RUN_PATH" or "TASK_WALK_PATH")
						self.NextSetMoveT = CurTime() +math.Rand(6,12)
					end
				end
			else
				if !IsValid(self:GetEnemy()) or IsValid(self:GetEnemy()) && self:GetEnemy():GetPos():Distance(self:GetPos()) > 1000 then
					if CurTime() > self.NextSetMoveT then
						self:SetLastPosition(!IsValid(theBomb.Diffuser) && theBomb:GetPos() or theBomb:GetPos() +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200)))
						self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
						self.NextSetMoveT = CurTime() +math.Rand(6,12)
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
					if !self.HasTheBomb && IsValid(self:GetEnemy()) then return end
					if self.HasTheBomb && IsValid(self:GetEnemy()) then
						if self:GetPos():Distance(self.TargetPosition) > 200 then
							return
						end
					end
					if self.Objective == 3 && IsValid(self.GrabBomb) then
						if CurTime() > self.NextSetMoveT then
							self:SetLastPosition(self.GrabBomb:GetPos())
							self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
							self.NextSetMoveT = CurTime() +math.Rand(6,12)
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
						self.NextSetMoveT = CurTime() +math.Rand(6,12)
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
				if !IsValid(self:GetEnemy()) then
					if self:GetPos():Distance(theBomb:GetPos()) > 1000 then
						if CurTime() > self.NextSetMoveT then
							self:SetLastPosition(theBomb:GetPos() +Vector(math.Rand(-500,500),math.Rand(-500,500),math.Rand(0,200)))
							self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
							self.NextSetMoveT = CurTime() +math.Rand(6,12)
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
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/