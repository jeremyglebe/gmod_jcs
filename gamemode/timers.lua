--[[timers.lua
    This file contains functions to manage the game timers on the server
    side. This is where the game timer is updated and where round management is
    handled. (Though it requires the jcs_logic entity for the timer object)
--]]

include("server/game_end.lua")

--[[GameSec
    Hook: none (executed at the end of this file)
    Desc: Starts a repeating 1 second timer which updates the game time after
    each complete second.
    Params: None
    Returns: None
--]]
function GameSec()
    --creates an ongoing timer to track the game time
    --with params: identifier, delay, repetitions, function
    timer.Create("GameSecondTimer", 1, GAME_LENGTH + 1, GameSecUpd)
end

--[[GameSecUpd
    Hook: none (executed every second by timer in GameSec())
    Desc: Updates the current time and ends the round if game is over.
    Params: None
    Returns: None
--]]
function GameSecUpd()
    if GetGameTime() > 0 then
        --set the time remaining for the game to 1 second less
        SetGameTime(GetGameTime() - 1)
    elseif(!GAME_OVER) then
        --Run GameEnd() once
        GameEnd()
    end
end

GameSec()