--Shared variables, functions, and objects
include("shared.lua")
--Defines how and when the player's loadout menu should be opened
-- and how they make their loadout decisions
include("client/cl_loadout.lua")

--Adds the remaining game time to the player's HUD
function GM:HUDPaint()
    self.BaseClass:HUDPaint() --Normal HUD
    surface.SetTextColor(0, 200, 255, 255)
    --top right corner
    surface.SetTextPos((1824 / 1920) * ScrW(), (13.5 / 1080) * ScrH())
    surface.SetFont("ChatFont")
    --Draws text containing the remaining time in the game
    --GetGameTime() should be defined in logic_control.lua
    surface.DrawText("Time: " .. GetGameTime())
end