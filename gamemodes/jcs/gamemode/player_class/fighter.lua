DEFINE_BASECLASS("player_default")
local PLAYER = {}
--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
PLAYER.UseVMHands = true
--Default Walk Speed is 200
PLAYER.WalkSpeed = 200
--Default Run Speed is 400
PLAYER.RunSpeed = 400
--Default Jump Power is 200
PLAYER.JumpPower = 300
PLAYER.TeammateNoCollide = false
PLAYER.StartHealth = 50
PLAYER.StartArmor = 30

function PLAYER:Loadout()
    --This is given to all players regardless of loadout
    --self.Player:Give("m9k_fists")
    self.Player:RemoveAllAmmo()

    --This sets the players loadout based on what they have chosen
    if self.Player.itemlist[1] then
        for k, v in pairs(self.Player.itemlist) do
            self.Player:Give(v)
            --get the ammo type and give the player ammo
            local item
            print("START OF DEBUGGING")
            print(v)
            print(pri_list[v])

            if pri_list[v] ~= nil then
                print("giving ammo for ")
                print(pri_list[v])
                item = pri_list[v]
            end

            print(sec_list[v])

            if sec_list[v] ~= nil then
                print("giving ammo for ")
                print(sec_list[v])
                item = sec_list[v]
            end

            print(spe_list[v])

            if spe_list[v] ~= nil then
                print("giving ammo for ")
                print(spe_list[v])
                item = spe_list[v]
            end

            print(item)
            self.Player:GiveAmmo(item["ammo_count"], item["ammo_type"], true)
        end
    end
end

player_manager.RegisterClass("player_fighter", PLAYER, "player_default")