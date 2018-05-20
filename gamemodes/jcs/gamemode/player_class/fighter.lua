DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
PLAYER.WalkSpeed 			= 200
PLAYER.RunSpeed				= 400
PLAYER.JumpPower			= 100
PLAYER.TeammateNoCollide 	= false
PLAYER.StartArmor			= 100
PLAYER.StartHealth			= 100

function PLAYER:Loadout()

	self.Player:Give( "weapon_crowbar" )
	self.Player:Give( "weapon_pistol" )
	
	self.Player:RemoveAllAmmo()
	self.Player:GiveAmmo( 512, "Pistol", true )

end

player_manager.RegisterClass( "player_fighter", PLAYER, "player_default" )