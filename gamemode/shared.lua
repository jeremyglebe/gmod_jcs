--[[shared.lua
    This file includes functionality needed by both the client and the
    server, such as server settings (convars), shared entities (logic unit),
    and shared data like the loadout lists.
--]]
GM.Name = "Jay Combat Simulator"
GM.Author = "whitejay2010"
GM.Email = "jeremyglebe@gmail.com"
GM.Website = "N/A"

--Loading cvars (server settings) into global variables for use in code
--Game time in seconds
GAME_LENGTH = GetConVarNumber("jcs_gametime")

--This occurs when the game initializes
function GM:Initialize()
    --Do something
end

--lists of item selections and misc for loadout management
include("lists.lua")
--defines the player class
include("player_class/fighter.lua")
--used for calls to the game timer
include("logic_control.lua")
--file that adds custom items to the game
include("customize.lua")

--Enable pressing the spare button to open loadout menu
--Default control behavior needs to be set by the server
--But the client needs to open the menu, so we send a user message
hook.Add("ShowSpare2", "hook_jcs_items",
    function(ply)
        umsg.Start("open_loadout_menu", ply)
        umsg.End()
        -- RunConsoleCommand("jcs_items")
    end
)