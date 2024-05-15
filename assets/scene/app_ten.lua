local gc=love.graphics
local gc_setColor,gc_rectangle=gc.setColor,gc.rectangle

local floor,rnd=math.floor,math.random
local ins,rem=table.insert,table.remove
local setFont,mStr=FONT.set,GC.mStr

---@type Zenitha.Scene
local scene={}

local previewX={245,186,129,78,35}
local previewY={435,442,449,456,463}
local tileColor={
    {.39, 1.0, .39},
    {.39, .39, 1.0},
    {1.0, .70, .31},
    {.94, .31, .31},
    {.00, .71, .12},
    {.90, .20, .90},
    {.94, .47, .39},
    {.90, .00, .00},
    {.86, .86, .31},
    {.78, .31, .00},
    {.78, .55, .04},
    {.12, .12, .51},
}

local board,preview,cx,cy
local failPos
local startTime,time
local maxTile,maxNew
local state,progress
local fallingTimer
local score

local nexts
local invis
local fast

local function reset()
    state,progress=0,{}
    score,time=0,0
    maxTile,maxNew=2,2
    for i=1,5 do
        preview[i]=rnd(2)
    end
    for i=1,5 do for j=1,5 do
        board[i][j]=rnd(2)
    end end
    board[rnd(5)][rnd(5)]=2
    fallingTimer=false
    failPos=false
end
function scene.enter()
    BG.set('space')
    preview={}
    board={{},{},{},{},{}}
    cx,cy=3,3
    startTime=0
    invis=false
    nexts=true
    reset()
end

local function merge()
    if fallingTimer or state==2 or not cx then return end
    if state==0 then
        state=1
        startTime=love.timer.getTime()
    end
    if failPos==cy*10+cx then return end
    local chosen=board[cy][cx]
    local connected={{cy,cx}}
    local count=1
    repeat
        local c=rem(connected)
        local y,x=c[1],c[2]
        if board[y][x]~=0 then
            board[y][x]=0
            SYSFX.newShade(2,320+x*128-128,40+y*128-128,128,128)
            if x>1 and board[y][x-1]==chosen then ins(connected,{y,x-1}) count=count+1 end
            if x<5 and board[y][x+1]==chosen then ins(connected,{y,x+1}) count=count+1 end
            if y>1 and board[y-1][x]==chosen then ins(connected,{y-1,x}) count=count+1 end
            if y<5 and board[y+1][x]==chosen then ins(connected,{y+1,x}) count=count+1 end
        end
    until not connected[1]
    if count>1 then
        board[cy][cx]=chosen+1
        local getScore=3^(chosen-1)*math.min(floor(.5+count/2),4)
        score=score+getScore
        TEXT:add(getScore,cx*128+256,cy*128-40,40,'score')
        SYSFX.newRectRipple(2,320+cx*128-128,40+cy*128-128,128,128)
        FMOD.effect('lock')
        if chosen==maxTile then
            maxTile=chosen+1
            if maxTile>=6 then
                ins(progress,("%s - %.3fs"):format(maxTile,love.timer.getTime()-startTime))
            end
            maxNew=
                maxTile<=4 and 2 or
                maxTile<=8 and 3 or
                maxTile<=11 and 4 or
                5
            FMOD.effect('beep_rise')
        end
        if chosen>=5 then
            FMOD.effect(
                chosen>=9 and 'ren_mega' or
                chosen>=8 and 'spin_3' or
                chosen>=7 and 'spin_2' or
                chosen>=6 and 'spin_1' or
                'spin_0'
            )
        end
        fallingTimer=fast and 8 or 12
        failPos=false
    else
        board[cy][cx]=chosen
        failPos=cy*10+cx
    end
end
function scene.keyDown(key,isRep)
    if isRep then return true end
    if key=='up' or key=='down' or key=='left' or key=='right' then
        if state==2 then return true end
        if not cx then
            cx,cy=3,3
        else
            if key=='up' then
                if cy>1 then cy=cy-1 end
            elseif key=='down' then
                if cy<5 then cy=cy+1 end
            elseif key=='left' then
                if cx>1 then cx=cx-1 end
            elseif key=='right' then
                if cx<5 then cx=cx+1 end
            end
        end
    elseif key=='z' or key=='space' then
        merge()
    elseif key=='r' then
        reset()
    elseif key=='q' then
        if state==0 then
            nexts=not nexts
        end
    elseif key=='w' then
        if state==0 then
            invis=not invis
        end
    elseif key=='e' then
        if state==0 then
            fast=not fast
        end
    elseif key=='escape' then
        if sureCheck('back') then SCN.back() end
    end
    return true
end
function scene.mouseMove(x,y)
    cx,cy=floor((x-192)/128),floor((y+88)/128)
    if cx<1 or cx>5 or cy<1 or cy>5 then
        cx,cy=false
    end
end
function scene.mouseDown(x,y)
    scene.mouseMove(x,y)
    merge()
end

scene.touchMove=scene.mouseMove
scene.touchDown=scene.mouseMove
function scene.touchClick(x,y)
    scene.mouseDown(x,y)
end

function scene.update()
    if state==1 then
        time=love.timer.getTime()-startTime
        if fallingTimer then
            fallingTimer=fallingTimer-1
            if fallingTimer==0 then
                for i=5,2,-1 do for j=1,5 do
                    if board[i][j]==0 then
                        board[i][j]=board[i-1][j]
                        board[i-1][j]=0
                    end end
                end
                local noNewTile=true
                for i=1,5 do
                    if board[1][i]==0 then
                        board[1][i]=rem(preview,1)
                        preview[5]=
                            maxTile<=4 and rnd(2) or
                            maxTile<=8 and rnd(1+rnd(2)) or
                            maxTile<=11 and rnd(2+rnd(2)) or
                            rnd(2+rnd(3))
                        noNewTile=false
                    end
                end
                if noNewTile then
                    fallingTimer=false
                    for i=1,4 do for j=1,5 do if board[i][j]==board[i+1][j] then return end end end
                    for i=1,5 do for j=1,4 do if board[i][j]==board[i][j+1] then return end end end
                    state=2
                    FMOD.effect('fail')
                else
                    fallingTimer=fast and 4 or 5
                    FMOD.effect('touch')
                end
            end
        elseif fast and (
            isMouseDown(1) or
            #getTouches()>0 or
            isKeyDown('space')
        ) then
            merge()
        end
    end
end

function scene.draw()
    setFont(40)
    gc_setColor(COLOR.L)
    gc.print(("%.3f"):format(time),1026,50)
    gc.print(score,1026,100)

    -- Progress time list
    setFont(25)
    gc_setColor(.7,.7,.7)
    for i=1,#progress do
        gc.print(progress[i],1000,140+30*i)
    end

    -- Previews
    if nexts then
        gc.setColor(COLOR.dX)
        gc_rectangle('fill',20,450,280,75)
        gc.setLineWidth(6)
        gc_setColor(COLOR.L)
        gc_rectangle('line',20,450,280,75)
        for i=1,5 do
            setFont(85-10*i)
            gc.setColor(tileColor[preview[i]])
            gc.print(preview[i],previewX[i],previewY[i])
        end
    end

    if state==2 then
        -- Draw no-setting area
        gc_setColor(1,0,0,.3)
        gc_rectangle('fill',15,200,285,210)
    end
    gc.setLineWidth(10)
    gc_setColor(COLOR[
        state==1 and (fast and 'R' or 'W') or
        state==0 and 'G' or
        state==2 and 'Y'
    ])
    gc_rectangle('line',315,35,650,650)

    gc.setLineWidth(4)
    setFont(70)
    local hide=invis and state==1
    for i=1,5 do for j=1,5 do
        local N=board[i][j]
        if N>0 then
            if hide and N>maxNew then
                gc_setColor(COLOR.lD)
                gc_rectangle('fill',320+j*128-128,40+i*128-128,128,128)
                gc_setColor(1,1,1,.3)
                mStr("?",j*128+256,i*128-75)
            else
                if N<=12 then
                    gc_setColor(tileColor[N])
                elseif N<=14 then
                    gc_setColor(COLOR.rainbow(4*love.timer.getTime()-i-j))
                else
                    gc_setColor(0,0,0,1-math.abs(love.timer.getTime()%.5-.25)*6-.25)
                end
                gc_rectangle('fill',320+j*128-128,40+i*128-128,128,128)
                gc_setColor(1,1,1,.9)
                mStr(N,j*128+256,i*128-75)
            end
        end
    end end
    if state<2 and cx then
        gc_setColor(1,1,1,.6)
        gc.setLineWidth(10)
        gc_rectangle('line',325+cx*128-128,45+cy*128-128,118,118)
    end
    setFont(50)
    gc_setColor(COLOR.L)
    mStr("Just Get Ten",160,580)
end

scene.widgetList={
    WIDGET.new{type='button',  x=160,y=100,w=180,h=100,color='lG',fontSize=60,text=CHAR.icon.retry,code=WIDGET.c_pressKey'r'},
    WIDGET.new{type='checkBox',x=240,y=235,widthLimit=200,fontSize=40,disp=function() return nexts end,code=WIDGET.c_pressKey'q',visibleTick=function() return state~=1 end},
    WIDGET.new{type='checkBox',x=240,y=305,widthLimit=200,fontSize=40,disp=function() return invis end,code=WIDGET.c_pressKey'w',visibleTick=function() return state~=1 end},
    WIDGET.new{type='checkBox',x=240,y=375,widthLimit=200,fontSize=30,disp=function() return fast end,code=WIDGET.c_pressKey'e',visibleTick=function() return state~=1 end},
    WIDGET.new{type='button',  pos={1,1},x=-120,y=-80,w=160,h=80,sound_trigger='button_back',fontSize=60,text=CHAR.icon.back,code=WIDGET.c_backScn()},
}

return scene
