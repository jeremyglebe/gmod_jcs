--[[init.lua
    This file handles the initialization of the gamemode for the server.
    It sends files to the client and includes files the server will need to
    function. Some server functionality is found in shared.lua because it is
    also needed by the client.
--]]

--Setup client files to be sent to connecting clients
include("server/send_files.lua")
-- --Define which files should be sent to the client
-- AddCSLuaFile("cl_init.lua")
-- AddCSLuaFile("client/cl_loadout.lua")
-- AddCSLuaFile("client/cl_loadout_ui.lua")
-- --Shared files (which also need to be sent to client)
-- AddCSLuaFile("shared.lua")
-- AddCSLuaFile("lists.lua")
-- AddCSLuaFile("player_class/fighter.lua")
-- AddCSLuaFile("logic_control.lua")
-- AddCSLuaFile("customize.lua")
setupClientFiles()

--shared.lua has many purposes but notably creates global vars representing the
-- convar server settings, defines weapon lists, creates the logic entity, and
-- defines the players' class
include("shared.lua")

--Other globals
GAME_OVER = false

--[[PlayerConnect (Override)
    Handles player joins and announces their presence to the server.
    Hook: Function executes when a player joins the game
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
    Handles first player spawn. Gives the player class and weapons.
    Hook: Function executes when a player spawns for the first time
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

    --Kill the player without affecting their points, so that they have time
    -- to setup their loadout
	timer.Simple(1,
        function()
            ply:Kill()
            ply:AddDeaths( -1 )
            ply:AddFrags( 1 )
            ply:PrintMessage( HUD_PRINTTALK, "Prepare your loadout, then click to spawn!")
            umsg.Start("open_loadout_menu", ply)
            umsg.End()           
        end
    )

end

--[[PlayerAuthed (Override)
    Prints the name of the authenticated player
    Hook: Function executes when a player is authenticated
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
    Creates and initializes the game logic entity
    Hook: InitPostEntity, executes at start, after entities can be spawned
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
--loadout functions and commands
include("loadout.lua")
--initializes game timer and handles round control
include("timers.lua")