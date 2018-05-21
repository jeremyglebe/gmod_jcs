include( "shared.lua" )

function GM:HUDPaint()

	self.BaseClass:HUDPaint() --Normal HUD
	surface.SetTextColor(0, 200, 255, 255)
	--19/20 = 0.95, 1/80 = 0.0125, top right corner
	surface.SetTextPos(0.95*ScrW(), 0.0125*ScrH())
	surface.SetFont( "ChatFont" )
	surface.DrawText( "Time: " .. GetGameTime() )

end