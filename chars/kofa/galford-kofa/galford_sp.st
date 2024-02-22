
;Special moves
;===========================================================================
;state1000-2899
;---------------------------------------------------------------------------
;Plasma blade_a
[Statedef 1000]
type = S 
movetype= A 
physics = S 
poweradd= 60 
ctrl = 0
velset = 0
anim = 1000 

[State 1001, 1]
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 8,4

[State 1001, 1]
type = PlaySnd 
trigger1 = AnimElem = 11 
value = 8,0

[State 1001, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1001, 2]
type = PlaySnd 
trigger1 = Time = 24
value = 4,7 

[State 1000, 3]
type = Projectile 
trigger1 = AnimElem = 11 
projanim = 1010
projhitanim = 30002
offset = 50, -50 
velocity = 5, 0 
attr = S, SP
damage = 60,10
animtype = Medium
pausetime = 0,9
sparkno = -1
sparkxy = 10,50
hitsound = s8,5
guardflag = MA
guardsound = s6,1
ground.type = Low
ground.slidetime = 7
ground.hittime = 28
ground.velocity = -4
air.animtype = Back 
air.velocity = -2.5,-1
air.juggle = 3
palfx.time = 27
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != C
anim = 1012
persistent = 0
pos = -7,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType = C
anim = 1012
persistent = 0
pos = -7,-34
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != A
trigger2 = Projguarded = 1
trigger2 = P2StateType != A
anim = 1013
persistent = 0
vel = 0,-0.5
pos = 18,-50
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != A
trigger2 = Projguarded = 1
trigger2 = P2StateType != A
anim = 1013
persistent = 0
vel = 0,-1
pos = 40,-45
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma blade_b
[Statedef 1001]
type = S 
movetype= A 
physics = S 
poweradd= 100
ctrl = 0
velset = 0
anim = 1000 

[State 1001, 1]
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 8,4

[State 1001, 1]
type = PlaySnd 
trigger1 = AnimElem = 11 
value = 8,0

[State 1001, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1001, 2]
type = PlaySnd 
trigger1 = Time = 24
value = 4,7 



[State 210, 2]
type = explod
trigger1 = projcontact(1010) = 1
anim = 30002
postype = p2
pos = 0,-50
sprpriority = 6

[State 1001, 3]
type = Projectile 
trigger1 = AnimElem = 11 
projanim = 1010 
projhitanim = 1010 
offset = 50, -50 
velocity = 7, 0 
attr = S, SP 
damage = 120,12
animtype = Medium 
pausetime = 0,9 
sparkno = -1 
sparkxy = -30, 0 
hitsound = s8,5
guardflag = MA 
guardsound = s6,1 
ground.type = Low 
ground.slidetime = 9 
ground.hittime = 28 
ground.velocity = -5 
air.animtype = Back 
air.velocity = -3,-1
air.juggle = 3 
palfx.time = 27
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != C
anim = 1012
persistent = 0
pos = -7,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType = C
anim = 1012
persistent = 0
pos = -7,-34
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != A
trigger2 = Projguarded = 1
trigger2 = P2StateType != A
anim = 1013
persistent = 0
vel = 0,-0.5
pos = 18,-50
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != A
trigger2 = Projguarded = 1
trigger2 = P2StateType != A
anim = 1013
persistent = 0
vel = 0,-1
pos = 40,-45
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 1001, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma blade_c
[Statedef 1002]
type = S 
movetype= A 
physics = S 
poweradd= 100
ctrl = 0
velset = 0
anim = 1000 

[State 1001, 1]
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 8,4

[State 1001, 1]
type = PlaySnd 
trigger1 = AnimElem = 11 
value = 8,0

[State 1001, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1001, 2]
type = PlaySnd 
trigger1 = Time = 24
value = 4,7 


[State 210, 2]
type = explod
trigger1 = projcontact(1010) = 1
anim = 30002
postype = p2
pos = 0,-50
sprpriority = 6

[State 1002, 3]
type = Projectile
trigger1 = AnimElem = 11 
projanim = 1010 
projhitanim = 1010 
offset = 50, -50 
velocity = 9, 0 
attr = S, SP 
damage = 120,12
animtype = Medium 
pausetime = 0,9 
sparkno = -1 
sparkxy = -30, 0 
hitsound = s8,5 
guardflag = MA 
guardsound = s6,1 
ground.type = Low 
ground.slidetime = 12 
ground.hittime = 28 
ground.velocity = -6 
air.animtype = Back 
air.velocity = -3,-1 
air.juggle = 3 
palfx.time = 27
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != C
anim = 1012
persistent = 0
pos = -7,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType = C
anim = 1012
persistent = 0
pos = -7,-34
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != A
trigger2 = Projguarded = 1
trigger2 = P2StateType != A
anim = 1013
persistent = 0
vel = 0,-0.5
pos = 18,-50
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
trigger1 = P2StateType != A
trigger2 = Projguarded = 1
trigger2 = P2StateType != A
anim = 1013
persistent = 0
vel = 0,-1
pos = 40,-45
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma Factor close distance
[Statedef 1500]
type = S 
movetype= A 
physics = S 
poweradd= 100
ctrl = 0
velset = 10
anim = 1500 

[State 220, 3]
type = PlaySnd
trigger1 = Time = 0
value = 5,5

[State 1500, 1]
type = PlaySnd 
trigger1 = Time = 5
value = 4,5 

[State 1500, spsnd01]
type = PlaySnd 
trigger1 = Time = 15
value = 8,0 

[State 1500, 3]
type = VelSet
trigger1 = Time = 1
x = 5

[State 1500, 4]
type = HitDef
trigger1 = Time = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 120,12                   ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HL                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,3                 ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                   ;Spark image group and no (Def: set above)
sparkxy = -3,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,6                   ;Sound to play on hit
guardsound = s5,6                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -6,-4
groundguard.velocity = -5.0   
air.velocity = -5,-4
airguard.velocity = -4,-1.5
air.fall = 1
fall = 1
air.recovery = 0
fall.recovery = 0
palfx.time = 59
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 30002
persistent = 0
pos = 80,-65
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = -1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 100,-75
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
vel = 0,-0.5
pos = 90,-65
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -15,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 1500,5]
type = PlaySnd
trigger1 = AnimElem = 17
value = 5,7

[State 1500, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma Factor far distance
[Statedef 1510]
type = S 
movetype= A 
physics = S 
poweradd= 60 
ctrl = 0
velset = 0
anim = 1510                                          

[State 1510, 1]
type = VelSet
trigger1 = Time = 0
x = 2

[State 1510, 1]
type = PlaySnd 
trigger1 = AnimElem = 9
value = 4,8 

[State 1510, spsnd01]
type = PlaySnd 
trigger1 = AnimElem = 3
value = 8,0

[State 1550, light] ;blade spark
type = explod
trigger1 = AnimElem = 4
anim = 1511
persistent = 0
pos = -7,-138
postype = p1
ignorehitpause = 0
removeongethit = 1
sprpriority = 6
bindtime = 1

[State 1510, 4]
type = HitDef
trigger1 = Time = 0   
attr = A, SA
damage    = 180,15
getpower = 90, 50
guardflag = HL
hitflag = MAF
priority = 3
pausetime = 0,8
sparkno = -1 
sparkxy = -3,-58
hitsound = S8,6
guardsound = S5,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
p2stateno = 1511
ground.velocity = -4   
air.velocity = -1.5,-11
airguard.velocity = 4,-1
air.fall = 1
fall = 1
air.recovery = 0
fall.recovery = 0
palfx.time = 85
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1011
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = Movehit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 20,-65
postype = p2
ignorehitpause = 1
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = Movehit = 1
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 0,-78
postype = p2
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -15,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 84

[State 1510,5]
type = PlaySnd
trigger1 = AnimElem = 18
value = 8,4

[State 1510,5]
type = PlaySnd
trigger1 = AnimElem = 31
value = 5,7

[State 1510, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
[Statedef 1511]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1511, Anim]
type = ChangeAnim
trigger1 = time = 0
value = 5050

[State 1511, Velocity]
type = VelSet
trigger1 = time = 0
x = -1.57
y = -4

[State 1511, Gravity]
type = VelAdd
trigger1 = time >= 0
y = .14

[State 1511, State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
;Plasma Factor low
[Statedef 1550]
type = S 
movetype= A 
physics = S 
poweradd= 100
ctrl = 0
velset = 0
anim = 1550 

[State 1550, light] 
type = explod
trigger1 = Time = 3
anim = 9005
persistent = 0
pos = 65,0
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 1550, spsnd01]
type = PlaySnd 
trigger1 = Time = 15
value = 8,0 

[State 1550, 2]
type = PlaySnd 
trigger1 = Time = 5
value = 4,8 

[State 1550, 3]
type = VelSet
trigger1 = Time = 1
x = 6

[State 1550, 5]
type = HitDef
trigger1 = time = 0
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 120,10
animtype  = Hard
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = -1                   ;Spark image group and no (Def: set above)
sparkxy = 19,-18
hitsound   = s8,6
guardsound = s5,6
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4,-1
air.velocity = -1.3,-3
fall=1
palfx.time = 50
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 30002
persistent = 0
pos = 80,-30
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = -1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 110,-30
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
pos = 100,-50
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -10,-20
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 1550,5]
type = PlaySnd
trigger1 = AnimElem = 22
value = 5,7

[State 1550, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma Break
[Statedef 1600]
type = S 
movetype= A 
physics = S 
poweradd= 50 
ctrl = 0
velset = 0
anim = 1600 

[State 1600, color]
type = PalFX
trigger1 = time = 2
time = 30
add = 0,80,180

[State 1600, 1]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 4,9 

[State 1600, spsnd01]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 4 

[State smoke effect] 
type = explod
trigger1 = AnimElem = 3
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 6
anim = 1013
persistent = 0
pos = 29,-62
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 9
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 4
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1


[State smoke effect] 
type = explod
trigger1 = AnimElem = 7
anim = 1013
persistent = 0
pos = -42,-60
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 10
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 2920, 1]
type = Explod
trigger1 = Time = 0
anim = 1050
id = 2920
pos = 0,-1
postype = p1
bindtime = -1
removetime = 35
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 1600, 3]
type = HitDef
trigger1 = Time = 0
attr = SC, SA                    ;Attribute: Standing, Normal Attack
damage    = 80,10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                  ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
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

[State 1600, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma Break middle
[Statedef 1625]
type = S 
movetype= A 
physics = S 
poweradd= 30 
ctrl = 0
velset = 0
anim = 1625 

[State 1625, color]
type = PalFX
trigger1 = time = 2
time = 30
add = 0,80,180

[State 1625, 1]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 4,9 

[State 1625, spsnd01]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 4

[State 2920, 1]
type = Explod
trigger1 = Time = 0
anim = 1050
id = 2920
pos = 0,-1
postype = p1
bindtime = -1
removetime = 40
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 3
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 5
anim = 1013
persistent = 0
pos = 29,-62
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 9
anim = 1013
persistent = 0
pos = 29,-62
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 7
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 4
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 6
anim = 1013
persistent = 0
pos = -42,-60
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 10
anim = 1013
persistent = 0
pos = -42,-60
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 8
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 1625, 3]
type = HitDef
trigger1 = Time = 0
trigger2 = Time = 8
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 30,10               ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 20,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,6                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                   ;Spark image group and no (Def: set above)
sparkxy = 99999,99999                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,4                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = 0.1,-3             ;Velocity at which victim is pushed
airguard.velocity = -0.1,-1.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = 0.1,-2           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 30
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 0
anim = 1011
persistent = 0
pos = 20,-65
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 =Time = 0
anim = 1013
persistent = 0
vel = 0,-1
pos = 50,-65
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 0
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 40,-92
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 8
anim = 1011
persistent = 0
pos = 20,-75
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 8
anim = 1013
persistent = 0
vel = 0,-1
pos = 45,-75
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State 1625, 3]
type = HitDef
trigger1 = Time = 16
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 80               ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 20,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                   ;Spark image group and no (Def: set above)
sparkxy = 99999,99999                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10             ;Time that the victim slides back
ground.hittime  = 9             ;Time victim is in hit state
ground.velocity = -8,-6             ;Velocity at which victim is pushed
airguard.velocity = -0.1,-1.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -7,-6           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
palfx.time = 58
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 16
anim = 1011
persistent = 0
pos = 27,-84
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 16
anim = 1013
persistent = 0
vel = 0,-1
pos = 57,-84
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 16
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 47,-106
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = Time = 16
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -15,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 1625, 5] ; background white flash on 2p get hit
type = Explod
trigger1 = MoveHit = 1
trigger1 = Time = 16
anim = 3099
id = 3099
pos = 0,0
postype = Back
bindtime = -1
removeongethit = 1
sprpriority = -5  
removetime = 1
ownpal = 1

[State 1625, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Plasma Break strong
[Statedef 1675]
type = S 
movetype= A 
physics = S 
poweradd= 100
ctrl = 0
velset = 0
anim = 1675 

[State 1675, color]
type = PalFX
trigger1 = time = 2
time = 60
add = 0,80,180

[State 1675, 1]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 4,10 

[State 1675, spsnd01]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 4

[State smoke effect] 
type = explod
trigger1 = AnimElem = 3
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 6
anim = 1013
persistent = 0
pos = 29,-62
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 9
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 12
anim = 1013
persistent = 0
pos = 29,-62
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 15
anim = 1013
persistent = 0
pos = 25,-66
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 18
anim = 1013
persistent = 0
pos = 29,-62
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 4
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 7
anim = 1013
persistent = 0
pos = -42,-60
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 10
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 16
anim = 1013
persistent = 0
pos = -38,-64
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 13
anim = 1013
persistent = 0
pos = -42,-60
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State smoke effect] 
type = explod
trigger1 = AnimElem = 19
anim = 1013
persistent = 0
pos = -42,-60
facing = -1
vel = 0,-1
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 2920, 1]
type = Explod
trigger1 = Time = 0
anim = 1050
id = 2920
pos = 0,-1
postype = p1
bindtime = -1
removetime = 60
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 1675, light] ;force spark
type = explod
trigger1 = Time = 6
anim = 1680
persistent = 0
pos = -100,-135
postype = p1
ignorehitpause = 0
removetime = 32
removeongethit = 1
sprpriority = 6
bindtime = -1

[State 1675, 3]
type = HitDef
trigger1 = Time = 0
trigger2 = Time = 6
trigger3 = Time = 12
trigger4 = Time = 18
trigger5 = Time = 24
trigger6 = Time = 28
attr = SC, SA                     
damage    = 20,2               
animtype = Hard                                 
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 3,2                   ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                   ;Spark image group and no (Def: set above)
sparkxy = 99999,99999                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = 0.1,-3             ;Velocity at which victim is pushed
airguard.velocity = -0.1,-1.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = 0,-1.5           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 30
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 0
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
trigger1 = Time = 0
anim = 1013
persistent = 0
vel = 0,-1
pos = 50,-70
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 0
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 43,-98
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 6
anim = 1011
persistent = 0
pos = 25,-75
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 6
anim = 1013
persistent = 0
vel = 0,-1
pos = 55,-75
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = time = 6
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 45,-98
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 12
anim = 1011
persistent = 0
pos = 30,-80
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time =12
anim = 1013
persistent = 0
vel = 0,-1
pos = 55,-80
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 18
anim = 1011
persistent = 0
pos = 35,-85
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = time = 18
anim = 1013
persistent = 0
vel = 0,-1
pos = 65,-85
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = time = 18
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 55,-105
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 24
anim = 1011
persistent = 0
pos = 40,-90
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = time = 24
anim = 1013
persistent = 0
vel = 0,-1
pos = 65,-90
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 28
anim = 1011
persistent = 0
pos = 45,-95
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 0

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 28
anim = 1013
persistent = 0
vel = 0,-1
pos = 75,-95
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 28
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 60,-115
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 1675, 3]
type = HitDef
trigger1 = Time = 32
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 20,2               ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,7                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                   ;Spark image group and no (Def: set above)
sparkxy = 99999,999999          ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10             ;Time that the victim slides back
ground.hittime  = 9             ;Time victim is in hit state
ground.velocity = -8,-5             ;Velocity at which victim is pushed
airguard.velocity = -0.1,-1.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -7,-5           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
palfx.time = 75
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 32
anim = 1011
persistent = 0
pos = 50,-97
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 0

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 32
anim = 1013
persistent = 0
vel = 0,-1
pos = 80,-97
postype = p1
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 32
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 70,-117
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
trigger1 = Time = 32
anim = 1012
persistent = 0
pos = -15,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 75  ;112

[State 3005, 5] ; background white flash on 2p get hit
type = Explod
trigger1 = MoveHit = 1
trigger1 = Time = 32
anim = 3099
id = 3099
pos = 0,0
postype = Back
bindtime = -1
removeongethit = 1
sprpriority = -5  
removetime = 1
ownpal = 1

[State 1675, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;strike head
[Statedef 1700]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1700
ctrl = 0



[State 1700, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
animtype = Back
priority = 2
sparkno = -1
p2facing = 1
p1stateno = 1701
p2stateno = 1710
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0

[State 1700, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;strike head follow
[Statedef 1701]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1701
ctrl = 0


[State 1625, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = s6,5

[State 1000]
type = Explod
trigger1 = AnimElem = 1
anim = 7111
sprpriority = 3
pos = 0,-75
postype = p2

[State 3212, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,3

[State 1701, 1]
type = ChangeState
trigger1 = Time = 10
value = 1702
ctrl = 0

;--------------------------------------------------------------------------
;strike head follow
[Statedef 1702]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1702
ctrl = 0

[State 1702, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,11 

[State 1702, 2]
type = VelSet
trigger1 = Time = 1
y = -15.1

[State 1702, ‰Á'¬]
type = VelAdd
trigger1 = Time >= 36
y = .45

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 200
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 1702, 3]
type = PosSet
trigger1 = Time = 60
y = -400

[State 1702, 4]
type = ChangeState
trigger1 = Time = 61
value = 1703
ctrl = 0

;--------------------------------------------------------------------------
;strike head follow
[Statedef 1703]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1703
ctrl = 0

[State 1703, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 1703, 4] 
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 200
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 1703, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1704
ctrl = 0

;--------------------------------------------------------------------------
;strike head follow
[Statedef 1704]
type = A
movetype = H
physics = N
anim = 1704
velset = 0,0,0

[State 1704, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 6,2 

[State 1704, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 4,14

[State 1704,3]
type = EnvShake
trigger1 = time = 0
time = 20

[State 3800, Shadows]
type = AfterImage
trigger1 = Time = 1
time = 60
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 1704, 4]
type = PlaySnd 
trigger1 = Time = 2
value = 8,2 

[State 1704,4]
type = Explod
trigger1 = Time = 1
anim = 1080
pos = 2,5
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 57
bindtime = 1

[State 1704,4]
type = Explod
trigger1 = Time = 0
anim = 1070
pos = 2,15
postype = P1
sprpriority = 99
supermove = 1
ownpal = 1
removetime = 33
bindtime = 1

[State 1704,4]
type = Explod
trigger1 = Time = 0
anim = 1050
pos = -1,-35
postype = P2
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 40
bindtime = 39

[State 1704, 5] 
type = explod
trigger1 = Time = 1
anim = 1750
persistent = 0
pos = 20, 60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 6] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = -30, 60  
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 6] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = 70,60  
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 6] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = -80,60  
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 6] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = 120,60  
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704,4]
type = PosSet
trigger1 = time = 0
y = 0

[State 1704, push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1704, 5]
type = TargetBind
trigger1 = time = 0
pos = 5,15

[State 1704, spr]
type = SprPriority
trigger1 = time = 0
value = 1

[State 1704,6]
type = TargetLifeAdd
trigger1 = time = 0
value = -90 

[State 1704,7]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 1704,8]
type = CtrlSet
trigger1 = time >= 36
value = 1

[State 1704,9]
type = ChangeState
trigger1 = time = 24
value = 1705
ctrl = 0

;Jump back after landing
[Statedef 1705]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43

[State 1705, 1]
type = VelAdd
trigger1 = time = 0
x = -3
y = -9

[State hit effect] 
type = explod
trigger1 = Time = 0
anim = 1012
persistent = 0
pos = -15,-10
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 1705, 4]
type = ChangeState
trigger1 = time = 0
value = 51

[State 1705,2]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 1705,2a]
type = ChangeAnim
trigger1 = AnimElem = 3
value = 46

[State 1705,3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;strike head follow
[Statedef 1710]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 1710, 1]
type = Changeanim2
trigger1 = Time = 0
value = 5000

[State 1710, 2]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 5
x = 5

[State 1710, 3]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 10
x = 10

[State 1710, 4]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 15
x = 5

[State 1710, 5]
type = PosAdd
trigger1 = Time = 4
trigger1 = p2dist X > 20
x = 10

[State 1710, 6]
type = PosAdd
trigger1 = Time = 5
trigger1 = p2dist X > 20
x = 10

[State 1710, 7]
type = PosAdd
trigger1 = Time = 6
trigger1 = p2dist X > 20
x = 10

[State 1710, 8]
type = ChangeState
trigger1 = Time = 10
value = 1711
ctrl = 0 

;---------------------------------------------------------------------------
; strike head follow
[Statedef 1711]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 1711, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5000

[State 1711, 2]
type = VelSet
trigger1 = Time = 1
y = -15.1

[State 1711, 2]
type = VelAdd
trigger1 = Time >= 36
y = .45

[State 1711, 3]
type = PosSet
trigger1 = Time = 60
y = -475

[State 1711, 4]
type = ChangeState
trigger1 = Time = 61
value = 1712
ctrl = 0

;---------------------------------------------------------------------------
;strike head follow
[Statedef 1712]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 1712, 1]
type = Changeanim2 
trigger1 = Time = [0,40]
value = 5000

[State 1712, a]
type = AngleDraw
trigger1 = Time = [0,40]

[State 1712, b]
type = AngleSet
trigger1 = Time = [0,40]
value = 180

[State 1712, 2]
type = VelSet
trigger1 = Time = 1
y = 4

[State 1712, 2] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 1712, 3] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -70
value = 1713

;---------------------------------------------------------------------------
; strike head follow
[Statedef 1713]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 1713, color]
type = PalFX
trigger1 = time = 0
time = 60
add = -100,-35,40 

[State 1713, 1]
type = velSet
trigger1 = Time = 0
y = 0

[State 1713, 1]
type = PosSet
trigger1 = Time = 0
y = -75

[State 1713, 2]
type = Changeanim2 
trigger1 = Time = [0,40]
value = 5012

[State 1713, a]
type = AngleDraw
trigger1 = Time = [0,40]

[State 1713, b]
type = AngleSet
trigger1 = Time = [0,40]
value = 180


[State 1713, 3] ;Hit ground
trigger1 = Time = 24
type = SelfState
value = 5100


;--------------------------------------------------------------------------
;Lightining Slash
[Statedef 1800]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1800
poweradd = 100
ctrl = 0

[State 1800, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 1,2 

[State 1800, 7]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 6, 4

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 34
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 1800, 1]
type = VelSet
trigger1 = 1
x = 10;const(velocity.run.fwd.x)

[State 1800, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 1800, 4]
type = MakeDust
trigger1 = Time = 1
pos = 0, 0
spacing = 1

[State 1800, 5]
type = MakeDust
trigger1 = AnimElem = 3, >= 0
pos = 0, 0


[State 1800, 6]
type = HitDef
trigger1 = AnimElem =1
trigger2 = AnimElem =2
trigger3 = AnimElem =3
trigger4 = AnimElem =4
trigger5 = AnimElem =5
trigger6 = AnimElem =6
trigger7 = AnimElem =7
trigger8 = AnimElem =8
trigger9 = AnimElem =9
trigger10 = AnimElem =10
trigger11 = AnimElem =11
trigger12 = AnimElem =12
pausetime = 10,10
guard.pausetime = 7,4
attr = S, ST
guardflag = MA
damage = 20,2
hitflag = M-
animtype = Back
priority = 2
numhits = 0
sparkno = s30002 
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -10,-50                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s4,17                   ;Sound to play on hit                  
p2facing = 1
p1stateno = 1801
p2stateno = 1811
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1800, 7]
type = ChangeState
trigger1 = Time > 34
trigger2 = moveguarded = 1
value = 101
ctrl = 1
;--------------------------------------------------------------------------
;Lightining Slash follow
[Statedef 1801]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1801
ctrl = 0

[State 1800, Super D]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 1801, 1]
type = VelSet
trigger1 = Time = 0
y = -7

[State 1801, 2]
type = VelAdd
trigger1 = Time < 15
y = .45

[State 1801, 3]
type = VelSet
trigger1 = Time = 15
y = 0

[State 1801, 4]
type = VelAdd
trigger1 = Time >= 15
y = .45

[State 1801, 5]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = vel Y > 0
value = 1802
ctrl = 0 

;----------------------------------------------------------------------------------
;Lightining Slash follow
[Statedef 1802]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 1802

[State 1802, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1802, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,16

[State 1802,1]
type = PosSet
trigger1 = time = 0
y = 0

[State 1802, 2]
type = turn
trigger1 = time = 1

[State 1802, 3]
type = ChangeState
trigger1 = Time = 10
value = 1803
ctrl = 0

;---------------------------------------------------------------------------
;Lightning Slash follow
[Statedef 1803]
type = A 
movetype= H 
physics = N 
poweradd= 0
ctrl = 0
velset = 0
anim = 1803 

[State 1803, spsnd01]
type = PlaySnd 
trigger1 = Time = 15
value = 8,0 

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 1803, 1]
type = VelSet
trigger1 = Time = 1
x = 5

[State 1803, 1]
type = VelSet
trigger1 = MoveHit = 1
x = 1.5

[State 1803, 1]
type = VelSet
trigger1 = AnimElem = 16
x = 0

[State 1803, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 100,10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
                ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 15,14                  ;Time attacker pauses, time victim shakes
numhits = 1                   ;Number of hits to count as (Def: 1)
sparkno = -1			;Spark image group and no (Def: set above)
sparkxy = 15,-40                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
hit.recover = 0
fall.recover = 0
air.fall.recover = 0
down.recover = 0
palfx.time = 60
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 30002
persistent = 0
pos = 80,-45
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
pos = 100,-45
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
vel = 0,-0.5
pos = 90,-25
postype = p1
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -15,-32
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 1803,5]
type = PlaySnd
trigger1 = AnimElem = 23
value = 5,7

[State 1803, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lightining Slash follow
[Statedef 1811]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 1811,0]
type = PosAdd
trigger1 = time = 0
x = 2

[State 1811, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5010

[State 1811, 2]
type = ChangeState
trigger1 = Time = 10
value = 1812
ctrl = 0 

;---------------------------------------------------------------------------
; Lightining Slash follow
[Statedef 1812]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 1812, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5030

[State 1812, 2]
type = VelSet
trigger1 = Time = 1
x = 3.5
y = -6

[State 1812, 3]
type = VelAdd
trigger1 = Time > 1
y = .25

[State 1812, 3]
type = VelAdd
trigger1 = Time > 1
x = .05

[State 1812, 4]
type = SelfState
trigger1 = Time = 50
value = 5030
ctrl = 1

;---------------------------------------------------------------------
;Replica Attack front
[Statedef 1900] 
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1900                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1900, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 1900, 1]
type = PosSet
trigger1 = AnimTime = 0
y = -250  

[State 1900, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1901

;---------------------------------------------------------------------------
[Statedef 1901]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1901, 1]
type = ChangeState
trigger1 = p2BodyDist X <= 15
value = 1902


[State 1901, 2]
type = ChangeState
trigger1 = Time = 30
value = 1902

;---------------------------------------------------------------------------
[Statedef 1902]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1901                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1902, snd]
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 9,1

[State 9102,4];smoke
type = Explod
trigger1 = Time = 0
anim = 9112
pos = 0,0
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 1902, 1]
type = VelSet
trigger1 = Time = 1
y = 4

[State 1902, 2]
type = VelSet
trigger1 = Time = 4
y = 8

[state 1902, 1]
type = VelAdd
trigger1 = time >= 0
y = 0.05

[State 1902, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA                      ;Attribute: Standing, Normal Attack
damage = 160,10                      ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 40,15                   ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                  ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = HA                    ;Flags on how move is to be guarded against
hitflag = MAF                     ;Flags of conditions that move can hit
priority = 3, Hit                 ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 11,11                   ;Time attacker pauses, time victim shakes
guard.pausetime = 5, 5
numhits = 1                       ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                       ;Spark image group and no (Def: set above)
sparkxy = 2,26                   ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s5,6                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 7              ;Time that the victim slides back
ground.hittime  = 15              ;Time victim is in hit state
ground.velocity = -3,3            ;Velocity at which victim is pushed
airguard.velocity = -1.9,0.3      ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -3,3               ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
air.fall = 1
fall = 1
fall.recover = 0


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9003
persistent = 0
pos = -10,-80
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 1902, 6]
type = ChangeState
trigger1 = Time = 36
value = 52
ctrl = 0

[State 1902, 3]
type = ChangeState
trigger1 = Movehit = 1
trigger2 = moveguarded = 1
value = 1903
ctrl = 0

;-----------------------------------------------------------
[Statedef 1903]
type    = A
movetype= I
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = -3,-6,0
anim = 46

[State 1903, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;---------------------------------------------------------------------
;Replica Attack back
[Statedef 1925] 
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1900                       ;Change animation (Def: no change)
poweradd = 100                    ;Power to add (Def: 0)

[State 1925, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 1925, 1]
type = PosSet
trigger1 = AnimTime = 0
y = -250 

[State 1925, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1926

;---------------------------------------------------------------------------
[Statedef 1926]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1901, 1]
type = ChangeState
trigger1 = p2BodyDist X <= -35
value = 1927

[State 1901, 2]
type = ChangeState
trigger1 = Time = 30
value = 1927

;---------------------------------------------------------------------------
[Statedef 1927]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1901                       ;Change animation (Def: no change)
poweradd = 0

[State 1927,1]
type = turn
trigger1 = Time = 1                  

[State 1902, snd]
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 9,1

[State 9102,4];smoke
type = Explod
trigger1 = Time = 0
anim = 9112
pos = 0,0
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 1902, 1]
type = VelSet
trigger1 = Time = 1
y = 4

[State 1902, 2]
type = VelSet
trigger1 = Time = 4
y = 8

[state 1902, 1]
type = VelAdd
trigger1 = time >= 0
y = 0.05

[State 1902, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA                      ;Attribute: Standing, Normal Attack
damage = 120,12                     ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                    ;Flags on how move is to be guarded against
hitflag = MAF                     ;Flags of conditions that move can hit
priority = 3, Hit                 ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 11,11                   ;Time attacker pauses, time victim shakes
guard.pausetime = 5, 5
numhits = 1                       ;Number of hits to count as (Def: 1)
sparkno = s30002  
guard.sparkno = s30040                      ;Spark image group and no (Def: set above)
sparkxy = 2,26                   ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s5,6                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 7              ;Time that the victim slides back
ground.hittime  = 15              ;Time victim is in hit state
ground.velocity = -3,3            ;Velocity at which victim is pushed
airguard.velocity = -1.9,0.3      ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -3,3               ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7

[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9003
persistent = 0
pos = -10,-80
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 1902, 6]
type = ChangeState
trigger1 = Time = 36
value = 52
ctrl = 0

[State 1902, 3]
type = ChangeState
trigger1 = Movehit = 1
trigger2 = moveguarded = 1
value = 1928
ctrl = 0

;-----------------------------------------------------------
[Statedef 1928]
type    = A
movetype= I
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = -3,-6,0
anim = 46

[State 1903, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0
;---------------------------------------------------------------------
;Ninpo UtsusemiChizan
[Statedef 1950] 
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1900                       ;Change animation (Def: no change)
poweradd = 100                    ;Power to add (Def: 0)

[State 1925, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2  

[State 1925, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1951

;---------------------------------------------------------------------------
[Statedef 1951]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1926, 1]
type = ChangeState
trigger1 = p2BodyDist X <= 45
value = 1952

;---------------------------------------------------------------------------------
[Statedef 1952]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1925                       ;Change animation (Def: no change)

[State 220, 3]
type = PlaySnd
trigger1 = Time = 3
value = 9,2

[State 220, 3]
type = PlaySnd
trigger1 = AnimElem = 10
value = 5,5

[State hanzo image] 
type = explod
trigger1 = AnimElem = 8
anim = 1926
persistent = 0
pos = -6,-6
postype = p1
ignorehitpause = 0
removeongethit = 1
sprpriority = 6
bindtime = -1
removetime = 30

[State 220, 3]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,1

[State 1927, 2]
type = HitDef
trigger1 = AnimElem = 14
attr = S, NA
animtype  = Heavy
damage    = 120,12
guardflag = L
hitflag = M
pausetime = 15,15
guard.pausetime = 3, 3
sparkno = s30002 
guard.sparkno = s30040
sparkxy = -2,-18
hitsound   = S5,2
guardsound = S5,6
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2, -4   
air.velocity = -2, -4
fall = 1
fall.recover = 0
bounce = 1
envshake.time = 12
envshake.ampl = 6; or 7

[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -2,-18
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 1927,5]
type = PlaySnd
trigger1 = AnimElem = 18
value = 8,4

[State 1927,5]
type = PlaySnd
trigger1 = AnimElem = 25
value = 5,7

[State 1927, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;Reppu Shuriken a
[Statedef 1975]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 100
ctrl = 0
velset = 0,0,0
anim = 1975
facep2 = 1

[State 1975]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1975, galford]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,1

[State 1975, shuriken sound]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 11
value = 5,9

[State hanzo image] 
type = explod
trigger1 = AnimElem = 7
anim = 1926
persistent = 0
pos = -10,0
postype = p1
ignorehitpause = 0
removeongethit = 1
sprpriority = 6
bindtime = -1
removetime = 15

[State 1975, 1]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1978
projhitanim = 30002
projremanim = 1979
offset = 40, -60
postype = p1
velocity = 8, 6
remvelocity = 0,0
accel = 0, 0
attr = S, SP
animtype  = Heavy
damage    = 120,12
guardflag = MAF
hitflag = MAFLD
pausetime = 15,10
guard.pausetime = 6,6
guard.sparkno = S1979
hit.sparkno = s30002
sparkxy = -15,0
hitsound   = S5,0
guardsound = s5,6
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3, 0
air.velocity = -3, 0
projhits = 1
envshake.time = 12
envshake.ampl = 6; or 7

[State 1975, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;----------------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Reppu Shuriken b
[Statedef 1976]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 100
ctrl = 0
velset = 0,0,0
anim = 1976
facep2 = 1

[State 1976]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1976, galford]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,1

[State 1976, shuriken sound]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 11
value = 5,9

[State hanzo image] 
type = explod
trigger1 = AnimElem = 7
anim = 1926
persistent = 0
pos = -10,0
postype = p1
ignorehitpause = 0
removeongethit = 1
sprpriority = 6
bindtime = -1
removetime = 30

[State 1976, 1]
type = Projectile
trigger1 = AnimElem = 8 || AnimElem = 11
projanim = 1978
projhitanim = 30002
projremanim = 1979
offset = 40, -60
postype = p1
velocity = 8, 6
remvelocity = 0,0
accel = 0, 0
attr = S, SP
animtype  = Heavy
damage    = 60,6
guardflag = MAF
hitflag = MAFLD
pausetime = 15,10
guard.pausetime = 6,6
hit.sparkno = S30002
guard.sparkno = s30040
sparkxy = -15,0
hitsound   = S5,0
guardsound = S5,6
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3, 0
air.velocity = -3, 0
projhits = 1
envshake.time = 12
envshake.ampl = 6; or 7

[State 1976, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;--------------------------------------------------------------------------------------
;Reppu Shuriken c
[Statedef 1977]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1977
facep2 = 1

[State 1977]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1977, Galford]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,1

[State 1977, shuriken]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 11 || AnimElem = 14
value = 5,9

[State hanzo image] 
type = explod
trigger1 = AnimElem = 7
anim = 1926
persistent = 0
pos = -10,0
postype = p1
ignorehitpause = 0
removeongethit = 1
sprpriority = 6
bindtime = -1
removetime = 47

[State 1977, 1]
type = Projectile
trigger1 = AnimElem = 8 || AnimElem = 11 || AnimElem = 14
projanim = 1978
projhitanim = 30002
projremanim = 1979
offset = 40, -60
postype = p1
velocity = 8, 6
remvelocity = 0,0
accel = 0, 0
attr = S, SP
animtype  = Heavy
damage    = 45,5 
getpower = 8
givepower = 30
guardflag = MAF
hitflag = MAFLD
pausetime = 15,15
guard.pausetime = 6,6
hit.sparkno = S30002
guard.sparkno = S1979
sparkxy = -15,0
hitsound   = S5,0
guardsound = S5,6
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6, 0
air.velocity = -6, 0
projhits = 1

[State 1977, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------------------
;Counter stand moves
[Statedef 1300]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1300

[State 2550, 2]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 2550, 3]
type = ReversalDef
trigger1 = 1
reversal.attr = SC, NA, SA
pausetime = 13,96
hitsound = S5,6
p1stateno = 1301
p2stateno = 5000
palfx.time = 10
palfx.add = 128,128,255

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5,7

[State 2550, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;stand counter succes
[Statedef 1301]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 50
anim = 1301
ctrl = 0
velset = 0,0,0
facep2 = 1

[State 1301, 1]
type = Helper
trigger1 = Time = 0
ID = 1302
pos = -55, 0
postype = p2
stateno = 1302
helpertype = normal
keyctrl = 0
ownpal = 1

[State 2549]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 3

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,7

[State 2549, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================================================================
;Hanzou states
[Statedef 1302];hanzou punch
type = S
movetype = A
velset = 0, 0   
anim = 1302
sprpriority = 4

[State punchsound]
type = PlaySnd
trigger1 = Time = 0
value = 9,1

[State punchsound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 6,7

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 11
time = 10

[State hit 1302]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 120                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10,10                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -10,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 15             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = -10,3             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -8,3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
fall.recover = 0


[State 9201, 2];rets
type = PlaySnd
trigger1 = AnimElem = 19
value = 7,5

[State 9201,4];smoke
type = Explod
trigger1 = Time = 110
anim = 9112
pos = 0,0
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 9201, 2];smoke sound
type = PlaySnd
trigger1 = time = 110
value = 9,4

[State punch end]
type = ChangeState
trigger1 = AnimTime = 0
value = 9305

;------------------------------------------------------------------------------
;counter air moves
[Statedef 1325]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1325

[State 2580, 2]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 2580, 3]
type = ReversalDef
trigger1 = 1
reversal.attr = A, NA, SA
pausetime = 10,96
hitsound = s5,6
p1stateno = 1326
p2stateno = 5000
palfx.time = 10
palfx.add = 128,128,255

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5,7

[State 2580, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;air counter succes
[Statedef 1326]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 50
anim = 1326
ctrl = 0
velset = 0,0,0
facep2 = 1

[State 1301, 1]
type = Helper
trigger1 = Time = 0
ID = 1327
pos = -47, 0
postype = p2
facing = 1
stateno = 1327
helpertype = normal
keyctrl = 0
ownpal = 1

[State 2549]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,7

[State 2549, 1]
type = PlaySnd
trigger1 = Time = 5
value = 10,7

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,8

[State 2549, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------
;air counter kick hanzo
[Statedef 1327]
type = S
movetype = A
velset = 0, 0   
anim = 1327
sprpriority = 4

[State pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 9201,4];smoke
type = Explod
trigger1 = Time = 0
anim = 9112
pos = 0,0
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 9201, 2];smoke sound
type = PlaySnd
trigger1 = time = 0
value = 9,4

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 6
time = 12

[State 3550, 2];foot wave
type = PlaySnd
trigger1 = AnimElem = 4
value = 6,8

[State 3550, 2];shout
type = PlaySnd
trigger1 = AnimElem = 5
value = 15,8

[State 3551, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 120                   ;Damage that move inflicts
animtype = Up                  
air.animtype = Up
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
hitflag = A                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12,12                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = -1                  ;Spark image group and no (Def: set above)
sparkxy = -10,-80                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
air.hittime  = 0 
ground.velocity = -10,-10             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -8,-8          ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
air.fall = 1
air.fall.recover = 0
fall.recover = 0


[State smoke effect] 
type = explod
trigger1 = AnimElem = 6
anim = 30002
persistent = 0
pos = 43,-117
vel = 0,0
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 9201,4];smoke
type = Explod
trigger1 = Time = 136
anim = 9112
pos = 0,0
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 9201, 2];smoke sound
type = PlaySnd
trigger1 = Time = 100
value = 15,14

[State 9201, 2];smoke sound
type = PlaySnd
trigger1 = time = 136
value = 9,4

[State 3551, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 9305

;------------------------------------------------------------------------------
;counter low moves
[Statedef 1350]
type    = S
movetype= I
physics = C
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1350

[State 2580, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 6,3

[State 2580, 3]
type = ReversalDef
trigger1 = 1
reversal.attr = SC, NA, SA
pausetime = 13,96
hitsound = s5,6
p1stateno = 1351
p2stateno = 5000
palfx.time = 10
palfx.add = 128,128,255

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,7

[State 2580, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;counter low move succes
[Statedef 1351]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1351

[State 2549, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,7

[State 2549, 1]
type = PlaySnd
trigger1 = Time = 5
value = 4,4

[State 2580, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

