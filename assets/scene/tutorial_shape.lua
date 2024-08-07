local level,score
local time,totalTime
local noControl
local choices
local texts ---@type Zenitha.Text

--[[ Levels
    1~40:    R/L(+F after 20)
    41~80:   Random spawning direction
]]
local passTime=60
local parTime={30,35}

---@type Zenitha.Scene
local scene={}

local function newQuestion()

end

local function reset()
    autoQuitInterior(true)
    level=1
    score=0
    time=passTime
    totalTime=0
    noControl=false
    newQuestion()

    texts:clear()
    texts:add{
        y=-180,
        text=Text.tutorial_shape_1,
        fontSize=40,
        style='appear',
        duration=6.26,
    }
    texts:add{
        y=-120,
        text=Text.tutorial_shape_2,
        fontSize=25,
        style='appear',
        duration=6.26,
    }

    choices={}
    for i=1,5 do
        local p=TABLE.copyAll((Brik.get(i)))
        p.color=RGB9[defaultBrikColor[p.id]]
        choices[i]=p
    end
end

local function endGame(passLevel)
    noControl=true
    texts:add{
        text=passLevel==0 and Text.tutorial_notpass or Text.tutorial_pass,
        color=({[0]=COLOR.lR,COLOR.lG,COLOR.lY})[passLevel],
        fontSize=40,
        k=1.5,
        fontType='bold',
        style='beat',
        styleArg=1,
        duration=2.6,
        inPoint=.1,
        outPoint=0,
    }
    autoQuitInterior()
end

local function answer(option)
    if noControl then return end
    if choices[option].correct then
        score=score+1
        if score%40==0 then
            -- End game check
            if level==1 then
                if time>parTime[1] then
                    -- Just pass
                    endGame(1)
                    FMOD.effect('finish_win')
                else
                    level=2
                    time=parTime[2]
                    FMOD.effect('beep_notice')
                end
                PROGRESS.setTutorialPassed(3)
            elseif level==2 then
                -- Cleared
                endGame(2)
                FMOD.effect('finish_win')
            end
        else
            -- Correct
            FMOD.effect('beep_rise')
        end
    else
        FMOD.effect('finish_rule')
    end
    newQuestion()
end

function scene.load()
    texts=TEXT.new()
    reset()
    playBgm('space')
end
function scene.unload()
    texts=nil
end

function scene.keyDown(key,isRep)
    if isRep then return true end
    local action
    action=KEYMAP.brik:getAction(key)
    if action=='moveLeft' or action=='moveRight' then
        answer(action=='moveLeft' and 1 or 2)
        return true
    end
    action=KEYMAP.sys:getAction(key)
    if action=='restart' then
        reset()
    elseif action=='back' then
        if sureCheck('back') then SCN.back('none') end
    end
    return true
end

function scene.update(dt)
    totalTime=totalTime+dt
    if not noControl then
        time=math.max(time-dt,0)
        if time==0 then
            if level==1 then
                endGame(0)
                FMOD.effect('finish_timeout')
            else
                endGame(1)
                FMOD.effect('finish_win')
            end
        end
    end

    if texts then texts:update(dt) end
end

local cellSize=50
function scene.draw()
    GC.replaceTransform(SCR.xOy_m)

    -- Choices
    for i=1,#choices do
        GC.push('transform')
        GC.translate(220*(i-1-(#choices-1)/2),300)
        local mat=choices[i].shape
        GC.translate(-#mat[1]*cellSize/2,#mat*cellSize/2)
        GC.setColor(choices[i].color)
        for y=1,#mat do
            for x=1,#mat[y] do
                if mat[y][x] then
                    GC.rectangle('fill',(x-1)*cellSize,-(y-1)*cellSize,cellSize,-cellSize)
                end
            end
        end
        GC.pop()
    end

    -- Score
    GC.setColor(1,1,1,.42)
    FONT.set(80,'bold')
    GC.mStr(score.."/"..(40*level),0,-200)

    -- Time
    if level>1 then
        local barLen=time/parTime[level]*313
        GC.setColor(1,1,1,.26)
        GC.rectangle('fill',-barLen,-180,2*barLen,10)
    else
        GC.replaceTransform(SCR.xOy_l)
        GC.setLineWidth(2)
        GC.setColor(COLOR.L)
        GC.rectangle('line',200-3,150+3,20+6,-300-6)
        GC.rectangle('fill',200,150,20,-300*math.max(passTime-totalTime,0)/passTime)
    end

    -- Floating texts
    if texts then
        GC.replaceTransform(SCR.xOy_m)
        GC.scale(2)
        texts:draw()
    end
end

scene.widgetList={
    {type='button',pos={.5,.5},x=220*(0-2),y=300,w=200,sound_trigger=false,code=function() answer(1) end},
    {type='button',pos={.5,.5},x=220*(1-2),y=300,w=200,sound_trigger=false,code=function() answer(2) end},
    {type='button',pos={.5,.5},x=220*(2-2),y=300,w=200,sound_trigger=false,code=function() answer(2) end},
    {type='button',pos={.5,.5},x=220*(3-2),y=300,w=200,sound_trigger=false,code=function() answer(2) end},
    {type='button',pos={.5,.5},x=220*(4-2),y=300,w=200,sound_trigger=false,code=function() answer(2) end},
    -- {type='button',pos={.5,.5},x=220*(5-3),y=300,w=200,sound_trigger=false,code=function() answer(2) end},
    -- {type='button',pos={.5,.5},x=220*(6-3),y=300,w=200,sound_trigger=false,code=function() answer(2) end},
    {type='button',pos={0,.5},x=210,y=-360,w=200,h=80,lineWidth=4,cornerR=0,sound_trigger='button_back',fontSize=60,text=CHAR.icon.back,code=WIDGET.c_backScn('none')},
}
return scene
