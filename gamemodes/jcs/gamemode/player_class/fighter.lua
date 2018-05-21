DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
--Default Walk Speed is 200
PLAYER.WalkSpeed 			= 200
--Default Run Speed is 400
PLAYER.RunSpeed				= 400
--Default Jump Power is 200
PLAYER.JumpPower			= 200
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
		self.Player:Give( "weapon_crowbar" )
		self.Player:Give( "weapon_pistol" )
	end

	--This is given to all players regardless of loadout
	self.Player:RemoveAllAmmo()
	--Primary Ammo--
	self.Player:GiveAmmo( 7, "XBowBolt", true ) --7 Reloads
	self.Player:GiveAmmo( 180, "SMG1", true ) --4 Reloads
	self.Player:GiveAmmo( 1, "SMG1_Grenade", true ) --1 Shot
	self.Player:GiveAmmo( 120, "Buckshot", true ) --5 Reloads
	self.Player:GiveAmmo( 60, "AR2", true ) --2 Reloads
	self.Player:GiveAmmo( 1, "AR2AltFire", true ) --1 Shot
	self.Player:GiveAmmo( 3, "RPG_Round", true ) --3 Shots
	--Secondary Ammo--
	self.Player:GiveAmmo( 360, "Pistol", true ) --20 Reloads
	self.Player:GiveAmmo( 120, "357", true ) --20 Reloads

end

player_manager.RegisterClass( "player_fighter", PLAYER, "player_default" )