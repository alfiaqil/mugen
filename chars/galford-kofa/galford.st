
;===========================================================================
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)


[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 2]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101

;---------------------------------------------------------------------------
; RUN_FWD_BRAKE_(SLIDE)
[Statedef 101]
type = S
ctrl = 1
anim = 101

[State 101, 1]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 50,8

[State 101, 2]
type = VelAdd
trigger1 = Time >= 0
x = -.2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,8


[State 101, 3]
type = ChangeState
trigger1 = Time >= 20
value = 0

;===========================================================================
;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = S
anim = 105
ctrl = 0

[State 105, 1]
type = VelSet
trigger1 = (animelem = 1 || animelem = 2 || animelem = 4 || animelem = 5)
x = const(velocity.run.back.x)

[State 105, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 105, 4]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 105, 2]
type = MakeDust
trigger1 = Time = 0
pos = 0, 0
spacing = 0

;---------------------------------------------------------------------------
[Statedef 52]
type = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = CtrlSet
trigger1 = AnimElem = 1
value = 1


[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;NINJA_JUMP_LEFT
[Statedef 9090]
type    = A
movetype= I
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 9090

[State 9090]
type = ScreenBound
trigger1 = Time < 10 && prevstateno != 50
movecamera = 0
value = 1

[State 9090]
type = VelSet
trigger1 = Time < 10
x = 0
y = 0

[State 9090, 6]
type = ChangeAnim
trigger1 = Time = 10
value = 42
ctrl = 0

[State 9090,2]
type = VelSet
trigger1 = Time = 10
x = 4
y = -7

[State 9090,3]
type = CtrlSet
trigger1 = Time = 10
value = 1

[State 170, 2]
type = PlaySnd
trigger1 = Time = 10
value = 6,3

[State 9090, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------
;NINJA_JUMP_LEFT
[Statedef 9091]
type    = A
movetype= I
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 9091

[State 9091,1]
type = ScreenBound
trigger1 = Time < 10 && prevstateno != 50
movecamera = 0
value = 1

[State 9091,7]
type = VelSet
trigger1 = Time < 10
x = 0
y = 0

[State 9091, 2]
type = ChangeAnim
trigger1 = Time = 10
value = 43
ctrl = 0

[State 9091,3]
type = VelSet
trigger1 = Time = 10
x = -4
y = -7

[State 9091,4]
type = CtrlSet
trigger1 = Time = 10
value = 1

[State 170, 2]
type = PlaySnd
trigger1 = Time = 10
value = 6,3

[State 9091, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0


;---------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0,0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 170, 2]
type = PlaySnd
trigger1 = Time = 55
value = 1,11

;---------------------------------------------------------------------------
[Statedef 180]
type = S
ctrl = 0

[State 180, 1]
type = VarRandom
trigger1 = time = 0
v = 17
range = 0,7

[State 180, 2]
type = ChangeState
trigger1 = var(17) = [0,1]
value = 182

[State 180, 3]
type = ChangeState
trigger1 = var(17) = [2,3]
value = 181

[State 180, 4]
type = ChangeState
trigger1 = var(17) = [4,5]
value = 183

[State 180, 4]
type = ChangeState
trigger1 = var(17) = [6,7]
value = 184

;---------------------------------------------------------------------------
;Winposes
;---------------------------------------------------------------------------
;stand and laugh,hanzo
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5

[State 281, 3]
type = PlaySnd
trigger1 = Time = 4
value = 15,14

[State 182, 1];Hanzou re-apear
type = Explod
trigger1 = Time = 0
anim = 180
id = 182
pos = -40,0
postype = p1
bindtime = -1
removetime = 999
sprpriority = 1   
ownpal = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[Statedef 182];galford and hanzou blade pose
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 2];sword galford 
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = Time = 7
trigger3 = Time = 13
value = 5,3   

[State 182, 2];sword Hanzou 
type = PlaySnd
trigger1 = Time = 22
trigger2 = Time = 29
trigger3 = Time = 35
trigger4 = Time = 41
trigger5 = time = 47
value = 5,3   

[State 182, 2];galford 
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,8

[State 182, 2];hanzou
type = PlaySnd
trigger1 = AnimElem = 15
value = 15,0

[State 182, 1];Hanzou re-apear
type = Explod
trigger1 = Time = 20
anim = 183
id = 181
pos = 90,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 1   
ownpal = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[Statedef 183];SD winpose
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 183, 1];smoke galford
type = Explod
trigger1 = Time = 15
anim = 9112
id = 183
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 1   
ownpal = 1
ignorehitpause = 1

[State 183, 4];smoke
type = PlaySnd
trigger1 = Time = 15
value = 9,4

[State 183, 2];galford 
type = PlaySnd
trigger1 = Time = 55
value = 1,7

[State 183, 1];Hanzou 
type = Explod
trigger1 = Time = 0
anim = 186
id = 183
pos = 60,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 1   
ownpal = 1
ignorehitpause = 1

[State 183, 1];smoke Hanzou
type = Explod
trigger1 = Time = 15
anim = 9112
id = 183
pos = 60,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 3   
ownpal = 1
ignorehitpause = 1

[State 183, 4];smoke
type = PlaySnd
trigger1 = Time = 15
value = 9,4

[State 183, 2];galford 
type = PlaySnd
trigger1 = Time = 55
value = 15,4

;---------------------------------------------------------------------------
[Statedef 184];win angry and face hanzo
type = S
ctrl = 0
anim = 187
velset = 0,0

[State 184, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,8

[State 184, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7

[State 183, 1];Hanzou 
type = Explod
trigger1 = Time = 10
anim = 188
id = 183
pos = -35,0
postype = p1
bindtime = -1
removetime = 9999
sprpriority = -1   
ownpal = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Init
[Statedef 5900]
type = S

[State 191, 2]
type = ChangeState
triggerall = Time = 0
triggerall = roundno = 1
trigger1 = p2name = "hanzo" || p2name = "Hattori Hanzo" || p2name = "HANZOU" 
trigger2 = p4name = "hanzo" || p4name = "Hattori Hanzo" || p4name = "HANZOU"
value = 194

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 10
range = 75

[State 190, 2]
type = ChangeState
trigger1 = var(10) = [0,24]
trigger1 = roundno = 1
value = 191

[State 190, 3]
type = ChangeState
trigger1 = var(10) = [25,50]
trigger1 = roundno = 1
value = 192

[State 190, 3]
type = ChangeState
trigger1 = var(10) = [51,75]
trigger1 = roundno = 1
value = 193

;---------------------------------------------------------------------------
;Intro's
;---------------------------------------------------------------------------
;Hanzou vanishes while galford charges
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = Intro

[State 191, 4]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,3

[State 191, spsnd01]
type = PlaySnd
trigger1 = AnimElem = 15
trigger2 = Time = 80
trigger3 = Time = 150
trigger4 = Time = 200
trigger5 = Time = 240
trigger6 = Time = 290
value = 8, 4

[State 191, 1]
type = Explod
trigger1 = AnimElem = 14
anim = 1050
id = 2910
pos = 0,-1
postype = p1
bindtime = -1
removetime = 230
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 191, 1];Hanzou vanish
type = Explod
trigger1 = Time = 0
anim = 185
id = 2910
pos = -40,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 1   
ownpal = 1
ignorehitpause = 1

[State 191, 4];Hanzou>Hikari...
type = PlaySnd
trigger1 = Time = 102
value = 7,9

[State 191, 4];vanish smoke
type = PlaySnd
trigger1 = Time = 241
value = 9,4

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;---------------------------------------------------------------------------
;Hanzou spots the enemy
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = Intro

[State 192, 4];huu?!?!?!
type = PlaySnd
trigger1 = Time = 111
value = 15,2

[State 192, 4];izai...!!!!
type = PlaySnd
trigger1 = Time = 137
value = 15,1

[State 192, 4];Galford..tssssee
type = PlaySnd
trigger1 = Animelem = 8
value = 10,7

[State 192, 4];vanish teleport
type = PlaySnd
trigger1 = Time = 242
value = 9,2

[State 192, 1];Hanzou 
type = Explod
trigger1 = Time = 0
anim = 193
id = 2910
pos = 40,2
postype = p1
bindtime = -1
removetime = -2
sprpriority = 1   
ownpal = 1
ignorehitpause = 1

[State 192, 1];huu!!! 
type = Explod
trigger1 = Time = 111
anim = 9010
id = 2910
pos = 48,-128
postype = p1
bindtime = -1
removetime = 14
sprpriority = 6   
ownpal = 1
ignorehitpause = 1

[State 192, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;===========================================================================
[Statedef 193];Galford and Hanzou appear
type = S
ctrl = 0
anim = 194

[State 193,1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 4];come running...
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,4


[State 193, 1]
type = Explod
trigger1 = Time = 120
anim = 1050
id = 2910
pos = 0,-1
postype = p1
bindtime = -1
removetime = 180
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 193, spsnd01];Galford elec
type = PlaySnd
trigger1 = Time = 124
trigger2 = Time = 154
trigger3 = Time = 194
trigger4 = Time = 230
trigger5 = Time = 264
value = 8, 4

[State 193, 1];Lightning 
type = Explod
trigger1 = Time = 76
anim = 195
id = 2910
pos = 10,0
postype = p1
bindtime = -1
removetime = 63
sprpriority = 4
ontop = 1   
ownpal = 1
ignorehitpause = 1

[State 193, 4];Lightning crash
type = PlaySnd
trigger1 = Time = 80
value = 8,2

[State 193, 2];flame sound
type = PlaySnd
trigger1 = Time = 200
value = 7,8

[State 193, 1];Flame
type = Explod
trigger1 = Time = 200
anim = 9204
id = 193
pos = 78,3
postype = p1
bindtime = -1
removetime = 26
sprpriority = 4
ontop = 1   
ownpal = 1
ignorehitpause = 1

[State 193, 1];Hanzou
type = Explod
trigger1 = Time = 215
anim = 193
id = 193
pos = 95,3
postype = p1
bindtime = -1
removetime = -2
sprpriority = 3   
ownpal = 1
ignorehitpause = 1

[State 192, 4];Hanzou,huu?!?!?!
type = PlaySnd
trigger1 = Time = 325
value = 15,8

[State 192, 4];vanish teleport
type = PlaySnd
trigger1 = Time = 456
value = 9,2

[State 193, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;----------------------------------------------------------------------------
[Statedef 194];Galford vs Hanzou
type = S
ctrl = 0
anim = 196

[State 193,1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 4];tttsssssss
type = PlaySnd
trigger1 = AnimElem = 4
value = 10,7

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------
;Taunt slash mode
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0,0

[State 198, 1];hey pappy
type = PlaySnd
trigger1 = Time = 0
value = 0,6

[State 198, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Taunt bust mode
[Statedef 199]
type = S
ctrl = 0
anim = 198
velset = 0,0,0

[State 199, 1];hey come on
type = PlaySnd
trigger1 = Time = 0
value = 1,10

[State 199, 1]
type = Explod
trigger1 = AnimElem = 5
anim = 1050
id = 2920
pos = 0,-1
postype = p1
bindtime = -1
removetime = 35
sprpriority = 10   
ownpal = 1
ignorehitpause = 1

[State 199, spsnd01]
type = PlaySnd
trigger1 = Time = 33
value = 8, 4

[State 199, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;Normal attacks
;===========================================================================
[Statedef 205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 205                       ;Change animation (Def: no change)
poweradd = 30                    ;Power to add (Def: 0)

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 20                  ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30000
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,3

[State 205, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,3

[State 205, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,4

[State 205, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0,0
anim = 215

[State 215, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,4

[State 215, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,2

[State 215, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,5

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = hard
damage    = 45
guardflag = MA
hitflag = MAF                    
pausetime = 11,11
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-65
hitsound   = s5,1
guardsound = s5,6
ground.type = High
ground.slidetime = 14
ground.hittime  = 15
ground.velocity = -10
air.velocity = -2.2,-3.2




[State 215, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 210]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 225                       ;Change animation (Def: no change)
poweradd = 60                    ;Power to add (Def: 0)

[State 225, 1]
type = VelSet
trigger1 = Time = 0
x = 2

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 45                 ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12,12                  ;Time attacker pauses, time victim shakes
guard.pausetime = 3,3
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040          ;Spark image group and no (Def: set above)
sparkxy = -10,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,2                   ;Sound to play on hit
guardsound = s5,6                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 32             ;Time that the victim slides back
ground.hittime  = 35             ;Time victim is in hit state
ground.velocity = -10             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed


[State 225, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,5

[State 225, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,6

[State 225, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,1

[State 225,5]
type = PlaySnd
trigger1 = AnimElem = 19
value = 5,7

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 30                    ;Power to add (Def: 0)

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 20                ;Damage that move inflicts
animtype = light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30000
guard.sparkno = s30040	;Spark image group and no (Def: set above)
sparkxy = -5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed




[State 200, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3

[State 200, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,3

[State 200, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,4

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 216]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0,0
anim = 210

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,4

[State 210, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,2

[State 210, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,4

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 45
guardflag = MA
hitflag = MAF                   
pausetime = 7,8
sparkno = s30002
guard.sparkno = s30040		
sparkxy = -10,-60
hitsound   = s5,1
guardsound = s5,6
ground.type = High
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -10
air.velocity = -2.2,-3.2



[State 210,5]
type = PlaySnd
trigger1 = AnimElem = 12
value = 5,7

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 520]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 220                       ;Change animation (Def: no change)
poweradd = 80                    ;Power to add (Def: 0)

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 100,10                ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 15,15                 ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -5,-60                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,23                   ;Sound to play on hit
guardsound = s5,6                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 32             ;Time that the victim slides back
ground.hittime  = 40             ;Time victim is in hit state
ground.velocity = -10             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7

[State 220, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,6

[State 220, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = s111,4

[State 220,5]
type = PlaySnd
trigger1 = AnimElem = 14
value = 8,4

[State 220,5]
type = PlaySnd
trigger1 = AnimElem = 31
value = 5,7

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0,0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,3

[State 186, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,0

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = hard
damage    = 45
guardflag = MA
hitflag = MAF                    
pausetime = 12,12
sparkno = s30002
guard.sparkno = s30040                  
sparkxy = -6,-120
hitsound   = s6,2
guardsound = s6,0
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
guard.ctrltime = 20
ground.velocity = -10
guard.velocity = -6
air.velocity = -2,-4
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0



[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 240

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,3

[State 240, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,2

[State 240, 2]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = s30000			
guard.sparkno = s30040	
sparkxy = -2,-10
hitsound   = s6,1
guardsound = s6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20


[State 240, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 30
ctrl = 0
anim = 405

[State 400, 1]
type = PlaySnd
trigger1 = Time = 3
value = 5,3

[State 400, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,3

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = LH
pausetime = 8,8
sparkno = s30000                
guard.sparkno = s30040  
sparkxy = -2,-12
hitsound   = s5,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20




[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 40
ctrl = 0
anim = 410

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5,4

[State 410, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,2

[State 410, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,5

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = medium
hitflag = MAF
guardflag = LH
pausetime = 10,10
sparkno = s30000           
guard.sparkno = s30040      
sparkxy = -5,-15
hitsound   = s5,1
guardsound = s5,6
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -6
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20




[State 410,5]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,7

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 420

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,5

[State 420, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,6

[State 420, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,1

[State 420, 3]
type = PlaySnd
trigger1 = AnimElem = 9
value = 8,4

[State 420, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 45
animtype  = Hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s30002            
guard.sparkno = s30040     
sparkxy = -2,-18
hitsound   = s5,2
guardsound = s5,6
ground.type = low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -10
air.velocity = -2,-4


[State 420,5]
type = PlaySnd
trigger1 = AnimElem = 19
value = 5,7

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 30
ctrl = 0
anim = 430

[State 430, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 430, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,4

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 5,8
sparkno = s30000     
guard.sparkno = s30040                
sparkxy = -1,-5
hitsound   = s6,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20


[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 440

[State 440, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 440, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,2

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 45
guardflag = MAF
pausetime = 12,12
sparkno = s30002       
guard.sparkno = s30040             
sparkxy = -4,-40
hitsound   = s6,2
guardsound = s6,0
ground.type = trip
ground.slidetime = 13
ground.hittime  = 26
ground.velocity = -2,-4
air.velocity = -2,-4



[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1













[Statedef 435]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 267
;velset = -2,-2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = -8
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 15
x = 0

[State 440, 1]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 440, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,2

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = medium
damage    = 30
guardflag = MAF
pausetime = 10,10
sparkno = s30000            
guard.sparkno = s30040        
sparkxy = -4,-60
hitsound   = s6,2
guardsound = s6,0
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
guard.ctrltime = 20
ground.velocity = -8
guard.velocity = -6
air.velocity = -2,-4
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1










;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 20
ctrl = 0
anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 600, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,3

[State 600, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,4

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 12
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = s30000          
guard.sparkno = s30040     
sparkxy = -10,-58
hitsound   = s5,0
guardsound = s5,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -2,-4




[State 600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 60
ctrl = 0
anim = 610

[State 610, 2]
type = PlaySnd
trigger1 = Time = 0
value = 5,4

[State 610, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,5

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 45
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = s30002  
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -10,-51
hitsound   = s5,1
guardsound = s5,6
ground.type = High
ground.slidetime = 9
ground.hittime  = 12
ground.velocity = -4
air.velocity = -2,-4




[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

















[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 40
ctrl = 0
anim = 610

[State 610, 2]
type = PlaySnd
trigger1 = Time = 0
value = 5,4

[State 610, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,5

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 25
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = s30000   
guard.sparkno = s30040             ;Spark image group and no (Def: set above)
sparkxy = -10,-51
hitsound   = s5,1
guardsound = s5,6
ground.type = High
ground.slidetime = 9
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1,-7


[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9001
persistent = 0
pos = 50,-50
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1












;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 80
ctrl = 0
anim = 620

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = s111,4

[State 620, 3]
type = PlaySnd
trigger1 = AnimElem = 9
value = 8,4

[State 620, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,1

[State 620, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 100,10
guardflag = HAD
priority = 3
pausetime = 15,15
sparkno = s30002       
guard.sparkno = s30040          ;Spark image group and no (Def: set above)
sparkxy = -8,-40
hitsound   = s6,23
guardsound = s5,6
ground.type = High
ground.slidetime = 9
ground.hittime  = 15
ground.velocity = -4
air.velocity = -12,12
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7

[State 620, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1















[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 60
ctrl = 0
anim = 620

[State 620, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5,5

[State 620, 3]
type = PlaySnd
trigger1 = AnimElem = 9
value = 8,4

[State 620, 3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random < 500
value = 1,1

[State 620, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 45
guardflag = HAD
priority = 3
pausetime = 12,12
sparkno = s30002          
guard.sparkno = s30040       ;Spark image group and no (Def: set above)
sparkxy = -8,-40
hitsound   = s5,2
guardsound = s5,6
ground.type = High
ground.slidetime = 9
ground.hittime  = 15
ground.velocity = -4
air.velocity = -12,12

air.fall=1
fall.recover=0
air.recover=0

[State slash effect] 
type = explod
trigger1 = movehit = 1
anim = 9002
persistent = 0
pos = -10,-85
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 620, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1














;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 30
ctrl = 0
anim = 630

[State 630, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 0

[State 186, 3]
type = PlaySnd
trigger1 = Time = 0
value = 6, 3

[State 630, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = s30000         
guard.sparkno = s30040            
sparkxy = -5,-30
hitsound   = s6,1
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -2,-4


[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1





[Statedef 635]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 60
ctrl = 0
anim = 630

[State 630, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 0

[State 186, 3]
type = PlaySnd
trigger1 = Time = 0
value = 6, 3

[State 630, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 45
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = s30002      
guard.sparkno = s30040               
sparkxy = -5,-30
hitsound   = s6,1
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -10
air.velocity = -2,-4


[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1




;---------------------- dodge forward 110 ------------------------------

[Statedef 112]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 10002
sprpriority = -1

[State 110, 1]
type = Afterimage
trigger1 = Time = 3
time = 10
length = 5
PalBright = 0, 0, 0
PalContrast = 128,128,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
FrameGap = 4
Trans = Add1

[State 110, Vel Y]
type = VelSet
trigger1 = Time >= 6
x = 5

[State 110, 3]
type = VelSet
trigger1 = Time >= 23
x = 0

[State 110, 4]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 110, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------- dodge backward 120 ------------------------------

;Œã•û‹Ù‹}‰ñ”ð
[Statedef 122]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 10001

[State 355, 1]
type = VelSet
trigger1 = time >= 6
x = -5

[State 355, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 355, 1]
type = Afterimage
trigger1 = Time = 5
time = 10
length = 5
PalBright = 0, 0, 0
PalContrast = 128,128,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
FrameGap = 4
Trans = Add1

[State 355, 2]
type = VelSet
trigger1 = Time >= 24
x = 0

[State 355, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1