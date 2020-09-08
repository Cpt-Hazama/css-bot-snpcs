include('shared.lua')

net.Receive("vj_css_csound",function(len,pl)
	local ply = net.ReadEntity()
	local snd = net.ReadString()
	
	ply:EmitSound(snd)
end)

function ENT:Draw()
	return false
end

function ENT:Think()

end

function ENT:OnRemove()

end