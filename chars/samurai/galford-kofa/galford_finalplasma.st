;Plasma Finish System

;pb_hyper plasma finish
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3002
ctrl = 0
juggle = 4
velset = 0,0
sprpriority = 3
poweradd = -3000





[State 2000, 2]
type = SuperPause
trigger1 = AnimElem = 3
time = 135
movetime = 135
anim = -1

[State 1700, 3]
type = PlaySnd
trigger1 = time = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 17000,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg

[State 210, Hyper bg Explod]
type = Explod
trigger1 = !time
removetime = 109
id =6090
anim = 16090
pos = 0,0
postype = Left
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
scale = .5,.5

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 3
anim = 17200
pos = -9,-60
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 3
anim = 17210
pos = -9,-60
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,ºÚÉ«µ×É«]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1






[State hand charge elec]
type = explod
trigger1 = Time = 35
anim = 3011
persistent = 0
pos = 15,-50
postype = p1
ignorehitpause = 0
removeongethit = 1
ontop = 1
sprpriority = 6
bindtime = -1
removetime = 95


[State 3000, 2]; body effect charge
type = PlaySnd 
trigger1 = Time = 9 
value = 10,10


[State 3000, 2]; body effect charge
type = PlaySnd 
trigger1 = Time = 54 
value = 10,10


[State 3000, 2]; body effect charge
type = PlaySnd 
trigger1 = Time = 84 
value = 10,10


[State 3000, 0b]
type = BGPalfx
trigger1 = time = 0
trigger1 = Animtime != 0
ignorehitpause = 1
time = 155  
invertall = 1

[State 3101, env]
type = bgpalfx 
trigger1 = AnimElem = 6 
time = 90
add = -80,-80,-80

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 3
time = 155
ampl = 3; or 4


[State 9110,4];ground puls
type = Explod
trigger1 = AnimElem = 3
anim = 1080
pos = -23,5
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 120
bindtime = 1

;[State 3000, 1] 
;type = Explod
;trigger1 = AnimElem = 1
;anim = 9009
;pos = 0,10
;postype = back
;supermove = 1
;facing = 1 
;bindtime = 40
;sprpriority = -2
;removetime = 40

[State 3000, 2]; Lightning encircle sound
type = PlaySnd 
trigger1 = Time = 93 
value = 8,7


[State 3000, 2]; get enpowered sound1
type = PlaySnd 
trigger1 = Time = 100 
value = 8,5

[State 3000, 2]; get enpowered ,ready
type = PlaySnd 
trigger1 = Time = 110 
value = 10,6

[State 3005, 5] ; get enpowered
type = Explod
trigger1 = Time = 100
anim = 3040
id = 3040
pos = 44,32
postype = p1
bindtime = -1
removeongethit = 1
ontop = 1
sprpriority = 10
removetime = -2
ownpal = 1

[State 3005, 5] ; make wind from blast
type = Explod
trigger1 = AnimElem = 7
anim = 3050
id = 3050
pos = 40,13   
postype = p1
bindtime = -1
removeongethit = 1
ontop = 1
sprpriority = 10
removetime = -2
ownpal = 1

[State 3000, 5]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = Time = 10
trigger3 = Time = 20
trigger4 = Time = 30
trigger5 = Time = 40
trigger6 = Time = 50
trigger7 = Time = 60
trigger8 = Time = 70
trigger9 = Time = 80
trigger10 = Time = 90
trigger11 = Time = 100
value = 10,5


[State 3000, 5];charging elec sound
type = PlaySnd
trigger1 = TimeMod = 29, 100
value = 10,0

[State 3000, 2]
type = PlaySnd 
trigger1 = AnimElem = 3 
value = 10,4

[State 3000, 2]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,0

[State 3000, 2]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 3000, 3]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 4,14

[State 3000, 2]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 10,1



[State 3000, 5] ; Beam Super 3
type = Helper
trigger1 = AnimElem = 7 
helpertype = normal
name = "beam"
id = 3000
pos = 58,-65
postype = p1
stateno = 3005
ownpal = 1
sprpriority = 10
removeongethit = 1
size.xscale = 1
size.yscale = 1

[State 3000, 3];arm after elec
type = PlaySnd 
trigger1 = Time = 240
value = 8,4

[State 3000, 0b]
type = BGPalfx
trigger1 = time = 240
ignorehitpause = 1
time = 1  
invertall = 1

[State 3000, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 35                    ;Damage that move inflicts
animtype = Hard                   ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                   ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                  ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                    ;Flags on how move is to be guarded against
hitflag = MAF                     ;Flags of conditions that move can hit
priority = 3, Hit                 ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                   ;Time attacker pauses, time victim shakes
numhits = 1                       ;Number of hits to count as (Def: 1)
sparkno = -1
guard.sparkno = -1                     ;Spark image group and no (Def: set above)
sparkxy = -1,0                    ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s4,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10             ;Time that the victim slides back
ground.hittime  = 9               ;Time victim is in hit state
ground.velocity = -8,-5           ;Velocity at which victim is pushed
ground.velocity = -5,0
airguard.velocity = -5,-.8   
air.velocity = -7,-5              ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
palfx.time = 58
palfx.add = -100,-34,40
palfx.mul = 180,180,180


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -7,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

;[State hit effect] 
;type = explod
;trigger1 = MoveHit = 1
;anim = 30002
;persistent = 0
;pos = 10,-60
;postype = p2
;ignorehitpause = 0
;sprpriority = 6
;bindtime = 1
;ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 40,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 30,-75
postype = p2
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 3000, 3];uhhh
type = PlaySnd 
trigger1 = AnimElem = 12 
value = 2,3

[State 3000, 3];tsss
type = PlaySnd 
trigger1 = AnimElem = 15 
value = 10,7

[State 3000, 3];elec
type = PlaySnd 
trigger1 = AnimElem = 14 
value = 8,4

[State 3005, 5] ; aftershock arm
type = Explod
trigger1 = AnimElem = 14
anim = 3010
id = 3010
pos = -38,60
postype = p1
bindtime = -1
removeongethit = 1
ontop = 1
sprpriority = 10
removetime = -2
ownpal = 1

[State 3005, 5] ; aftershock hand
type = Explod
trigger1 = AnimElem = 14
anim = 3011
id = 3011
pos = 16,0
postype = p1
bindtime = -1
removeongethit = 1
ontop = 1
sprpriority = 10
removetime = -2
ownpal = 1

[State 3000, 0b]
type = BGPalfx
trigger1 = AnimElem = 14
ignorehitpause = 1
time = 1 
invertall = 1

[State 3000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================================
; Beam Helper Z
[Statedef 3005]
type = S
movetype = A
physics = N
anim = 3005
velset = 0,0
sprpriority = 10

[State 3005, 3] ; arm elec shock
type = Explod
trigger1 = Time = 0
anim = 3009
id = 3007
pos = -10,74
postype = p1
bindtime = -1
removeongethit = 1
removetime = 115
ontop = 1
ownpal = 1

[State 3005, 3] ; Beam Explod 3,hand stand
type = Explod
trigger1 = AnimElem = 7
trigger1 = Time = 18
anim = 3004
id = 3000
pos = 0,0
postype = p1
bindtime = -1
removeongethit = 1
removetime = 60
sprpriority = 6
ownpal = 1

[State 3005, 3] ; Beam Explod side puls,Beam shock
type = Explod
trigger1 = Time = 0
anim = 3003
id = 3007
pos = 0,53
postype = p1
bindtime = -1
removeongethit = 1
removetime = 62
ontop = 1
ownpal = 1

[State 3005, 3]
type = Explod
trigger1 = Time = 0
anim = 22074
pos = 0,0
postype = p1
bindtime = -1
removeongethit = 1
removetime = 62
ontop = 1
ownpal = 1

[State 3005, 4]
type = HitDef
trigger1 = (Time%2) = 1
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Heavy
priority = 5, Hit
damage = 50, 5
pausetime = 0,0
sparkno = s30002 
guard.sparkno = 1050
sparkxy = -15,-3
hitsound = S10,3
guardsound = S10,3
ground.type = High
ground.slidetime = 35
ground.hittime = 120
ground.velocity = -20,0
p2stateno = 3077
air.velocity = -20,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.fall.recover = 0
palfx.time = 90
palfx.add = -100,-34,100
palfx.mul = 180,180,180
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 3005, 5] ; Blast thing when p2 gets hit,hitblast
type = Explod
trigger1 = MoveHit
trigger2 = moveguarded
anim = 3060
id = 3060
pos = -5,-58
postype = p2
bindtime = -1
removeongethit = 1
sprpriority = 1  
removetime = -2
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = -1
removetime = 60

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
vel = 0,0
pos = -7,-40
postype = p2
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 112
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 0,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 10,-80
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-0.7
pos = -5,-50
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-0.6
pos = -12,-70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1.1
pos = -20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1.5
pos = 5,-66
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 3005, 6] ; Die Down
type = ChangeAnim
trigger1 = Time = 60
value = 3006

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 0,-60
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = -1
removetime = 86
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1.5
pos = 10,-70
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = -1
removetime = 86
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-2
pos = -5,-50
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = -1
removetime = 86
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-0.6
pos = -15,-70
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = -1
removetime = 86
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1.5
pos = -20,-55
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = -1
removetime = 86
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = -12,-66
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = -1
removetime = 86
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 0,-60  ;3,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 2
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 0,-82   ;12,-82
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 3
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 0,-45   ;-1,-45
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 4
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-0.6
pos = 0,-73   ;-10,-73
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 6
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1.1
pos = 0,-50  ;-18,-50
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 8
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1.5
pos = 0,-62  ;3,-62
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 11
ownpal = 1

[State 3000, 3]
type = PlaySnd 
triggerall = MoveHit = 1
trigger1 = Time = 20
trigger2 = Time = 50
trigger3 = Time = 80
trigger4 = Time = 110
value = 10,0

[State 3005, 3]
type = DestroySelf
trigger1 = Anim = 3006 && AnimTime = 0

;------------------------------------
[Statedef 3077]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3077, Anim]
type = ChangeAnim
trigger1 = time = 0
value = 5012  

[State 3005, Velocity]
type = VelSet
trigger1 = time = 0
x = -10  
y = -0.1

[State 3005, Gravity]
type = VelAdd
trigger1 = time >= 0
y = .01    
x = .14    

[State 3005, State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

