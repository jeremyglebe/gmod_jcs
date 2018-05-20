GM.Name = "Jay Combat Simulator"
GM.Author = "whitejay2010"
GM.Email = "N/A"
GM.Website = "N/A"

--Game time in seconds--
GAME_LENGTH = 100
--This occurs when the game initializes
function GM:Initialize()
	--Do something
end

--This occurs when the game starts up and AFTER entities can be spawned
hook.Add( "InitPostEntity", "some_unique_name", function()
	print( "Initialization hook called" )
	--SPAWN THE GAME LOGIC ENT--
	local logic = ents.Create("jcs_logic")
	logic:Spawn()
	--SPAWN THE GAME LOGIC ENT--
	--Initialize the game timer--
	SetGameTime(GAME_LENGTH)
	--Initialize the game timer--
end )

--CREATES METHODS TO CONTROL THE LOGIC ENT--
local logic_control --This is the identifier for the jcs_logic object
function GetGameTime()
	if not IsValid(logic_control) then
		logic_control = ents.FindByClass("jcs_logic")[1]
	end
	if IsValid(logic_control) then
		return logic_control:GetGameTime()--calls jcs_logic method of the same name
	else
		return 0
	end
end
function SetGameTime(x)
	if not IsValid(logic_control) then
		logic_control = ents.FindByClass("jcs_logic")[1]
	end
	if IsValid(logic_control) then
		logic_control:SetGameTime(x)--calls jcs_logic method of the same name
	end
end
--CREATES METHODS TO CONTROL THE LOGIC ENT--
