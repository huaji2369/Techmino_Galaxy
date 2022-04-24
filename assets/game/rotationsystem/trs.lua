local TRS={}
TRS.centerPreset='common'
TRS.centerTex=GC.load{10,10,
    {'setCL',1,1,1,.4},
    {'fRect',1,1,8,8},
    {'setCL',1,1,1,.6},
    {'fRect',2,2,6,6},
    {'setCL',1,1,1,.8},
    {'fRect',3,3,4,4},
    {'setCL',1,1,1},
    {'fRect',4,4,2,2},
}
TRS[1]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0-2','-1+2','+0+1'}},
        L={test={'+0+0','+1+0','+1+1','+0-2','+1-1','+1-2'}},
        F={test={'+0+0','+1+0','-1+0','+0-1','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+0+2','+1+2','+1+1'}},
        L={test={'+0+0','+1+0','+1-1','+0+2','+1-2','+1-2'}},
        F={test={'+0+0','+0-1','+0+1','+0-2'}},
    },
    [2]={
        R={test={'+0+0','+1+0','+1+1','+0-2','+1-2','+0+1'}},
        L={test={'+0+0','-1+0','-1+1','+0-2','-1-2','-1-1'}},
        F={test={'+0+0','-1+0','+1+0','+0+1','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','-1-1','+0+2','-1+2','+0-1'}},
        L={test={'+0+0','-1+0','-1-1','+0+2','-1+2','+0-1'}},
        F={test={'+0+0','+0+1','+0-1','+0+2'}},
    },
}--Z
TRS[2]=RotationSys._reflect(TRS[1])--S
TRS[3]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0-2','+1+1','+0+1','+0-1'}},
        L={test={'+0+0','+1+0','+1+1','+0-2','+1-2','+1-1','+0+1'}},
        F={test={'+0+0','-1+0','+1+0','+0-1','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+1+1','-1+0','+0-1','+0+2','+1+2'}},
        L={test={'+0+0','+1+0','+1-1','+0+2','-1-1','+0-1','+0+1'}},
        F={test={'+0+0','+0-1','+0+1','+1+0'}},
    },
    [2]={
        R={test={'+0+0','+1+0','+1-1','-1+0','+1+1','+0-2','+1-2'}},
        L={test={'+0+0','-1+0','-1+1','-1-1','+1+0','+0+1','+0-2','-1-2'}},
        F={test={'+0+0','+1+0','-1+0','+0+1','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','-1-1','+0+2','-1+2','+0-1','-1+1'}},
        L={test={'+0+0','-1+0','-1-1','+1+0','+0+2','-1+2','-1+1'}},
        F={test={'+0+0','+0+1','+0-1','-1+0'}},
    },
}--J
TRS[4]=RotationSys._reflect(TRS[3])--L
TRS[5]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0-2','-1-2','+0+1'}},
        L={test={'+0+0','+1+0','+1+1','+0-2','+1-2','+0+1'}},
        F={test={'+0+0','-1+0','+1+0','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+0-1','-1-1','+0+2','+1+2','+1+1'}},
        L={test={'+0+0','+1+0','+1-1','+0+2','+1+2','+0-1'}},
        F={test={'+0+0','+0-1','+0+1','+1+0','+0-2','+0+2'}},
    },
    [2]={
        R={test={'+0+0','+1+0','+0-2','+1-2','+1-1','-1+1','-1+0'}},
        L={test={'+0+0','-1+0','+0-2','-1-2','-1-1','+1+1','+1+0'}},
        F={test={'+0+0','+1+0','-1+0','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','-1-1','+0+2','-1+2','+0-1'}},
        L={test={'+0+0','-1+0','-1-1','+0-1','+1-1','+0+2','-1+2','-1+1'}},
        F={test={'+0+0','+0-1','+0+1','-1+0','+0-2','+0+2'}},
    },
}--T
local Ocells={{1,1},{1,2},{2,1},{2,2}}
local OspinList={
    {seq='RRR',shape=5,direcion=2,bias={ 0,-1},free='FIX',target={2,1,3,4}}, {seq='RRR',shape=5,direcion=2,bias={-1,-1},free='FIX',target={2,1,3,4}}, --T
    {seq='LLL',shape=5,direcion=2,bias={-1,-1},free='FIX',target={1,3,4,2}}, {seq='LLL',shape=5,direcion=2,bias={ 0,-1},free='FIX',target={2,1,3,4}}, --T
    {seq='RRR',shape=5,direcion=0,bias={-1, 0},free='FIX',target={1,2,4,3}}, --T(mini)
    {seq='LLL',shape=5,direcion=0,bias={ 0, 0},free='FIX',target={3,1,2,4}}, --T(mini)
    {seq='LRL',shape=1,direcion=2,bias={-1, 0},free='FIX',target={1,2,3,4}}, {seq='LRL',shape=1,direcion=2,bias={ 0,-1},free='FIX',target={1,2,3,4}}, {seq='LRL',shape=1,direcion=2,bias={ 0, 0},free='FIX',target={1,2,3,4}}, --Z
    {seq='RLR',shape=2,direcion=2,bias={ 0, 0},free='FIX',target={1,2,3,4}}, {seq='RLR',shape=2,direcion=2,bias={-1,-1},free='FIX',target={1,2,3,4}}, {seq='RLR',shape=2,direcion=2,bias={-1, 0},free='FIX',target={1,2,3,4}}, --S
    {seq='LLR',shape=3,direcion=2,bias={ 0,-1},free='MOV',target={2,1,3,4}}, --J(farDown) --2,3,1,4?
    {seq='RRL',shape=4,direcion=2,bias={-1,-1},free='MOV',target={1,3,4,2}}, --L(farDown) --1,3,2,4?
    {seq='RRL',shape=3,direcion=2,bias={-1,-1},free='FIX',target={2,1,3,4}}, {seq='RRL',shape=3,direcion=0,bias={ 0, 0},free='FIX',target={1,2,4,3}}, --J
    {seq='LLR',shape=4,direcion=2,bias={ 0,-1},free='FIX',target={1,3,4,2}}, {seq='LLR',shape=4,direcion=0,bias={-1, 0},free='FIX',target={3,1,2,4}}, --L

    {seq='FFF',shape=7,direcion=0,bias={-1, 1},free='MOV',target={3,1,2,4}}, {seq='FFF',shape=7,direcion=0,bias={-2, 1},free='MOV',target={3,1,2,4}}, {seq='FFF',shape=7,direcion=0,bias={ 0, 1},free='MOV',target={3,1,2,4}}, --I(high)
    {seq='FFF',shape=7,direcion=2,bias={-1, 0},free='ANY',target={1,3,4,2}}, {seq='FFF',shape=7,direcion=2,bias={-2, 0},free='ANY',target={1,3,4,2}}, {seq='FFF',shape=7,direcion=2,bias={ 0, 0},free='ANY',target={1,3,4,2}}, --I(low)
    {seq='RFR',shape=6,direcion=0,bias={ 1,-1},free='ANY',target={2,4,1,3}}, {seq='RRF',shape=6,direcion=0,bias={ 2,-1},free='ANY',target={2,4,1,3}}, {seq='RFF',shape=6,direcion=0,bias={ 1,-2},free='ANY',target={2,4,1,3}}, --O
    {seq='LFL',shape=6,direcion=0,bias={-1,-1},free='ANY',target={3,1,4,2}}, {seq='LLF',shape=6,direcion=0,bias={-2,-1},free='ANY',target={3,1,4,2}}, {seq='LFF',shape=6,direcion=0,bias={-1,-2},free='ANY',target={3,1,4,2}}, --O
}
TRS[6]={
    [0]={center={1,1}},
    [1]={center={1,1}},
    [2]={center={1,1}},
    [3]={center={1,1}},
    rotate=function(P,dir)
        local C=P.hand
        local F=P.field
        local baseX,baseY=P.handX,P.handY
        P:freshDelay('move')
        P:playSound('rotate',.5)
        if baseY==P.ghostY and ((F:getCell(baseX-1,baseY) or F:getCell(baseX-1,baseY+1))) and (F:getCell(baseX+2,baseY) or F:getCell(baseX+2,baseY+1)) then
            if not P.settings.noOspin then
                -- [Warning] field 'spinSeq' is a dirty data, TRS put this var into the block.
                C.spinSeq=((C.spinSeq or '')..dir):sub(-3)
                if #C.spinSeq==3 then
                    for i=1,#OspinList do
                        local test=OspinList[i]
                        if C.spinSeq==test.seq then
                            local newMatrix=TABLE.shift(Minos[test.shape].shape)
                            if test.direcion==2 then newMatrix=TABLE.rotate(newMatrix,'F') end
                            local c=0
                            for y=1,#newMatrix do
                                for x=1,#newMatrix[1] do
                                    if newMatrix[y][x] then
                                        c=c+1
                                        newMatrix[y][x]=C.matrix[Ocells[test.target[c]][1]][Ocells[test.target[c]][2]]
                                    end
                                end
                            end

                            local x,y=P.handX+test.bias[1],P.handY+test.bias[2]
                            if
                                not P:ifoverlap(newMatrix,x,y) and (
                                    test.free~='FIX' or (P:ifoverlap(newMatrix,x-1,y) and P:ifoverlap(newMatrix,x+1,y))
                                ) and (
                                    test.free=='ANY' or (P:ifoverlap(newMatrix,x,y-1) and P:ifoverlap(newMatrix,x,y+1))
                                )
                            then
                                C.shape=test.shape
                                C.matrix=newMatrix
                                C.direction=test.direcion
                                C.spinSeq=''

                                C._origin.shape=test.shape
                                C._origin.direction=test.direcion
                                C._origin.matrix=test.direcion==0 and newMatrix or test.direcion==2 and TABLE.rotate(newMatrix,'F') or error("Oh I forgot this")

                                P:moveHand('rotate',x,y,dir)
                                P:freshGhost()
                                P:playSound('rotate_special')
                                break
                            end
                        end
                    end
                end
            end
        else-- No shape-changing spin
            C.spinSeq=nil
            C.matrix=TABLE.rotate(C.matrix,dir)
            C.direction=(C.direction+(dir=='R' and 1 or dir=='L' and 3 or dir=='F' and 2))%4
        end
        if P.handY==P.ghostY then
            P:playSound('touch')
        end
    end,
}--O
TRS[7]={
    [0]={
        R={test={'+0+0','+0+1','+1+0','-2+0','-2-1','+1+2'}},
        L={test={'+0+0','+0+1','-1+0','+2+0','+2-1','-1+2'}},
        F={test={'+0+0','-1+0','+1+0','+0-1','+0+1'}},
    },
    [1]={
        R={test={'+0+0','-1+0','+2+0','+2-1','+0-1','-1+2'}},
        L={test={'+0+0','+2+0','-1+0','-1-2','+2+1','+0+1'}},
        F={test={'+0+0','+0-1','-1+0','+1+0','+0+1'}},
    },
    [2]={
        R={test={'+0+0','+2+0','-1+0','-1-2','+2+1','+0+1'}},
        L={test={'+0+0','-2+0','+1+0','+1-2','-2+1','+0+1'}},
        F={test={'+0+0','+1+0','-1+0','+0+1','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-2+0','+1+0','+1-2','-2+1','+0+1'}},
        L={test={'+0+0','+1+0','-2+0','-2-1','+0-1','+1+2'}},
        F={test={'+0+0','+0-1','+1+0','-1+0','+0+1'}},
    },
}--I
TRS[8]={
    [0]={
        R={target=1,test={'+0+0','+0+1','+1+1','-1+0','+0-3','+0+2','+0-2','+0+3','-1+2'}},
        L={target=1,test={'+0+0','+1+0','+0-3','+0-1','+0+1','+0-2','+0+2','+0+3','+1+2'}},
        F={target=0},
    },
    [1]={
        R={target=0,test={'+0+0','-1+0','+0-1','+0+1','+0-2','+0-3','+0+2','+0+3','-1-2'}},
        L={target=0,test={'+0+0','+0-1','-1-1','+1+0','+0-3','+0+2','+0-2','+0+3','+1-2'}},
        F={target=1},
    },
}--Z5
TRS[9]=RotationSys._reflect(TRS[8])--S5
TRS[10]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0-2','-1-2','-1-1','+0+1'}},
        L={test={'+0+0','+1+0','+1+1','+0-2','+1-2'}},
        F={test={'+0+0','-1+0','+0-1','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+0+2','+1+2','+1+1'}},
        L={test={'+0+0','+1+0','+1-1','+0+2','+1+2','+0-1','+1+1'}},
        F={test={'+0+0','+1+0','+0+1','-1+0'}},
    },
    [2]={
        R={test={'+0+0','+1+0','+1+1','-1+0','+0-2','+1-2'}},
        L={test={'+0+0','-1+0','-1-1','-1+1','+0-2','-1-2','-1-1'}},
        F={test={'+0+0','+1+0','+0+1','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','-1-1','+0+2','-1+2'}},
        L={test={'+0+0','-1+0','-1-1','-1+1','+0-1','+0+2','-1+2'}},
        F={test={'+0+0','-1+0','+0-1','+1+0'}},
    },
}--P
TRS[11]=RotationSys._reflect(TRS[10])--Q
TRS[12]={
    [0]={
        R={test={'+0+0','-1+0','+1+0','-1+1','+0-2','+0-3'}},
        L={test={'+0+0','+1+0','+1-1','+0+1','+0-2','+0-3'}},
        F={test={'+0+0','+1+0','-1+0','-1-1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+0-1','-1+0','+0+2'}},
        L={test={'+0+0','+1+0','+1-1','-1+0','+0+2','+0+3'}},
        F={test={'+0+0','+0-1','-1+1','+0+1'}},
    },
    [2]={
        R={test={'+0+0','+1+0','+1-1','+0-1','-1+0','+0-2','+2+0'}},
        L={test={'+0+0','-1+0','+0+1','+1+0','+0-2'}},
        F={test={'+0+0','-1+0','+1+0','+1+1'}},
    },
    [3]={
        R={test={'+0+0','-1+1','+1+0','+0-1','+0+2','+0+3'}},
        L={test={'+0+0','-1+0','+0+1','-1+1','+1+0','+0+2','-2+0'}},
        F={test={'+0+0','+0-1','+1-1','+0+1'}},
    },
}--F
TRS[13]=RotationSys._reflect(TRS[12])--E
TRS[14]={
    [0]={
        R={test={'+0+0','+0-1','-1-1','+1+0','+1+1','+0-3','-1+0','+0+2','-1+2'}},
        L={test={'+0+0','+0-1','+1-1','-1+0','-1+1','+0-3','+1+0','+0+2','+1+2'}},
        F={test={'+0+0','+0-1','+0+1','+0+2'}},
    },
    [1]={
        R={test={'+0+0','+1+0','-1+0','+0-2','+0-3','+0+1','-1+1'}},
        L={test={'+0+0','+1+0','+0-1','-1-1','+0-2','-1+1','+0-3','+1-2','+0+1'}},
        F={test={'+0+0','+1+0','-1+1','-2+0'}},
    },
    [2]={
        R={test={'+0+0','-1-1','+1+0','-1+0','+0-1','+0+2','+0+3'}},
        L={test={'+0+0','+1-1','-1+0','+1+0','+0-1','+0+2','+0+3'}},
        F={test={'+0+0','+0-1','+0+1','+0-2'}},
    },
    [3]={
        R={test={'+0+0','-1+0','+0-1','+1-1','+0-2','+1+1','+0-3','-1-2','+0+1'}},
        L={test={'+0+0','-1+0','+1+0','+0-2','+0-3','+0+1','+1+1'}},
        F={test={'+0+0','-1+0','+1+1','+2+0'}},
    },
}--T5
TRS[15]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0-2','-1-2'}},
        L={test={'+0+0','+1+0','+1+1','+0-2','+1-2'}},
        F={test={'+0+0','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+1+1'}},
        L={test={'+0+0','+1+0','+1-1','+0+2','+1+2'}},
        F={test={'+0+0','+0-1','+0+1','+1+0'}},
    },
    [2]={
        R={test={'+0+0','+1-1','+1+1','+1-1'}},
        L={test={'+0+0','-1-1','-1+1','-1-1'}},
        F={test={'+0+0','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','-1-1','+0-2','-1+2'}},
        L={test={'+0+0','-1+0','-1-1','-1+1'}},
        F={test={'+0+0','+0-1','+0+1','-1+0'}},
    },
}--U
TRS[16]={
    [0]={
        R={test={'+0+0','+0+1','-1+0','+0-2','-1-2'}},
        L={test={'+0+0','+0-1','+0+1','+0+2'}},
        F={test={'+0+0','-1+1','+1-1'}},
    },
    [1]={
        R={test={'+0+0','+0-1','+0+1','+0+2'}},
        L={test={'+0+0','+0+1','+1+0','+0-2','+1-2'}},
        F={test={'+0+0','+1+1','-1-1'}},
    },
    [2]={
        R={test={'+0+0','-1+0','+1+0'}},
        L={test={'+0+0','+0-1','+0-2','+0-2'}},
        F={test={'+0+0','+1-1','-1+1'}},
    },
    [3]={
        R={test={'+0+0','+0-1','+0+1','+0-2'}},
        L={test={'+0+0','+1+0','-1+0'}},
        F={test={'+0+0','-1-1','+1+1'}},
    },
}--V
TRS[17]={
    [0]={
        R={test={'+0+0','+0-1','-1+0','+1+0','+1-1','+0+2'}},
        L={test={'+0+0','+1+0','+1+1','+0-1','+0-2','+0-3','+1-1','+0+1','+0+2','+0+3'}},
        F={test={'+0+0','+0-1','-1+0'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+0-1','-2+0','+1+1','-1+0','+0+1','-1-1'}},
        L={test={'+0+0','+0-1','-1-1','+0+1','+0-2','+1-2','+0+2'}},
        F={test={'+0+0','+0+1','-1+0'}},
    },
    [2]={
        R={test={'+0+0','+0-1','+1-1','+0+1','+0-2','-1-2','+0+2'}},
        L={test={'+0+0','-1+0','+0-1','+2+0','-1+1','+1+0','+0+1','+1-1'}},
        F={test={'+0+0','+0+1','+1+0'}},
    },
    [3]={
        R={test={'+0+0','-1+0','-1+1','+0-1','+0-2','+0-3','-1-1','+0+1','+0+2','+0+3'}},
        L={test={'+0+0','+0-1','+1+0','+0+1','-1+0','-1-1','+0+2'}},
        F={test={'+0+0','+0-1','+1+0'}},
    },
}--W
TRS[18]={
    [0]={
        R={target=0,test={'+1-1','+1+0','+1+1','+1-2','+1+2'}},
        L={target=0,test={'-1-1','-1+0','-1+1','-1-2','-1+2'}},
        F={target=0,test={'+0-1','+0-2','+0+1','+0-2','+0+2'}},
    },
}--X
TRS[19]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0-3','-1+1','-1+2','+0+1'}},
        L={test={'+0+0','+0-1','+1-1','-1+0','+1+1','+0-2','+1-2','+0-3','+1-3','-1+1'}},
        F={test={'+0+0','+0-1','-1-1','+1-1','-1+0','+2-1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+0-1','+1-2','+0-2','+1+1','-1+0','+0+2','+1+2'}},
        L={test={'+0+0','-1+0','+1-1','+0+3','+1-1','+1-2','+0+1'}},
        F={test={'+0+0','-1+0','-1-1','+0+1','-1-2'}},
    },
    [2]={
        R={test={'+0+0','+1+0','+1-1','+1+1','-1+0','+0-2','+1-2','+0+2'}},
        L={test={'+0+0','-1+0','-1+1','+0+1','-1+2','+0+2','-1-1','+1+0','+0-2','-1-2'}},
        F={test={'+0+0','+0+1','+1+1','-1+1','+1+0','-2+1'}},
    },
    [3]={
        R={test={'+0+0','+0+1','-1+1','+1+0','-1-1','+0+2','-1+2','+0+3','-1+3','+1-1'}},
        L={test={'+0+0','-1+0','-1+1','-1-1','+1+0','+0+2','-1+2','+0-2'}},
        F={test={'+0+0','+1+0','+1+1','+0-1','+1+2'}},
    },
}--J5
TRS[20]=RotationSys._reflect(TRS[19])--L5
TRS[21]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+1+0','-1+2','-1-1','+0-3','+0+1'}},
        L={test={'+0+0','+0-1','+1+0','+0+1','+1-1','-1+0','+1+1','+0-2','+1-2','+0-3','+1-3','-1+1'}},
        F={test={'+0+0','+0-1','+1-1','-1+0','+2-1','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+1-1','+0-1','+1-2','+0-2','+1+1','-1+0','+0+2','+1+2'}},
        L={test={'+0+0','-1+0','+1+0','+1-1','+1-2','+1+1','+0+3','+0+1'}},
        F={test={'+0+0','-1+0','-1-1','+0+1','-1-2'}},
    },
    [2]={
        R={test={'+0+0','+0+1','+1+0','+1-1','+1+1','-1+0','+0-2','+1-2','+0+2'}},
        L={test={'+0+0','-1+0','-1+1','+0+1','-1+2','+0+2','-1-1','+1+0','+0-2','-1-2'}},
        F={test={'+0+0','+0+1','-1+1','+1+0','-2+1','+0-1'}},
    },
    [3]={
        R={test={'+0+0','+0-1','-1+0','+0+1','-1+1','+1+0','-1-1','+0+2','-1+2','+0+3','-1+3','+1-1'}},
        L={test={'+0+0','+0-1','-1+0','-1+1','-1-1','+1+0','+0+2','-1+2','+0-2'}},
        F={test={'+0+0','+1+0','+1+1','+0-1','+1+2'}},
    },
}--R
TRS[22]=RotationSys._reflect(TRS[21])--Y
TRS[23]={
    [0]={
        R={test={'+0+0','-1+0','-1+1','+0+1','+1+0','+1+1','-1+2','-2+0','+0-2'}},
        L={test={'+0+0','-1+0','+1-1','+0-2','+0-3','+1+0','+1-2','+1-3','+0+1','-1+1'}},
        F={test={'+0+0','-1+0','+0+2','+0-1'}},
    },
    [1]={
        R={test={'+0+0','-1+0','+1-1','-1-1','+1-2','+1+0','+0-2','+1-3','-1+2','+0+3','-1+3'}},
        L={test={'+0+0','+1+0','-1+0','+0-1','-1-1','+1-1','+1-2','+2+0','+0+2'}},
        F={test={'+0+0','-1+0','-1-1','+0+1','+1+2'}},
    },
    [2]={
        R={test={'+0+0','+0-2','+0-3','+1+2','+1+0','+0+1','-1+1','+0-1','+0+2'}},
        L={test={'+0+0','-1+0','+1-1','+1+1','+0-2','+0-3','+1+0','+1-2','+1-3','+0+1','-1+1'}},
        F={test={'+0+0','+1+0','+0-2','+0+1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','+1-1','+1-2','+1+0','+0-2','+1-3','-1+2','+0+3','-1+3'}},
        L={test={'+0+0','-1+0','+0-1','-1-2','+1-1','+1+0','+1+1','+0+2','+0+3'}},
        F={test={'+0+0','+1+0','+1+1','+0-1','-1-2'}},
    },
}--N
TRS[24]=RotationSys._reflect(TRS[23])--H
TRS[25]={
    [0]={
        R={target=1,test={'+0+0','+1-1','+1+0','+1+1','+0+1','-1+1','-1+0','-1-1','+0-1','+0-2','-2-1','-2-2','+2+0','+2-1','+2-2','+1+2','+2+2','-1+2','-2+2'}},
        L={target=1,test={'+0+0','-1-1','-1+0','-1+1','-0+1','+1+1','+1+0','+1-1','-0-1','-0-2','+2-1','+2-2','-2+0','-2-1','-2-2','-1+2','-2+2','+1+2','+2+2'}},
        F={target=0},
    },
    [1]={
        R={target=0,test={'+0+0','+1+0','+1-1','-0-1','-1-1','+2-2','+2-1','+2+0','+1-2','-0-2','-1-2','-2-2','+1+1','+2+1','+2+2','-1+0','-2+0','-2-1','+0+1','-1-1','-2-2'}},
        L={target=0,test={'+0+0','-1+0','-1-1','+0-1','+1-1','-2-2','-2-1','-2+0','-1-2','+0-2','+1-2','+2-2','-1+1','-2+1','-2+2','+1+0','+2+0','+2-1','+0+1','+1-1','+2-2'}},
        F={target=1},
    },
}--I5
TRS[26]={
    [0]={
        R={target=1,test={'+0+0','-1+0','-1-1','+1+1','-1+1'}},
        L={target=1,test={'+0+0','+1+0','+1-1','-1+1','+1+1'}},
        F={target=0},
    },
    [1]={
        R={target=0,test={'+0+0','+1+0','-1+0','+1-1','-1+1'}},
        L={target=0,test={'+0+0','-1+0','+1+0','-1-1','+1+1'}},
        F={target=1},
    },
}--I3
TRS[27]={
    [0]={
        R={test={'+0+0','-1+0','+1+0'}},
        L={test={'+0+0','+0+1','+0-1'}},
        F={test={'+0+0','+0-1','+1-1','-1-1'}},
    },
    [1]={
        R={test={'+0+0','+0+1','+0-1'}},
        L={test={'+0+0','+1+0','-1+0'}},
        F={test={'+0+0','+0-1','-1-1','+1-1'}},
    },
    [2]={
        R={test={'+0+0','+1+0','-1+0'}},
        L={test={'+0+0','+0-1','+0+1'}},
        F={test={'+0+0','+0+1','-1+1','+1+1'}},
    },
    [3]={
        R={test={'+0+0','+0-1','+0+1'}},
        L={test={'+0+0','-1+0','+1+0'}},
        F={test={'+0+0','+0+1','+1+1','-1+1'}},
    },
}--C
TRS[28]={
    [0]={
        R={test={'+0+0','-1+0','+0+1'}},
        L={test={'+0+0','+1+0','+0+1'}},
        F={test={'+0+0','+0-1','+0+1'}},
    },
    [1]={
        R={test={'+0+0','+1+0','+0+2'}},
        L={test={'+0+0','+1+0','+0+1'}},
        F={test={'+0+0','-1+0','+1+0'}},
    },
    [2]={
        R={test={'+0+0','+0-1','-1+0'}},
        L={test={'+0+0','+0-1','-1+0'}},
        F={test={'+0+0','+0+1','+0-1'}},
    },
    [3]={
        R={test={'+0+0','-1+0','+0+1'}},
        L={test={'+0+0','-1+0','+0+2'}},
        F={test={'+0+0','+1+0','-1+0'}},
    },
}--I2
TRS[29]={
    [0]={
        R={target=0},
        L={target=0},
        F={target=0},
    },
}--O1
return TRS
