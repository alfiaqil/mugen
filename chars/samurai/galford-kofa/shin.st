;Shin ninjitsu replica finish.
[Statedef 3500]
type = S
movetype = A
physics = S
juggle = 0
poweradd= -2000 
velset = 0,0,0
anim = 3500
ctrl = 0





[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 3
anim = -1
time = 30
movetime = 30
darken = 0

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 3
anim = 17100
pos = 14,-63
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 3
anim = 17110
pos = 14,-63
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 17000,0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1



[State 3100, 2]
type = PlaySnd 
trigger1 = Time = 0 
value = S9,0


[State 3550, 2];ready!!
type = PlaySnd
trigger1 = Time = 1
value = 4,18

[State 3500, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3501

;-------------------------------------------------------------------
[Statedef 3501] ;dash
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 30,0,0
anim = 3503
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State , makedust]
type = MakeDust
trigger1 = Time = 1
spacing = 3
pos = -55,0

[State 3550, 2];swoo!!
type = PlaySnd
trigger1 = Time = 1
value = 5,8  

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 3501, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20,15                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 30,45                  ;Time attacker pauses, time victim shakes
guard.pausetime = 20,5
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -5,-53                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3550, 2];yihooooo
type = PlaySnd
trigger1 = Movehit = 1
value = 1,1

[State 3501, 1]
type = ChangeState
trigger1 = Time = 30
trigger2 = MoveGuarded = 1
value = 11
ctrl = 1

[State 3501, 1]
type = ChangeState
trigger1 = Movehit = 1
value = 3580

;---------------------------------------------------------------------
[Statedef 3580] ;combo call poppy
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3513
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 50
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 220,5]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,8

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 4
time = 12

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 15,50                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -5,-5                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 220,5]
type = PlaySnd
trigger1 = AnimElem = 7
value = 6,7

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 8
time = 12

[State 3502, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 15,50                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed




[State 220, 3]
type = PlaySnd
trigger1 = AnimElem = 16
value = 5,5

[State 3502, 3]
type = HitDef
trigger1 = AnimElem = 20
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 5,5                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -7,-55                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 100             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 220,5]
type = PlaySnd
trigger1 = AnimElem = 28
value = 5,7

[State slash effect] 
type = explod
trigger1 = AnimElem = 20
trigger1 = movehit = 1
anim = 9003
persistent = 0
pos = -7,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 3504, snd];gooo!!
type = PlaySnd 
trigger1 = AnimElem = 34 
value = 4,0

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 39 
value = 0,5

[State 3502, 4]
type = ChangeState
trigger1 = Animtime = 0
value = 3520

;---------------------------------------------------------------------
;---------------------------------------------------------------------
[Statedef 3520] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 90
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3550, 2];whhoaaaa!!
type = PlaySnd
trigger1 = Time = 3
value = 4,24

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3521, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3521
;---------------------------------------------------------------------
[Statedef 3521] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002   
guard.sparkno = s30040                ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3522, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3522
;---------------------------------------------------------------------
[Statedef 3522] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 191, 1];elec charge
type = Explod
trigger1 = Time = 2
anim = 1050
id = 2910
pos = 0,-1
postype = p1
bindtime = -1
removetime = 100
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002       
guard.sparkno = s30040            ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3523

;---------------------------------------------------------------------
[Statedef 3523] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1



[State 191, spsnd01];elec
type = PlaySnd
trigger1 = Time = 1
value = 8, 4

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002     
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002        
guard.sparkno = s30040           ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3524
;---------------------------------------------------------------------
[Statedef 3524] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002  
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002  
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3525
;---------------------------------------------------------------------
[Statedef 3525] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002     
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002     
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3526
;---------------------------------------------------------------------
[Statedef 3526] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002        
guard.sparkno = s30040           ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002   
guard.sparkno = s30040                ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3527
;---------------------------------------------------------------------
[Statedef 3527] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3100, 0b]
type = BGPalfx
trigger1 = time = 1
ignorehitpause = 1
time = 2
invertall = 1

[State 191, spsnd01];elec
type = PlaySnd
trigger1 = Time = 4
value = 8, 4

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002   
guard.sparkno = s30040               ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002    
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3528
;---------------------------------------------------------------------
[Statedef 3528] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002     
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002    
guard.sparkno = s30040               ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3529
;---------------------------------------------------------------------
[Statedef 3529] ;rapid speed punches
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3508
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 2 
value = 6,6

[State 3504, snd]
type = PlaySnd 
trigger1 = AnimElem = 6 
value = 6,3

[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 1                   ;Damage that move inflicts
animtype = Light                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -15,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 2                   ;Damage that move inflicts
animtype = Medium                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0,35                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002    
guard.sparkno = s30040               ;Spark image group and no (Def: set above)
sparkxy = -15,-57                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,1                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3530

[State 3501, 1]
type = ChangeState
trigger1 = AnimElem = 7
trigger1 = Movehit = 0
trigger2 = MoveGuarded = 1
value = 11
ctrl = 1

;----------------------------------------------------------------------
[Statedef 3530] ;gut flash
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3509
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

;[State charge effect body] 
;type = explod
;trigger1 = Time = 0
;anim = 3015
;persistent = 0
;facing = 1
;pos = -71,-80
;postype = p1
;ignorehitpause = 0
;removeongethit = 1
;ontop = 0
;sprpriority = -1
;bindtime = -1

[State 3000, 2]; body effect charge
type = PlaySnd 
trigger1 = Time = 0 
value = 10,10

;[State charge effect body] 
;type = explod
;trigger1 = Time = 0
;anim = 3015
;facing = -1
;persistent = 0
;pos = 36,-80
;postype = p1
;ignorehitpause = 0
;removeongethit = 1
;ontop = 0
;sprpriority = -1
;bindtime = -1

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 90
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3100, 0b]
type = BGPalfx
trigger1 = time = 23
trigger1 = Animtime != 0
ignorehitpause = 1
time = 54
invertall = 1

[State 3550, 2];break!!
type = PlaySnd
trigger1 = Time = 0
value = 4,23

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 3
time = 50

[State 3550,4];electric arms
type = Explod
trigger1 = AnimElem = 3
anim = 3009
pos = 30,35
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 70
bindtime = 1

[State 1000, 3]
type = Projectile 
trigger1 = AnimElem = 3
projsprpriority = 7
projanim = 3510
projremovetime = 50
projhits = 10
projmisstime = 5
offset = 47, 33 
velocity = 0, 0 
attr = S, SP
damage = 15,5
animtype = Medium
pausetime = 0,5
sparkno = s30002
guard.sparkno = s30040
sparkxy = -15, -67
hitsound = s8,5
guardflag = MA
guardsound = s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 100
ground.velocity = 0
air.animtype = Back 
air.velocity = 0,0
air.juggle = 3
palfx.time = 70
palfx.add = -100,-34,40
palfx.mul = 180,180,180

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
anim = 1050
persistent = 0
pos = 0,0
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 73

[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3531

;---------------------------------------------------------------------
[Statedef 3531] ;pause
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3512
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = AfterImageTime
trigger1 = Time = 0
time = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3550, 2];uhhhhh
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,8

[State 3502, 1]
type = Helper
trigger1 = Time = 0
ID = 3550
pos = -50, 0
postype = p2
stateno = 3550
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3500,1]
type = SuperPause
trigger1 = Time = 0
time = 40
anim = -1
sound = S9,0
;movetime = 0
darken = -1

[State 3500, 1] 
type = Explod
trigger1 = time = 0
anim = 3573
pos = 0,0
postype = back
supermove = 1
facing = 1 
bindtime = 40
sprpriority = -2
removetime = 40

[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3532

;----------------------------------------------------------------------
[Statedef 3532] ;punch
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3501
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 50
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3550, 2];shout
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 3550, 2];punch wave
type = PlaySnd
trigger1 = Time = 5
value = 6,7

[State 3502, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 200,20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 40,100                  ;Time attacker pauses, time victim shakes
guard.pausetime = 30,5
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = 5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slowmotion]
type = Pause
trigger1 = movecontact = 1
time = 1
movetime = 1 
ignorehitpause = 0 

[State 3502, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3533

;----------------------------------------------------------------------
[Statedef 3533] ;kick
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3504
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 50
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3550, 2];foot wave
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,8

[State 3503, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 200,20                   ;Damage that move inflicts
animtype = Up                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Up
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 40,40                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002  
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -5,-80                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 200             ;Time victim is in hit state
air.hittime  = 200             
ground.velocity = 0,-15             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slowmotion]
type = Pause
trigger1 = movecontact = 1
time = 1
movetime = 1 
ignorehitpause = 0 

[State 3503, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 3534

;-----------------------------------------------------------------------
[Statedef 3534];galford teleport
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1900  
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = AfterimageTime
trigger1 = Time = 0
time = 0

[State 3504, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 3504, 1]
type = PosSet
trigger1 = AnimTime = 0
y = -100    

[State 3504, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3535

;--------------------------------------------------------
[Statedef 3535]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 8,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3100, sp]
type = SuperPause
trigger1 = time = 0
darken = 0
time = 20
anim = -1

[State 3550, 2];finish!!
type = PlaySnd
trigger1 = Time = 0
value = 4,14

[State 3550, 2];tenchu!!
type = PlaySnd
trigger1 = Time = 0
value = 15,10

;[State 3100, 1] 
;type = Explod
;trigger1 = Time = 0
;anim = 3571
;pos = 0,0
;postype = back
;supermove = 1
;facing = 1 
;bindtime = 58
;sprpriority = -2
;removetime = 40

[State 1901, 1]
type = ChangeState
trigger1 = p2Dist X <= 10
value = 3536

;--------------------------------------------------------
[Statedef 3536]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,-10                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3550, 2];fly sound!!
type = PlaySnd
trigger1 = Time = 0
value = 15,11

[State 1901, 1]
type = ChangeState
trigger1 = p2Dist Y >= 6
value = 3537

[State 3554, 2]
type = ChangeState
trigger1 = Time = 45
value = 3538

;--------------------------------------------------------
[Statedef 3537];galford air strike
type = A
movetype = A
juggle = 0
velset = 3,-3   
anim = 3506
ctrl = 0
sprpriority = -3

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 58
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3506, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 200,20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = HL                   ;Flags on how move is to be guarded against
hitflag = HLA                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 50,50                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -10,-80                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s15,9                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
air.hittime  = 40             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = 0,0           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
p2stateno = 3570


[State 3900, 2]
type = PalFX
trigger1 = Time = 0
time = 30
add = -255,-255,-255

[State 3506, 2]
type = ChangeState
trigger1 = Time = 15
value = 3538

;--------------------------------------------------------
[Statedef 3538]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = -1,2                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 4
y = 0

[State 1901, 1]
type = ChangeState
trigger1 = Time = 4
value = 3539

;--------------------------------------------------------
[Statedef 3539]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 1901, 1]
type = ChangeState
trigger1 = Time = 20
value = 3540

;--------------------------------------------------------
[Statedef 3540];appear
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3102                     ;Change animation (Def: no change)
poweradd = 0 

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3502, 1]
type = Helper
trigger1 = Time = 0
ID = 3560
pos = -50, 0
postype = p1
stateno = 3560
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3550, 2];!!
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,2

[State 1901, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3541

;--------------------------------------------------------
[Statedef 3541]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3511                     ;Change animation (Def: no change)
poweradd = 0 

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3550, 2];perfect!!
type = PlaySnd
trigger1 = Time = 1
value = 4,25

[State 1901, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
               
;==========================================================================
;==========================================================================
;Hanzou states
[Statedef 3550];hanzou appear
type = S
movetype = A
velset = 0, 0   
anim = 3562
sprpriority = 4

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 70
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3550, 2];!!
type = PlaySnd
trigger1 = AnimElem = 1
value = 15,1

[State 3550,4];smoke
type = Explod
trigger1 = Time = 0
anim = 9112
pos = -10,5
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 3550, 2];smoke sound
type = PlaySnd
trigger1 = time = 0
value = 9,4

[State 3550, 2];sword1
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,4

[State 3550, 2];sword1
type = PlaySnd
trigger1 = AnimElem = 11
value = 5,5

[State 3550, 2];shout
type = PlaySnd
trigger1 = AnimElem = 14
value = 7,5

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Heavy
damage    = 20
getpower = 0
givepower = 40
guardflag = MA
hitflag = MA
pausetime = 0,70
sparkno = s30002 
guard.sparkno = s30040
sparkxy = -15,-60
hitsound   = S5,1
ground.type = Low
air.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0   
air.velocity = 0,0


[State slash effect] 
type = explod
trigger1 = AnimElem = 5
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = 0,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 15
attr = S, NA
animtype  = Heavy
damage    = 60
getpower = 0
givepower = 40
guardflag = MA
hitflag = MAF
pausetime = 6,100
sparkno = s30002 
guard.sparkno = s30040
sparkxy = -10,-30
hitsound   = S5,2
ground.type = High
air.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0


[State slash effect] 
type = explod
trigger1 = AnimElem = 15
trigger1 = movehit = 1
anim = 9003
persistent = 0
pos = -10,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 3550, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3551

;----------------------------------------------------------------
[Statedef 3551];punch
type = S
movetype = A
velset = 0, 0   
anim = 3502
sprpriority = 4

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 50
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 4
time = 25

[State 3550, 2];punch
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,7

[State 3550, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 40,100                  ;Time attacker pauses, time victim shakes
guard.pausetime = 30,5
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002      
guard.sparkno = s30040             ;Spark image group and no (Def: set above)
sparkxy = -10,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 0             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slowmotion]
type = Pause
trigger1 = movecontact = 1
time = 1
movetime = 1 
ignorehitpause = 0 

[State 3550, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3552

;-----------------------------------------------------------
[Statedef 3552] ;hanzou kick
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0
velset = 0,0,0
anim = 3505
ctrl = 0

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 50
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 5
time = 25

[State 3550, 2];foot wave
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,8

[State 3550, 2];shout
type = PlaySnd
trigger1 = AnimElem = 4
value = 15,8

[State 3551, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 20                  ;Damage that move inflicts
animtype = Up                  
air.animtype = Up
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = HL                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 40,40                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002        
guard.sparkno = s30040           ;Spark image group and no (Def: set above)
sparkxy = -10,-80                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 200             ;Time victim is in hit state
air.hittime  = 200 
ground.velocity = 0,-11             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State slowmotion]
type = Pause
trigger1 = movecontact = 1
time = 1
movetime = 1 
ignorehitpause = 0 

[State 3551, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3553

;-----------------------------------------------------------------------
[Statedef 3553];hanzou teleport
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 9102
ctrl = 0

[State 3800, Shadows]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 3552, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 3552, 1]
type = PosSet
trigger1 = AnimTime = 0
y = -100    

[State 3552, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3554

;--------------------------------------------------------
[Statedef 3554]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 8,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 1901, 1]
type = ChangeState
trigger1 = p2Dist X <= 10
value = 3555

;--------------------------------------------------------
[Statedef 3555]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,-10                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3550, 2];fly sound!!
type = PlaySnd
trigger1 = Time = 0
value = 15,11

[State 1901, 1]
type = ChangeState
trigger1 = p2Dist Y >= 6
value = 3556

[State 3554, 2]
type = ChangeState
trigger1 = Time = 45
value = 9305

;--------------------------------------------------------
[Statedef 3556];hanzou air strike
type = S
movetype = A
juggle = 0
velset = 3,-3 
anim = 3507
ctrl = 0
sprpriority = -3

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 0
time = 55
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
Trans = Add1

[State 3554, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage    = 40                   ;Damage that move inflicts
animtype = Hard
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 25,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = HL                   ;Flags on how move is to be guarded against
hitflag = HLA                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 50,50                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -10,-80               ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s15,9                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
air.hittime  = 40             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = 0,0          ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
p2stateno = 3570


[State 3900, 2]
type = PalFX
trigger1 = Time = 0
time = 30
add = -255,-255,-255

[State 3554, 2]
type = ChangeState
trigger1 = Time = 10
value = 9305
;--------------------------------------------------------------
[Statedef 3560];hanzou end appear
type = S
movetype = I
velset = 0, 0   
anim = 9101
sprpriority = 4

[State 3554, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3561
;------------------------------------
[Statedef 3561];hanzou end appear
type = S
movetype = I
velset = 0, 0   
anim = 3561
sprpriority = 4

[State 3550, 2];sou!!
type = PlaySnd
trigger1 = Time = 0
value = 15,0

[State 3550, 2];vanish
type = PlaySnd
trigger1 = AnimElem = 2
value = 9,2

[State 3554, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 9305

;--------------------------------
[Statedef 3570]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1511, Anim]
type = ChangeAnim
trigger1 = time = 0
value = 5050

[State 3900, 2]
type = PalFX
trigger1 = Time = 0
time = 30
add = -255,-255,-255

[State 3900, 2]
type = Envcolor
trigger1 = Time = 0
value = 250,250,250
time = 30
under = 1

[State 3100, sp]
type = SuperPause
trigger1 = time = 0
darken = 0
time = 29
anim = -1

[State 1511, Velocity]
type = VelSet
trigger1 = time = 0  
x = -1.57
y = -2

[State 1511, Gravity]
type = VelAdd
trigger1 = time >= 0
y = .10  

[State 1511, State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100