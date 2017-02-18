util.AddNetworkString("ToClient")

function F4( ply )
	net.Start("ToClient")
	net.Send(ply)
end
hook.Add("ShowSpare2", "F4.Pressed", F4)