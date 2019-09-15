--[[
    logic_control.lua

    Desc: This file is used to handle the more complex logic of the J.C.S.
    gamemode. It handles such things as shared variables between client and
    server and any interactions with the jcs_logic entity. It provides
    functions for the server and client to interact with the jcs_logic entity.

    [Files Included] The files included for use in this file are listed below
    as either "depended upon" (needed for functions in this file) or "provided"
    (adds simply executed from this file.) Note: Both sets are still, in fact,
    provided by this file when this files is imported elsewhere. This naming
    is only for organizational purposes.
    Files Depended Upon:
        (include these files at the top or in a previous file)
        none
    Files Provided:
        (include these files at the bottom)
        none
--]]
--This is the identifier for the jcs_logic object
local logic_control

--[[GetGameTime
    Hook: none
    Desc: Gets the value of the GameTime variable in the jcs_logic entity.
    This variable is used by both client and server and updated in game, so it
    is stored in an entity and accessed using these functions.
    Params: None
    Returns:
        number, remaining time in the game
--]]
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

--[[SetGameTime
    Hook: none
    Desc: Sets the value of the GameTime variable in the jcs_logic entity.
    This variable is used by both client and server and updated in game, so it
    is stored in an entity and accessed using these functions.
    Params:
        (x) number, remaining time in the game
    Returns: None
--]]
function SetGameTime(x)
    if not IsValid(logic_control) then
        logic_control = ents.FindByClass("jcs_logic")[1]
    end

    if IsValid(logic_control) then
        logic_control:SetGameTime(x) --calls jcs_logic method of the same name
    end
end