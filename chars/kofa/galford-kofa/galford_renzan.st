;===========================================================================
;custom combo links
;===========================================================================
;state250-282
;---------------------------------------------------------------------------
; CD
[Statedef 250]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move take;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 250                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 250, v1]
type = Varset
trigger1 = Time = 0 
persistent = 0
v = 1
value = 0

[State 250, v2]
type = Varset
trigger1 = Time = 0 
persistent = 0
v = 2
value = 0

[State 250, v3]
type = Varset
trigger1 = Time = 0 
persistent = 0
v = 3
value = 0

[State 250, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,9                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -10,-65                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime =5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -2 ;-0.5             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -10,-70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 250, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 3

[State 250, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "a"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 1

[State 250, 4]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 1
value = 260

[State 250, 5]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "b"
trigger1 = movehit = 1
persistent = 0
v = 2
value = 1

[State 250, 6]
type = ChangeState
trigger1 = time > 4
trigger1 = var(2) = 1
value = 265

[State 250, 7]
type = VarSet
trigger1 = AnimTime = 1
v = 3
value = 1

[State 250, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CD(abc_a)(aaa_a)
[Statedef 260]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 260                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 260, 2]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 260, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 120,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                    ;Spark image group and no (Def: set above)
sparkxy = -5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime =15             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -1             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 260, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "b"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 2

[State 260, 4]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 2
value = 261

[State 260, 5]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "a"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 5

[State 260, 6]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 5
value = 268

[State 260, 7]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 1

[State 260, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CD(abc_b)
[Statedef 261]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 261                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 261, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 120,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = 15,-93                  ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 15
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

;[State 261, 5]
;type = Explod
;trigger1 = MoveHit = 1
;anim = 1050
;id = 261
;pos = 0,-1
;postype = p2
;bindtime = -1
;removetime = 15
;sprpriority = 10
;ownpal = 1
;ignorehitpause = 1

[State 261, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 3

[State 261, 4]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 3
value = 262

[State 261, 5]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 1

[State 261, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CD(abc_c)
[Statedef 262]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 262                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 262, 1]
type = VelSet
trigger1 = Time = 0
y = -12
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
damage    = 100                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 200,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12,12                 ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 10             ;Time victim is in hit state
ground.velocity = -2,1             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -3,1           ;X-velocity at which victim is pushed;Y-velocity at which victim is pushed
fall=1


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9003
persistent = 0
pos = -10,-70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 262, 4]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

[State 262, 4]
type = PlaySnd
trigger1 = Time = 0
value = 5,5

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
; CD(bbc_b)
[Statedef 265]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 261                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 265, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 25                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = 15,-93                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 15
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State 265, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "b"
trigger1 = movehit = 1
persistent = 0
v = 2
value = 2

[State 265, 4]
type = ChangeState
trigger1 = time > 4
trigger1 = var(2) = 2
value = 266

[State 265, 5]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 1

[State 265, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; CD(bbc_b2)
[Statedef 266]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 261                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 266, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 25                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = 15,-93                  ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 15
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State 266, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 266, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 2
value = 3

[State 266, 4]
type = ChangeState
trigger1 = time > 6
trigger1 = var(2) = 3
value = 267

[State 266, 5]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 1

[State 266, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CD(bbc_c)
[Statedef 267]
type = S 
movetype= A 
physics = S 
poweradd= 30 
ctrl = 0
velset = 0
anim = 1500 

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
x = 6

[State 1500, 4]
type = HitDef
trigger1 = Time = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100                   ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 200,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 15,15                 ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = S1011
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -15,-40                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s4,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20             ;Time that the victim slides back
ground.hittime  = 18             ;Time victim is in hit state
ground.velocity = -10             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           
fall = 1
air.fall = 1
fall.recover = 0
palfx.time = 25
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State 1500, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CD(aaa_2a)
[Statedef 268]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 268                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 268, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,1                  ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime =15             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -1             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 268, 2]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 268, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "a"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 6

[State 268, 4]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 6
value = 269

[State 268, 5]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "b"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 7

[State 268, 6]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 7
value = 272


[State 268, 7]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 1

[State 268, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CD(aaa_3a)
[Statedef 269]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 269                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 269, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 10                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002  
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = 15,-93                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 15             ;Time that the victim slides back
ground.hittime  = 18             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 12
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 269, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 269, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;aaa_2a
;---------------------------------------------------------------------------
;aabbcc_1b
[Statedef 272]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 272                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 272, 1]
type = VelSet
trigger1 = Time = 0
x = 6

[State 272, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002   
guard.sparkno = s30040               ;Spark image group and no (Def: set above)
sparkxy = -2,-10                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 1             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -1             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 272, 3]
type = PlaySnd
trigger1 = Time = 1
value = 1, 4

[State 272, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "b"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 8

[State 272, 5]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 8
value = 273

[State 272, 6]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 1

[State 272, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;aabbcc_2b
[Statedef 273]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 273                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 273, 1]
type = VelSet
trigger1 = Time = 0
x = 8

[State 273, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002    
guard.sparkno = s30040               ;Spark image group and no (Def: set above)
sparkxy = 15,-93                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 1             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -1             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 15
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 273, 3]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

[State 273, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 9

[State 273, 5]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 9
value = 274

[State 273, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;aabbcc_1c
[Statedef 274]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 274                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 274, 1]
type = VelSet
trigger1 = Time = 0
x = 4

[State 274, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002  
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -2,-10                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -1            ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 274, 3]
type = PlaySnd
trigger1 = Time = 1
value = 1, 3

[State 274, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 10

[State 274, 5]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 10
value = 275

[State 274, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;aabbcc_2c
[Statedef 275]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 275                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 275, 2]
type = VelSet
trigger1 = Time = 0
x = 6

[State 275, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                  ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -1,-5                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 275, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "a"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 11

[State 275, 5]
type = ChangeState
trigger1 = time > 4
trigger1 = var(1) = 11
value = 276

[State 275, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;abcccc_1a
[Statedef 276]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 276                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)


[State 276, 2]
type = VelSet
trigger1 = Time = 0
x = 2

[State 276, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -1,-5                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -6             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 276, 4]
type = Varset
triggerall = AnimTime <= 0
trigger1 = command = "b"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 12

[State 276, 5]
type = ChangeState
;trigger1 = time > 4
trigger1 = var(1) = 12
value = 277

[State 276, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;abcccc_1b
[Statedef 277]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 277                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 277, 2]
type = VelSet
trigger1 = Time = 0
x = 2

[State 1550, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 5,3 

[State 277, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -2,-12                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -6             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -2,-12
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 277, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 13

[State 277, 5]
type = ChangeState
;trigger1 = time > 4
trigger1 = var(1) = 13
value = 278

[State 275, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;abcccc_1c
[Statedef 278]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 278                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 278, 2]
type = VelSet
trigger1 = Time = 0
x = 2

[State 1550, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 5,4 

[State 278, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                    ;Spark image group and no (Def: set above)
sparkxy = -10,-65                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 278, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 14

[State 278, 5]
type = ChangeState
;trigger1 = time > 4
trigger1 = var(1) = 14
value = 279

[State 278, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;abcccc_2c
[Statedef 279]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 279                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1550, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 5,5 

[State 279, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                    ;Spark image group and no (Def: set above)
sparkxy = -2,-18                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 1             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


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

[State 279, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 15

[State 279, 5]
type = ChangeState
trigger1 = var(1) = 15
value = 280

[State 279, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;abcccc_3c
[Statedef 280]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 280                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 280, 2]
type = VelSet
trigger1 = Time = 0
Y = 0
x = 4

[State 280, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 5,4 

[State 280, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                    ;Spark image group and no (Def: set above)
sparkxy = -5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 280, 4]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 16

[State 280, 5]
type = ChangeState
trigger1 = var(1) = 16
value = 281

[State 280, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; abcccc_4c
[Statedef 281]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 261                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 266, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = 15,-93                  ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,7                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 15
palfx.add = 200,200,200
palfx.mul = 180,180,180


[State elec] 
type = explod
trigger1 = movehit = 1
anim = 1050
persistent = 0
pos = 0,-1
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 266, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 266, 3]
type = Varset
triggerall = Animtime <= 0
trigger1 = command = "c"
trigger1 = movehit = 1
persistent = 0
v = 1
value = 17

[State 266, 4]
type = ChangeState
trigger1 = time > 6
trigger1 = var(1) = 17
value = 282

[State 266, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;abcccc_5c
[Statedef 282]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 281                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 281, 1]
type = VelSet
trigger1 = Time = 0
x = 4

[State 281, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,14

[State 281, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 60                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 1000,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10,9                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -10,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 30             ;Time that the victim slides back
ground.hittime  = 1435             ;Time victim is in hit state
ground.velocity = -20             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -20           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -10,-60
postype = p2
ignorehitpause = 1
sprpriority = 6
bindtime = 1

[State slowmotion]
type = Pause
trigger1 = movecontact = 1
time = 1
movetime = 1 
ignorehitpause = 1

[State hanzo effect] 
type = explod
triggerall = p2name != "hanzo" || p2name != "Hattori Hanzo" || p2name != "HANZOU" 
triggerall = p4name != "hanzo" || p4name != "Hattori Hanzo" || p4name != "HANZOU"
trigger1 = movecontact = 1
anim = 180
persistent = 0
pos = -30,0
postype = p1
ignorehitpause = 1
sprpriority = 3
bindtime = 1
removetime = 27
ownpal = 1

[State 281, 3]
type = PlaySnd
triggerall = p2name != "hanzo" || p2name != "Hattori Hanzo" || p2name != "HANZOU" 
triggerall = p4name != "hanzo" || p4name != "Hattori Hanzo" || p4name != "HANZOU"
trigger1 = AnimElem = 9
value = 15,14

[State 3101, env]
type = bgpalfx 
trigger1 = movecontact = 1
time = 25
add = -80,-80,-80
ignorehitpause = 1

[State 281, 3]
type = PlaySnd
trigger1 = AnimElem = 13
value = 8,4

[State 281, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


