AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

ENT.CT_Classes = {"npc_vj_css_ct_gign","npc_vj_css_ct_gsg","npc_vj_css_ct_sas","npc_vj_css_ct_seal"}
ENT.T_Classes = {"npc_vj_css_t_arctic","npc_vj_css_t_elite","npc_vj_css_t_guerilla","npc_vj_css_t_phoenix"}
ENT.CT_Weapons = VJ_CSS_WEAPONS_CT
ENT.T_Weapons = VJ_CSS_WEAPONS_T

util.AddNetworkString("vj_css_csound")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
	self:SetModel("models/props_junk/popcan01a.mdl")
	self:DrawShadow(false)
	self:SetNoDraw(true)
	self:SetNotSolid(true)
	for _,v in pairs(ents.FindByClass(self:GetClass())) do
		if IsValid(v) && v != self then
			self:Remove()
			print("Only one CSS Gamemode can be active at a time! Removing duplicate...")
			return
		end
	end
	self.DidInitialize = false
	self.SpawnPositions = {[1]={},[2]={},[3]={}}
	self.RescueZones = {}
	for _,v in pairs(ents.FindByClass("sent_vj_css_spawn_ct")) do
		table.insert(self.SpawnPositions[1],v)
		v.MasterEntity = self
	end
	for _,v in pairs(ents.FindByClass("sent_vj_css_spawn_t")) do
		table.insert(self.SpawnPositions[2],v)
		v.MasterEntity = self
	end
	for _,v in pairs(ents.FindByClass("sent_vj_css_spawn_hostage")) do
		table.insert(self.SpawnPositions[3],v)
		v.MasterEntity = self
	end
	for _,v in pairs(ents.FindByClass("sent_vj_css_rescuesite")) do
		table.insert(self.RescueZones,v:GetPos())
		v.MasterEntity = self
	end
	local def = VJ_CSS_GetDefaultPoints()
	if #self.SpawnPositions[1] <= 0 then
		local total = 0
		def.CT = def.CT or {}
		for _,v in RandomPairs(def.CT) do
			if total >= VJ_CSS_MAX_BOT then break end
			local ent = ents.Create("sent_vj_css_spawn_ct")
			ent:SetPos(v:GetPos())
			ent:Spawn()
			ent.MasterEntity = self
			table.insert(self.SpawnPositions[1],ent)
			total = total +1
		end
	end
	if #self.SpawnPositions[2] <= 0 then
		def.T = def.T or {}
		local total = 0
		for _,v in RandomPairs(def.T) do
			if total >= VJ_CSS_MAX_BOT then break end
			local ent = ents.Create("sent_vj_css_spawn_t")
			ent:SetPos(v:GetPos())
			ent:Spawn()
			ent.MasterEntity = self
			table.insert(self.SpawnPositions[2],ent)
			total = total +1
		end
	end
	if #self.SpawnPositions[3] <= 0 then
		def.H = def.H or {}
		for _,v in RandomPairs(def.H) do
			local ent = ents.Create("sent_vj_css_spawn_hostage")
			ent:SetPos(v:GetPos())
			ent:Spawn()
			ent.MasterEntity = self
			table.insert(self.SpawnPositions[3],ent)
		end
	end
	-- if #self.RescueZones <= 0 then
	-- 	def.Rescue = def.Rescue or {}
	-- 	for _,v in pairs(def.Rescue) do
	-- 		local ent = ents.Create("sent_vj_css_rescuesite")
	-- 		ent:SetPos(v:GetPos())
	-- 		ent:Spawn()
	-- 		ent.MasterEntity = self
	-- 		table.insert(self.RescueZones,ent:GetPos())
	-- 	end
	-- end
	if #self.SpawnPositions[1] <= 0 then self:PlayerMsg("No Spawn Points for CTs!") self:Remove() end
	if #self.SpawnPositions[2] <= 0 then self:PlayerMsg("No Spawn Points for Ts!") self:Remove() end
	if #self.SpawnPositions[3] <= 0 then self:PlayerMsg("No Spawn Points for Hostages!") self:Remove() end
	if #self.RescueZones < 1 then self:PlayerMsg("Not Enough Hostage Rescue Zones!") self:Remove() end
	
	self:SuccessfulInit()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SuccessfulInit()
	if !VJ_CVAR_IGNOREPLAYERS then
		for _,v in pairs(player.GetAll()) do
			VJ_CSS_ApplyTeamSettings(v)
			self:PlayerNWSound(v,"music/cs_stinger.wav")
		end
	end

	hook.Add("PlayerDeath",self,function(self,ply)
		self:PlayerNWSound(ply,"music/valve_csgo_0" .. ply:GetInfoNum("vj_css_team",1) .. "/deathcam.mp3")
	end)

	for i = 1,#self.SpawnPositions[1] do
		local pos = self.SpawnPositions[1][i]
		if pos then
			local bot = ents.Create(VJ_PICK(self.CT_Classes))
			bot:SetPos(pos:GetPos())
			bot:Spawn()
			bot.NextObjectiveT = CurTime() +1
			bot.Team = 1
			bot.GM = true
			bot:Give(VJ_PICK(self.CT_Weapons))
			SafeRemoveEntity(pos)
			self:DeleteOnRemove(bot)
		end
	end
	for i = 1,#self.SpawnPositions[2] do
		local pos = self.SpawnPositions[2][i]
		if pos then
			local bot = ents.Create(VJ_PICK(self.T_Classes))
			bot:SetPos(pos:GetPos())
			bot:Spawn()
			bot.NextObjectiveT = CurTime() +1
			bot.Team = 2
			bot.GM = true
			bot:Give(VJ_PICK(self.T_Weapons))
			SafeRemoveEntity(pos)
			self:DeleteOnRemove(bot)
		end
	end
	for i = 1,#self.SpawnPositions[3] do
		local pos = self.SpawnPositions[3][i]
		if pos then
			local bot = ents.Create("npc_vj_css_hostage")
			bot:SetPos(pos:GetPos())
			bot:Spawn()
			bot.NextObjectiveT = CurTime() +1
			bot.Team = 1
			bot.GM = true
			SafeRemoveEntity(pos)
			self:DeleteOnRemove(bot)
		end
	end

	self.DidInitialize = true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayerNWSound(ply,snd)
	print(ply,snd)
    net.Start("vj_css_csound")
		net.WriteEntity(ply)
		net.WriteString(snd)
    net.Send(ply)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayerMsg(msg)
	PrintMessage(HUD_PRINTTALK,msg)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Winner(team)
	local name = team == 1 && "Counter-Terrorists" or "Terrorists"
	self:PlayerMsg(name .. " have won!")
	for _,v in pairs(player.GetAll()) do
		self:PlayerNWSound(v,team == 1 && "radio/ctwin.wav" or "radio/terwin.wav")
		self:PlayerNWSound(v,"music/valve_csgo_0" .. v:GetInfoNum("vj_css_team",1) .. "/wonround.mp3")
	end
	self:Remove()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CheckHostages(madeIt)
	local tbl = ents.FindByClass("npc_vj_css_hostage")
	local count = #tbl -1
	if count <= 0 then
		self:Winner(madeIt && 1 or 2)
		return true
	end
	if madeIt then
		local text = count > 1 && "Hostages" or "Hostage"
		self:PlayerMsg(count .. " " .. text .. " remaining!")
	else
		local text = count > 1 && "Hostages" or "Hostage"
		self:PlayerMsg("A Hostage was killed! " .. count .. " " .. text .. " remaining!")
	end

	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Think()
	if !self.DidInitialize then return end
	local CT = ents.FindByClass("npc_vj_css_ct*")
	local T = ents.FindByClass("npc_vj_css_t*")
	if !VJ_CVAR_IGNOREPLAYERS then
		for _,v in pairs(player.GetAll()) do
			if v:Alive() && VJ_HasValue(v.VJ_NPC_Class,"CLASS_CSS_CT") then
				table.insert(CT,v)
			elseif v:Alive() && VJ_HasValue(v.VJ_NPC_Class,"CLASS_CSS_T") then
				table.insert(T,v)
			end
		end
	end
	if #CT <= 0 then
		self:Winner(2)
	elseif #T <= 0 then
		self:Winner(1)
	end
	self:NextThink(CurTime())
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove() end