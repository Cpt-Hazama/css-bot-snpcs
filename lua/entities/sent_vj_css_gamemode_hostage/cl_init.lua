include('shared.lua')

net.Receive("vj_css_csound",function(len,pl)
	local ply = net.ReadEntity()
	local snd = net.ReadString()
	
	ply:EmitSound(snd)
end)

function ENT:Draw()
	return false
end

function ENT:Initialize()
	local plyTeam = GetConVar("vj_css_team"):GetInt()
	if plyTeam != 0 then
		VJ_SetTeams()
	end
end

function ENT:Think()

end

function ENT:OnRemove()

end