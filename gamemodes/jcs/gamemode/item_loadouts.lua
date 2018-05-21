--LIST OF PRIMARY WEAPONS--
pri_list = { 
	["weapon_smg1"] 	= true, 
	["weapon_shotgun"] 	= true,
	["weapon_ar2"] 		= true,
	["weapon_crossbow"]	= true,
	["weapon_rpg"]		= true
}
--LIST OF SECONDARY WEAPONS--
sec_list = { 
	["weapon_pistol"] 	= true, 
	["weapon_357"] 		= true 
}

--CONSOLE COMMAND TO CHOOSE LOADOUT--
function set_items( ply, cmd, args )

	--If the player is actually valid--
	if ply:IsValid() then
	
		--If the first argument is there, and a primary weapon--
		if args[1] and pri_list[args[1]] then
			ply.itemlist[1] = args[1]
		end
		
		--If the second argument is there, and a secondary weapon--
		if args[2] and sec_list[args[2]] then
			ply.itemlist[2] = args[2]
		end
	
		--This loop adds all arguments to loadout--
		--for k,v in pairs(args) do
		--	ply.itemlist[k] = v
		--end	
		
	end	
end
concommand.Add("set_items", set_items)
--CONSOLE COMMAND TO CHOOSE LOADOUT--
