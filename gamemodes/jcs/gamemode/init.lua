--Send these files to the clients
--Make sure they have them!
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "timers.lua" )

--Load these files (executes them)
include( "shared.lua" )
--Player Class--
include( "player_class/fighter.lua" )
--Game Timers & Round Control--
include( "timers.lua" )

--When players join
function GM:PlayerConnect( name, ip )
	print("Player \"" .. name .. "\" has joined the game.")
end
function GM:PlayerInitialSpawn( ply )
	print(ply:Nick() .. "spawned in!")
	player_manager.SetPlayerClass( ply, "player_fighter" )
end
function GM:PlayerAuthed( ply, steamID, uniqueID )
	print("Authenticated: " .. ply:Nick())
end

--This occurs when the game starts up and AFTER entities can be spawned
hook.Add( "InitPostEntity", "some_unique_name", function()
	print( "Initialization hook called" )
	--SPAWN THE GAME LOGIC ENT--
	local logic = ents.Create("jcs_logic")
	logic:Spawn()
	--SPAWN THE GAME LOGIC ENT--
	--Initialize the game timer--
	SetGameTime(GAME_LENGTH)
	--Initialize the game timer--
end )