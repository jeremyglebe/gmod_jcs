--LIST OF PRIMARY WEAPONS--
pri_list = {
    ["cw_ak74"] = "AK-74",
    ["cw_ar15"] = "AR15",
    ["cw_g4p_fn_fal"] = "FN FAL",
    ["cw_g4p_awm"] = "Arctic Warfare Magnum",
    ["cw_l115"] = "L115 Sniper",
    ["cw_m14"] = "M14",
    --["cw_mp5"]			= "MP5",
    ["cw_m3super90"] = "M3 Super 90"
}

--LIST OF SECONDARY WEAPONS--
sec_list = {
    ["cw_deagle"] = "Desert Eagle",
    ["cw_fiveseven"] = "FN Five-Seven",
    ["cw_g4p_g2contender"] = "G2 Contender",
    ["cw_m1911"] = "M1911",
    ["cw_mac11"] = "MAC 11",
    ["cw_mr96"] = "MR96",
    --["cw_shorty"] 		= "Shorty",
    ["cw_g4p_glock17"] = "Glock 17"
}

--LIST OF SPECIAL WEAPONS--
spe_list = {
    ["item_battery"] = "Armor",
    ["cw_flash_grenade"] = "Flash Grenade",
    ["cw_frag_grenade"] = "Frag Grenade",
    ["cw_smoke_grenade"] = "Smoke Grenade",
    ["m9k_nerve_gas"] = "Nerve Gas",
    ["weapon_crowbar"] = "High Tech Lever-Action Melee Device",
    ["m9k_harpoon"] = "Harpoon",
    ["m9k_damascus"] = "Sword"
}

--List of Names -> Classes--
lookup = {}

for k, v in pairs(pri_list) do
    lookup[v] = k
end

for k, v in pairs(sec_list) do
    lookup[v] = k
end

for k, v in pairs(spe_list) do
    lookup[v] = k
end

--List of ammo to give each player when spawning--
ammo_spawn_list = {
    --Primary Ammo--
    ["5.45x39MM"] = 60, --AK, 2 Reloads
    ["5.56x45MM"] = 60, --AR, 2 Reloads
    [".338 Lapua"] = 10, --AWM, L115, 2 Reloads
    ["7.62x51MM"] = 60, --FAL, 2 Reloads, M14, 3 Reloads
    ["12 Gauge"] = 16, --M3, 2 Reloads
    --Secondary Ammo--
    [".50 AE"] = 140, --Deagle, 20 Reloads
    ["5.7x28MM"] = 400, --Five-Seven, 20 Reloads
    [".30 Winchester"] = 20, --Contender, 20 Shots
    ["9x19MM"] = 240, --Glock, 20 Reloads
    [".44 Magnum"] = 120, --MR96, 20 Reloads
    ["9x17MM"] = 640, --MAC11, 20 Reloads
    [".45 ACP"] = 140, --M1911, 20 Reloads
    --Special Ammo--
    ["Flash Grenades"] = 0, --0 xtra Flash Grenades
    ["Frag Grenades"] = 0, --0 xtra Frag Grenades
    ["Smoke Grenades"] = 0 --0 xtra Smoke Grenades
}

--List of Manually Added Models--
manual_models = {
    ["weapon_357"] = "models/weapons/v_357.mdl",
    ["weapon_shotgun"] = "models/weapons/v_shotgun.mdl",
    ["weapon_smg1"] = "models/weapons/v_smg1.mdl",
    ["weapon_stunstick"] = "models/weapons/v_stunbaton.mdl",
    ["weapon_ar2"] = "models/weapons/v_irifle.mdl",
    ["weapon_crossbow"] = "models/weapons/v_crossbow.mdl",
    ["weapon_crowbar"] = "models/weapons/v_crowbar.mdl",
    ["weapon_frag"] = "models/weapons/v_grenade.mdl",
    ["item_battery"] = "models/weapons/v_grenade.mdl",
    ["weapon_pistol"] = "models/weapons/v_pistol.mdl",
    ["weapon_rpg"] = "models/weapons/v_rpg.mdl"
}