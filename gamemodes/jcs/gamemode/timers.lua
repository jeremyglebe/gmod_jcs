--[[
    timers.lua

    Desc: This file contains functions to manage the game timers on the server
    side. This is where the game timer is updated and where round management is
    handled. (Though it requires the jcs_logic entity for the timer object)

    [Files Included] The files included for use in this file are listed below
    as either "depended upon" (needed for functions in this file) or "provided"
    (adds simply executed from this file.) Note: Both sets are still, in fact,
    provided by this file when this files is imported elsewhere. This naming
    is only for organizational purposes.
    Files Depended Upon:
        (include these files at the top or in a previous file)
        shared.lua
            GAME_LENGTH
        logic_control.lua
            SetGameTime()
            GetGameTime()
    Files Provided:
        (include these files at the bottom)
        none
--]]
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
    else
        --display a message saying who won the game
        PrintMessage(HUD_PRINTCENTER, "Game over, (Temp) wins!")

        --Freeze code was copied from internet :/
        --just grabs all the players and freezes them
        for _, ply in ipairs(player.GetAll()) do
            ply:Freeze(true)
        end

        --GO TO NEXT MAP, REQUIRES: "MapVote - Fretta-like Map Voting"--
        --MapVote.Start(voteLength, allowCurrentMap, mapLimit, mapPrefix)
        timer.Simple(5, function()
            MapVote.Start(30, true)
        end)
    end
end

GameSec()