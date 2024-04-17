---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('race')
    end,
    settings={mino={
        maxFreshChance=30,
        event={
            playerInit=mechLib.mino.misc.noMove_event_playerInit,
            afterClear={
                mechLib.mino.sprint.event_afterClear[20],
                mechLib.mino.music.sprint_fix_20_afterClear,
            },
            drawInField=mechLib.mino.sprint.event_drawInField[20],
            drawOnPlayer=mechLib.mino.sprint.event_drawOnPlayer[20],
            gameOver=mechLib.mino.progress.sprint_fix_20_gameOver,
        },
    }},
}
