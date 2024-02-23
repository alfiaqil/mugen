;===========================================================================
;===========================================================================
;state3400-3499
;---------------------------------------------------------------------------

[Statedef 3400]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3401

;---------------------------------------------------------------------------
[Statedef 3401]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 15,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3401, 1]
type = ChangeState
trigger1 = p2Dist X <= 5
value = 3402

;---------------------------------------------------------------------------
[Statedef 3402]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3402, 1]
type = velset
trigger1 = time = 0
x = 0

[State 3402, 2]
type = posadd
trigger1 = time = 1
x = 40

[State 3402, 3]
type = turn
trigger1 = time = 2

[State 3402, 4]
type = ChangeState
trigger1 = root , stateno = 3206
value = 3399

[State 3402, 5]
type = ChangeState
trigger1 = time = 40
value = 6000

;---------------------------------------------------------------------------
[Statedef 3399]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 0                       ;Change animation (Def: no change)
poweradd = 0                   ;Power to add (Def: 0)

[State 3399, 1]
type = ChangeState
trigger1 = time = 3
value = 3403

;---------------------------------------------------------------------------
[Statedef 3403]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 205                       ;Change animation (Def: no change)
poweradd = 10                    ;Power to add (Def: 0)

[State 3403, 1]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 380
[State 3403, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0		                 ;Power to get on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
;guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040             ;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
p1stateno = 3404
numhits = 0
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
; mindist  = 0,0,0                 ;Min distance of p2 from p1 when hit
; maxdist  = 0,0,0                 ;Max distance of p2 from p1 when hit
; snap = 0,0,0                     ;Snaps p2 to position rel to p1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed


[State 3403, 4]
type = ChangeState
trigger1 = animtime = 0
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3404]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 10                    ;Power to add (Def: 0)

[State 3404, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 0                  ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 30,15                 ;Power to get on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
;guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MA                 ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040 		;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
p1stateno = 3405
                                 ;Y-offset for the spark rel. to p1
numhits = 0
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed


[State 3404, 3]
type = ChangeState
trigger1 = animtime = 0
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3405]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 215

[State 3405, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 0
;guardflag = MA
hitflag = MA                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = s30002 
guard.sparkno = s30040
sparkxy = -10,-65
p1stateno = 3406
numhits = 0
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -2.2,-3.2


[State 3405, 2]
type = ChangeState
trigger1 = animtime = 0
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3406]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 420

[State 3406, 1]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 0
animtype  = Hard
getpower  = 0
givepower = 8
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -2,-10
p1stateno = 3407
numhits = 0
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20


[State 3406, 2]
type = ChangeState
trigger1 = animtime = 0
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3407]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 60
ctrl = 0
anim = 620

[State 3407, 1]
type = VelSet
trigger1 = Time = 0
x = -.2
y = -4

[State 3407, 2]
type = VelAdd
trigger1 = Time = 0
y = .02

[State 3407, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 0
getpower  = 0
givepower = 5
guardflag = HAD
priority = 3
pausetime = 9,10
sparkno = s30002
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3408
numhits = 0
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -1.3,-3


[State 3407, 4]
type = posset
trigger1 = time = 6
y = 0

[State 3407, 5]
type = ChangeState
trigger1 = time = 7
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3408]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 30
ctrl = 0
anim = 610

[State 3408, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 0
getpower  = 60
givepower = 25
guardflag = HA
priority = 3
pausetime = 9,10
sparkno = s30002
guard.sparkno = s30040                ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3409
numhits = 0
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -1.3,-3


[State 3408, 2]
type = posset
trigger1 = time = 6
y = 0

[State 3408, 2]
type = ChangeState
trigger1 = time = 7
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3409]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 215

[State 3409, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 3409, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3409, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 0
guardflag = MA
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = s30002
guard.sparkno = s30040 
sparkxy = -10,-65
numhits = 0
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -2.2,-3.2


[State 3409, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3410
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 420

[State 3410, 1]
type = VelSet
trigger1 = Time = 0
x = -1

[State 3410, 2]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 0
animtype  = Hard
getpower  = 0
givepower = 8
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -2,-10
p1stateno = 3411
numhits = 0
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20


[State 3410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3411
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3411]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 60
ctrl = 0
anim = 3214

[State 3411, 1]
type = VelSet
trigger1 = Time = 0
x = -.2
y = -4

[State 3411, 2]
type = VelAdd
trigger1 = Time = 0
y = .01

[State 3411, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 0
getpower  = 0
givepower = 5
guardflag = HAD
priority = 3
pausetime = 9,10
sparkno = s30002
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3412
numhits = 0
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0
air.velocity = -1.3,-3


[State 3411, 4]
type = posset
trigger1 = time = 8
y = 0

[State 3411, 5]
type = ChangeState
trigger1 = time = 9
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3412]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 1600

[State 3412, pos]
type = PosSet
trigger1 = time = 0
y = 0

[State 3412, vel]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3412, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3413
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3413]
type = S 
movetype= A 
physics = S 
poweradd= 30 
ctrl = 0
velset = 0
anim = 1500 

[State 3413, color]
type = PalFX
trigger1 = time = 2
time = 30
add = 0,80,180

[State 3413, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3414
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3414]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 3220
ctrl = 0

[State 3414, 1]
type = ChangeState
trigger1 = root , stateno = 3221
value = 3415
ctrl = 0

[State 3414, 2]
type = ChangeState
trigger1 = time = 50
value = 6000
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3415]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1701
ctrl = 0

[State 3415, 2]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 5
x = 5

[State 3415, 3]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 10
x = 10

[State 3415, 4]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 15
x = 5

[State 3415, 5]
type = PosAdd
trigger1 = Time = 4
trigger1 = p2dist X > 20
x = 10

[State 3415, 6]
type = PosAdd
trigger1 = Time = 5
trigger1 = p2dist X > 20
x = 10

[State 3415, 7]
type = PosAdd
trigger1 = Time = 6
trigger1 = p2dist X > 20
x = 10

[State 3415, 8]
type = ChangeState
trigger1 = Time = 10
value = 3416
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3416]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1702
ctrl = 0

[State 3416, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,11 

[State 3416, 2]
type = VelSet
trigger1 = Time = 1
y = -15.1

[State 3416, ‰Á‘¬]
type = VelAdd
trigger1 = Time >= 36
y = .45

[State 3416, 3]
type = PosSet
trigger1 = Time = 60
y = -400

[State 3416, 4]
type = ChangeState
trigger1 = Time = 61
value = 3417
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3417]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 3420
ctrl = 0

[State 3417, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 3417, ‰Á‘¬] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 3417, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 10
value = 3418
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3418]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 3421
ctrl = 0

[State 3418,1]
type = posset
trigger1 = time = 0
y = 0

[State 3418,2]
type = ChangeState
trigger1 = time = 24
value = 6000
ctrl = 0

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[Statedef 3450]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3450, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3451

;---------------------------------------------------------------------------
[Statedef 3451]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 15,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)


[State 3451, 1]
type = ChangeState
trigger1 = p2Dist X <= 35
value = 3452

;---------------------------------------------------------------------------
[Statedef 3452]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3452, 1]
type = velset
trigger1 = time = 0
x = 0

[State 3452, 2]
type = ChangeState
trigger1 = root , stateno = 3206
value = 3403

[State 3452, 3]
type = ChangeState
trigger1 = time = 40
value = 6000

