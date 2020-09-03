--List of Primary Weapons
pri_list = {}
--List of keys in the primary weapons list
pri_keys = {}
--List of Secondary Weapons
sec_list = {}
--List of keys in the secondary weapons list
sec_keys = {}
--List of Special Weapons
spe_list = {}
--List of keys in the special weapons list
spe_keys = {}
--List of Names -> Classes
wep_lookup = {}

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
    ["item_battery"] = "models/items/battery.mdl",
    ["weapon_pistol"] = "models/weapons/v_pistol.mdl",
    ["weapon_rpg"] = "models/weapons/v_rpg.mdl"
}

function AddPrimary(wep, name, ammo_type, ammo_count)
    pri_list[wep] = {
        ["name"] = name,
        ["ammo_type"] = ammo_type,
        ["ammo_count"] = ammo_count
    }

    wep_lookup[name] = wep
    table.insert(pri_keys, wep)
end

function AddSecondary(wep, name, ammo_type, ammo_count)
    sec_list[wep] = {
        ["name"] = name,
        ["ammo_type"] = ammo_type,
        ["ammo_count"] = ammo_count
    }

    wep_lookup[name] = wep
    table.insert(sec_keys, wep)
end

function AddSpecial(wep, name, ammo_type, ammo_count)
    spe_list[wep] = {
        ["name"] = name,
        ["ammo_type"] = ammo_type,
        ["ammo_count"] = ammo_count
    }

    wep_lookup[name] = wep
    table.insert(spe_keys, wep)
end