---@alias Techmino.Player.Type 'brik'|'gela'|'acry'
---@alias Techmino.Mode.Setting Techmino.Mode.Setting.Brik|Techmino.Mode.Setting.Gela|Techmino.Mode.Setting.Acry
---@alias Techmino.EndReason
---|'AC'  Win
---|'WA'  Block out
---|'CE'  Lock out
---|'MLE' Top out
---|'TLE' Time out
---|'OLE' Finesse fault
---|'ILE' Ran out pieces
---|'PE'  Mission failed
---|'UKE' Other reason

---@alias Techmino.mode.event.basic
---|'always'
---|'playerInit'
---|'gameStart'
---|'beforePress'
---|'afterPress'
---|'beforeRelease'
---|'afterRelease'
---|'gameOver'

---@alias Techmino.mode.event.brik
---|'afterResetPos'
---|'afterSpawn'
---|'afterDrop'
---|'afterLock'
---|'afterClear'
---|'beforeCancel'
---|'beforeSend'
---|'beforeDiscard'
---|'whenSuffocate'
---|'extraSolidCheck'
---|'changeSpawnPos'
---
---|'drawBelowField'
---|'drawBelowBlock'
---|'drawBelowMarks'
---|'drawInField'
---|'drawOnPlayer'

---@alias Techmino.mode.event.gela
---|'afterSpawn'
---|'afterResetPos'
---|'afterDrop'
---|'afterLock'
---|'afterClear'
---|'whenSuffocate'
---|
---|'drawBelowField'
---|'drawBelowBlock'
---|'drawBelowMarks'
---|'drawInField'
---|'drawOnPlayer'

---@alias Techmino.mode.event.acry
---|'illegalMove'
---|'legalMove'
---
---|'drawBelowField'
---|'drawInField'
---|'drawOnPlayer'

---@alias Techmino.Mech.Basic fun(P:Techmino.Player):any,any
---@alias Techmino.Mech.Brik fun(P:Techmino.Player.Brik):any,any
---@alias Techmino.Mech.Gela fun(P:Techmino.Player.Gela):any,any
---@alias Techmino.Mech.Acry fun(P:Techmino.Player.Acry):any,any

---@class Techmino.ParticleSystems
---@field rectShade love.ParticleSystem
---@field spinArrow table
---@field star love.ParticleSystem
---@field boardSmoke love.ParticleSystem
---@field line love.ParticleSystem
---@field hitSparkle love.ParticleSystem
---@field cornerCheck love.ParticleSystem
---@field tiltRect love.ParticleSystem
---@field trail love.ParticleSystem
---@field brikMapBack love.ParticleSystem

---@alias Techmino.Event {[1]:number, [2]:fun(P:Techmino.Player):any}

---@class Techmino.Cell
---@field cid string cell's mem pointer string
---@field id number ascending piece number
---@field color number 0~63
---@field alpha? number 0~1
---@field conn table<string, true>
---@field bias {expBack?:number, lineBack?:number, teleBack?:number, x:number, y:number}
---@field visTimer? number
---@field fadeTime? number
---@field visStep? number
---@field visMax? number
---
---@field diggable boolean Gela only
---@field connClear boolean Gela only

---@alias Techmino.RectPiece (Techmino.Cell|false)[][]

---@class Techmino.Hand
---@field id number
---@field shape number
---@field direction number
---@field name string
---@field matrix Techmino.RectPiece
---@field _origin Techmino.Hand
---
---@field size number Gela only

---@class Techmino.Mode
---@field initialize function Called when initializing the mode
---@field settings {brik:Techmino.Mode.Setting.Brik?, gela:Techmino.Mode.Setting.Gela?, acry:Techmino.Mode.Setting.Acry?}
---@field layout 'default' Layout mode
---@field checkFinish function Return if the game should end when a player finishes
---@field result function Called when the game ends
---@field resultPage fun(time:number) Drawing the result page
---@field name string Mode name, for debug use

---@class Techmino.Player
---@field gameMode Techmino.Player.Type
---@field id number limited to 1~1000
---@field team number Team ID, 0 as No Team
---@field isMain boolean
---@field sound boolean
---@field settings Techmino.Mode.Setting
---@field buffedKey table
---@field modeData table
---@field soundTimeHistory table
---@field RND love.RandomGenerator
---@field pos {x:number, y:number, k:number, a:number, dx:number, dy:number, dk:number, da:number, vx:number, vy:number, vk:number, va:number}
---@field finished Techmino.EndReason|boolean
---@field realTime number
---@field time number
---@field gameTime number
---@field timing boolean
---@field texts Zenitha.Text
---@field particles Techmino.ParticleSystems
---
---@field updateFrame function
---@field scriptCmd function
---@field decodeScript function
---@field checkScriptSyntax function
---
---@field hand Techmino.Hand|false Current controlling piece object
---@field handX number
---@field handY number
---@field event table<string, Techmino.Event[]>
---@field soundEvent table
---@field _actions table<string, {press:fun(P:Techmino.Player), release:fun(P:Techmino.Player)}>
---
---@field receive function
---@field render function
