;===========================================================================
;Extra buttoncombo
;===========================================================================
;state650-990
;state2900-2920
;state -3
;---------------------------------------------------------------------------
; BC
[Statedef 650]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 650

[State 650, 1]
type = ChangeState
trigger1 = Time = 8
value = 651
ctrl = 0

;------------------------------------------
;BC(overhead)
[Statedef 651]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 262                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 262, 1]
type = VelSet
trigger1 = Time = 0
y = -15
x = 2

[State 262, 2]
type = VelSet
trigger1 = Time = 4
Y = 0
x = 4

[State 262, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 150                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 120,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 9,9                 ;Time attacker pauses, time victim shakes
guard.pausetime = 3,3
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                    ;Spark image group and no (Def: set above)
sparkxy = -5,-20                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 10             ;Time victim is in hit state
groundguard.velocity = -6,0             ;Velocity at which victim is pushed
ground.velocity = -2,1
airguard.velocity = -1.9,0   
air.velocity = -3,1           ;X-velocity at which victim is pushed;Y-velocity at which victim is pushed
fall=1


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9003
persistent = 0
pos = -7,-73
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 262, 4]
type = PlaySnd
trigger1 = Time = 1
value = 5,5

[State 262, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,1

[State 186, 3]
type = PlaySnd
trigger1 = AnimElem = 9
value = 8,4

[State 262, 5]
type = VelSet
trigger1 = Time = 8
y = 1
x = 4

[State 262, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 660]
type    = s
movetype= A
physics = s
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 660

[State 660, 3]
type = PlaySnd
trigger1 = Time = 0
value = 1,4

[State 660, 1]
type = ChangeState
trigger1 = Time = 19
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Sway around
[Statedef 670]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 670

[State 670, 5]
type = PlaySnd
trigger1 = Time = 1
value = 6, 6

[State 670, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 2  
y = 1  

[State 670, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 15  

[State 670, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 2   
y = -1  

[State 670, 4]
type = ChangeState
trigger1 = AnimElem = 5
value = 0
ctrl = 1

;===========================================================================
;Graps
;---------------------------------------------------------------------------
[Statedef 900]
type = S
movetype = A
physics = S
ctrl = 0
anim = 900

[State 900, 0]
type = HitDef
trigger1 = AnimElem = 1 
attr = S, NT
Hitflag = M-
priority = 2, Miss
numhits = 0  
sparkno = -1 
sprpriority = 3
p1stateno = 905
p2stateno = 910



[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 905]
type = S
movetype = A
physics = N
anim = 905 
velset = 0,0

[State 900, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = s800,800

[State 1000]
type = Explod
trigger1 = AnimElem = 1
anim = 7111
sprpriority = 3
pos = 0,-75
postype = p2

[State 100, 7]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,3

[State 905, 0]
type = Changestate
trigger1 = animtime = 0
value = 0 
ctrl = 1 

;---------------------------------------------------------------------------
[Statedef 910]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 910, 0]
type = VelSet
trigger1 = Time = 10 
x = 4

[State 910, 1]
type = VelSet
trigger1 = Time = 30 
x = 20

[State 910, 2]
type = Changeanim2 
trigger1 = Time = 0
value = 5000

[State 910, 3]
type = SelfState 
trigger1 = Time = 70
value = 0
ctrl = 1 

;===========================================================================
;---------------------------------------------------------------------------
[Statedef 920]
type = S
movetype = A
physics = S
ctrl = 0
anim = 920 

[State 920, 0]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
Hitflag = M-
priority = 2, Miss
numhits = 0  
sparkno = -1
sprpriority = 3
p1stateno = 925
p2stateno = 930 

[State 920, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,5

[State 920, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 925]
type = S
movetype = A
physics = N
anim = 925
velset = 0,0

[State 100, 7]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4

[State 925, 0]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 930]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 930, 0]
type = VelSet 
trigger1 = Time = 0 
x = 5

[State 930, 1]
type = VelSet
trigger1 = Time = 20
x = -9

[State 930, 2]
type = Changeanim2
trigger1 = Time = 0
value = 5000

[State 930, 3]
type = SelfState
trigger1 = Time = 50
value = 0
ctrl = 1

;===========================================================================
;Special states
;---------------------------------------------------------------------------
;change modes between slash and bust
[Statedef 2900]
type = S
movetype = A
poweradd= -500
physics = S
ctrl = 0
anim = 2900

[State 2900, 1]
type = ChangeState
trigger1 = time > 2
trigger1 = var(5) = 0
value = 2910

[State 2900, 2]
type = ChangeState
trigger1 = time > 2
trigger1 = var(5) = 1
value = 2920

;---------------------------------------------------------------------------
;revers to bust mode
[Statedef 2910]
type = S
movetype = A
physics = S
ctrl = 0
anim = 2900
;poweradd = -500

[State 2910, 4];Galford;Wooaaahh!!!
type = PlaySnd
trigger1 = Time = 0
value = 4,19

[State 2910, 1];elec aura galford
type = Explod
trigger1 = Time = 0
anim = 1050
id = 2910
pos = 0,-1
postype = p1
bindtime = -1
removetime = 72
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 2910, 4];Lightning puls
type = PlaySnd
trigger1 = Time = 0
value = 8,8

[State 2910, 1];Lightning 
type = Explod
trigger1 = Time = 0
anim = 2910
id = 2910
pos = 10,0
postype = p1
bindtime = -1
removetime = 42
sprpriority = 4
ontop = 1   
ownpal = 1
ignorehitpause = 1

[State 2910, 4];Lightning crash
type = PlaySnd
trigger1 = Time = 3
value = 8,2

[State 2910, 4];Bust mode!!
type = PlaySnd
trigger1 = AnimElem = 41
value = 4,20

[State 2910, color]
type = PalFX
trigger1 = time = 0
time = 44
add = 0,80,180

[State 2910,3]
type = EnvShake
trigger1 = time = 4
time = 45

[State 2910, 3]
type = HitDef
trigger1 = Time = 0
attr = SC, SA                    ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 50,15                  ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                  ;Spark image group and no (Def: set above)
sparkxy = 20,-50                 ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                  ;Sound to play on hit
guardsound = s6,0                ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -5,-5          ;Velocity at which victim is pushed
airguard.velocity = -1.9,-1.5    ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -5,-5             ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall=1
palfx.time = 85
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -15,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 84

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1011
persistent = 0
pos = 20,-70
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 40,-70
postype = p1
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
pos = 35,-98
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 2910, 5] ; background white flash on 2p get hit
type = Explod
trigger1 = MoveHit
anim = 3099
id = 3099
pos = 0,0
postype = Back
bindtime = -1
removeongethit = 1
sprpriority = -5  
removetime = 1
ownpal = 1

[State 2910, 5]
type = Varadd
trigger1 = Time = 1
v = 5
value = 1

[State 2910, 6]
type = Varadd
trigger1 = Time = 1
trigger1 = var(6) = 1
trigger1 = helper, stateno = [6091,6092]
v = 5
value = 2

[State 2910, 7]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; revers to slash mod
[Statedef 2920]
type = S
movetype = A
physics = S
ctrl = 0
;poweradd = -500
anim = 2900

[State 2920, 4];Galford;Wooaaahh!!!
type = PlaySnd
trigger1 = Time = 0
value = 4,19

[State 2920, 1];elec aura galford
type = Explod
trigger1 = Time = 0
anim = 1050
id = 2910
pos = 0,-1
postype = p1
bindtime = -1
removetime = 72
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 2920, 4];Lightning puls
type = PlaySnd
trigger1 = Time = 0
value = 8,8

[State 193, 1];Lightning 
type = Explod
trigger1 = Time = 0
anim = 2910
id = 2910
pos = 10,0
postype = p1
bindtime = -1
removetime = 42
sprpriority = 4
ontop = 1   
ownpal = 1
ignorehitpause = 1

[State 2920, 4];Lightning crash
type = PlaySnd
trigger1 = Time = 3
value = 8,2

[State 2920, 4];slash mode!!
type = PlaySnd
trigger1 = AnimElem = 41
value = 4,21

[State 2920, color]
type = PalFX
trigger1 = time = 0
time = 44
add = 0,80,180

[State 2920,3]
type = EnvShake
trigger1 = time = 4
time = 45

[State 2920, 3]
type = HitDef
trigger1 = Time = 0
attr = SC, SA                    ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 50,15                  ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                  ;Spark image group and no (Def: set above)
sparkxy = 20,-50                 ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                  ;Sound to play on hit
guardsound = s6,0                ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -5,-5          ;Velocity at which victim is pushed
airguard.velocity = -1.9,-1.5    ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -5,-5             ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall=1
palfx.time = 85
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -15,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 84

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1011
persistent = 0
pos = 20,-70
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 40,-70
postype = p1
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
pos = 35,-98
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 2920, 5] ; background white flash on 2p get hit
type = Explod
trigger1 = MoveHit
anim = 3099
id = 2920
pos = 0,0
postype = Back
bindtime = -1
removeongethit = 1
sprpriority = -5  
removetime = 1
ownpal = 1

[State 2920,6]
type = VarAdd
trigger1 = Time = 1
v = 5
value = -1

[State 2920,7]
type = Varadd
trigger1 = Time = 1
trigger1 = var(6) = 1
trigger1 = helper, stateno != [6091,6092]
v = 5
value = -2

[State 2920,8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;===========================================================================

;---------------------------------------------------------------------------
[Statedef -3]

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Land
trigger2 = stateno = 106 ;Land
value = S51,51


[State -3, Jumping Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40 ;Jump
value = S41,41

;------
[State 191,]
type = PlaySnd
triggerall = time = 1
triggerall = anim = 100
trigger1 = Alive
loop = 1
value = s100,100
channel = 6

[State -2,]
type = StopSnd
trigger1 = command != "holdfwd"
trigger2 = Anim != 100
channel = 6


[State -3, 1]
type = VarSet
triggerall = time = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
v = 30 
value = 1

[State -3, 2]
type = VarAdd
trigger1 = var(30) = 1
v = 31
value = 1

[State -3, 3]
type = VarSet
trigger1 = time = 2
trigger1 = var(31) = 6
v = 31 
value = 0 

[State -3, 4]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 1
value = 2,0

[State -3, 5]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 2
value = 2,1

[State -3, 6]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 3
value = 2,2

[State -3, 7]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 4
value = 2,3

[State -3, 8]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 5
value = 2,4

[State -3, 9]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 6
value = 2,5

[State -3, 10]
type = VarSet
trigger1 = var(30) = 1
v = 30
value =0 

[State -3, 5]
type = PlaySnd
trigger1 = random < 300
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 2,4

[State -3, 5]
type = PlaySnd
trigger1 = stateno = 5300
trigger1 = Time = 14
trigger1 = Alive = 1
value = 2,3

[State -3, 5]
type = PlaySnd
trigger1 = stateno = 5520
trigger1 = Time = 1
value = 9,4

[State -3, 5]
type = PlaySnd
trigger1 = stateno = 5510
trigger1 = Time = 6
value = 9,2

[State -3, 6]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5070
trigger1 = Alive = 1
value = 2,5
;===========================================================================

;---------------------------------------------------------------------------
;1,2P
;---------------------------------------------------------------------------
[state -3, syurar] 
type = explod
trigger1 = NumExplod(9020) < 1
trigger1 = var(5) = 0 || var(5) = 2
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9020
ID = 9020
sprpriority = 1
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, syural]
type = explod
trigger1 = NumExplod(9020) < 1
trigger1 = var(5) = 0 || var(5) = 2
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9020
ID = 9020
sprpriority = 1
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetur] 
type = explod
trigger1 = NumExplod(9021) < 1
trigger1 = var(5) = 1 || var(5) = 3
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9021
ID = 9021
sprpriority = 1
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetul] 
type = explod
trigger1 = NumExplod(9021) < 1
trigger1 = var(5) = 1 || var(5) = 3
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9021
ID = 9021
sprpriority = 1
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, haikeir] 
type = explod
trigger1 = NumExplod(9022) < 1
trigger1 = var(5) = 0 || var(5) = 2
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9022
ID = 9022
sprpriority = 0
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, haikeil] 
type = explod
trigger1 = NumExplod(9022) < 1
trigger1 = var(5) = 0 || var(5) = 2
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9022
ID = 9022
sprpriority = 0
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetur] 
type = explod
trigger1 = NumExplod(9023) < 1
trigger1 = var(5) = 1 || var(5) = 3
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9023
ID = 9023
sprpriority = 0
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetul] 
type = explod
trigger1 = NumExplod(9023) < 1
trigger1 = var(5) = 1 || var(5) = 3
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9023
ID = 9023
sprpriority = 0
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
;---------------------------------------------------------------------------
;3,4P
;---------------------------------------------------------------------------
[state -3, syurar] 
type = explod
trigger1 = NumExplod(9024) < 1
trigger1 = var(5) = 0 || var(5) = 1
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9024
ID = 9024
sprpriority = 1
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, syural] 
type = explod
trigger1 = NumExplod(9024) < 1
trigger1 = var(5) = 0 || var(5) = 1
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9024
ID = 9024
sprpriority = 1
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetur] 
type = explod
trigger1 = NumExplod(9025) < 1
trigger1 = var(5) = 2 || var(5) = 3
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9025
ID = 9025
sprpriority = 1
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetul] 
type = explod
trigger1 = NumExplod(9025) < 1
trigger1 = var(5) = 2 || var(5) = 3
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9025
ID = 9025
sprpriority = 1
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, haikeir] 
type = explod
trigger1 = NumExplod(9026) < 1
trigger1 = var(5) = 0 || var(5) = 1
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9026
ID = 9026
sprpriority = 0
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, haikeil] 
type = explod
trigger1 = NumExplod(9026) < 1
trigger1 = var(5) = 0 || var(5) = 1
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9026
ID = 9026
sprpriority = 0
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetur] 
type = explod
trigger1 = NumExplod(9027) < 1
trigger1 = var(5) = 2 || var(5) = 3
trigger1 = var(10) = 0
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9027
ID = 9027
sprpriority = 0
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

[state -3, rasetul] 
type = explod
trigger1 = NumExplod(9027) < 1
trigger1 = var(5) = 2 || var(5) = 3
trigger1 = var(10) = 1
trigger1 = roundstate != 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9027
ID = 9027
sprpriority = 0
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1

