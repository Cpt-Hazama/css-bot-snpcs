/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2020 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Counter-Strike: Source SNPCs"
local AddonName = "CS:S"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_css_spawn.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

	local vCat = "Counter-Strike: Source"
	local vCatTools = "Counter-Strike: Source - Tools"
	VJ.AddCategoryInfo(vCat,{Icon = "vj_icons/css.png"})
	VJ.AddCategoryInfo(vCatTools,{Icon = "vj_icons/css.png"})
	
	VJ.AddConVar("vj_css_bot_debug",0)
	VJ.AddClientConVar("vj_css_team","0","Automatically set player team since people are too stupid to press 2 buttons... [0 = Disabled, 1 = CT, 2 = T]")

	if CLIENT then
		hook.Add("PopulateToolMenu", "VJ_ADDTOMENU_CSS", function()
			spawnmenu.AddToolMenuOption("DrVrej", "SNPC Configures", "Counter-Strike Source", "Counter-Strike Source", "", "", function(Panel)
				if !game.SinglePlayer() && !LocalPlayer():IsAdmin() then
					Panel:AddControl("Label", {Text = "#vjbase.menu.general.admin.not"})
					Panel:AddControl( "Label", {Text = "#vjbase.menu.general.admin.only"})
					return
				end
				Panel:AddControl("Label",{Text = "#vjbase.menu.general.admin.only"})
				Panel:AddControl("Checkbox", {Label = "[Developers] Enable Bot Debugging", Command = "vj_css_bot_debug"})
				Panel:AddControl("Slider", {Label = "Choose Your Team", Command = "vj_css_team", Type = "Integer", Min = "0", Max = "2"})
				Panel:AddControl("Label",{Text = "0 = No Team, 1 = Counter-Terrorists, 2 = Terrorists"})
				Panel:AddControl("Label",{Text = "Note that if your Team isn't 0, many of your Player values/settings will change!"})
			end)
		end)
	end

	if SERVER then
		util.AddNetworkString("vj_css_teams")
	
		local CT_PRI = {
			"weapon_vj_css_m16",
			"weapon_vj_css_tmp",
			"weapon_vj_css_aug",
			"weapon_vj_css_famas",
			"weapon_vj_css_sg550",
			"weapon_vj_css_m3super",
			"weapon_vj_css_xm1014",
			"weapon_vj_css_mp5",
			"weapon_vj_css_p90",
			"weapon_vj_css_ump",
			"weapon_vj_css_awp",
			"weapon_vj_css_scout",
			"weapon_vj_css_m249",
		}

		local CT_SEC = {
			"weapon_vj_css_deagle",
			"weapon_vj_css_dualelite",
			"weapon_vj_css_p228",
			"weapon_vj_css_fiveseven",
			"weapon_vj_css_usp",
		}
		
		local T_PRI = {
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
			"weapon_vj_css_m249",
		}

		local T_SEC = {
			"weapon_vj_css_deagle",
			"weapon_vj_css_dualelite",
			"weapon_vj_css_p228",
			"weapon_vj_css_glock",
		}

		function VJ_CSS_ApplyTeamSettings(ply,plyTeam)
			local team = plyTeam or ply:GetInfoNum("vj_css_team",0)
			ply:SetHealth(100)
			ply:SetArmor(100)

			local function GiveWep(wep,draw)
				ply.VJ_CurPickupWithoutUse = wep
				ply:Give(wep)
				if draw then
					ply:SelectWeapon(wep)
				end
			end

			ply:StripWeapons()
			GiveWep(VJ_PICK(team == 1 && CT_PRI or team == 2 && T_PRI),true)
			GiveWep(VJ_PICK(team == 1 && CT_SEC or team == 2 && T_SEC))
			GiveWep("weapon_vj_css_knife")

			-- local tblCT = {
			-- 	"models/player/gasmask.mdl",
			-- 	"models/player/riot.mdl",
			-- 	"models/player/urban.mdl",
			-- 	"models/player/swat.mdl"
			-- }
			-- local tblT = {
			-- 	"models/player/arctic.mdl",
			-- 	"models/player/guerilla.mdl",
			-- 	"models/player/leet.mdl",
			-- 	"models/player/phoenix.mdl"
			-- }
			-- ply:SetModel(VJ_PICK(team == 1 && tblCT or team == 2 && tblT))
			-- ply:SetupHands(ply)
			-- local data = player_manager.TranslatePlayerHands(ply:GetModel())
			-- local hands = ply:GetHands()
			-- hands:SetModel(data.model)
			-- hands:SetSkin(data.skin)
			-- hands:SetBodyGroups(data.body)

			ply.VJ_NPC_Class = {team == 1 && "CLASS_CSS_CT" or team == 2 && "CLASS_CSS_T"}

			local gamemodeEnt = VJ_CSS_HostageModeEntity() or VJ_CSS_ModeEntity()
			if IsValid(gamemodeEnt) then
				local spawns = gamemodeEnt.SpawnPositions[team]
				if spawns then
					local spawn = VJ_PICK(spawns)
					ply:SetPos(spawn:GetPos() +Vector(0,0,4))
					table.remove(spawns,table.KeyFromValue(spawns,spawn))
					spawn:Remove()
				end
			end
		end

		net.Receive("vj_css_teams",function(len,ply)
			local team = net.ReadInt(8)
			local ply = net.ReadEntity()

			VJ_CSS_ApplyTeamSettings(ply,team)
		end)
	end

	if CLIENT then
		function VJ_SetTeams()
			local ply = LocalPlayer()
			net.Start("vj_css_teams")
				net.WriteInt(ply:GetInfoNum("vj_css_team",0),8)
				net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	game.AddDecal("VJ_CSS_BombSite",{"cstrike/target"})
	game.AddDecal("VJ_CSS_BombSiteA",{"cstrike/siteA"})
	game.AddDecal("VJ_CSS_BombSiteB",{"cstrike/siteB"})
	
	VJ_CSS_WEAPONS_CT = {
		"weapon_vj_css_m16",
		"weapon_vj_css_fiveseven",
		"weapon_vj_css_usp",
		"weapon_vj_css_tmp",
		"weapon_vj_css_aug",
		"weapon_vj_css_famas",
		"weapon_vj_css_sg550",

		"weapon_vj_css_deagle",
		"weapon_vj_css_dualelite",
		"weapon_vj_css_p228",
		"weapon_vj_css_m3super",
		"weapon_vj_css_xm1014",
		"weapon_vj_css_mp5",
		"weapon_vj_css_p90",
		"weapon_vj_css_ump",
		"weapon_vj_css_awp",
		"weapon_vj_css_scout",
		"weapon_vj_css_m249",
	}
	
	VJ_CSS_WEAPONS_T = {
		"weapon_vj_css_ak47",
		"weapon_vj_css_glock",
		"weapon_vj_css_mac10",
		"weapon_vj_css_galil",
		"weapon_vj_css_sg552",

		"weapon_vj_css_deagle",
		"weapon_vj_css_dualelite",
		"weapon_vj_css_p228",
		"weapon_vj_css_m3super",
		"weapon_vj_css_xm1014",
		"weapon_vj_css_mp5",
		"weapon_vj_css_p90",
		"weapon_vj_css_ump",
		"weapon_vj_css_awp",
		"weapon_vj_css_scout",
		"weapon_vj_css_m249",
	}

	VJ.AddNPC_HUMAN("(T) Arctic Avenger","npc_vj_css_t_arctic",VJ_CSS_WEAPONS_T,vCat)
	VJ.AddNPC_HUMAN("(T) Elite Crew","npc_vj_css_t_elite",VJ_CSS_WEAPONS_T,vCat)
	VJ.AddNPC_HUMAN("(T) Guerilla Warfare","npc_vj_css_t_guerilla",VJ_CSS_WEAPONS_T,vCat)
	VJ.AddNPC_HUMAN("(T) Phoenix Connexion","npc_vj_css_t_phoenix",VJ_CSS_WEAPONS_T,vCat)
	VJ.AddNPC("(T) Random","sent_vj_css_rand_t",vCat)

	VJ.AddNPC_HUMAN("(CT) GIGN","npc_vj_css_ct_gign",VJ_CSS_WEAPONS_CT,vCat)
	VJ.AddNPC_HUMAN("(CT) GSG-9","npc_vj_css_ct_gsg",VJ_CSS_WEAPONS_CT,vCat)
	VJ.AddNPC_HUMAN("(CT) SAS","npc_vj_css_ct_sas",VJ_CSS_WEAPONS_CT,vCat)
	VJ.AddNPC_HUMAN("(CT) SEAL Team 6","npc_vj_css_ct_seal",VJ_CSS_WEAPONS_CT,vCat)
	VJ.AddNPC("(CT) Random","sent_vj_css_rand_ct",vCat)

	VJ.AddNPC("Hostage","npc_vj_css_hostage",vCat)

	VJ.AddNPC("(CT) Spawn Point","sent_vj_css_spawn_ct",vCatTools)
	VJ.AddNPC("(T) Spawn Point","sent_vj_css_spawn_t",vCatTools)
	VJ.AddNPC("Hostage Spawn Point","sent_vj_css_spawn_hostage",vCatTools)
	VJ.AddNPC("Bomb Site","sent_vj_css_bombsite",vCatTools)
	VJ.AddNPC("Rescue Zone","sent_vj_css_rescuesite",vCatTools)
	VJ.AddNPC("(GM) Bomb Defusal","sent_vj_css_gamemode",vCatTools)
	VJ.AddNPC("(GM) Hostage Rescue","sent_vj_css_gamemode_hostage",vCatTools)
	
	local allWeapons = {
		["weapon_vj_css_m16"] = "VJ_CSS_M4A1",
		["weapon_vj_css_ak47"] = "VJ_CSS_AK47",
		["weapon_vj_css_glock"] = "VJ_CSS_Glock18",
		["weapon_vj_css_usp"] = "VJ_CSS_USP",
		["weapon_vj_css_p228"] = "VJ_CSS_P228",
		["weapon_vj_css_deagle"] = "VJ_CSS_Deagle",
		["weapon_vj_css_fiveseven"] = "VJ_CSS_FiveseveN",
		["weapon_vj_css_dualelite"] = "VJ_CSS_DualElites",
		["weapon_vj_css_mac10"] = "VJ_CSS_MAC10",
		["weapon_vj_css_tmp"] = "VJ_CSS_TMP",
		["weapon_vj_css_mp5"] = "VJ_CSS_MP5",
		["weapon_vj_css_ump"] = "VJ_CSS_UMP45",
		["weapon_vj_css_p90"] = "VJ_CSS_P90",
		["weapon_vj_css_m3super"] = "VJ_CSS_M3Super",
		["weapon_vj_css_xm1014"] = "VJ_CSS_XM1014",
		["weapon_vj_css_galil"] = "VJ_CSS_Galil",
		["weapon_vj_css_famas"] = "VJ_CSS_FAMAS",
		["weapon_vj_css_sg552"] = "VJ_CSS_SG552",
		["weapon_vj_css_aug"] = "VJ_CSS_AUG",
		["weapon_vj_css_m249"] = "VJ_CSS_M249",
		["weapon_vj_css_scout"] = "VJ_CSS_Scout",
		["weapon_vj_css_g3sg"] = "VJ_CSS_G3SG",
		["weapon_vj_css_sg550"] = "VJ_CSS_SG550",
		["weapon_vj_css_awp"] = "VJ_CSS_AWP",
		["weapon_vj_css_knife"] = "VJ_CSS_Knife",
	}
	for ent,name in SortedPairs(allWeapons) do
		list.Add("NPCUsableWeapons",{class=ent,title=name})
	end
	
	-- VJ.AddNPCWeapon("VJ_CSS_M4A1","weapon_vj_css_m16")
	-- VJ.AddNPCWeapon("VJ_CSS_AK47","weapon_vj_css_ak47")
	-- VJ.AddNPCWeapon("VJ_CSS_Glock","weapon_vj_css_glock")
	-- VJ.AddNPCWeapon("VJ_CSS_USP","weapon_vj_css_usp")
	-- VJ.AddNPCWeapon("VJ_CSS_P228","weapon_vj_css_p228")
	-- VJ.AddNPCWeapon("VJ_CSS_Deagle","weapon_vj_css_deagle")
	-- VJ.AddNPCWeapon("VJ_CSS_FiveseveN","weapon_vj_css_fiveseven")
	-- VJ.AddNPCWeapon("VJ_CSS_DualElite","weapon_vj_css_dualelite")
	-- VJ.AddNPCWeapon("VJ_CSS_MAC10","weapon_vj_css_mac10")
	-- VJ.AddNPCWeapon("VJ_CSS_TMP","weapon_vj_css_tmp")
	-- VJ.AddNPCWeapon("VJ_CSS_MP5","weapon_vj_css_mp5")
	-- VJ.AddNPCWeapon("VJ_CSS_UMP45","weapon_vj_css_ump")
	-- VJ.AddNPCWeapon("VJ_CSS_P90","weapon_vj_css_p90")
	-- VJ.AddNPCWeapon("VJ_CSS_M3Super","weapon_vj_css_m3super")
	-- VJ.AddNPCWeapon("VJ_CSS_XM1014","weapon_vj_css_xm1014")
	-- VJ.AddNPCWeapon("VJ_CSS_Galil","weapon_vj_css_galil")
	-- VJ.AddNPCWeapon("VJ_CSS_FAMAS","weapon_vj_css_famas")
	-- VJ.AddNPCWeapon("VJ_CSS_SG552","weapon_vj_css_sg552")
	-- VJ.AddNPCWeapon("VJ_CSS_AUG","weapon_vj_css_aug")
	-- VJ.AddNPCWeapon("VJ_CSS_M249","weapon_vj_css_m249")
	-- VJ.AddNPCWeapon("VJ_CSS_Scout","weapon_vj_css_scout")
	-- VJ.AddNPCWeapon("VJ_CSS_G3SG","weapon_vj_css_g3sg")
	-- VJ.AddNPCWeapon("VJ_CSS_SG550","weapon_vj_css_sg550")
	-- VJ.AddNPCWeapon("VJ_CSS_AWP","weapon_vj_css_awp")
	-- VJ.AddNPCWeapon("VJ_CSS_Knife","weapon_vj_css_knife")
	
	local NPC = FindMetaTable("NPC")
	
	function VJ_GetCurNavArea(ent, range)
		if navmesh == nil then return false end
		return navmesh.GetNavArea(isvector(ent) && ent or ent:GetPos(), range or 100)
	end
	
	function VJ_ShouldDuck(ent)
		local curNav = VJ_GetCurNavArea(ent)
		if curNav then
			local attributes = curNav:GetAttributes()
			if attributes and attributes != 0 then
				if bit.band(attributes, NAV_MESH_CROUCH) == NAV_MESH_CROUCH then
					return true
				end
			end
		end
	end
	
	function VJ_GetNavAreas(dist,argent)
		if dist && IsValid(argent) then
			local tbl = {}
			local aPos = argent:GetPos()
			for _,CNavArea in pairs(navmesh.GetAllNavAreas()) do
				if CNavArea && CNavArea:GetClosestPointOnArea(aPos):Distance(aPos) <= dist then
					table.insert(tbl,CNavArea)
				end
			end
			return tbl
		end
		return navmesh.GetAllNavAreas()
	end
	
	function VJ_FindHidingSpots(dist,argent,hide)
		local navareas = VJ_GetNavAreas(dist,argent)
		local foundAreas = {}
		for _,v in pairs(navareas) do
			if v:IsUnderwater() then return end
			for _,vec in pairs(v:GetHidingSpots(hide != true && 8 or nil)) do
				table.insert(foundAreas,Vector(vec.x,vec.y,vec.z))
			end
		end
		return foundAreas
	end
	
	-- function VJ_FindHidingSpots(type,dist,argent)
		-- local navareas = VJ_GetNavAreas(dist,argent)
		-- local foundAreas = {}
		-- for _,area in pairs(navareas) do
			-- for _,hidingSpot in pairs(area:GetHidingSpots(1)) do
				-- table.insert(foundAreas,spot)
			-- end
		-- end
		-- return foundAreas
	-- end

	usermessage.Hook("VJ_CSS_ScreenFadeFX",function(data)
		local ply = data:ReadEntity()
		if !IsValid(ply) then return end
		local color = Color(255,255,255,255)
		local durFade = 6
		local durHold = 3
		local fadeSc = color.a /durFade
		local startFade = CurTime() +durHold
		hook.Add("HUDPaint","VJ_CSS_ScreenFadeFX",function()
			if LocalPlayer() == ply then
				local alpha = CurTime() < startFade && color.a || math.Clamp(color.a -fadeSc *(CurTime() -startFade),0,color.a)
				if alpha == 0 then
					hook.Remove("HUDPaint","VJ_CSS_ScreenFadeFX")
					return
				end
				surface.SetDrawColor(color.r,color.g,color.b,alpha)
				surface.DrawRect(0,0,ScrW(),ScrH())
			end
		end)
	end)
	
	local ENT = FindMetaTable("Entity")
	local NPC = FindMetaTable("NPC")
	
	function NPC:VJ_AddLayeredAnimation(seq,autokill,layer,speed)
		local gesture = self:AddGestureSequence(self:LookupSequence(seq),autokill or true)
		self:SetLayerPriority(gesture,layer or 1)
		self:SetLayerPlaybackRate(gesture,(speed or 1) *0.5)

		return gesture
	end
	
	function ENT:VJ_IsDefaultWeaponSelected()
		return GetConVarString("gmod_npcweapon") == ""
	end
	
	function VJ_CSS_ModeEntity()
		local e = NULL
		for _,v in pairs(ents.GetAll()) do
			if v:GetClass() == "sent_vj_css_gamemode" then
				e = v
				break
			end
		end
		return e
	end
	
	function VJ_CSS_HostageModeEntity()
		local e = NULL
		for _,v in pairs(ents.GetAll()) do
			if v:GetClass() == "sent_vj_css_gamemode_hostage" then
				e = v
				break
			end
		end
		return e
	end
	
	function ENT:VJ_CSS_ModeEntity()
		local e = NULL
		for _,v in pairs(ents.GetAll()) do
			if v:GetClass() == "sent_vj_css_gamemode" then
				e = v
				break
			end
		end
		return e
	end
	
	function ENT:VJ_CSS_HostageModeEntity()
		local e = NULL
		for _,v in pairs(ents.GetAll()) do
			if v:GetClass() == "sent_vj_css_gamemode_hostage" then
				e = v
				break
			end
		end
		return e
	end
	
	function ENT:VJ_CSS_ModeActive()
		return IsValid(self:VJ_CSS_ModeEntity())
	end
	
	function ENT:VJ_CSS_HostageActive()
		return IsValid(self:VJ_CSS_HostageModeEntity())
	end
	
	function ENT:VJ_CSS_FindDroppedBomb()
		local e = NULL
		for _,v in pairs(ents.GetAll()) do
			if v:GetClass() == "prop_physics" && v.VJ_CSS_Bomb then
				e = v
				break
			end
		end
		return e
	end
	
	function ENT:VJ_CSS_FindBomb()
		local e = NULL
		for _,v in pairs(ents.GetAll()) do
			if v:GetClass() == "sent_vj_css_bomb" then
				e = v
				break
			end
		end
		return e
	end
	
	function ENT:VJ_CSS_FindBombSites()
		if !IsValid(self:VJ_CSS_ModeEntity()) then return false end
		local sites = self:VJ_CSS_ModeEntity().BombSites
		return sites
	end
	
	function ENT:VJ_CSS_FindHostages()
		return ents.FindByClass("npc_vj_css_hostage")
	end
	
	function ENT:VJ_CSS_FindRescueZones()
		local sites = {}
		for _,v in pairs(ents.FindByClass("sent_vj_css_rescuesite")) do
			table.insert(sites,v)
		end
		return sites
	end

-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end
				
				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end