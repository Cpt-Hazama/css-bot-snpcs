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
		end
	end
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
	if #self.SpawnPositions[1] <= 0 then self:PlayerMsg("No Spawn Points for CTs!") self:Remove() end
	if #self.SpawnPositions[2] <= 0 then self:PlayerMsg("No Spawn Points for Ts!") self:Remove() end
	if #self.SpawnPositions[3] <= 0 then self:PlayerMsg("No Spawn Points for Hostages!") self:Remove() end
	if #self.RescueZones < 1 then self:PlayerMsg("Not Enough Hostage Rescue Zones!") self:Remove() end
	
	self:SuccessfulInit()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SuccessfulInit()
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
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlayerNWSound(ply,snd)
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
	self:NextThink(CurTime())
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove() end