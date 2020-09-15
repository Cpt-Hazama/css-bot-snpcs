if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
function EFFECT:Init(data)
	if !IsValid(data:GetEntity()) then return end
	self.Pos = self:GetTracerShootPos(data:GetOrigin(),data:GetEntity(),data:GetAttachment())
	local Emitter = ParticleEmitter(self.Pos)
	if Emitter == nil then return end

	local flMagnitude = 0
	if IsValid(data:GetEntity()) && IsValid(data:GetEntity():GetOwner()) && data:GetEntity():GetOwner():IsPlayer() && data:GetEntity().Owner == LocalPlayer() then
		flMagnitude = data:GetMagnitude()
	end

	local att = data:GetAttachment()
	local strMuzzle = "cstrike/muzzleflashX"
	local flScale = math.Rand(10,12)

	if IsValid(data:GetEntity()) then
		local tooSmall = data:GetEntity().HoldType == "pistol" or data:GetEntity().HoldType == "dual" or data:GetEntity().HoldType == "shotgun"
		if !tooSmall then
			local emMuzzleX = Emitter:Add(strMuzzle,self.Pos +flMagnitude *data:GetNormal())
			emMuzzleX:SetVelocity(data:GetNormal() +1.1 *data:GetEntity():GetOwner():GetVelocity())
			emMuzzleX:SetDieTime(0.025)
			emMuzzleX:SetStartAlpha(255)
			emMuzzleX:SetStartSize(flScale)
			emMuzzleX:SetEndSize(flScale -0.25)
			emMuzzleX:SetColor(255,255,255)
		end

		for i = 1,3 do
			local emMuzzle = Emitter:Add("effects/muzzleflash" .. math.random(1,4),self.Pos +(data:GetNormal()) +data:GetEntity():GetAttachment(att).Ang:Forward() *(i *5))
			emMuzzle:SetVelocity(data:GetEntity():GetAttachment(att).Ang:Forward() *data:GetEntity():GetOwner():GetVelocity())
			emMuzzle:SetDieTime(0.025)
			emMuzzle:SetStartAlpha(235 +math.Rand(0,15))
			emMuzzle:SetStartSize(flScale -i)
			emMuzzle:SetEndSize(flScale -i -(0.25 *i))
			emMuzzle:SetRoll(math.Rand(480,540))
			emMuzzle:SetRollDelta(math.Rand(-1,1))
			emMuzzle:SetColor(255,255,255)
		end
	end
	Emitter:Finish()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function EFFECT:Think()
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function EFFECT:Render() end
/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
