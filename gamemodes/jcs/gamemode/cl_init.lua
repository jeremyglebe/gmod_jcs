include( "shared.lua" )
include( "cl_loadout.lua" )

function GM:HUDPaint()

	self.BaseClass:HUDPaint() --Normal HUD
	surface.SetTextColor(0, 200, 255, 255)
	--top right corner
	surface.SetTextPos((1824/1920)*ScrW(), (13.5/1080)*ScrH())
	surface.SetFont( "ChatFont" )
	surface.DrawText( "Time: " .. GetGameTime() )

end