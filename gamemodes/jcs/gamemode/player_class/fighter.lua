DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
PLAYER.UseVMHands			= true
--Default Walk Speed is 200
PLAYER.WalkSpeed 			= 200
--Default Run Speed is 400
PLAYER.RunSpeed				= 400
--Default Jump Power is 200
PLAYER.JumpPower			= 300
PLAYER.TeammateNoCollide 	= false
PLAYER.StartHealth			= 50
PLAYER.StartArmor			= 0

function PLAYER:Loadout()

	--This sets the players loadout based on what they have chosen
    if self.Player.itemlist[1] then
		for k,v in pairs(self.Player.itemlist) do
			self.Player:Give(v)	
		end
	else
		self.Player:Give( "m9k_fists" )
		self.Player:Give( "weapon_pistol" )
	end

	--This is given to all players regardless of loadout
	self.Player:Give( "m9k_fists" )
	self.Player:RemoveAllAmmo()
	for k,v in pairs(ammo_spawn_list) do
		self.Player:GiveAmmo(v, k, true)	
	end

end

player_manager.RegisterClass( "player_fighter", PLAYER, "player_default" )