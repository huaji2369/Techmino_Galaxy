---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.newPlayer(2,'mino')
        GAME.newPlayer(3,'puyo')
        GAME.setMain(1)
        playBgm('battle')
    end,
    settings={
        mino={
            dropDelay=1000,
            lockDelay=1000,
            atkSys='modern',
        },
        puyo={
            dropDelay=1500,
            lockDelay=1500,
        }
    },
}
