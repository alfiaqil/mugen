;Pappy def
;state6000-6099
;state -2
;---------------------------------------------------------------------------
; pappy
[Statedef 6000]
type = S
movetype = I
anim = 6000
velset = 0

[State 6000, 1]
type = ChangeState
trigger1 = RootDist X > 80
value = 6020

[State 6000, 2]
type = ChangeState
trigger1 = RootDist X < 75
value = 6021

[State 6000, 3]
type = ChangeState
trigger1 = RootDist X > 100
value = 6022

[State 6000, 4]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6000, Rush_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6000, Machine_Gun_Dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6000, Replica_Dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6000, Overhead_Crush_d]
type = ChangeState
triggerall = root, Time = 8
trigger1 = root, stateno = 6080
value = 6082

[State 6000, 5]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
value = 6090

[State 6000, 6]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6000, 7]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6000, 7]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 198
value = 6099

[State 6000, 8END]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

[State 6000, Shin helper]
type = ChangeState
triggerall = root, AnimElem = 35
trigger1 = root, stateno = 3580
value = 6800

[State 6000, Shin finish]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3541
value = 6099

[State 6000, renzan finish]
type = ChangeState
triggerall = root, MoveHit = 1
trigger1 = root, stateno = 282
value = 6099
ignorhitpause = 1

[State 6000, counter]
type = ChangeState
triggerall = root, Time = 6
trigger1 = root, stateno = 1351
value = 6051

;---------------------------------------------------------------------------
; pappy(Moving Forward)
[Statedef 6020]
type = S
movetype = I
anim = 6001
velset = 2.3,0
;facep2 = 1

[State 6020, 1]
type = ChangeState
trigger1 = RootDist X < 80
value = 6000

[State 6020, 2]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6020, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6020

[State 6020, Rush_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6020, Machine_Gun_Dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6020, Replica_Dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6020, Overhead_Crush_d]
type = ChangeState
triggerall = root, Time = 8
trigger1 = root, stateno = 6080
value = 6082

[State 6020, 4]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6020, 5]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6020, 6]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
value = 6090

[State 6020, 7]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 198
value = 6099

[State 6020, Shin helper]
type = ChangeState
triggerall = root, AnimElem = 35
trigger1 = root, stateno = 3580
value = 6800

[State 6020, Shin finish]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3541
value = 6099

[State 6020, renzan finish]
type = ChangeState
triggerall = root, MoveHit = 1
trigger1 = root, stateno = 282
value = 6099
ignorhitpause = 1

[State 6020, counter]
type = ChangeState
triggerall = root, Time = 6
trigger1 = root, stateno = 1351
value = 6051

;---------------------------------------------------------------------------
; pappy(Moving Backward)
[Statedef 6021]
type = S
movetype = I
anim = 6002
velset = -2.0, 0
;facep2 = 1

[State 6021, 1]
type = ChangeState
trigger1 = RootDist X > 75
value = 6000

[State 6021, 2]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6021, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6021

[State 6021, Rush_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6021, Machine_Gun_Dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6021, Replica_Dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6021, Overhead_Crush_d]
type = ChangeState
triggerall = root, Time = 8
trigger1 = root, stateno = 6080
value = 6082

[State 6021, 4]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6021, 5]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6021, 6]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
value = 6090

[State 6021, 7]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 198
value = 6099

[State 6021, Shin helper]
type = ChangeState
triggerall = root, AnimElem = 35
trigger1 = root, stateno = 3580
value = 6800

[State 6021, Shin finish]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3541
value = 6099

[State 6021, renzan finish]
type = ChangeState
triggerall = root, MoveHit = 1
trigger1 = root, stateno = 282
value = 6099
ignorhitpause = 1

[State 6021, counter]
type = ChangeState
triggerall = root, Time = 6
trigger1 = root, stateno = 1351
value = 6051

;---------------------------------------------------------------------------
; pappy(Moving Backward_Far)
[Statedef 6022]
type = S
movetype = I
anim = 6002
velset = -3.0, 0
;facep2 = 1

[State 6022, 1]
type = ChangeState
trigger1 = RootDist X < 100
value = 6000

[State 6022, 2]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6022, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6022

[State 6022, Rush_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6022, Machine_Gun_Dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6022, Replica_Dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6022, Overhead_Crush_d]
type = ChangeState
triggerall = root, Time = 8
trigger1 = root, stateno = 6080
value = 6082

[State 6022, 4]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6022, 5]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6022, 6]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
value = 6090

[State 6022, 7]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 198
value = 6099

[State 6022, Shin helper]
type = ChangeState
triggerall = root, AnimElem = 35
trigger1 = root, stateno = 3580
value = 6800

[State 6022, Shin finish]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3541
value = 6099

[State 6022, renzan finish]
type = ChangeState
triggerall = root, MoveHit = 1
trigger1 = root, stateno = 282
value = 6099
ignorhitpause = 1

[State 6022, counter]
type = ChangeState
triggerall = root, Time = 6
trigger1 = root, stateno = 1351
value = 6051

;==================================================================
[Statedef 6050]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6050
PowerAdd = 0

[State 6050, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 0

[State 6050, 2]
type = PlaySnd
trigger1 = Time = 17
value = 4, 1

[State 6050, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rush_dog
[Statedef 6051]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6051                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6051, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,2

[State 6051, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 120,12                ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = LA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = 10,-20                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Trip                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -0.3,-5             
groundguard.velocity = -3,0
airguard.velocity = -2.5,-.8     
air.velocity = -0.3,-4           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


;[State 6051, 2] 
;type = explod
;trigger1 = movehit = 1
;anim = 9004
;persistent = 0
;pos = 10,-30
;postype = p2
;ignorehitpause = 0
;sprpriority = 6
;bindtime = 1

[State 6000, HitO]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6900

[State 6051, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

[State 6051, 3]
type = ChangeState
trigger1 = Movehit = 1
trigger2 = moveguarded = 1
value = 6052

;------------------------------------------------------------------
[Statedef 6052]
type = A
movetype = I
physics = N
anim = 6009
velset = -3,-6   

[state 3052, 1]
type = VelAdd
trigger1 = time >= 0
y = .30

[state 3052, 2]
type = ChangeState
trigger1 = Time >= 5
trigger1 = Pos Y >= 0
value = 6053

;-------------------------------------------------------------------
[Statedef 6053]
type = S
physics = S
ctrl = 0
anim = 6010
velset = 0,0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State , makedust]
type = MakeDust
trigger1 = time = 3
pos = -30,0

[State 6053, sound]
type = playsnd
trigger1 = Time = 1
value = 6,4

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;==================================================================
[Statedef 6060]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6050
PowerAdd = 0

[State 6060, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 4

[State 6060, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Machine_Gun_Dog
[Statedef 6061]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 11,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6061                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6061, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,4

[State 6061, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
Hitflag = M-
guardflag = HL
hitcount = 0
priority = 2, Miss
sparkno = -1 
sprpriority = 3
p1stateno = 6065 
p2stateno = 6066 
groundguard.velocity = -3,0
guard.pausetime = 5,8

[State 6061, 2] 
type = explod
trigger1 = movehit = 1
anim = 9004
persistent = 0
pos = 10,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 6000, HitO]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6900

[State 6061, 3]
type = ChangeState
trigger1 = moveguarded = 1
value = 6052

[State 6061, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
[Statedef 6065]
type = S
movetype = A
physics = N
anim = 6065 
velset = 0,0 

[State 6065, 0]
type = VelSet 
trigger1 = Time = 1 
x = 1

[State 6060, 1]
type = PlaySnd
trigger1 = Timemod = 20,0
value = 7,3

[State 6065, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = Animelem = 4
trigger5 = Animelem = 5
trigger6 = AnimElem = 6
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 10,10                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,2                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = 3,-30                  ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0            ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = 0			;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 6065, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
animtype  = Back
damage    = 80
guardflag = MAF
pausetime = 3,3
getpower = 30,15
sparkno = s30002   
guard.sparkno = s30040                                 
sparkxy = 10,-40
hitsound   = s6,1
guardsound = s6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 26
ground.velocity = -3,-6
fall = 1
fall.yvelocity = -4.0
fall.recover = 0


[State 6065, 3]
type = Changestate
trigger1 = animtime = 0 
value = 6052

[State 6065, 3]
type = ChangeState
trigger1 = moveguarded = 1
value = 6052

;---------------------------------------------------------------------------
[Statedef 6066]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 6066, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5000

[State 6066, 2]
type = SelfState 
trigger1 = Time = 70
value = 0
ctrl = 1 

;==================================================================
[Statedef 6070]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6050
PowerAdd = 100

[State 6070, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 0

[State 6070, 2]
type = PlaySnd
trigger1 = Time = 17
value = 4, 1

[State 6070, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Replica_Dog
[Statedef 6071] 
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6071, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,1

[State 6071, 1]
type = PosSet
trigger1 = AnimTime = 0
y = -250

[State 6071, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 6072

;---------------------------------------------------------------------------
[Statedef 6072]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6072, 1]
type = ChangeState
trigger1 = p2BodyDist X <= 0
value = 6075

[State 6072, 2]
type = ChangeState
trigger1 = Time = 30
value = 6075

;---------------------------------------------------------------------------
[Statedef 6075]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6075                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6075, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 7,2

[State 6075, 1]
type = VelSet
trigger1 = Time = 1
y = 4

[State 6075, 2]
type = VelSet
trigger1 = Time = 4
y = 8

[State 6075, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 6
attr = C, NA                      ;Attribute: Standing, Normal Attack
damage = 120,12                      ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                   ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                  ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = HA                    ;Flags on how move is to be guarded against
hitflag = MAF                     ;Flags of conditions that move can hit
priority = 3, Hit                 ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10,10                   ;Time attacker pauses, time victim shakes
guard.pausetime = 6,10
numhits = 1                       ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                       ;Spark image group and no (Def: set above)
sparkxy = -5,12                   ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s7,11                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 7              ;Time that the victim slides back
ground.hittime  = 15              ;Time victim is in hit state
ground.velocity = -1,3            ;Velocity at which victim is pushed
groundguard.velocity= -3,0
airguard.velocity = -1.9,-.8   
air.velocity = -1,3               ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
air.fall = 1
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7

[State 6075, 4]
type = PosSet
trigger1 = AnimTime = 0
y = 0

[State 6000, HitO]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6900

[State 6075, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

[State 6075, 3]
type = ChangeState
trigger1 = Movehit = 1
trigger2 = moveguarded = 1
value = 6052

;------------------------------------------------------------------
[Statedef 6076]
type = A
movetype = I
physics = N
anim = 6009
velset = -3,-6   

[state 3052, 1]
type = VelAdd
trigger1 = time >= 0
y = .30

[state 3052, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 6053
;==================================================================
[Statedef 6080]
type    = A
movetype= I
physics = S
ctrl = 0
anim = 43
PowerAdd = 0

[State 6080, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -8

[State 6080, 3]
type = ChangeState
trigger1 = Time = 19
value = 6081
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6081]
type    = A
movetype= I
physics = S
ctrl = 0
anim = 6080
PowerAdd = 0
velset = 0,0

[State 6081, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 2

[State 6081, 1]
type = PlaySnd
trigger1 = Time = 6
value = 6,1

[State 6081, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 6088
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6088]
type    = A
movetype= I
physics = S
ctrl = 0
anim = 6081
PowerAdd = 0

[State 52, 1]
type = VelSet
trigger1 = Time = 2
y = 6
x = 0

[State 6081, 2]
type = ChangeState
trigger1 = Time = 27
value = 6089
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6089]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6082
PowerAdd = 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 6053, sound]
type = playsnd
trigger1 = Time = 0
value = 6,4

[State 6081, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 6082]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6071, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,1

[State 6082, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = RootDist X <= 0
value = 6083

[State 6082, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = RootDist X >= 0
value = 6084

;---------------------------------------------------------------------------
[Statedef 6083]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                      ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6083, 1]
type = VelSet
trigger1 = Time = 0
x = -10

[State 6083, 2]
type = PosSet
trigger1 = Time = 0
y = -185

[State 6083, 3]
type = ChangeState
trigger1 = RootDist X >= -45
value = 6085

[State 6083, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
[Statedef 6084]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                    ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6084, 1]
type = VelSet
trigger1 = Time = 0
x = 10

[State 6084, 2]
type = PosSet
trigger1 = Time = 0
y = -185

[State 6084, 3]
type = ChangeState
trigger1 = RootDist X <= -45
value = 6085

[State 6084, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
; Overhead Crush
[Statedef 6085]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 6,4                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6075                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State smoke]
type = explod
trigger1 = Time = 0
anim = 6012
persistent = 0
pos = 0,0
postype = p1
ignorehitpause = 0
removeongethit = 1
ontop = 1
sprpriority = 6
bindtime = 1

[State smokesound]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,4

[state 6085, 1]
type = VelAdd
trigger1 = time >= 0
y = .30

[State 6085, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 70,10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 50,15                  ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 9,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
;sparkno = 6                      ;Spark image group and no (Def: set above)
sparkxy = -20,-6                 ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                  ;Sound to play on hit
guardsound = s6,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -2,5           ;Velocity at which victim is pushed
groundguard.velocity = -2,0
airguard.velocity = -1.9,-.8   
air.velocity = -1.3,4            ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1


[State 6085, 2] 
type = explod
trigger1 = movehit = 1
anim = 30002
persistent = 0
pos = 30,0
postype = p1
ignorehitpause = 1
sprpriority = 6
bindtime = 1

[State 6000, HitO]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6900

[State 6085, 3]
type = PosSet
trigger1 = Pos y = 0
y = 0

[State 6085, 4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = 6086

;--------------------------------------------------------------------
; Overhead Crush
[Statedef 6086]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 7,-6                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6075                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[state 6086, 1]
type = VelAdd
trigger1 = time >= 0
y = .30

[State 6086, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 6086, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 40,5                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 50,15                  ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 9,8                  ;Time attacker pauses, time victim shakes
guard.pausetime = 3,6
numhits = 1                      ;Number of hits to count as (Def: 1)
;sparkno = 6                     ;Spark image group and no (Def: set above)
sparkxy = -15,0                    ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                  ;Sound to play on hit
guardsound = s6,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -2,5           ;Velocity at which victim is pushed
groundguard.velocity = -2,0
airguard.velocity = -1.9,-.8   
air.velocity = -1.3,4            ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1


[State 6086, 2] 
type = explod
trigger1 = movehit = 1
anim = 30002
persistent = 0
pos = 20,0
postype = p1
ignorehitpause = 1
sprpriority = 6
bindtime = 1

[State 6086, 0]
type = ScreenBound
trigger1 = 1
value = 0

[State 6086, 1]
type = PlaySnd
trigger1 = AnimTime = 1
value = 7,11

[State 6086, 2]
type = ChangeState
trigger1 = pos X <= -135 
trigger2 = pos X >= 135  
trigger3 = time = 70
value = 6087

;----------------------------------------------------------------------------------
; Overhead Crush
[Statedef 6087]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = -6,-5                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6009                         
poweradd = 0 

[State 6087, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[state 6087, 1]
type = VelAdd
trigger1 = time >= 0
y = .30

[state 6067, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 6053

;============================================================================
;---------------------------------------------------------------------------
[Statedef 6090]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                      ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6090, 1]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2920
value = 6093
ctrl = 0

[State 6090, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 6091
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6091]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6091, 1]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2920
value = 6093
ctrl = 0

[State 6091, 2]
type = ChangeState
trigger1 = Time = 20
value = 6092
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6092]
type    = S                      
movetype= I                     
velset = 0,0                     
ctrl = 0                         
anim = 34463                     
poweradd = 0                    

[State 6092, 1]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2920
value = 6093
ctrl = 0

[State 6092, 2]
type = ChangeState
trigger1 = Time = 10
value = 6092
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6093]
type    = S                     
movetype= A                     
velset = 0,0                     
ctrl = 0                         
anim = 6092                     
poweradd = 0                   

[State 6093, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;=========================== Pappy get hit State========================================
[Statedef 6900]
type = S  
movetype = H
physics = N
anim = 6095
velset = -3,-6   

[State 6086, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,10

[state 3052, 1]
type = VelAdd
trigger1 = time >= 0
y = .30

[State 6901, 0]
type = PosSet
trigger1 = time = 0
y = 0

[state 3052, 2]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = 6901

;----------------------------------------------------------
; Hit Ground and Bounce
[Statedef 6901]
type = L
movetype = H
physics = N
anim = 6096
velset = 0,0

[State 6086, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 6901, 0]
type = PosSet
trigger1 = time = 0
y = 0

[State 6901, 2]
type = posfreeze
trigger1 = 1

[State 6901, 3]
type = ChangeState
trigger1 = animtime = 0
value = 6902

;--------------------------------------------------------
; Bouncing in air
[Statedef 6902]
type = A
movetype = H
physics = N
anim = 6096

[State 6902, 0]
type = velset
trigger1 = time = 0
x = -2  
y = -2

[State 6902, 1]
type = VelAdd
trigger1 = time > 0
y = 0.27

[State 6902, 2]
type = ChangeState
trigger1 = pos y >= 5 && vel y > 0
value = 6903

;---------------------------------------------------
; Bouncing in air,2e
[Statedef 6903]
type = S
movetype = H
physics = N
anim = 6007

[State 6902, 0]
type = velset
trigger1 = time = 0
x = 0  
y = -4

[State 6902, 1]
type = VelAdd
trigger1 = time > 0
y = 0.27

[State 6901, 0]
type = PosSet
trigger1 = time = 0
y = 0

[State 6902, 2]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = 6904

; Stand up and shake of dizzy
[Statedef 6904]
type = L
movetype = H
physics = S
anim = 6097
velset = 0,0

[State 6903, 1]
type = posset
trigger1 = time = 0
y = 0

[State 6903, 7]
type = ChangeState
trigger1 = animtime = 0 
value = 6000

;============================================================================
[Statedef -2]





[state -2, 1]
type = helper
trigger1 = time = 0
trigger1 = stateno = 0
trigger1 = roundstate != 0
trigger1 = NumHelper(6000) = 0
ID = 6000
pos = -10, 0
postype = p1
stateno = 6000
helpertype = normal
name = "papy"
keyctrl = 0





;------------------------------------------------------------------------------
;Taunt 
[Statedef 6099]
type = A
ctrl = 0
anim = 6094
velset = 0,0,0
sprpriority = 2

[State 6099, 1];woef!!
type = PlaySnd
trigger1 = AnimElem = 3
value = 7,2

[State 175, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;==============================================================================================
;==============================================================================================
;Shin Helper
[Statedef 6800]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 11,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6061                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 50
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 6061, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,4

[State 6061, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
Hitflag = HL
guardflag = HL
hitcount = 0
priority = 3, Hit
sparkno = -1 
sprpriority = 3
p1stateno = 6801 
p2stateno = 6066 
groundguard.velocity = -3,0
guard.pausetime = 5,8

[State 6061, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
[Statedef 6801]
type = S
movetype = A
physics = N
anim = 6065 
velset = 0,0 

[State 3800, Shadows]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 6065, 0]
type = VelSet 
trigger1 = Time = 1 
x = 0.6

[State 6060, 1]
type = PlaySnd
trigger1 = Timemod = 20,0
value = 7,3

[State 6065, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = Animelem = 4
trigger5 = Animelem = 5
trigger6 = AnimElem = 6
trigger7 = Animelem = 7
trigger8 = Animelem = 8
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,10                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 3,4                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = 3,-30                  ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0            ;Time that the victim slides back
ground.hittime  = 100             ;Time victim is in hit state
ground.velocity = 0			;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3800, Shadows]
type = Afterimage
trigger1 = AnimElem = 8
time = 45
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 6065, 3]
type = Changestate
trigger1 = animtime = 0 
value = 6052
