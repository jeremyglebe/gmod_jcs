--LIST OF PRIMARY WEAPONS--
pri_list = {
    ["cw_ak74"] = {
        ["name"] = "AK-74",
        ["ammo_type"] = "5.45x39MM",
        ["ammo_count"] = 60
    },
    ["cw_ar15"] = {
        ["name"] = "AR15",
        ["ammo_type"] = "5.56x45MM",
        ["ammo_count"] = 60
    },
    ["cw_g4p_fn_fal"] = {
        ["name"] = "FN FAL",
        ["ammo_type"] = "7.62x51MM",
        ["ammo_count"] = 60
    },
    ["cw_g4p_awm"] = {
        ["name"] = "Arctic Warfare Magnum",
        ["ammo_type"] = ".338 Lapua",
        ["ammo_count"] = 10
    },
    ["cw_l115"] = {
        ["name"] = "L115 Sniper",
        ["ammo_type"] = ".338 Lapua",
        ["ammo_count"] = 10
    },
    ["cw_m14"] = {
        ["name"] = "M14",
        ["ammo_type"] = "7.62x51MM",
        ["ammo_count"] = 40
    },
    ["cw_m3super90"] = {
        ["name"] = "M3 Super 90",
        ["ammo_type"] = "12 Gauge",
        ["ammo_count"] = 16
    }
}

--List of keys in the primary weapons list
pri_keys = {}
local n = 0

for k, v in pairs(pri_list) do
    n = n + 1
    pri_keys[n] = k
end

--LIST OF SECONDARY WEAPONS--
sec_list = {
    ["cw_deagle"] = {
        ["name"] = "Desert Eagle",
        ["ammo_type"] = ".50 AE",
        ["ammo_count"] = 140
    },
    ["cw_fiveseven"] = {
        ["name"] = "FN Five-Seven",
        ["ammo_type"] = "5.7x28MM",
        ["ammo_count"] = 400
    },
    ["cw_g4p_g2contender"] = {
        ["name"] = "G2 Contender",
        ["ammo_type"] = ".30 Winchester",
        ["ammo_count"] = 20
    },
    ["cw_m1911"] = {
        ["name"] = "M1911",
        ["ammo_type"] = ".45 ACP",
        ["ammo_count"] = 140
    },
    ["cw_mac11"] = {
        ["name"] = "MAC 11",
        ["ammo_type"] = "9x17MM",
        ["ammo_count"] = 640
    },
    ["cw_mr96"] = {
        ["name"] = "MR96",
        ["ammo_type"] = ".44 Magnum",
        ["ammo_count"] = 120
    },
    ["cw_g4p_glock17"] = {
        ["name"] = "Glock 17",
        ["ammo_type"] = "9x19MM",
        ["ammo_count"] = 240
    }
}

--List of keys in the secondary weapons list
sec_keys = {}
n = 0

for k, v in pairs(sec_list) do
    n = n + 1
    sec_keys[n] = k
end

--LIST OF SPECIAL WEAPONS--
spe_list = {
    ["item_battery"] = {
        ["name"] = "Armor",
        ["ammo_type"] = "AR2",
        ["ammo_count"] = 0
    },
    ["cw_flash_grenade"] = {
        ["name"] = "Flash Grenade",
        ["ammo_type"] = "Flash Grenades",
        ["ammo_count"] = 1
    },
    ["cw_frag_grenade"] = {
        ["name"] = "Frag Grenade",
        ["ammo_type"] = "Frag Grenades",
        ["ammo_count"] = 1
    },
    ["cw_smoke_grenade"] = {
        ["name"] = "Smoke Grenade",
        ["ammo_type"] = "Smoke Grenades",
        ["ammo_count"] = 1
    },
    ["m9k_nerve_gas"] = {
        ["name"] = "Nerve Gas",
        ["ammo_type"] = "AR2",
        ["ammo_count"] = 0
    },
    ["weapon_crowbar"] = {
        ["name"] = "High Tech Lever-Action Melee Device",
        ["ammo_type"] = "AR2",
        ["ammo_count"] = 0
    },
    ["m9k_harpoon"] = {
        ["name"] = "Harpoon",
        ["ammo_type"] = "AR2",
        ["ammo_count"] = 0
    },
    ["m9k_damascus"] = {
        ["name"] = "Sword",
        ["ammo_type"] = "AR2",
        ["ammo_count"] = 0
    }
}

--List of keys in the special weapons list
spe_keys = {}
n = 0

for k, v in pairs(spe_list) do
    n = n + 1
    spe_keys[n] = k
end

--List of Names -> Classes--
wep_lookup = {}

for k, v in pairs(pri_list) do
    wep_lookup[v["name"]] = k
end

for k, v in pairs(sec_list) do
    wep_lookup[v["name"]] = k
end

for k, v in pairs(spe_list) do
    wep_lookup[v["name"]] = k
end

--List of Manually Added Models
--These models are displayed on the client's weapon selection menu.
--Some weapons are configured strangely and need their models path to be
--manually added.
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