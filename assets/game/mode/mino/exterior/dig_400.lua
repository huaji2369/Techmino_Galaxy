
---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('way','base')
    end,
    settings={mino={
        event={
            playerInit=mechLib.mino.dig.sprint_event_playerInit[10],
            afterClear={
                mechLib.mino.dig.sprint_event_afterClear['400,10'],
                mechLib.mino.music.dig_400_afterClear,
            },
            drawOnPlayer=mechLib.mino.dig.event_drawOnPlayer[400],
            gameOver=mechLib.mino.progress.dig_400_gameOver,
        },
    }},
}
