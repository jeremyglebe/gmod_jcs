--This times out a second for the game timer
function GameSec()

	timer.Create("GameSecondTimer", 1, GAME_LENGTH + 1, GameSecUpd)

end
--This updates the on screen timer and executes behavior of timer
function GameSecUpd()
	
	if GetGameTime() > 0 then
		PrintMessage(HUD_PRINTTALK, GetGameTime())
		SetGameTime(GetGameTime() - 1)
	else
		--PLACEHOLDER TEST FROM FFA2--
		PrintMessage(HUD_PRINTCENTER, "Game Over! Map Vote in 15 seconds!")
		--PLACEHOLDER TEST FROM FFA2--
	end
	
end

GameSec()