[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 =
v =     ;fv =
value = 0
;ignorehitpause =
;persistent =
;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0





;-

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0


[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[State 0, 5] ;Are you floating?
type = ChangeState
trigger1 = pos y < 0
value = 50

[State 0 , 5]
type = NotHitBy
trigger1 = prevstateno = 5220 && time = 1
value = SCA
time = 1


;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 180 , PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = s170,0


[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 180, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

;Cuando gans otros rounds
[State 180, 2]
type = ChangeState
trigger1 = Var(2) = [0,59]
trigger1 = Time = 0
value = 181

;Cuando gans otros rounds
[State 180, 2]
type = ChangeState
trigger1 = Var(2) = [60,99]
trigger1 = Time = 0
value = 182

;---------------------------------------------------------------------------
; Win pose 1 - Bow
; CNS difficulty: basic

[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0


[State 180 , PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 3
value = s180,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------

; INTRO controller
[Statedef 190]

[State 190, var]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190 , state]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 191

[State 190 , state]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 192



; Introduction
; CNS difficulty: basic

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, Explod]
type = Explod
trigger1 =AnimElem = 1
anim = 189
scale =1.1,1.1
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 181,1

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 180,1

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 181,0


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;===================================================================

; Introduction

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 190, snd]
type = PlaySnd
trigger1 = Time = 5
value = 190, 5

[State 190, snd]
type = PlaySnd
trigger1 = Time = 60
value = 70, 0

[State 190, snd1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
value = 190, 0

[State 190, snd2]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
value = 190, 1

[State 190, snd2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 190, 3

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 11
value = 182, 0

[State 1200, explod]
type = Explod
trigger1 = AnimElem = 10
anim = 2403
sprpriority = -1
scale = 0.6,0.6
postype = p1
pos = -80,-200
bindtime = -1
supermove = 1
ownpal = 1
removetime = 100
removeongethit = 1
ignorehitpause = 1

[State 5000 , 6]
type = Explod
trigger1 =  Time = 0
anim = 193
ignorehitpause = 1
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 1
supermove = 1

[State 5000 , 6]
type = Explod
trigger1 =  Time = 76
anim = 194
ignorehitpause = 1
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 1
supermove = 1

;luz desarne armadura
[State 191 , 6]
type = Explod
trigger1 = time = 85
anim = 7060
sprpriority = 0
postype = p1
pos = 45,-90
bindtime = 1
supermove = 1
ownpal = 1

[State 191, snd2]
type = PlaySnd
trigger1 = time = 70
value = 190, 6


[State 192, cloth luce1]
type = Explod
trigger1 = time = 14
pos = 0,0
anim = 198
sprpriority = 0


[State 192, snd]
type = PlaySnd
trigger1 = time = 80
value = 190, 3


[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0





;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2


[State 191, Snd 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = s195,0


[State 195, 1]
type = CtrlSet
trigger1 = Time = 113
value = 1


[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 182]
type = S
ctrl = 0
anim = 196
movetype = I

[State 181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,200]
flag     = roundnotover

;voice
[State 1010, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = S30,6
;volume = 0
;channel = -1
;lowpriority = -1
loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =



[State 196, Cosmos]
type = Explod
triggerall = NumExplod(8011) = 0
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
anim = 8011
id = 8011
pos = 0,0
scale = 1.1,1.1
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1



;--------------------------------------
; Recarrega Cosmo

[Statedef 24000]
type = S
movetype = I
physics = S
anim = 2400
velset = 0
ctrl = 0

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 900, Var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[State 24000]
type = Explod
trigger1 = Time = 0
anim = 2402
id= 2402
sprpriority = -1
postype = p1
pos = 0,0
bindtime = -1
supermove = 1
scale = 1.1,1.1
ownpal = 1
removetime = -1
ignorehitpause = 1
removeongethit = 1


[State 24000]
type = Explod
trigger1 = Time = 8
anim = 2403
id= 2402
sprpriority = -1
postype = p1
pos = -38,-150
scale =0.6,0.6
bindtime = -1
supermove = 1
ownpal = 1
removetime = -1
ignorehitpause = 1
removeongethit = 1


[State 700, ex]
type = Explod
trigger1 = Time = 6
anim = 70062
id = 2402
postype = p1
sprpriority = -1
removetime = -1
bindtime =- 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 30



[State 901, envshake]
type = EnvShake
trigger1 = time = 20
time = 30


;voice
[State 1010, PlaySnd]
type = PlaySnd
trigger1 = time=6
value = S30,7
;volume = 0
;channel = -1
;lowpriority = -1
loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 700, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,6

[State 700,p ]
type = PowerAdd
trigger1 = (time > 10) && (timemod = 3,0)
value = 34

[State 700,st ]
type = ChangeState
trigger1 = command != "holdcosmo"
trigger2 = power = 3000
value = 2401

[statedef 2401]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 2401
velset = 0,0


[State 2401,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 2402

[State 2401,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch
; CNS difficulty: easy
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 30                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)


[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 23, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s30000                     ;Spark anim no (Def: set above)
guard.sparkno = S30040
sparkxy = -10, -92              ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s2, 0                  ;Sound to play on hit
guardsound = s6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

 ;voice
[State 600, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 1

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
 ; Stand médium Punch

[Statedef 215]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 210                       ;Change animation (Def: no change)
poweradd = 40                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 32                 ;Damage that move inflicts, guard damage                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = S30002                      ;Spark anim no (Def: set above)
guard.sparkno = S30040
sparkxy = -10, -68               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s2,4                  ;Sound to play on hit
guardsound = s6, 0                ;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

 ;voice
[State 210, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 3

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Standing strong punch
; 
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

 ;voice
[State 220, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 4

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 45
guardflag = MA
pausetime = 8,8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-74
hitsound   = s2,2
guardsound = s6,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower=0



[State 220, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




















[Statedef 520]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 80
ctrl = 0
velset = 0,0
anim = 520
sprpriority = 2


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0


[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

 ;voice
[State 220, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 4

[State 220, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = 100,10
guardflag = MA
pausetime = 15,15
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-74
hitsound   = s2,8
guardsound = s6,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[State 220, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
















;---------------------------------------------------------------------------
; Standing light kick
; CNS difficulty: easy
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 32
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

 ;voice
[State 230, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 1

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -12,-70
hitsound   = s2, 0
guardsound = s6,0
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 8		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 230,2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing MEDIUME kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

 ;voice
[State 240, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 3

[State 240, 2]
type = HitDef
trigger1 = AnimElem= 3
attr = S, NA
animtype  = Medium
damage    = 20
guardflag = MA
pausetime = 5,5
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-85
hitsound   = s2,3
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 8		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -2,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12


[State 240, 2]
type = HitDef
trigger1 = AnimElem= 4
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-85
hitsound   = s2,4
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -2,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12


[State 240, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Standing HARD kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

 ;voice
[State 250, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 5

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 50
guardflag = MA
pausetime = 10,10
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-90
hitsound   = s2,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
 fall=1

[State 250, 2]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 250, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Crouching light punch

[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 30
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

  ;voice
[State 400, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 1

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 22
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-49
hitsound   = s2, 0
guardsound = s6,0
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12


[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching médium punch

[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 45
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

 ;voice
[State 410, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 2

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
priority  = 3
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 10,10
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-20
hitsound   = s2,4
guardsound = s6,0
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -2,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;Crouching strong punch

[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

 ;voice
[State 420, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 4



;This is the second hit, triggered on the 4th element of animation.
[State 420, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage    = 45
animtype  = Hard
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-78
hitsound   = s2,2
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 5
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 12


[State 420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 32
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

 ;voice
[State 430, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 1

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 25
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-8
hitsound   = s2, 0
guardsound = s6,0
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 430, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch médium Kick

[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = AnimElem= 2
value = 0, 5

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = Medium
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkno = S30002
guard.sparkno = S30040
sparkxy = -5,-10
hitsound   = s2,4
guardsound = s6,0
ground.hittime = 10
ground.type = trip
ground.slidetime = 9
ground.velocity = -2,-4
air.velocity = -2,-4




[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

---------------------------------------------------------------------------
;Crouch Strong Kick

[Statedef 445]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = AnimElem= 3
value = 0, 2



[State 450, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem=4
x = 5
y = 0
;ignorehitpause =
;persistent =



[State 450, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 38
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-10
hitsound   = s2,4
guardsound = s6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 450, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 30
ctrl = 0
anim = 610
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

 ;voice
[State 600, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 5


[State 600, 1]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 25
animtype =light
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-70
hitsound   = s2, 0
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

;---------------------------------------------------------------------------
;Jump médium Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 600
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

 ;voice
[State 610, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 2

[State 610, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
priority = 4
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-82
hitsound   = s2,4
guardsound = s6,0
animtype  = Medium
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -3,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12


;---------------------------------------------------------------------------
;Jump Hard Punch
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 620
sprpriority = 2

 ;vent
[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

 ;voice
[State 620, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 3


[State 620, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
priority = 4
pausetime = 8,8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-40
hitsound   = s2,2
guardsound = s6,0
animtype = hard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

;---------------------------------------------------------------------------
;Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 30
ctrl = 0
anim = 630
sprpriority = 2

 ;vent
[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

;voice
[State 630, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 5

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
animtype = Light
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -12,-40
hitsound   = s2, 0
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12
;---------------------------------------------------------------------------
;Jump médium Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

 ;voice
[State 640, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 2

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = Medium
damage    = 37
guardflag = HA
priority = 4
pausetime = 8,8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -15,-80
hitsound   = s2,4
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -3,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12
;---------------------------------------------------------------------------
;Jump HARD  Kick
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 80
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

 ;voice
[State 650, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 3


[State 650, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage    = 100,10
animtype = hard
guardflag = HA
priority = 4
pausetime = 15,15
sparkno = S30002
guard.sparkno = S30040
sparkxy = -15,-50
hitsound   = s2,8
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -4
air.velocity = -3.8,-7
fall =1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


;===========================================================================
; garde inpack
;===========================================================================



;===========================================================================
; LIGHT FIREBALLS
;===========================================================================
;LightFireball

[StateDef 1000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 70

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012


[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 4
anim =8087
ID =8087
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.1,1.1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;vent
[State 1000, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 2
value = S0,7
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =



;voie
[State 1000, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 4
value = S30,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 1000,]
type = Projectile
trigger1 = AnimElem = 4
projID =8088
projanim = 8088
projhitanim = 80890
projpriority = 3
projhits = 1
projmisstime = 2
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projscale = 0.8,0.8
projshadow = -1
offset = 25,-70
velocity = 7
attr = S, SP
damage   = 60
animtype = Light
guardflag = MA
hitflag = MAF
pausetime = 10,10
hitsound   = s2,8
guardsound = s6,0
sparkno = S30002
sparkxy = 70, -10
guard.sparkno = S30040
guardsound = S310,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
; MEDIUM FIREBALLS
;===========================================================================
; médium Fireball
; CNS difficulty: medium
[StateDef 1010]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 70

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 4
anim =8087
ID =8087
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.1,1.1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


;vent
[State 1010, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 2
value = S0,7
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =

;crie d oiso
;[State 1000, PlaySnd]
;type = PlaySnd
;trigger1 =AnimElem = 3
;value = S70,0
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


;voie
[State 1010, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 4
value = S30,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1010]
type = Projectile
trigger1 = AnimElem = 4
projID =8088
projanim = 8088
projhitanim = 80890
projpriority = 3
projhits = 1
projmisstime = 2
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
projscale = 0.8,0.8
offset = 25,-70
velocity = 10
attr = S, SP
damage   = 65
animtype = Light
guardflag = MA
hitflag = MAF
pausetime = 10,10
hitsound   = s2,8
guardsound = s6,0
sparkno = S30002
sparkxy = 70, -10
guard.sparkno = S30040
guardsound = S310,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3



[State 1010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;===========================================================================
; STRONG FIREBALLS
;===========================================================================--
; Strong Fireball
;
[StateDef 1020]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 80

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 1020, Explod]
type = Explod
trigger1 = AnimElem = 4
anim =8087
ID =8087
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.1,1.1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

  ;vent
[State 1020, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 2
value = S0,7
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =

;crie d oiso
;[State 1000, PlaySnd]
;type = PlaySnd
;trigger1 =AnimElem = 3
;value = S70,0
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =

;voie
[State 1020, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 4
value = S30,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 1020, 1]
type = Projectile
trigger1 = AnimElem = 4
projID =8088
projanim = 8088
projhitanim = -1
projpriority = 5
projmisstime = 2
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
projscale = 0.8,0.8
offset = 25,-70
velocity = 11
attr = A, HP
damage   = 70
animtype = medium
guardflag = M
hitflag = MAF
pausetime = 0,10
hitsound   = s2,8
guardsound = s6,0
sparkno = S30002
sparkxy = 70, -10
guard.sparkno = S30040
guardsound = S310,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
yaccel = .5


[State 1020, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;  Light eagle ruch
;===========================================================================
; Light  eagle ruch
[Statedef 1050 ]
type  = S
movetype = A
physics = S
juggle  = 8
poweradd = 70
velset = 0,0
anim  = 1050
ctrl  = 0
sprpriority = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 1050,]
type = Width
trigger1 = 1
edge = 20,0

;invincibilité
[State 1050, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA


 ;voice
[State 1050, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 2

;vent
[State 1050, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 1
value = S0,4
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


;voie
[State 1050, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 3
value = S30,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =




 ;axe2
[State 1050, ]
type = Velset
trigger1 = AnimElemtime(4) >= 0
x = 1
y = -5

;axe 3
[State 1050, ]
type = Veladd
trigger1 = AnimElemtime(4) >= 0
x = -1
y = -4



[State 1050, 3]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A

;flam snd
[State 1050 PlaySnd2]
type = PlaySnd
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
value = S3000,2
volume = 0
channel = -1


[State 1050, Explod]
type = Explod
trigger1 = AnimElem =2
anim = 8018
ID =8018
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority =3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


;paramaitre attaque
[State 1050 ]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem =3
ID =1050
attr = A, SA
animtype  = Hard
damage    = 60,6
priority  =2, Hit
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 5,20
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-60
hitsound   = s2,5
guardsound = s6,0
ground.type = HARD
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.type = Low
air.velocity = -3.5,-7
airguard.velocity = -3,-3
p2facing = 1
fall = 1



;transition 53
[State 1050, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051
;ctrl = 1

;---------------------------------------------------------------------------
;  atérisage  1
[Statedef 1051]
type = A
movetype = I
physics = A
anim = 1051
velset = 0,0
juggle = 7

[State 1051, ]
type = Posadd
trigger1 = AnimElem = 1
x = -60
y =-30

;Axe de  fin para pore au sol et transition
[State 1051, end axe]
type = ChangeState
trigger1 = Pos Y >= 20
value = 1052
;---------------------------------------------------------------------------
;end  sol
[Statedef 1052]
type = S
movetype = I
physics = S
anim = 1052
velset = 0,0
juggle = 7
;fin
[State 1052, end]
type = ChangeState
trigger1 = AnimTime = 0
value =0
ctrl = 1
;---------------------------------------------------------------------------
; atérisage  2
[Statedef 1057]
type = A
movetype = I
physics = A
anim = 1051
velset = 0,0
juggle = 7

[State 1051, ]
type = Posadd
trigger1 = AnimElem = 1
x = -60
y =-30
;Axe de  fin para pore au sol et transition
[State 1051, end axe]
type = ChangeState
trigger1 = Pos Y >= 20
value = 1052
;===========================================================================
; mediume eagle ruch
;===========================================================================
; mediume eagle ruch
[Statedef 1053 ]
type  = S
movetype = A
physics = S
juggle  = 8
poweradd = 80
velset = 0,0
anim  = 1050
ctrl  = 0
sprpriority = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012

[State 1053,]
type = Width
trigger1 = 1
edge = 20,0

;invincibilité
[State 1053, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA


 ;voice
[State 1053, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 2

     ;vent
[State 1053, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 1
value = S0,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


;voie
[State 1053, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 3
value = S30,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =




 ;axe2
[State 1053, ]
type = Velset
trigger1 = AnimElemtime(4) >= 0
x = 1
y = -5

;axe 3
[State 1053, ]
type = Veladd
trigger1 = AnimElemtime(4) >= 0
x = -1
y = -4



[State 1053, 3]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A

;flam snd
[State 1053 PlaySnd2]
type = PlaySnd
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
value = S3000,2
volume = 0
channel = -1


[State 1053, Explod]
type = Explod
trigger1 = AnimElem =2
anim = 8018
ID =8018
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority =3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


;paramaitre attaque
[State 1053 ]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem =3
ID =1050
attr = A, SA
animtype  = Hard
damage    = 70,7
priority  =2, Hit
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 5,20
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-60
hitsound   = s2,5
guardsound = s6,0
ground.type = HARD
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.type = Low
air.velocity = -3.5,-7
airguard.velocity = -3,-3
p2facing = 1
fall = 1



;transition 53
[State 1053, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051
;ctrl = 1
;===========================================================================
; Strong eagle ruch
;===========================================================================
; Strong eagle ruch
[Statedef 1054 ]
type  = S
movetype = A
physics = S
juggle  = 8
poweradd = 120
velset = 0,0
anim  = 1050
ctrl  = 0
sprpriority = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012


[State 1054,]
type = Width
trigger1 = 1
edge = 20,0

;invincibilité
[State 1054, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA


 ;voice
[State 1054, 1]
type = PlaySnd
trigger1 =  AnimElem=1
value = s30, 2

     ;vent
[State 1054, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 1
value = S0,4
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


;voie
[State 1054, PlaySnd]
type = PlaySnd
trigger1 =AnimElem = 3
value = S30,5
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =



 ;axe2
[State 1054, ]
type = Velset
trigger1 = AnimElemtime(4) >= 0
x = 1
y = -5

;axe 3
[State 1054, ]
type = Veladd
trigger1 = AnimElemtime(4) >= 0
x = -1
y = -4



[State 1054, 3]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A

;flam snd
[State 1054 PlaySnd2]
type = PlaySnd
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
value = S3000,2
volume = 0
channel = -1


[State 1054, Explod]
type = Explod
trigger1 = AnimElem =2
anim = 8018
ID =8018
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority =3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


;paramaitre attaque
[State 1054 ]
type = HitDef
triggerall = Anim = 1050
trigger1 = time = 0
ID =1050
attr = A, SA
animtype  = Hard
damage    = 90,8
priority  =2, Hit
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 5,20
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-60
hitsound   = s2,5
guardsound = s6,0
ground.type = HARD
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.type = Low
air.velocity = -3.5,-7
airguard.velocity = -3,-3
p2facing = 1
fall = 1



;transition 53
[State 1054, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051
;ctrl = 1
;===========================================================================
; Light Eagle Tough Lash
;===========================================================================
; Eagle Tough Lash
; CNS difficulty: easy
[Statedef 1210]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1209
velset = 0,0
juggle = 7


[State 1210, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 1209
value = 1214+(Movehit > 0)

;invincibilité
[State 1210, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;voie
[State 1210, PlaySnd1]
type = PlaySnd
trigger1 = Anim = 1209
trigger1 = AnimElem = 1
value = s3000, 2
volume = 0
channel = -1

;vent
[State 1210, PlaySnd2]
type = PlaySnd
trigger1 = Anim = 1209
trigger1 = AnimElem = 2
value = s0, 4
volume = 0
channel = -1


; traverser P2
[State 1210, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 1211
value = 0



;vel kik
[State 1210, Vel]
type = VelSet
trigger1 = Anim = 1214
trigger1 = AnimElem = 1
X = 7
Y = 7

[State 45, 5]
type = AfterImage
triggerall = Anim =1214
trigger1 =AnimElem = 1
time = 5
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 1210, Explod]
type = Explod
triggerall = Anim =1214
trigger1 =AnimElem = 1
anim =8019
;ID =8019
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1015 , Explod]
type = Explod
trigger1 = Time = 5
anim = 7066
id= 8014
postype = back
pos = 0, 0
sprpriority = -1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =16
supermove = 1

[State 1210, Explod]
type = Explod
triggerall = Anim =1214
trigger1 =AnimElem = 1
anim =7038
;ID =8019
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 0.9,0.9
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1


[State 1210, kik ]
type = HitDef
triggerall = Anim =1214
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 30
pausetime = 13,13
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -20,-59
hitsound = S2,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

[state  1210,change si en garde]
type = ChangeState
trigger1 =MoveGuarded=1
value = 1057
ctrl = 0

;Axe de  fin para pore au sol
[State 1210, end axe]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52

;===========================================================================
;medium Eagle Tough Lash
;===========================================================================
; Eagle Tough Lash
; CNS difficulty: easy
[Statedef 1211]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1209
velset = 0,0
juggle = 7


[State 1211, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 1209
value = 1214+(Movehit > 0)

;invincibilité
[State 1211, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;voie
[State 1210, PlaySnd1]
type = PlaySnd
trigger1 = Anim = 1209
trigger1 = AnimElem = 1
value = s3000, 2
volume = 0
channel = -1

;vent
[State 1211, PlaySnd2]
type = PlaySnd
trigger1 = Anim = 1209
trigger1 = AnimElem = 2
value = s0, 4
volume = 0
channel = -1


; traverser P2
[State 1211, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 1211
value = 0



;vel kik
[State 1211, Vel]
type = VelSet
trigger1 = Anim = 1214
trigger1 = AnimElem = 1
X = 7
Y = 7

[State 45, 5]
type = AfterImage
triggerall = Anim =1214
trigger1 =AnimElem = 1
time = 5
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1211, Explod]
type = Explod
triggerall = Anim =1214
trigger1 =AnimElem = 1
anim =8019
;ID =8019
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1211, kik ]
type = HitDef
triggerall = Anim =1214
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 60
pausetime = 13,13
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -20,-59
hitsound = S2,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

[state  1211,change si en garde]
type = ChangeState
trigger1 =MoveGuarded=1
value = 1057
ctrl = 0

;Axe de  fin para pore au sol
[State 1211, end axe]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52

;===========================================================================
;Strong Eagle Tough Lash
;===========================================================================
; Eagle Tough Lash
; CNS difficulty: easy
[Statedef 1212]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1209
velset = 0,0
juggle = 7


[State 1212, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 1209
value = 1214+(Movehit > 0)

;invincibilité
[State 1212, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;voie
[State 1210, PlaySnd1]
type = PlaySnd
trigger1 = Anim = 1209
trigger1 = AnimElem = 1
value = s3000, 2
volume = 0
channel = -1

;vent
[State 1212, PlaySnd2]
type = PlaySnd
trigger1 = Anim = 1209
trigger1 = AnimElem = 2
value = s0, 4
volume = 0
channel = -1


; traverser P2
[State 1212, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 1211
value = 0



;vel kik
[State 1212, Vel]
type = VelSet
trigger1 = Anim = 1214
trigger1 = AnimElem = 1
X = 7
Y = 7

[State 45, 5]
type = AfterImage
triggerall = Anim =1214
trigger1 =AnimElem = 1
time = 5
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1212, Explod]
type = Explod
triggerall = Anim =1214
trigger1 =AnimElem = 1
anim =8019
;ID =8019
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1




[State 1212, kik ]
type = HitDef
triggerall = Anim =1214
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = hard
damage = 90
pausetime = 13,13
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -20,-59
hitsound = S2,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

[state  1212,change si en garde]
type = ChangeState
trigger1 =MoveGuarded=1
value = 1057
ctrl = 0

;Axe de  fin para pore au sol
[State 1212, end axe]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52
;===========================================================================
;Light Toe Flash  fury multi kik
;===========================================================================
;fair les comande
;===========================================================================
; Light Toe Flash
[StateDef 1415]
 type = A
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1211





;VOIS snd
;[State 1415, PlaySnd2]
;type = PlaySnd
;trigger1 = Anim =1211
;trigger1 = AnimElem = 1
;value = S1216,1
;volume = 0
;channel = -1


  ;voie
[State 1210, PlaySnd1]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
value = s30, 5
volume = 0
channel = -1


;vel préparation
[State 1415, Vel]
type = VelSet
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
X = 0
Y = 0


[state 1415, end]
type = ChangeState
trigger1 = animTime = 0
value = 1416
ctrl = 0
;===========================================================================
;Light Toe Flash ( fury multi kik  ) DESANTE
;====================
 ;déssante
[StateDef 1416]
 type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1212

;vel désante kik
[State 1416, Vel]
type = VelSet
trigger1 = Anim = 1212
trigger1 = AnimElem = 1
time=90
X = 18
Y = 7

;paramaitre kik
[State 1416, kik ]
type = HitDef
triggerall = Anim =1212
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = hard
damage =3
pausetime = 8,12
guard.pausetime = 12,12
sparkno = S701
guard.sparkno = S30040
sparkxy = 0,-34
hitsound = S2,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0

[state 1416,change si en garde]
type = ChangeState
trigger1 =MoveGuarded=1
value = 1057
ctrl = 0

;state de change si p2 touché
[state 1416,change si]
type = ChangeState
;trigger1 =  p2movetype = H
trigger1 = P2Dist Y <=55;MoveContact =1 P2Dist
trigger1 = P2Dist x <=55
;P2Dist = 0,1
value = 1424  ;state d ' ataque
ctrl = 0

;state de fin si p2 nes pas toucher
[state 1416, end]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52
ctrl = 0
;===========================================================================
;Light  Toe Flash ( fury multi kik  )  ATAQUE
;====================
;ataque
[StateDef 1418]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1213


;hite def de l'attaque
[State  1418 , 1]
type = HitDef
trigger1 = Anim= 1213
attr = A, A
damage =2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4,20
sparkno = S30002
guard.sparkno = S30040
sparkxy = -25, -30;Y-offset for the spark rel. to p1
hitsound = S2,4
guardsound = s6,0
ground.type = High
ground.slidetime = -5
ground.hittime  = 50
ground.velocity = 0,20
airguard.velocity = -1.9,10
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
down.bounce = 1




 [State 1418, ChangeAnim]
type = ChangeAnim
trigger1 =AnimElem = 12
value = 1418
;elem = 1
;ignorehitpause =
;persistent =

[State 1418, VelSet]
type = VelSet
trigger1 = Anim = 1051
trigger1 = AnimElem=1
x = -5
y = -3
;ignorehitpause =
;persistent =


;Change ver 52
[state  1418, end]
type = ChangeState
trigger1 =animTime = 0
value = 1057;52
ctrl = 0
;===========================================================================
;medium  Toe Flash ( fury multi kik  )
;===========================================================================
;===========================================================================
; medium  Toe Flash
[StateDef 1419]
 type = A
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1211





;VOIS snd
;[State 1415, PlaySnd2]
;type = PlaySnd
;trigger1 = Anim =1211
;trigger1 = AnimElem = 1
;value = S1216,1
;volume = 0
;channel = -1


  ;voie
[State 1419, PlaySnd1]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
value = s30, 5
volume = 0
channel = -1


;vel préparation
[State 1419, Vel]
type = VelSet
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
X = 0
Y = 0


[state 1419 end]
type = ChangeState
trigger1 = animTime = 0
value = 1420
ctrl = 0
;===========================================================================
;médium  Toe Flash ( fury multi kik  )  DESSANTE
;====================
 ;déssante
[StateDef 1420]
 type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1212

;vel désante kik
[State 1420, Vel]
type = VelSet
trigger1 = Anim = 1212
trigger1 = AnimElem = 1
X = 18
Y = 7

;paramaitre kik
[State 1420, kik ]
type = HitDef
triggerall = Anim =1212
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = hard
damage =3
pausetime = 8,12
guard.pausetime = 12,12
sparkno = S701
guard.sparkno = S30040
sparkxy = 0,-34
hitsound = S2,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0

[state 1420,change si en garde]
type = ChangeState
trigger1 =MoveGuarded=1
value = 1057
ctrl = 0

;state de change si p2 touché
[state 1420,change si]
type = ChangeState
;trigger1 =  p2movetype = H
trigger1 = P2Dist Y <=55;MoveContact =1 P2Dist
trigger1 = P2Dist x <=55
 ;P2Dist = 0,1
value = 1424  ;state d ' ataque
ctrl = 0

;state de fin si p2 nes pas toucher
[state 1420, end]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52
ctrl = 0
;;===========================================================================
;médium  Toe Flash ( fury multi kik  )  ATAQUE
;====================
;ataque
[StateDef 1421 ]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1213





;hite def de l'attaque
[State  1421  , 1]
type = HitDef
trigger1 = Anim= 1213
attr = A, A
damage = 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4,20
sparkno = S30002
guard.sparkno = S30040
sparkxy = -25, -30;Y-offset for the spark rel. to p1
hitsound = S2,4
guardsound = s6,0
ground.type = High
ground.slidetime = -5
ground.hittime  = 50
ground.velocity = 0,20
airguard.velocity = -1.9,10
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
down.bounce = 1




 [State 1421 , ChangeAnim]
type = ChangeAnim
trigger1 =AnimElem = 12
value = 1418
;elem = 1
;ignorehitpause =
;persistent =

[State 1421 , VelSet]
type = VelSet
trigger1 = Anim = 1051
trigger1 = AnimElem=1
x = -5
y = -3
;ignorehitpause =
;persistent =


;Change ver 52
[state  1421 , end]
type = ChangeState
trigger1 =animTime = 0
value = 1057;52
ctrl = 0
;===========================================================================
;Strong   Toe Flash ( fury multi kik  )
;===========================================================================
;===========================================================================
; Strong  Toe Flash
[StateDef 1422]
 type = A
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1211





;VOIS snd
;[State 1415, PlaySnd2]
;type = PlaySnd
;trigger1 = Anim =1211
;trigger1 = AnimElem = 1
;value = S1216,1
;volume = 0
;channel = -1


  ;voie
[State 1422, PlaySnd1]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
value = s30, 5
volume = 0
channel = -1


;vel préparation
[State 1422, Vel]
type = VelSet
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
X = 0
Y = 0


[state 1422 end]
type = ChangeState
trigger1 = animTime = 0
value = 1423
ctrl = 0
;===========================================================================
;Strong   Toe Flash ( fury multi kik  )DESSANTE
;====================
 ;déssante
[StateDef 1423]
 type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1212

;vel désante kik
[State 1423, Vel]
type = VelSet
trigger1 = Anim = 1212
trigger1 = AnimElem = 1
X = 18
Y = 7

;paramaitre kik
[State 1423, kik ]
type = HitDef
triggerall = Anim =1212
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = hard
damage =3
pausetime = 8,12
guard.pausetime = 12,12
sparkno = S701
guard.sparkno = S30040
sparkxy = 0,-34
hitsound = S2,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0

[state 1423,change si en garde]
type = ChangeState
trigger1 =MoveGuarded=1
value = 1057
ctrl = 0

;state de change si p2 touché
[state 1423,change si]
type = ChangeState
;trigger1 =  p2movetype = H
trigger1 = P2Dist Y <=55;MoveContact =1 P2Dist

trigger1 = P2Dist x <=55
 ;P2Dist = 0,1
value = 1424  ;state d ' ataque
ctrl = 0

;state de fin si p2 nes pas toucher
[state 1420, end]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52
ctrl = 0
;===========================================================================
;Strong   Toe Flash ( fury multi kik  )ATAQUE FIN
;====================
;ataque
[StateDef 1424]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1213





;hite def de l'attaque
[State  1424  , 1]
type = HitDef
trigger1 = Anim= 1213
attr = A, A
damage = 3
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4,20
sparkno = S30002
guard.sparkno = S30040
sparkxy = -25, -30;Y-offset for the spark rel. to p1
hitsound = S2,4
guardsound = s6,0
ground.type = High
ground.slidetime = -5
ground.hittime  = 50
ground.velocity = 0,20
airguard.velocity = -1.9,10
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
down.bounce = 1




 [State 1424, ChangeAnim]
type = ChangeAnim
trigger1 =AnimElem = 12
value = 1418
;elem = 1
;ignorehitpause =
;persistent =

[State 1424 , VelSet]
type = VelSet
trigger1 = Anim = 1051
trigger1 = AnimElem=1
x = -5
y = -3
;ignorehitpause =
;persistent =


;Change ver 52
[state  1424 , end]
type = ChangeState
trigger1 =animTime = 0
value =1057 ;52
ctrl = 0

;===========================================================================
; Ryû Seî Ken - level 1
;===========================================================================

[StateDef 3020]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3020
poweradd = -1000




[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 30
movetime = 0
darken = 0

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17000
pos = -7,-74
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17010
pos = -7,-74
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,0

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
time = 40
under = 1
supermove = 1


[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012


[State 100,Explod]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 12
ID = 8014
anim = 7063
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.6,.85
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 12
pos = 0,0
anim = 7065
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1


 ;voice
[State 3020,snd1 ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,1



;cosmos
[State 3020, Explod1]
type = Explod
trigger1 =AnimElem=5
anim =7068
ID = 7012
;pos = 0,0
postype = p1
;facing = 1
;vfacing = 1
bindtime = -1
;vel = 20,0
;accel = 0,0
;random = 0,0
removetime = 35
;supermove =1
pausemove=1
scale = .9,.9
sprpriority = 1
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0
;ignorehitpause =
;persistent =




[State 3020, VelSet]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem =7
trigger1 = Time = 50
darken = 3
x = 24
;ignorehitpause =
;persistent =






[State 3020, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 35
FrameGap = 2
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

;paramaitre punche fury
[State 3020,2]
type = HitDef
trigger1 = Anim =3020
;trigger6= Time =
attr = S, NA
damage = 15,1
getpower = 20
givepower = 20
animtype = hard
guardflag = HAl
;pos =0,0
guard.pausetime =15,15
hitflag = MAF
;priority = 1, hit
pausetime =5, 5
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10, -76
;;Y-offset for the spark rel. to p1
hitsound = s2, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime =15
;ground.slide= 1
ground.hittime  =7
ground.velocity =  -6
air.velocity = -2.2,-3.2
air.hittime = 7
airguard.velocity = -2.2,-3.2
p2facing = 1
down.hittime = 7
Palfx.time          = 10
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1


 [state 3020, end]
type = ChangeState
trigger1 = animTime = 0
value = 3021
ctrl = 1

;===========================================================================
;coup final
 [StateDef 3021]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3000
poweradd = 20

 [State 3036, NoHit]
type = NotHitBy
trigger1 = anim = 3021
value = SCA

; traverser P2
[State 3036, PushOff]
type = PlayerPush
trigger1 = anim = 3021
value = 0
;trigger1 = p2stateno = [5000,5017]
;loop %80=0
;Time%80=0


[State 3021, VelSet]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem =7
trigger1 = Time = 50
darken = 3
x = 20

 [State 3021, AfterImage]
type = AfterImage
trigger1 = time = 2
time = 35
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 100,Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
ID = 8014
anim = 7063
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.6,.85
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 200, 2]
type = Explod
trigger1 = MoveHit
anim = 7064
pos = 0,0
postype = p2
bindtime = 12
removetime =40
scale = 0.6,0.6
supermove = 0
persistent = 0
sprpriority = 3
removeongethit = 0


[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
pos = 0,0
anim = 7065
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

;cosmos
[State 3021, Explod1]
type = Explod
trigger1 =AnimElem=1
anim =7014
ID = 7011
;pos = 0,0
postype = p1
;facing = 1
;vfacing = 1
bindtime = -1
;vel = 20,0
;accel = 0,0
;random = 0,0
;removetime = 300
;supermove
pausemove=1
;scale = 1.9,1.9
sprpriority = 0
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0
;ignorehitpause =
;persistent =

;paramaitre punche fury
[State 3021,2]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem =7
;trigger2 = movecontact
attr = S, NA
damage = 60,6
getpower = 20
givepower = 20
animtype = DiagUp
guardflag = HA
pos =0,0
guard.pausetime =15, 100
hitflag = MAF
priority = 1, Miss
;Hit/Miss/Dodge type (Def: Hit)
pausetime =15, 70
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -76
;;Y-offset for the spark rel. to p1
hitsound = s2,8
mindist = -1 ,-1
maxdist = -1,-1
guardsound = s6, 0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity =  0, -10
p2facing = 1
Palfx.time          = 90
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
fall.recover= 0
fall= 1


[State 3021, ChangeAnim]
type = Changestate
trigger1 = AnimTime = 0
value = 3022


;===========================================================================
;Pose Fun
 [StateDef 3022]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3010


[State 3022, 1] ;Change to stand state when done
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;===========================================================================
; hyper Ryû Seî Ken  level 3
;===========================================================================
; hyper Ryû Seî
[StateDef 3000]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -3000

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012





[State 2000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
;movetime = 20
anim = -1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
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

;[State 863, 1]
;type = SuperPause
;trigger1 = AnimElem = 1
;anim = -1
;time = 30
;movetime = 0
;darken = 0

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17200
pos = -9,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17210
pos = -9,-70
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
time = 40
under = 1
supermove = 1



;=================================





[State 100,Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
ID = 8014
anim = 7063
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.6,.85
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
pos = 0,0
anim = 7065
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1


;=================================

;=================================
 ;déplacmen ver l'avent
[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem =7
trigger1 = Time = 50
darken = 3
x = 30
;ignorehitpause =
;persistent =
; traverser P2
;=================================
[State 3000, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 3000
value = 0
;=================================

[State 3000, AfterImage]
type = AfterImage
trigger1 = time = 2
time = 15
FrameGap = 2
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
 ;=================================
   ; traverser P2
[State 3036, PushOff]
type = PlayerPush
trigger1 =AnimElem =7
value = 0
;=================================

;simulateur de hit
 [State 3000, HitAdd]
type = HitAdd
trigger1 = Anim = 3000
anim = 30002
trigger1 = Time
trigger1 = Time%1 = 0
affectteam = E         ;B,E,F
value = 15
;=================================


 ;voice
[State 3000,snd1 ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,1
;volume = -12
;channel = 0

 ;=================================
 ;son inpacte hit
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact =1
;trigger1 =3000
;trigger1 = Time
;trigger1 = Time%5 = 0
;trigger2 =  AnimElem = 5
;trigger2 = Anim = 3000;&& Time=50
;;trigger2=AnimElemTime
;loop =  1 = time =9
;time = 70
value =s2,7
;volume = 50000
;=================================

;son inpacte gard
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = p2stateno = [120,152]
trigger1 = MoveContact =1
;trigger1 = Anim = 3000
;trigger1 = MoveContact =1
;anim = 30002;7010
;trigger1 = Time
;trigger1 = Time%1 = 0
;time = 70
value =6,0
;volume = 200
;channel = 0
;lowpriority =1
;freqmul = 1.0
;loop = 1
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


;=================================

;paramaitre punche fury
[State 3000,2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 400,40
guard_damage=5
affectteam = E          ;B,E,F
getpower = 20
givepower = 20
animtype = hard
guardflag = HA
pos =0,0
guard.pausetime =15, 100
hitflag = MAF
priority = 1, Miss
;Hit/Miss/Dodge type (Def: Hit)
pausetime =15, 70
sparkno = s7033
guard.sparkno = S30040
sparkxy = 0, -60
;;Y-offset for the spark rel. to p1
hitsound =S250,1
mindist = -1 ,-1
maxdist = -1,-1
guardsound = s6, 0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 10
ground.velocity =  0, -10
air.type =Trip
air.hittime =  10
air.velocity =0, -10
p2facing = 1
Palfx.time          = 70
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
fall.recover= 0
fall= 1



;trainé d inpacte
[state 3000, HitSparks p2.1]
type = Explod
;trigger1 = p2stateno =[5000,5300]
;trigger1 = Anim = 3000
trigger1 = MoveContact =1
affectteam = E
anim = 30002;7010
trigger1 = Time
ignorehitpause = 6
postype = p2
bindtime = 5
random = 60,100
ontop = 1
ownpal = 1
removeongethit=1
pos = 0,-50

 ;inpacte sur p2
[state 3000, HitSparks p2.2]
type = Explod
;trigger1 = Anim = 3000
;trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact =1
affectteam = E
anim = 30002;7010
trigger1 = Time
trigger1 = Time%4
ignorehitpause = 6
postype = p2
bindtime = 5
random = 60,100
ontop = 1
ownpal = 1
removeongethit=1
pos = 0,-50



;trainé gard
[state 3000, HitSparks p2.1]
type = Explod
;trigger1 = p2stateno = [120,152]
;trigger1 = Anim = 3000
trigger1 = MoveContact =1
affectteam = E
anim = 30002;7010
trigger1 = Time
ignorehitpause = 6
postype = p2
bindtime = 5
random = 60,100
ontop = 1
ownpal = 1
removeongethit=1
pos = 0,-50


 ;inpacte gard p2
[state 3000, HitSparks p2.2]
type = Explod
;trigger1 = Anim = 3000
;trigger1 = p2stateno = [120,152]
trigger1 = MoveContact =1
affectteam = E
anim = 30002;7010
trigger1 = Time
trigger1 = Time%4
ignorehitpause = 6
postype = p2
bindtime = 5
random = 60,100
ontop = 1
ownpal = 1
removeongethit=1
pos = 0,-50

   ;désactivé
;inpacte gard p3 métor lumineu
;[state 3000, HitSparks p2.2]
;type = Explod
;trigger1 = Anim = 3000
;trigger1 = p2stateno = [120,152]
;affectteam = E
;anim = 8014
;trigger1 = Time
;trigger1 = Time%4
;ignorehitpause = 6
;postype = p2
;bindtime = 5
;random = 60,100
;ontop = 1
;ownpal = 1
;removeongethit=1

 ;inpacte sur p3 métor lumineu
;[state 3000, HitSparks p2.2]
;type = Explod
;trigger1 = Anim = 3000
;trigger1 = p2stateno = [5000,5999]
;affectteam = E
;anim = 8014
;trigger1 = Time
;trigger1 = Time%4
;ignorehitpause = 6
;postype = p2
;bindtime = 5
;random = 60,100
;ontop = 1
;ownpal = 1
;removeongethit=1




;state anime fun condision
;désactivé
;[State 3000, ChangeAnim]
;type = Changestate
;trigger1 = p2stateno = [5000,5012]
;value = 3022
;ctrl = 0

  ;fin
 ;[State 3000, ChangeAnim]
;type = Changestate
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1


;state anime fun san condition
[State 3021, ChangeAnim]
type = Changestate
trigger1 = AnimTime = 0
value = 3022

;=================================
; BAK JUP 1
;=================================
;BAK JUP

[StateDef 4004]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1051
poweradd = -1500

;vel dépar
[State 4004, VelSet]
type = VelSet
trigger1 = Anim = 1051
trigger1 = AnimElem=1
x = -7
y = -3
;ignorehitpause =
;persistent =


[state 4004, end]
type = ChangeState
trigger1 = animTime = 0
value = 50
ctrl = 0

;===========================================================================
;fin
;===========================================================================


[StateDef 3057]
 type = s
movetype= A
physics = s
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1052




;Change ver 8002
[state 3057, end]
type = ChangeState
trigger1 =animTime = 0
value = 0
ctrl = 1

;===========================================================================
; "medium hyper Eagle Tough Lash"
;===========================================================================
; "medium hyper Eagle Tough Lash"
; CNS difficulty: easy
[Statedef 3062]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1209
velset = 0,-5
juggle =10
 poweradd = -2000
 
;SuperPause
[State 3062, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
trigger2 =Time = -1
Time =80
anim =-1
pos = 0,0
move =20
darken = 50
;p2defmul = 0
;poweradd = 0
unhittable = 1
;endcmdbuftime = (winmugen only)
;pausebg =  (winmugen only)
;ignorehitpause =
;persistent =



[State 3062, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 1209
value = 1210+(Movehit > 0)

;invincibilité
[State 3062, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;VOIS snd
[State 3062, PlaySnd2]
type = PlaySnd
trigger1 = Anim =1209
trigger1 = AnimElem = 1
value = S1216,1
volume = 0
channel = -1


[State 1015 , Explod]
type = Explod
trigger1 = Time = 0
anim = 8013
id= 8014
postype = back
pos = 0, 0
sprpriority = -4
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =105
supermove = 1


[State 1015 , Explod]
type = Explod
trigger1 = Time = 0
anim = 7066
id= 8014
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =105
supermove = 1


[State 1015 , Explod]
type = Explod
trigger1 = Time = 0
anim = 7039
id= 8014
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
scale = 0.8,0.8
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80
supermove = 1

[State 3063, Explod]
type = Explod
trigger1 = Time = 0
anim = 8086
ID =8086
pos = -30,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -3
supermove
pausemove
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;flashe
[State 3062, Explod]
type = Explod
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
anim = 8017
ID =8017
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1015 , Explod]
type = Explod
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
anim = 7066
id= 8014
postype = back
pos = 0, 0
sprpriority = -1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 5
supermove = 1



; traverser P2
[State 3062, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 1210
value = 0


;vel kik
[State 3062, Vel]
type = VelSet
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
X = 15
Y = 11

;éfait de multiplication
[State 3062, AfterImage]
type = AfterImage
trigger1 = time = 2
time = 12
FrameGap = 2
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

;cri oisau
[State 3062, PlaySnd]
type = PlaySnd
triggerall =Anim = 1210
trigger1 = AnimElem = 1
value = S70,0
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 3062, kik ]
type = HitDef
triggerall = Anim =1210
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 20, Dodge
animtype = hard
damage = 290
pausetime = 8,8
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -20,-60
hitsound = S2,2
guardsound = S6,0
ground.type = High
air.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8,20
airguard.velocity = -1.9,10
air.velocity = -1.4,-3
down.velocity = 0,0
down.bounce = 1
fall = 1

[State 250, 3]
type = Explod
trigger1 = MoveHit
anim = 7061
pos = 160,220
postype = back
bindtime = 12
supermove = 1
persistent = 0
sprpriority = 1
removeongethit = 0


;Axe de  fin para pore au sol
[State 3062, end axe]
type = ChangeState
trigger1 =Pos Y >= -2
value = 3057;52


;===========================================================================
; "Strong hyper Eagle Tough Lash"
;===========================================================================
;"Strong hyper Eagle Tough Lash"
; CNS difficulty: easy
[Statedef 3063]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1209
velset = 0,-5
juggle =10
poweradd = -3000


[State 2000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
;movetime = 20
anim = -1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
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

;[State 863, 1]
;type = SuperPause
;trigger1 = AnimElem = 1
;anim = -1
;time = 30
;movetime = 0
;darken = 0

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17200
pos = -5,-106
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17210
pos = -5,-106
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
time = 40
under = 1
supermove = 1




[State 3063, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 1209
value = 1210+(Movehit > 0)


;VOIS snd
[State 3063, PlaySnd2]
type = PlaySnd
trigger1 = Anim =1209
trigger1 = AnimElem = 1
value = S1216,1
volume = 0
channel = -1

;VOIS snd
[State 3063, PlaySnd2]
type = PlaySnd
trigger1 = Anim =1209
trigger1 = AnimElem = 1
value = S3000,11

;flashe
 [State 3063, Explod]
type = Explod
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
anim = 8017
ID =8017
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


; traverser P2
[State 3063, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 1210
value = 0



;vel kik
[State 3063, Vel]
type = VelSet
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
X = 15
Y = 12

;éfait de multiplication
[State 3062, AfterImage]
type = AfterImage
trigger1 = time = 2
time = 12
FrameGap = 2
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

;cri oisau
[State 3063, PlaySnd]
type = PlaySnd
triggerall =Anim = 1210
trigger1 = AnimElem = 1
value = S70,0
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 3063, kik ]
type = HitDef
triggerall = Anim =1210
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 20, Dodge
animtype = hard
damage = 400,40
pausetime = 8,8
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -20,-60
hitsound = S2,2
guardsound = S6,0
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8,20
airguard.velocity = -1.9,10
air.velocity = -1.4,-3
down.velocity = 0,0
down.bounce = 1
fall = 1



;Axe de  fin para pore au sol
[State 3063, end axe]
type = ChangeState
trigger1 =Pos Y >= -2
value = 3057;52


;===========================================================================
;SAINT KO
;===========================================================================
; SAINT KO  Eagle Toe Flash
;===========================================================================
; Eagle Toe Flash  voir vertion arise
 ;dépar bon ariére
[StateDef 4000]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1057
poweradd = -3000

 ;=========================
[State 4000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 12
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

;=========================
;vel dépar
[State 4000, VelSet]
type = VelSet
trigger1 = Anim = 1057
trigger1 = AnimElem=1
x = -2
y = -2
;ignorehitpause =
;persistent =

;=========================
[state 4000, end]
type = ChangeState
trigger1 = animTime = 0
value = 4001
ctrl = 0

;============================================================
;PREPARATION
;============================================================
;PREPARATION
[StateDef 4001]
 type = A
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1211

;=========================
[State 4001, SuperPause]
type = SuperPause
trigger1 =   AnimElem = 1
time =60
anim =-1
;sound =
;pos =
;move =
darken = 1
p2defmul = 0
poweradd = 0
unhittable = 1
;endcmdbuftime = (winmugen only)
;pausebg =  (winmugen only)
;ignorehitpause =
;persistent =

;=========================
;VOIS snd
[State 4001, PlaySnd2]
type = PlaySnd
trigger1 = Anim =1211
trigger1 = AnimElem = 1
value = S1216,1
volume = 0
channel = -1


;=========================
;aigle
[State 4001, Explod]
type = Explod
trigger1 = Time = 0
anim = 8086
ID =8086
pos = -30,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 0.8,0.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;=========================
[State 4001, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
;=========================
;vel préparation
[State 4001, Vel]
type = VelSet
trigger1 = Anim = 1211
trigger1 = AnimElem = 1
X = 0
Y = 0
;=========================
[state 4001, end]
type = ChangeState
trigger1 = animTime = 0
value = 4002
ctrl = 0
;============================================================
;DESSANTE
;============================================================
;DESSANTE
[StateDef 4002]
 type = A
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1212
;=========================
;vel désante kik
[State 4002, Vel]
type = VelSet
trigger1 = Anim = 1212
trigger1 = AnimElem = 1
X = 50
Y =50
;=========================
[State 4002, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
;=========================
;paramaitre kik
[State 4002, kik ]
type = HitDef
triggerall = Anim =1212
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 30
pausetime = 12,16
guard.pausetime = 12,12
sparkno = S701
guard.sparkno = S30040
sparkxy = 0,-34
hitsound = S2,4
;mindist =0,;0
;maxdist = 0,;0
;snap =5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
;=========================
;state de change si p2 est en gard
[state 4002,change si]
type = ChangeState
trigger1 =MoveGuarded=1
value = 4004
ctrl = 0

;state de change si p2 est touché
[state 4002,change si]
type = ChangeState
;trigger1 =  p2movetype = H
trigger1 = P2Dist Y <=55;MoveContact =1 P2Dist
trigger1 = P2Dist x <=55
 ;P2Dist = 0,1
value = 4003 ;state d ' ataque
ctrl = 0


;state de fin si p2 nes pas toucher
[state 4002 end]
type = ChangeState
trigger1 = Pos Y >= -4
value = 52
ctrl = 0



;============================================================
 ;ATAQUE
;============================================================
 ;ATAQUE
[StateDef 4003]
type = A
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1213
;=========================
;invincibilité
[State 4003, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA
;=========================
[State 4003, AfterImage]
type = AfterImage
trigger1 = time = 2
time = 35
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
;=========================
;hite def de l'attaque
[State  4003, 1]
type = HitDef
trigger1 = Anim= 1213
attr = S, HA
damage = 10, 0
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4,30
sparkno = -1
guard.sparkno = -1
sparkxy = -25, -30;Y-offset for the spark rel. to p1
hitsound = S2,4
guardsound = s6,0
ground.type = Low
ground.slidetime = -5
ground.hittime  = 50
ground.velocity = 0,20
airguard.velocity = -1.9,10
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
down.bounce = 1
;=========================
;position fixe ataque
;[State  1213, PosSet]
;type = PosSet
;trigger1 = Anim =  1213
;trigger1 = AnimElem = 2
;x = 50
;y = -20
;ignorehitpause =
;persistent =

 [State 4003, ChangeAnim]
type = ChangeAnim
trigger1 =AnimElem =  1213
value = 1051
;elem = 1
;ignorehitpause =
;persistent =

[State 4003, VelSet]
type = VelSet
trigger1 = Anim = 1051
trigger1 = AnimElem=1
x = -5
y = -3
;ignorehitpause =
;persistent =


;Change ver 52
[state  4003, end]
type = ChangeState
trigger1 =animTime = 0
value = 3056
ctrl = 0

;============================================================
 ;COUP DE FINAL
;============================================================
 ;COUP DE FINAL
[Statedef 4005]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1209
velset = 0,0
juggle =10
 poweradd = -1000

;==========================
[State 4005, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
trigger2 =Time = -1
Time =80
anim =-1
;pos = 0,0
;move =20
darken = 50
;p2defmul = 0
;poweradd = 0
unhittable = 1
;endcmdbuftime = (winmugen only)
;pausebg =  (winmugen only)
;ignorehitpause =
;persistent =

;==========================
[State 4005, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 1209
value = 1210+(Movehit > 0)
;==========================
;invincibilité
[State 4005, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA
;==========================
;VOIS snd
;[State 3055, PlaySnd2]
;type = PlaySnd
;trigger1 = Anim =1209
;trigger1 = AnimElem = 1
;value = S1216,1
;volume = 0
;channel = -1
;==========================
 ; traverser P2
[State 4005, PushOff]
type = PlayerPush
trigger1 = var(1) != 2
trigger1 = anim = 1210
value = 0
;==========================

;éfait de multiplication
[State 4005, AfterImage]
type = AfterImage
trigger1 = time = 2
time = 35
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
;==========================
;vel kik
[State 4005, Vel]
type = VelSet
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
X = 15
Y = 7
;==========================

;cri oisau
[State 4005, PlaySnd]
type = PlaySnd
triggerall =Anim = 1210
trigger1 = AnimElem = 1
value = S70,0
;volume = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
;ignorehitpause =
;persistent =
;==========================
 ;font
 [State 4005, Explod1]
type = Explod
trigger1 =Time = 0
anim =8014
ID = 8014
pos = 0,0
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1.1,1.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =





;aigle
[State 4005, Explod]
type = Explod
trigger1 = Time = 0
anim = 8086
ID =8086
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;flashe
 [State 4005, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8017
ID =8017
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;==========================
 [State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = MoveContact=1

value =-3000
ID = -1
kill = 1
absolute = 0
;ignorehitpause =
;persistent =



[State 4005, kik ]
type = HitDef
triggerall = Anim =1210
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 20, Dodge
animtype = hard
damage = 80
pausetime = 15,20
guard.pausetime = 12,12
sparkno = S701
guard.sparkno = S30040
sparkxy = 0,-34
hitsound = S2,2
guardsound = S6,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -8,20
airguard.velocity = -1.9,10
air.velocity = -1.4,-3
down.velocity = 0,0
down.bounce = 1
fall = 1

;==========================

;Axe de  fin para pore au sol
[State 4005, end axe]
type = ChangeState
trigger1 =Pos Y >= -2
value =4006 ;52
;===========================================================================

;===========================================================================
;fin
;===========================================================================


[StateDef 4006]
 type = s
movetype= A
physics = s
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1052




;saint ko
[State 4005, Explod]
type = Explod
trigger1 = time=0
anim = 8004
ID =8004
pos =-250,35
postype =front ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


;Change ver 8002
[state 4006, end]
type = ChangeState
trigger1 =animTime = 0
value = 0
ctrl = 1

 ;=================================
; BAK JUP 2
;=================================
;BAK JUP

[StateDef 3056]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1057
poweradd = -1500

;vel dépar
[State 3056, VelSet]
type = VelSet
trigger1 = Anim = 1057
trigger1 = AnimElem=1
x = -2
y = -2
;ignorehitpause =
;persistent =



[state 3056, end]
type = ChangeState
trigger1 = animTime = 0
value = 4005
ctrl = 0


;======================================================================

;Meteoros

[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3210
poweradd = -2000
velset = 0
ctrl = 0

[State 3000 ,spause]
type = PlaySnd
trigger1 = Time = 0
value = 3000,11
volume = 256






[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17100
pos = -7,-75
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17110
pos = -7,-75
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,0

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
time = 40
under = 1
supermove = 1





;---------------------------------------

[State 3000,ºÚÉ«µ×É«]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 130
under = 1
supermove = 1

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1

[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15




;---------------------------


[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 5
anim =8089
ID =8087
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 142
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;---------------------------

[State 2200]
type = AfterImage
trigger1 = time = 0
time = 5
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


;[State 3000 ,spause]
;type = PlaySnd
;trigger1 = Time = 0
;value = 1000,11
;volume = 256




;lens flare andata
[State 2200 , 5]
type = Explod
trigger1 = Time = 0
anim = 70028
sprpriority = 2
postype = p1
pos = -27,30
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1
removetime = 70

[State 2200]
type = PlaySnd
trigger1 = AnimElem = 5
value = 220,0



[State 2200, light]
type = Explod
triggerall = NumExplod(70028) = 0
trigger1 = AnimElem = 5
ignorehitpause = 1
anim = 70028
ID = 70028
pos = 41,5
postype = p1
sprpriority = -1
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 152

[State 2200, polvere]
type = Explod
triggerall = NumExplod(70062) = 0
trigger1 = AnimElem = 5
ignorehitpause = 1
anim = 70062
ID = 70062
pos = 5,0
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 150

[State 2200, hit]
type = Explod
triggerall = NumExplod(7037) = 0
trigger1 = projhit(3201) >= 1
pos = 5+ random%10,-66+ random%10
anim = 30002;7037
ID = 7037
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = 1,1;.8, .8

[State 2200, hit]
type = Explod
triggerall = NumExplod(33061) = 0
trigger1 = projhit(3201) >= 1
pos = 0+ random%10,-30+ random%10
anim = 30002;33061
ID = 33061
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = 1,1;.8, .8

[State 2200, hit]
type = Explod
triggerall = NumExplod(33063) = 0
trigger1 = projhit(3201) >= 1
pos = 5+ random%10,-90+ random%10
anim = 30002;33063
ID = 33063
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = 1,1;.8, .8

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 34
trigger5 = AnimElem = 39
trigger6 = AnimElem = 49
trigger7 = AnimElem = 54
trigger8 = AnimElem = 59
trigger9 = AnimElem = 64
trigger10 = AnimElem = 74
attr = S, SP
sprpriority = 1
projpriority = 3
ProjAnim = 3201
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 0,3
velocity = 15, 0
remvelocity = .7, 0
accel = 0, 0
damage    = 7, 1
animtype  = Hard
givepower = 30
guardflag = MA
pausetime = 3,4
sparkno = -1
sparkxy = 43, -87
guard.sparkno = S30040
hitsound   = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
airguard.velocity = -3.5
air.type = Low
air.velocity = -3
air.juggle = 3
Palfx.time          = 5
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1251, projetil 2]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 20
trigger5 = AnimElem = 25
trigger6 = AnimElem = 35
trigger7 = AnimElem = 40
trigger8 = AnimElem = 50
trigger9 = AnimElem = 60
trigger10 = AnimElem = 70
trigger11 = AnimElem = 75
attr = S, SP
sprpriority = 1
projpriority = 3
ProjAnim = 3201
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 0,3
velocity = 15, -0.6
remvelocity = .7, 0
accel = 0, 0
damage    = 7, 1
animtype  = Hard
givepower = 30
guardflag = MA
pausetime = 3,4
sparkno = -1
sparkxy = 43, -87
guard.sparkno = S30040
hitsound   = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
airguard.velocity = -3.5
air.type = Low
air.velocity = -3
air.juggle = 3
Palfx.time          = 5
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1251, projetil 3]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 21
trigger4 = AnimElem = 31
trigger5 = AnimElem = 36
trigger6 = AnimElem = 46
trigger7 = AnimElem = 51
trigger8 = AnimElem = 61
trigger9 = AnimElem = 66
trigger10 = AnimElem = 76
attr = S, SP
sprpriority = 1
projpriority = 3
ProjAnim = 3201
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 0,3
velocity = 9, 5
remvelocity = 15, 5
accel = 0, 0
damage    = 5, 1
animtype  = Hard
givepower = 30
guardflag = MA
pausetime = 3,4
sparkno = -1
sparkxy = 43, -87
guard.sparkno = S30040
hitsound   = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
airguard.velocity = -3.5
air.type = Low
air.velocity = -3
air.juggle = 3
Palfx.time          = 5
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1251, projetil 4]
type = Projectile
trigger1 = AnimElem = 7
trigger2 = AnimElem = 12
trigger3 = AnimElem = 17
trigger4 = AnimElem = 27
trigger5 = AnimElem = 32
trigger6 = AnimElem = 37
trigger7 = AnimElem = 42
trigger8 = AnimElem = 52
trigger9 = AnimElem = 57
trigger10 = AnimElem = 62
trigger11 = AnimElem = 72
attr = S, SP
sprpriority = 1
projpriority = 3
ProjAnim = 3201
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 0,3
velocity = 10, 3
remvelocity = 15, 3
accel = 0, 0
damage    = 2, 0
animtype  = Hard
givepower = 30
guardflag = MA
pausetime = 3,4
sparkno = -1
sparkxy = 43, -87
guard.sparkno = S30040
hitsound   = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
airguard.velocity = -3.5
air.type = Low
air.velocity = -3
air.juggle = 3


[State 1251, projetil 5]
type = Projectile
trigger1 = AnimElem = 8
trigger2 = AnimElem = 18
trigger3 = AnimElem = 23
trigger4 = AnimElem = 28
trigger5 = AnimElem = 33
trigger6 = AnimElem = 38
trigger7 = AnimElem = 43
trigger8 = AnimElem = 48
trigger9 = AnimElem = 58
trigger10 = AnimElem = 63
trigger11 = AnimElem = 73
attr = S, SP
sprpriority = 1
projpriority = 3
ProjAnim = 3201
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 0,3
velocity = 10, 1
remvelocity = 15, 1
accel = 0, 0
damage    = 1, 0
animtype  = Hard
givepower = 30
guardflag = MA
pausetime = 3,4
sparkno = -1
sparkxy = 43, -87
guard.sparkno = S30040
hitsound   = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
airguard.velocity = -3.5
air.type = Low
air.velocity = -2
air.juggle = 3
Palfx.time          = 5
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 2210]
type = HitDef
trigger1 = AnimElem = 77
priority = 7
attr = S, HA
damage = 100, 10
velocity = 12
animtype = hard
guardflag = MA
sparkno = S30002
sparkxy = -25,-80
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
pausetime = 22,65
ground.hittime = 16
ground.type = low
ground.velocity = 3,-9
air.velocity = 3,-9
envshake.time = 10
envshake.ampl = 3
envshake.freq = 176
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 3
fall.envshake.freq = 178
fall.envshake.time = 10
Palfx.time          = 70
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
numhits = 7


[State 2210, removeEX]
type = RemoveExplod
trigger1 = time = 0
ID = 7088


[State 2210, removeEX]
type = RemoveExplod
trigger1 = AnimElem = 77
ID = 73088


[State 2210, removeEX]
type = RemoveExplod
triggerall = NumExplod(70028) >= 1
trigger1 = AnimElem = 72
ID = 70028

[State 2210, removeEX]
type = RemoveExplod
triggerall = NumExplod(70062) >= 1
trigger1 = AnimElem = 73
ID = 70062

[State 2210, removeEX]
type = RemoveExplod
triggerall = NumExplod(7037) >= 1
trigger1 = time = 0
ID = 7037

[State 2210, removeEX]
type = RemoveExplod
triggerall = NumExplod(33061) >= 1
trigger1 = time = 0
ID = 33061

[State 2210, removeEX]
type = RemoveExplod
triggerall = NumExplod(33063) >= 1
trigger1 = time = 0
ID = 33063


[State 2200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------
;meteoro no ar

[Statedef 1080]
type = A
movetype = A
physics = A
juggle  = 5
ctrl = 0
anim = 1080
velset = 0,-8
poweradd= 100

[State 2199, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
value = 210, 0



[State 3300]
type = Explod
trigger1 = AnimElem = 2
anim = 70028
sprpriority = 2
postype = p1
removetime = 50
pos = 50, 19
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1

[State 2199, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 5
volume = 140

[State 3201, vel]
type = Velset
trigger1 = time = [1,54]
x = 0
y = 0

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
projID = 662
projAnim = 7022
projHitAnim = -1
projRemAnim = -1
velocity = 8,6
accel = 0,0
offset = 45,-45
postype = p1
attr = A, SP
damage = 10,1
animtype = Head
hitflag = MAFP
guardflag = MA
pausetime = 3,3
sparkno = S30002
sparkxy = 10, 5
guard.sparkno =  S7023
hitsound = S2,8
guardsound = S310,0
ground.type = high
ground.slidetime = 8
ground.hittime = 10
guard.slidetime = 10
ground.velocity = -5
air.velocity = -4,-5
airguard.velocity = -3,-3
;projpriority = 3
projsprpriority = 3
projstagebound = 20
supermovetime = 0
pausemovetime = 0
projhits = 1
projmisstime = 2
air.fall = 1

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
projID = 662
projAnim = 7022
projHitAnim = -1
projRemAnim = -1
velocity = 8,3
accel = 0,0
offset = 45,-45
postype = p1
attr = A, SP
damage = 10,1
animtype = Head
hitflag = MAFP
guardflag = MA
pausetime = 3,3
sparkno = S30002
sparkxy = 10, 5
guard.sparkno =  S7023
hitsound = S2,8
guardsound = S310,0
ground.type = high
ground.slidetime = 8
ground.hittime = 10
guard.slidetime = 10
ground.velocity = -5
air.velocity = -4,-5
airguard.velocity = -3,-3
;projpriority = 3
projsprpriority = 3
projstagebound = 20
supermovetime = 0
pausemovetime = 0
projhits = 1
projmisstime = 2
air.fall = 1

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
projID = 662
projAnim = 7022
projHitAnim = -1
projRemAnim = -1
velocity = 8,9
accel = 0,0
offset = 45,-45
postype = p1
attr = A, SP
damage = 7,1
animtype = Head
hitflag = MAFP
guardflag = MA
pausetime = 3,3
sparkno = S30002
sparkxy = 10, 5
guard.sparkno =  S7023
hitsound = S2,8
guardsound = S310,0
ground.type = high
ground.slidetime = 8
ground.hittime = 10
guard.slidetime = 10
ground.velocity = -5
air.velocity = -4,-5
airguard.velocity = -3,-3
;projpriority = 3
projsprpriority = 3
projstagebound = 20
supermovetime = 0
pausemovetime = 0
projhits = 1
projmisstime = 2
air.fall = 1


[State 1251, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1081
ctrl = 1

[Statedef 1081]
type = A
movetype = A
physics = A
anim = 1081
velset = -1, -5
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 1085]
type = A
movetype = A
physics = A
juggle  = 5
ctrl = 0
anim = 1085
velset = 0,-8
poweradd= 100

[State 2199, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 6
value = 210, 0



[State 3300]
type = Explod
trigger1 = AnimElem = 2
anim = 70028
sprpriority = 2
postype = p1
removetime = 35
pos = 50, 19
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1

[State 2199, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 5
volume = 140

[State 3201, vel]
type = Velset
trigger1 = time = [1,39]
x = 0
y = 0

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
projID = 662
projAnim = 7022
projHitAnim = -1
projRemAnim = -1
velocity = 8,6
accel = 0,0
offset = 45,-45
postype = p1
attr = A, SP
damage = 10,1
animtype = Head
hitflag = MAFP
guardflag = MA
pausetime = 3,3
sparkno = S30002
sparkxy = 10, 5
guard.sparkno =  S7023
hitsound = S2,8
guardsound = S310,0
ground.type = high
ground.slidetime = 8
ground.hittime = 10
guard.slidetime = 10
ground.velocity = -5
air.velocity = -4,-5
airguard.velocity = -3,-3
;projpriority = 3
projsprpriority = 3
projstagebound = 20
supermovetime = 0
pausemovetime = 0
projhits = 1
projmisstime = 2
air.fall = 1

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
projID = 662
projAnim = 7022
projHitAnim = -1
projRemAnim = -1
velocity = 8,3
accel = 0,0
offset = 45,-45
postype = p1
attr = A, SP
damage = 10,1
animtype = Head
hitflag = MAFP
guardflag = MA
pausetime = 3,3
sparkno = S30002
sparkxy = 10, 5
guard.sparkno =  S7023
hitsound = S2,8
guardsound = S310,0
ground.type = high
ground.slidetime = 8
ground.hittime = 10
guard.slidetime = 10
ground.velocity = -5
air.velocity = -4,-5
airguard.velocity = -3,-3
;projpriority = 3
projsprpriority = 3
projstagebound = 20
supermovetime = 0
pausemovetime = 0
projhits = 1
projmisstime = 2
air.fall = 1

[State 1251, projetil 1]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
projID = 662
projAnim = 7022
projHitAnim = -1
projRemAnim = -1
velocity = 8,9
accel = 0,0
offset = 45,-45
postype = p1
attr = A, SP
damage = 10,1
animtype = Head
hitflag = MAFP
guardflag = MA
pausetime = 3,3
sparkno = S30002
sparkxy = 10, 5
guard.sparkno =  S7023
hitsound = S2,8
guardsound = S310,0
ground.type = high
ground.slidetime = 8
ground.hittime = 10
guard.slidetime = 10
ground.velocity = -5
air.velocity = -4,-5
airguard.velocity = -3,-3
;projpriority = 3
projsprpriority = 3
projstagebound = 20
supermovetime = 0
pausemovetime = 0
projhits = 1
projmisstime = 2
air.fall = 1


[State 1251, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1081
ctrl = 1



;---------------------------------------------------------------------------
;Meteoros Aereo (ryuseiken air)

[Statedef 3300]
type = A
movetype = A
physics = A
juggle  = 5
ctrl = 0
anim = 3300
poweradd = -2000
velset = 0,-10

[State 3300]
type = Velset
trigger1 = Time = [0,300]
x = 0
y = 0



[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 4
anim = 17100
pos = 12,-90
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 4
anim = 17110
pos = 12,-90
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 4
value = 17000,0

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
time = 40
under = 1
supermove = 1





[State 3300]
type = PlaySnd
trigger1 = Time = 0
value = 1000,11
volume = 200



[State 3300]
type = Explod
trigger1 = AnimElem = 7
anim = 70028
sprpriority = 2
postype = p1
removetime = 200
pos = 50, 30
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1

;--
;-------------------------------

[State 3300]
type = PlaySnd
trigger1 = time = 70
value = 3000,1
volume = 250



[State 3300]
type = VelAdd
trigger1 = Time = 110
trigger2 = Time = 140
trigger3 = Time = 150
trigger4 = Time = 180
trigger5 = Time = 190
trigger6 = Time = 220
trigger7 = Time = 230
trigger8 = Time = 260
trigger9 = Time = 270
trigger10 = Time = 300
y = 0

[State 3300]
type = VelAdd
trigger1 = Time = 120
trigger2 = Time = 130
trigger3 = Time = 160
trigger4 = Time = 170
trigger5 = Time = 200
trigger6 = Time = 210
trigger7 = Time = 240
trigger8 = Time = 250
trigger9 = Time = 280
trigger10 = Time = 290
y = 0

;-------------------------

[State 3300, hit]
type = Explod
triggerall = NumExplod(7037) = 0
trigger1 = projhit(7022) >= 1
pos = 15+ random%20,-66+ random%20
anim = 30002;7037
ID = 7037
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = 1,1;.8, .8

[State 3300, hit]
type = Explod
triggerall = NumExplod(33061) = 0
trigger1 = projhit(7022) >= 1
pos = 0+ random%20,-30+ random%20
anim = 30002;33061
ID = 33061
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = 1,1;.8, .8

[State 3300, hit]
type = Explod
triggerall = NumExplod(33063) = 0
trigger1 = projhit(7022) >= 1
pos = -15+ random%20,-90+ random%20
anim = 30002;33063
ID = 33063
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = 1,1;.8, .8

;------------------------
[State 3300]
type = Projectile
trigger1 = Time = 104
trigger2 = Time = 110
trigger3 = Time = 120
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2,0
remvelocity = .7, 0
accel = 12, 9
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 105
trigger2 = Time = 115
trigger3 = Time = 125
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -1
remvelocity = .7, 0
accel = 14,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 110
trigger2 = Time = 120
trigger3 = Time = 130
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 1
remvelocity = .7, 0
accel = 12,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 115
trigger2 = Time = 125
trigger3 = Time = 135
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -0.7
remvelocity = .7, 0
accel = 10,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 120
trigger2 = Time = 130
trigger3 = Time = 140
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .7
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 125
trigger2 = Time = 135
trigger3 = Time = 145
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .9
remvelocity = .7, 0
accel = 5,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 130
trigger2 = Time = 140
trigger3 = Time = 150
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .9
remvelocity = .7, 0
accel = 4,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 135
trigger2 = Time = 145
trigger3 = Time = 155
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 0
remvelocity = .7, 0
accel = 3,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 140
trigger2 = Time = 150
trigger3 = Time = 160
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -.8
remvelocity = .7, 0
accel = 16,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 145
trigger2 = Time = 155
trigger3 = Time = 165
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 14,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 150
trigger2 = Time = 160
trigger3 = Time = 170
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -1
remvelocity = .7, 0
accel = 12,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 155
trigger2 = Time = 165
trigger3 = Time = 175
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 1
remvelocity = .7, 0
accel = 10,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 160
trigger2 = Time = 170
trigger3 = Time = 180
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 0
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 165
trigger2 = Time = 175
trigger3 = Time = 185
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -1
remvelocity = .7, 0
accel = 5,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 170
trigger2 = Time = 180
trigger3 = Time = 190
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 1
remvelocity = .7, 0
accel = 4,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 175
trigger2 = Time = 185
trigger3 = Time = 195
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 0
remvelocity = .7, 0
accel = 3,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 180
trigger2 = Time = 190
trigger3 = Time = 200
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .7
remvelocity = .7, 0
accel = 16,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 185
trigger2 = Time = 195
trigger3 = Time = 205
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .9
remvelocity = .7, 0
accel = 14,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 190
trigger2 = Time = 200
trigger3 = Time = 210
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .9
remvelocity = .7, 0
accel = 12,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 195
trigger2 = Time = 205
trigger3 = Time = 215
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 0
remvelocity = .7, 0
accel = 10,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 200
trigger2 = Time = 210
trigger3 = Time = 220
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 205
trigger2 = Time = 215
trigger3 = Time = 225
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 210
trigger2 = Time = 220
trigger3 = Time = 230
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 1
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 215
trigger2 = Time = 225
trigger3 = Time = 235
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 220
trigger2 = Time = 230
trigger3 = Time = 240
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 225
trigger2 = Time = 235
trigger3 = Time = 245
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -1
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 230
trigger2 = Time = 240
trigger3 = Time = 250
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 235
trigger2 = Time = 245
trigger3 = Time = 255
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 240
trigger2 = Time = 250
trigger3 = Time = 260
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 1
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 4
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.hittime = 16
ground.type = Low
ground.slidetime = -5
ground.velocity = -6,-6
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 245
trigger2 = Time = 255
trigger3 = Time = 265
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -.8
remvelocity = .7, 0
accel = 16,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 250
trigger2 = Time = 260
trigger3 = Time = 270
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 14,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 255
trigger2 = Time = 265
trigger3 = Time = 275
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -1
remvelocity = .7, 0
accel = 10,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 260
trigger2 = Time = 270
trigger3 = Time = 280
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 7,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 265
trigger2 = Time = 275
trigger3 = Time = 285
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -1
remvelocity = .7, 0
accel = 5,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 270
trigger2 = Time = 280
trigger3 = Time = 290
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, .8
remvelocity = .7, 0
accel = 4,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 275
trigger2 = Time = 285
trigger3 = Time = 295
ProjAnim =  7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, -.8
remvelocity = .7, 0
accel = 3,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 280
trigger2 = Time = 290
trigger3 = Time = 300
ProjAnim = 7022
ProjHitAnim = -1
ProjRemAnim = 8210
offset = 50,-45
velocity = 2, 1
remvelocity = .7, 0
accel = 12,7
attr = S, SP
damage    = 1
animtype  = Medium
givepower = 5
guardflag = MA
pausetime = 0,12
sparkno = -1
sparkxy = 10, 5
guard.sparkno = S30040
hitsound = S2,8
guardsound = S310,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0
fall.damage = 25

[State 3300]
type = EnvColor
trigger1 = Time = 300
value = 50,200,255
under = 0
time = 5

[State 3300]
type = ChangeState
trigger1 = Time = 300
value = 3301
ctrl = 0

[Statedef 3301]
type = A
movetype = I
physics = A
anim = 3301
velset = -1, -5
juggle = 2
ctrl = 0

[State 3410,remove]
type = RemoveExplod
trigger1 = time = 0
ID = 77893

[State 3301]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Ataque
[statedef 9997]
type = s
movetype = i
physics = s
poweradd= -1000
anim = 1980
velset = 0, 0
sprpriority = 1
ctrl = 0




[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 30
movetime = 0
darken = 0

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17000
pos = 25,-63
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17010
pos = 25,-63
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,0

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
time = 40
under = 1
supermove = 1

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(8012) != 0
trigger1 = stateno != 0
ID = 8012


[State 10002, afterimage]
type=AfterImage
trigger1= Time = 0
time= 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
ID = 8014
anim = 7063
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.6,.85
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 0,0
anim = 7065
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1


[state 3104, 1]
type = veladd
trigger1 =1
x =5

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 1
value = 0,4

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 2
value = 20,0

[state 3600, 1]
type = playsnd
trigger1 = animelem = 4
value = 20,1

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 6
value = 20,2



[state 3104, 3]
type = changestate
trigger1 = p2bodydist x <30
value = 9998
ctrl = 0


[State 2201, 5] ; Caso não acerte o P2, voltar a animação Stand.
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------;
;       Metendo o pau          ;
;------------------------------;

[Statedef 9998]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
velset = 0,0,0
anim = 1981

[State 2200, 1]
type = PlaySnd
trigger1 = Animelem = 37
value = s3000,2

[State 2202, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 23
trigger12 = AnimElem = 26
trigger13 = AnimElem = 28
trigger14 = AnimElem = 30
trigger15 = AnimElem = 37
value = 0,0



[State 2202, 1]
type = EnvShake
Trigger1 = animelem = 38
time = 15
ampl = -10;-3
freq = 90
phase = 90

[State 1100, 1]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 20
trigger10 = AnimElem = 22
trigger11 = AnimElem = 24
trigger12 = AnimElem = 27
trigger13 = AnimElem = 29
trigger14 = AnimElem = 31
trigger15 = AnimElem = 34
x = 3

[State 2202, 2]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 20
trigger10 = AnimElem = 22
trigger11 = AnimElem = 24
trigger12 = AnimElem = 27
trigger13 = AnimElem = 29
trigger14 = AnimElem = 31
trigger15 = AnimElem = 34
x= 0.5

[State 2202, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 20
trigger10 = AnimElem = 22
trigger11 = AnimElem = 24
trigger12 = AnimElem = 27
trigger13 = AnimElem = 29
trigger14 = AnimElem = 31
trigger15 = AnimElem = 34
getpower = 5
attr = S, HA
animtype  = Medium
damage    = 10,1
guardflag = MA
pausetime = 5,21;11
sparkno = S30002
guard.sparkno = S30040
sparkxy = -20,-85+ random%20
hitsound   = s230,1
guardsound = s6,0
ground.type = High;Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0  ;-5,-5
air.velocity = -2.2,-3.2


[State 2202, 4]
type = HitDef
trigger1 = AnimElem = 38
attr = S, NA
animtype  = Hard
damage    = 100,10
guardflag = MA
pausetime = 5,0;11
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-50
hitsound   = s250,1
guardsound = s6,0
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-7
guard.velocity = -7
air.velocity = -8,-7
airguard.velocity = -5, -4
fall = 1
fall.yvelocity = -2.5
fall.recover = 0






[State 2202, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------;
; Para onde o ataque joga o P2 ;
;------------------------------;

; Ver State 2202 para mais detalhes

[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 5070

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;------------------
; (a custom gethit state)
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 10
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Tremer a tela]
type = EnvShake
Trigger1 = Time = 0
time = 15
ampl = -3
freq = 90
phase = 90


[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 5030

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------
; (a custom gethit state)
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]


[State -2,AI ]
type = VarSet
v = 59
value = 2
triggerall = var(59) = 1
trigger1 = roundstate > 2

[State -2, Ryû Seî Ken]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120) && (p2movetype != H)
trigger1 = (p2bodydist X >= 50) && (power >= 3000) && (random = [350,950])
value = 3000

[State -2, meteoros]
type = changestate
value = 3200
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 =  (p2bodydist X > 60) && (power >= 2000) && (random = [350,650])

;Meteoros Aereo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 200) && (power >= 2000) && (random = [350,500])
value = 3300


[State -2,Ryû Seî Ken1]
type = changestate
value = 3020
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120) && (p2movetype != H)
trigger1 = (p2bodydist X > 60) && (p2bodydist X <= 150) && (power >= 1000) && (random = [350,450))

[State -2, eagle ruch, solo]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [220, 300])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120) && (p2movetype != H)
value = 1054

[State -2, eagle ruch]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [220, 320])
trigger1 = (p2bodydist X > 20) && (P2bodydist X <= 90) && (prevstateno != 5120) && (p2movetype != H)
value = 1212

[State -2, eagle ruch]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [220, 300])
trigger1 = (p2bodydist X > 70) && (P2bodydist X <= 160) && (prevstateno != 5120) && (p2movetype != H)
value = 1415

[State -2, Lampejo da Aguía normal]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [350, 600])
trigger1 = (p2bodydist X > 50) && (P2bodydist X <= 150) && (power >= 2000) && (p2statetype != L)
value = 3062

[State -2, Lampejo da Aguía forte]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [350, 900])
trigger1 = (p2bodydist X > 50) && (P2bodydist X <= 150) && (power >= 3000) && (p2statetype != L)
value = 3063


[State -2, meteoro]
type = changestate
value = 1020
Triggerall = roundstate = 2
triggerall =  (statetype = S) && (ctrl) && (random = [220, 320])
triggerall = (var(59) != 0)
trigger1 = (P2bodydist X >= 140) &&  (prevstateno != 5120) && (p2movetype != H)


;Mini meteor aire
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [100, 210])
trigger1 = (P2bodydist X >= 70) &&  (p2bodydist X <= 170) && (prevstateno != 5120)
value = 1085

[State -1, furia]
type = ChangeState
value = 9997
Triggerall = roundstate = 2
triggerall = statetype = S && (prevstateno != 5120) && (p2movetype != H) && power >= 1500
triggerall = (var(59) != 0)  && (ctrl) && (random = [350, 450])
trigger1 =  (P2bodydist X >= 50)


;Charge
[State -2]
type = changestate
value = 24000
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0,150])
trigger1 = (P2bodydist X >= 90) &&  (power <= 2999) && (prevstateno != 5120) && (p2movetype != H)

;ultra power
[State -3, 10]
type = AttackMulSet
trigger1 = time = 1500
value = 0

;ultra defence
[State -3, 11]
type = DefenceMulSet
trigger1 = time = 1500
value = 0

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno != 0
ID = 2

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = anim = 5
ID = 2

[state -2,remove]
type = removeexplod
triggerall = numexplod(8011) = 1
trigger1 = anim!= 196
trigger1 = stateno!= 196
id = 8011

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8011) = 1
trigger1 = stateno = [5000,5999]
ID = 8011

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8013) = 1
trigger1 = p2life = 0
ID = 8013

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8013) = 1
trigger1 = stateno = [5000,5999]
ID = 8013

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8014) = 1
trigger1 = p2life = 0
ID = 8014

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8014) = 1
trigger1 = stateno = [5000,5999]
ID = 8014

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8016) = 1
trigger1 = p2life = 0
ID = 8016

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8016) = 1
trigger1 = stateno = [5000,5999]
ID = 8016




;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.

[State -3, 1]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 3
value =20,0

[State -3, 2]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 6
value =20,1


[State -3, 1]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 3
value =20,0

[State -3, 2]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 6
value =20,1


[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = 40, 0

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 40, 1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 52, 0


;Golpeado parado arriba
[State -3 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = time = 1
value = 5000,2

;Golpeado parado abajo
[State -3 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = time = 1
value = 5000,1

;Golpeado agachado
[State -3 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = time = 1
value = 5000,0

[State -3 , 6]
type = PlaySnd
triggerall = stateno = 5010
trigger1 = time = 1
value = 5000,0

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5020
trigger1 = time = 1
value = 5000,0

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5030
trigger1 = time = 1
value = 5000,3

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5070
trigger1 = time = 1
value = 5000,3

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 1025
trigger1 = time = 1
value = 5000,2


[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5100
trigger1 = time = 1
value = 5100,0


[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5000
trigger1 = time = 1
trigger1 = Life < 1
value = 30,0

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5050
trigger1 = time = 1
trigger1 = Life < 1
value = 30,0

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5070
trigger1 = time = 1
trigger1 = Life < 1
value = 30,0

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 1025
trigger1 = time = 1
trigger1 = Life < 1
value = 30,0



[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(8012) = 1
trigger1 = stateno != 0
ID = 8012

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(8012) = 1
trigger1 = anim = 5
ID = 8012

[State -3, RUN_FWD]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
pos = 0,0
anim = 7065
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1


;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------


;--------------------- Float Variable List ----------------------


;---------------------- dodge forward 110 ------------------------------

[Statedef 112]
type    = S
movetype= I
physics = S
velset = 0,0,0
ctrl = 0
anim = 10000
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
velset = 0,0,0
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