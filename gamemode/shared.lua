--[[
    shared.lua

    Desc: This file includes functionality needed by both the client and the
    server, such as server settings (convars), shared entities (logic unit),
    and shared data like the loadout lists.

    [Files Included] The files included for use in this file are listed below
    as either "depended upon" (needed for functions in this file) or "provided"
    (adds simply executed from this file.) Note: Both sets are still, in fact,
    provided by this file when this files is imported elsewhere. This naming
    is only for organizational purposes.
    Files Depended Upon:
        (include these files at the top or in a previous file)
        none
    Files Provided:
        (include these files at the bottom)
        lists.lua
        player_class/fighter.lua
        logic_control.lua
        customize.lua
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
hook.Add("ShowSpare1", "hook_jcs_items",
    function()
        RunConsoleCommand("jcs_items")
    end
)