--This times out a second for the game timer
function GameSec()
    timer.Create("GameSecondTimer", 1, GAME_LENGTH + 1, GameSecUpd)
end

--This updates the on screen timer and executes behavior of timer
function GameSecUpd()
    if GetGameTime() > 0 then
        --PrintMessage(HUD_PRINTTALK, GetGameTime())
        SetGameTime(GetGameTime() - 1)
    else
        PrintMessage(HUD_PRINTCENTER, "Game over, (Temp) wins!")

        --Freeze code was copied from internet :/
        for _, ply in ipairs(player.GetAll()) do
            ply:Freeze(true)
        end

        --GO TO NEXT MAP, REQUIRES: "MapVote - Fretta-like Map Voting"--
        --MapVote.Start(voteLength, allowCurrentMap, mapLimit, mapPrefix)
        timer.Simple(5, function()
            MapVote.Start(30, true)
        end)
        --GO TO NEXT MAP, REQUIRES: "MapVote - Fretta-like Map Voting"--
    end
end

GameSec()