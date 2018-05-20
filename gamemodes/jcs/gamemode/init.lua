--Send these files to the clients
--Make sure they have them!
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

--Load these files (executes them)
include( "shared.lua" )
include( "player_class/fighter.lua" )

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
