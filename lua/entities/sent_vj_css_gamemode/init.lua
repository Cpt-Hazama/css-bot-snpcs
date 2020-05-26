AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

ENT.BotsPerTeam = 8

util.AddNetworkString("vj_css_csound")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
	self:SetModel("models/props_junk/popcan01a.mdl")
	self:DrawShadow(false)
	self:SetNoDraw(true)
	self:SetNotSolid(true)
	for _,v in pairs(ents.FindByClass("sent_vj_css_gamemode")) do
		if IsValid(v) && v != self then
			self:Remove()
		end
	end
	self.SpawnPositions = {[1]={},[2]={}}
	self.BombSites = {}
	for _,v in pairs(ents.FindByClass("sent_vj_css_spawn_ct")) do
		table.insert(self.SpawnPositions[1],v)
		v.MasterEntity = self
	end
	for _,v in pairs(ents.FindByClass("sent_vj_css_spawn_t")) do
		table.insert(self.SpawnPositions[2],v)
		v.MasterEntity = self
	end
	for _,v in pairs(ents.FindByClass("sent_vj_css_bombsite")) do
		table.insert(self.BombSites,v:GetPos())
		v.MasterEntity = self
	end
	if #self.SpawnPositions[1] <= 0 then self:PlayerMsg("No Spawn Points for CTs!") self:Remove() end
	if #self.SpawnPositions[2] <= 0 then self:PlayerMsg("No Spawn Points for Ts!") self:Remove() end
	if #self.BombSites < 2 then self:PlayerMsg("Not Enough Bomb Sites!") self:Remove() end
	
	self:SuccessfulInit()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SuccessfulInit()
	local bomber = math.random(1,#self.SpawnPositions[2])
	-- for i = 1,self.BotsPerTeam do
	for i = 1,#self.SpawnPositions[1] do
		-- local pos = VJ_PICK(self.SpawnPositions[1])
		local pos = self.SpawnPositions[1][i]
		if pos then
			local bot = ents.Create(VJ_PICK({"npc_vj_css_ct_gign","npc_vj_css_ct_gsg","npc_vj_css_ct_sas","npc_vj_css_ct_seal"}))
			bot:SetPos(pos:GetPos())
			bot:Spawn()
			bot.NextObjectiveT = CurTime() +1
			bot.Team = 1
			bot.GM = true
			bot:Give(VJ_PICK(VJ_CSS_WEAPONS_CT))
			SafeRemoveEntity(pos)
		end
	end
	-- for i = 1,self.BotsPerTeam do
	for i = 1,#self.SpawnPositions[2] do
		-- local pos = VJ_PICK(self.SpawnPositions[2])
		local pos = self.SpawnPositions[2][i]
		if pos then
			local bot = ents.Create(VJ_PICK({"npc_vj_css_t_arctic","npc_vj_css_t_elite","npc_vj_css_t_guerilla","npc_vj_css_t_phoenix"}))
			bot:SetPos(pos:GetPos())
			bot:Spawn()
			bot.NextObjectiveT = CurTime() +1
			bot.Team = 2
			bot.GM = true
			if i == bomber then
				bot.HasTheBomb = true
			end
			bot:Give(VJ_PICK(VJ_CSS_WEAPONS_T))
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
function ENT:Think()

	self:NextThink(CurTime())
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove()

end