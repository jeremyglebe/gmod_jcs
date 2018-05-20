DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
PLAYER.WalkSpeed 			= 200
PLAYER.RunSpeed				= 400
PLAYER.JumpPower			= 200
PLAYER.TeammateNoCollide 	= false
PLAYER.StartHealth			= 100
PLAYER.StartArmor			= 0

function PLAYER:Loadout()

	self.Player:Give( "weapon_crowbar" )
	self.Player:Give( "weapon_pistol" )
	self.Player:Give( "weapon_357" )
	self.Player:Give( "weapon_crossbow" )
	self.Player:Give( "weapon_smg1" )
	self.Player:Give( "weapon_shotgun" )
	
	self.Player:RemoveAllAmmo()
	self.Player:GiveAmmo( 360, "Pistol", true )
	self.Player:GiveAmmo( 80, "357", true )
	self.Player:GiveAmmo( 5, "XBowBolt", true )
	self.Player:GiveAmmo( 150, "SMG1", true )
	self.Player:GiveAmmo( 120, "Buckshot", true )

end

player_manager.RegisterClass( "player_fighter", PLAYER, "player_default" )