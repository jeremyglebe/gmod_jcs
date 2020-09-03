function GameEnd()
    GAME_OVER = true
    top = 0
    winner = "no one"

	for _, ply in ipairs( player.GetAll() ) do
        --Check the score of every player to determine winner
        if ply:Frags() > top then
            top = ply:Frags()
            winner = ply:Nick()
        end
        --Freeze code was copied from internet :/
        --just grabs all the players and freezes them
   		ply:Freeze( true )
	end

    --display a message saying who won the game
	PrintMessage( HUD_PRINTCENTER, "Game over, "..(winner).." wins! Map Vote in 15 seconds!" )

	timer.Create("TimeTilVote", 15, 1,
        function()
            MapVote.Start() --USES THE MapVote ADDON!--
        end
    )
    
end
