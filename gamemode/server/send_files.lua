print("Server: running script 'send_files.lua'")

function setupClientFiles()
    --Define which files should be sent to the client
    AddCSLuaFile("cl_init.lua")
    AddCSLuaFile("client/cl_loadout.lua")
    AddCSLuaFile("client/cl_loadout_ui.lua")
    --Shared files (which also need to be sent to client)
    AddCSLuaFile("shared.lua")
    AddCSLuaFile("lists.lua")
    AddCSLuaFile("player_class/fighter.lua")
    AddCSLuaFile("logic_control.lua")
    AddCSLuaFile("customize.lua")
end