--[[
    init.lua

    Desc: This file handles the initialization of the gamemode for the server.
    It sends files to the client and includes files the server will need to
    function. Some server functionality is found in shared.lua because it is
    also needed by the client.

    [Files Included] The files included for use in this file are listed below
    as either "depended upon" (needed for functions in this file) or "provided"
    (adds simply executed from this file.) Note: Both sets are still, in fact,
    provided by this file when this files is imported elsewhere. This naming
    is only for organizational purposes.
    Files Depended Upon:
        (include these files at the top or in a previous file)
        shared.lua
            GAME_LENGTH
        logic_control.lua
            SetGameTime()
            GetGameTime()
    Files Provided:
        (include these files at the bottom)
        player_class/fighter.lua
        loadout.lua
        timers.lua
--]]
--Send these files to the clients
--Make sure they have them!
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("lists.lua")
AddCSLuaFile("logic_control.lua")
AddCSLuaFile("cl_loadout.lua")
--shared.lua has many purposes but notably creates global vars representing the
--convar server settings.
--shared.lua provides: lists.lua, logic_control.lua
include("shared.lua")

--[[PlayerConnect (Override)
    Hook: Function executes when a player joins the game
    Desc: Handles player joins and announces their presence to the server.
    Params:
        (name) string, name of the player
        (ip) string, ip of the connection
    Returns: None
--]]
function GM:PlayerConnect(name, ip)
    --announce that the player has joined
    print("Player \"" .. name .. "\" has joined the game.")
end

--[[PlayerInitialSpawn (Override)
    Hook: Function executes when a player spawns for the first time
    Desc: Handles first player spawn. Gives the player class and weapons.
    Params:
        (ply) Player, the player object which is spawning in
    Returns: None
--]]
function GM:PlayerInitialSpawn(ply)
    print(ply:Nick() .. "spawned in!")
    player_manager.SetPlayerClass(ply, "player_fighter")

    --give the player a starting loadout
    ply.itemlist = {
        [1] = pri_keys[1],
        [2] = sec_keys[1]
    }
end

--[[PlayerAuthed (Override)
    Hook: Function executes when a player is authenticated
    Desc: prints the name of the authenticated player
    Params:
        (ply) Player, the player object of the authenticated player
        (steamID) string, steam id of the player
        (uniqueID) string, unqiue id for the player
    Returns: None
--]]
function GM:PlayerAuthed(ply, steamID, uniqueID)
    print("Authenticated: " .. ply:Nick())
end

--[[InitLogicEnt
    Hook: InitPostEntity, executes at start, after entities can be spawned
    Desc: Creates and initializes the game logic entity
    Params: None
    Returns: None
--]]
function InitLogicEnt()
    print("Initialization hook called")
    --Spawn game logic entity
    local logic = ents.Create("jcs_logic")
    logic:Spawn()
    --Initialize the game timer
    SetGameTime(GAME_LENGTH)
end

--add a hook for the creation of the logic entity
hook.Add("InitPostEntity", "Hook_InitLogicEnt", InitLogicEnt)
--defines the player class
include("player_class/fighter.lua")
--loadout functions and commands
include("loadout.lua")
--initializes game timer and handles round control
include("timers.lua")