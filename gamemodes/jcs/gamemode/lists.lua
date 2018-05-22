--LIST OF PRIMARY WEAPONS--
pri_list = { 
	["weapon_smg1"] 	= "SMG", 
	["weapon_shotgun"] 	= "Shotgun",
	["weapon_ar2"] 		= "AR2",
	["weapon_crossbow"]	= "Crossbow",
	["weapon_rpg"]		= "RPG"
}

--LIST OF SECONDARY WEAPONS--
sec_list = { 
	["weapon_pistol"] 	= "Pistol", 
	["weapon_357"] 		= "357 Magnum" 
}

--LIST OF SPECIAL WEAPONS--
spe_list = {
	["weapon_frag"]		= "Frag Grenade",
	["m9k_nerve_gas"]	= "Nerve Gas",
	["weapon_crowbar"]	= "High Tech Lever-Action Melee Device",
	["m9k_harpoon"]		= "Harpoon",
	["m9k_damascus"]	= "Sword"
}

--List of Names -> Classes--
lookup = {}
for k,v in pairs(pri_list) do
	lookup[v] = k
end
for k,v in pairs(sec_list) do
	lookup[v] = k
end
for k,v in pairs(spe_list) do
	lookup[v] = k
end

--List of ammo to give each player when spawning--
ammo_spawn_list = {
	--Primary Ammo--
	["XBowBolt"]		= 7,	--7 Reloads
	["SMG1"]			= 180,	--4 Reloads
	["SMG1_Grenade"]	= 1,	--1 Shot
	["Buckshot"]		= 120,	--5 Reloads
	["AR2"]				= 60,	--2 Reloads
	["AR2AltFire"]		= 1,	--1 Shot
	["RPG_Round"]		= 3,	--3 Shots
	--Secondary Ammo--
	["Pistol"]			= 360,	--20 Reloads
	["357"]				= 120,	--20 Reloads
	--Special Ammo--
	["Grenade"]			= 2		--2 Grenades
}

--List of Manually Added Models--
manual_models = {
	["weapon_357"]		= "models/weapons/v_357.mdl",
	["weapon_shotgun"]	= "models/weapons/v_shotgun.mdl",
	["weapon_smg1"]		= "models/weapons/v_smg1.mdl",
	["weapon_stunstick"]= "models/weapons/v_stunbaton.mdl",
	["weapon_ar2"]		= "models/weapons/v_irifle.mdl",
	["weapon_crossbow"]	= "models/weapons/v_crossbow.mdl",
	["weapon_crowbar"]	= "models/weapons/v_crowbar.mdl",
	["weapon_frag"]		= "models/weapons/v_grenade.mdl",
	["weapon_pistol"]	= "models/weapons/v_pistol.mdl",
	["weapon_rpg"]		= "models/weapons/v_rpg.mdl"
}