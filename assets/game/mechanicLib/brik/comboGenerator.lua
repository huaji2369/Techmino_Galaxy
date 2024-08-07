---@type Map<Techmino.Event.Brik>
local comboGenerator={}

local function newMap(P)
    local F=P.field
    local w=P.settings.fieldW
    local difficulty=MATH.clamp(P.modeData.levelsCleared+1+P:random(-1,1),1,10)
    local height=10+math.floor((difficulty+1)/2)+P:random(-2,2)
    local wellWidth=MATH.clamp(2+math.floor(difficulty/4),2,4)
    local widthExpandCounter=math.floor(15-difficulty)+P:random(-2,2)
    local wellL,wellR

    if wellWidth==3 then
        widthExpandCounter=widthExpandCounter+3-widthExpandCounter%3
    end

    wellL=P:random(1,w+1-wellWidth)
    wellR=wellL+wellWidth-1

    TABLE.clear(F._matrix)
    for y=1,height do
        F._matrix[y]=TABLE.new(false,w)
        for x=1,w do
            if not (x>=wellL and x<=wellR) then
                F._matrix[y][x]=P:newCell(777)
            end
        end
        if wellR-wellL+1<4 then
            widthExpandCounter=widthExpandCounter-1
            if widthExpandCounter==0 then
                if P:random()<.5 then wellL=wellL-1 else wellR=wellR+1 end
                if wellL<1 then wellL,wellR=wellL+1,wellR+1 end
                if wellR>w then wellL,wellR=wellL-1,wellR-1 end
                wellL,wellR=MATH.clamp(wellL,1,10),MATH.clamp(wellR,1,10)
                widthExpandCounter=math.floor(12-difficulty)+P:random(-1,2)
            end
        end
    end

    -- 4w base
    if wellWidth==4 then
        if P:random()<.626 then -- 6-res
            for x=wellL,wellR do
                for y=1,2 do
                    F._matrix[y][x]=P:newCell(777)
                end
            end
            F._matrix[1][P:random(wellL,wellR)]=false
            F._matrix[2][P:random(wellL,wellR)]=false
        else -- 3-res
            if P:random()<.626 then -- Hook pattern
                local L=P:random()<.5
                F._matrix[1][L and wellL   or wellR  ]=P:newCell(777)
                F._matrix[2][L and wellL   or wellR  ]=P:newCell(777)
                F._matrix[2][L and wellL+1 or wellR-1]=P:newCell(777)
            else -- Flat
                for x=wellL,wellR do
                    F._matrix[1][x]=P:newCell(777)
                end
                F._matrix[1][P:random(wellL,wellR)]=false
            end
        end
    end

    P.clearTimer=0
    P.modeData.levelRemain=height
    P.modeData.levelStarted=false
end

function comboGenerator.event_playerInit(P)
    P.settings.asd=math.max(P.settings.asd,120)
    P.settings.asp=math.max(P.settings.asp,12)

    P.modeData.comboCount=0
    P.modeData.levelRemain=0
    P.modeData.levelsCleared=0
    P.modeData._curHisLen=false
    newMap(P)
end
function comboGenerator.event_afterDrop(P)
    if P.handY>P.modeData.levelRemain then
        if P.modeData.levelStarted then
            newMap(P)
            P:playSound('discharge')
            P.combo=0
        end
        P.hand=false
    end
end
function comboGenerator.event_afterLock(P)
    P.modeData._curHisLen=#P.clearHistory
end
function comboGenerator.event_afterClear(P,clear)
    P.modeData.levelRemain=P.modeData.levelRemain-clear.line
end
function comboGenerator.event_beforeDiscard(P)
    if #P.clearHistory>P.modeData._curHisLen then
        if not P.modeData.levelStarted then
            P.modeData.levelStarted=true
        else
            P.modeData.comboCount=P.modeData.comboCount+1
        end
        if P.modeData.comboCount>=P.modeData.target.combo then
            P:finish('win')
        elseif P.modeData.levelRemain<=0 then
            P.modeData.levelsCleared=P.modeData.levelsCleared+1
            newMap(P)
            P:playSound('beep_rise')
        end
    elseif P.modeData.levelStarted then
        newMap(P)
        P:playSound('discharge')
    end
end

function comboGenerator.event_drawOnPlayer(P)
    P:drawInfoPanel(-380,-60,160,120)
    FONT.set(80) GC.mStr(P.modeData.target.combo-P.modeData.comboCount,-300,-55)
end

return comboGenerator
