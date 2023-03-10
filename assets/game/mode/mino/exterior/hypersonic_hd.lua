local gc=love.graphics
local bgmTransBegin,bgmTransFinish=100,500
local levels={
    {lock=510,fresh=6000,spawn=150,clear=400,das=130,arr=29,visTime=5000,fadeTime=2600},
    {lock=460,fresh=5800,spawn=140,clear=360,das=120,arr=28,visTime=4000,fadeTime=2600},
    {lock=420,fresh=5600,spawn=130,clear=320,das=110,arr=27,visTime=3500,fadeTime=2600},
    {lock=380,fresh=5400,spawn=120,clear=280,das=105,arr=26,visTime=3000,fadeTime=2600},
    {lock=350,fresh=5200,spawn=110,clear=240,das=100,arr=25,visTime=2500,fadeTime=2100},
    {lock=320,fresh=5000,spawn=100,clear=200,das=96, arr=24,visTime=2000,fadeTime=1500},
    {lock=300,fresh=4800,spawn=95, clear=180,das=92, arr=23,visTime=1600,fadeTime=1100},
    {lock=280,fresh=4600,spawn=90, clear=160,das=88, arr=22,visTime=1200,fadeTime=900 },
    {lock=270,fresh=4400,spawn=85, clear=140,das=84, arr=21,visTime=900, fadeTime=800 },
    {lock=260,fresh=4200,spawn=80, clear=120,das=80, arr=20,visTime=600, fadeTime=600 },
}
local showInvisPeriod=26000*10
local showInvisInterval=30
local showVisTime=1000
local showFadeTime=1000

local flashRate=.1626
local flashInterval=1846
local flashVisTime1,flashVisTime2=120,460
local flashFadeTime=620

return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('secret7th','base')
    end,
    settings={mino={
        pieceVisTime=levels[1].visTime,
        pieceFadeTime=levels[1].fadeTime,
        event={
            playerInit=function(P)
                P.modeData.point=0
                P.modeData.level=1
                P.modeData.target=100
                P.modeData.storedDas=P.settings.das
                P.modeData.storedArr=P.settings.arr
                P.modeData.flashTimer=flashInterval
                P.modeData.swipeTimer=showInvisInterval*26
                P.modeData.swipeStep=10

                P.settings.dropDelay=0
                P.settings.das=math.max(P.modeData.storedDas,levels[1].das)
                P.settings.arr=math.max(P.modeData.storedArr,levels[1].arr)
                P.settings.lockDelay=levels[1].lock
                P.settings.spawnDelay=levels[1].spawn
                P.settings.clearDelay=levels[1].clear
                P.settings.maxFreshTime=levels[1].fresh
                -- P.settings.pieceVisTime=levels[1].visTime
                -- P.settings.pieceFadeTime=levels[1].fadeTime
            end,
            always=function(P)
                local t=P.modeData.swipeTimer
                local swiping=t/showInvisInterval<=P.field:getHeight()
                t=t%showInvisPeriod+(swiping and 1 or P.modeData.swipeStep)
                if swiping and t%showInvisInterval==0 then
                    for x=1,P.settings.fieldW do
                        local c=P.field:getCell(x,t/showInvisInterval)
                        if c then
                            c.visTimer=math.max(c.visTimer or 0,showVisTime)
                            c.fadeTime=math.max(c.fadeTime or 0,showFadeTime)
                        end
                    end
                end
                P.modeData.swipeTimer=t

                P.modeData.flashTimer=(P.modeData.flashTimer+1)%flashInterval
                if P.modeData.flashTimer==0 then
                    for y=1,math.min(P.field:getHeight(),2*P.settings.fieldW) do
                        for x=1,P.settings.fieldW do
                            if P.seqRND:random()<flashRate then
                                local c=P.field:getCell(x,y)
                                if c then
                                    c.visTimer=math.max(c.visTimer or 0,P.seqRND:random(flashVisTime1,flashVisTime2))
                                    c.fadeTime=math.max(c.fadeTime or 0,flashFadeTime)
                                end
                            end
                        end
                    end
                end
            end,
            afterSpawn=function(P)
                local md=P.modeData

                if md.point<md.target-1 then
                    md.point=md.point+1
                    if md.point==md.target-1 then
                        P:playSound('notice')
                    end
                end
                if P.modeData.point>bgmTransBegin and P.modeData.point<bgmTransFinish+10 and P.isMain then
                    BGM.set(bgmList['secret7th'].add,'volume',math.min((P.modeData.point-bgmTransBegin)/(bgmTransFinish-bgmTransBegin),1),1)
                end
            end,
            afterClear=function(P)
                local md=P.modeData

                -- Update showInvis speed
                md.swipeStep=10
                for i=#P.clearHistory,#P.clearHistory-4,-1 do
                    local c=P.clearHistory[i]
                    if not c then break end
                    md.swipeStep=math.max(md.swipeStep-(c.line-4),1)
                end

                -- Calculate clearing score
                local dScore=math.floor((P.clearHistory[#P.clearHistory].line+1)^2/4)
                md.point=md.point+dScore
                if md.point==md.target-1 then
                    P:playSound('notice')
                elseif md.point>=md.target then
                    if md.level<10 then
                        P:playSound('reach')
                        md.level=md.level+1
                        md.target=100*md.level
                        P.settings.das=math.max(P.modeData.storedDas,levels[md.level].das)
                        P.settings.arr=math.max(P.modeData.storedArr,levels[md.level].arr)
                        P.settings.lockDelay=levels[md.level].lock
                        P.settings.spawnDelay=levels[md.level].spawn
                        P.settings.clearDelay=levels[md.level].clear
                        P.settings.maxFreshTime=levels[md.level].fresh
                        P.settings.pieceVisTime=levels[md.level].visTime
                        P.settings.pieceFadeTime=levels[md.level].fadeTime
                    else
                        P:finish('AC')
                    end
                end
            end,
            drawOnPlayer=function(P)
                gc.setColor(COLOR.L)
                FONT.set(80)
                GC.mStr(P.modeData.point,-300,-100)
                gc.rectangle('fill',-380,-2,160,4)
                GC.mStr(P.modeData.target,-300,10)
            end,
        },
    }},
}
