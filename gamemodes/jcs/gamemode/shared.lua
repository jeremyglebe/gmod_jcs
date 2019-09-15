GM.Name = "Jay Combat Simulator"
GM.Author = "whitejay2010"
GM.Email = "N/A"
GM.Website = "N/A"
--So that Client and Server know what weapons are valid
include("lists.lua")
----LOADING CVARS INTO GLOBALS----
--Game time in seconds--
GAME_LENGTH = GetConVarNumber("jcs_gametime")

----LOADING CVARS INTO GLOBALS----
--This occurs when the game initializes
function GM:Initialize()
    --Do something
end

--CREATES METHODS TO CONTROL THE LOGIC ENT--
local logic_control --This is the identifier for the jcs_logic object

function GetGameTime()
    if not IsValid(logic_control) then
        logic_control = ents.FindByClass("jcs_logic")[1]
    end

    if IsValid(logic_control) then
        --calls jcs_logic method of the same name
        return logic_control:GetGameTime()
    else
        return 0
    end
end

function SetGameTime(x)
    if not IsValid(logic_control) then
        logic_control = ents.FindByClass("jcs_logic")[1]
    end

    if IsValid(logic_control) then
        logic_control:SetGameTime(x) --calls jcs_logic method of the same name
    end
end
--CREATES METHODS TO CONTROL THE LOGIC ENT--