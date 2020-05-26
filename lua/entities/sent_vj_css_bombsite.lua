/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end

ENT.Base 			= "base_gmodentity"
ENT.Type 			= "anim"
ENT.PrintName 		= "Bomb Site"
ENT.Author 			= "Cpt. Hazama"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Sets the spawnpoint for all the players in the map!"
ENT.Instructions 	= "Don't change anything."
-- ENT.Category		= "VJ Base"

ENT.Spawnable = false
ENT.AdminSpawnable = false
---------------------------------------------------------------------------------------------------------------------------------------------
if (CLIENT) then
	function ENT:Draw()
		self:DrawModel()
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if !(SERVER) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
	self:SetModel("models/props_junk/garbage_carboard002a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
	self:SetUseType(SIMPLE_USE)
	self:SetNoDraw(true)
	self:DrawShadow(false)

	local pass = true
	local count = 0
	local sites = {}
	for _,v in pairs(ents.GetAll()) do
		if v:GetClass() == self:GetClass() && v != self then
			count = count+1
			table.insert(sites,v)
		end
	end
	if count >= 2 then
		Entity(1):ChatPrint("Only 2 bomb sites at a time!")
		pass = false
		self:Remove()
	end
	if !pass then return end
	if #sites > 0 && sites[1]:GetNWString("Site") == "A" then
		self:SetNWString("Site","B")
	else
		self:SetNWString("Site","A")
	end
	
	Entity(1):ChatPrint("Successfully created Bomb Site " .. self:GetNWString("Site") .. "!")
	
	local tr = util.TraceLine({start=self:GetPos(),endpos=self:GetPos() +Vector(math.Rand(-150,150),math.Rand(-150,150),-150),filter=self})
	local tr2 = util.TraceLine({start=self:GetPos(),endpos=self:GetPos() +Vector(math.Rand(-150,150),math.Rand(-150,150),-150),filter=self})
	util.Decal("VJ_CSS_BombSite",tr.HitPos +tr.HitNormal,tr.HitPos -tr.HitNormal,self)
	util.Decal("VJ_CSS_BombSite" .. self:GetNWString("Site"),tr2.HitPos +tr2.HitNormal,tr2.HitPos -tr2.HitNormal,self)
end
/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/