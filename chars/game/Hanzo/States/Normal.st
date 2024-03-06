;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 3
ctrl = 0
anim = Var(5)+200
poweradd = 0
velset = 0,0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 200, HitDef]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = S, NA
damage = 22, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -16, -101
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5.1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 80,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 6
ctrl = 0
anim = Var(5)+210
velset = 0,0
poweradd = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 210,0
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 5
attr = S, NA
damage = 60, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -71
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -6.9
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.8,-3.3
air.hittime = 16
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 210, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type = S
movetype = A
physics = S
juggle  = 3
poweradd = 0
ctrl = 0
velset = 0,0
anim = Var(5)+230

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 230, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 3
attr = S, NA
damage = 29, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -15, -121
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5.1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.9,-2.8
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 230, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 240]
type = S
movetype = A
physics = S
juggle = 6
poweradd = 0
velset = 0,0
ctrl = 0

[State 240, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = p2bodydist X >= 13
value = Var(5)+240

[State 240, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = p2bodydist X < 13
value = Var(5)+245

[State 240, PosAdd]
type = PosAdd
triggerall = Anim = Var(5)+240
trigger1 = AnimElem = 4
x = 6

[State 240, PlaySnd]
type = PlaySnd
triggerall = Anim = Var(5)+240
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 240, PlaySnd]
type = PlaySnd
triggerall = Anim = Var(5)+245
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
triggerall = Anim = Var(5)+240
value = 240,0
channel = 1

[State 210, PlaySnd]
type = PlaySnd
triggerall = Anim = Var(5)+245
trigger1 = AnimElem = 2
value = 240,0
channel = 1

[State 240, Hit]
type = HitDef
triggerall = Anim = Var(5)+240
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 5
attr = S, NA
damage = 75, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -113
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -7.2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
getpower = 95,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 240, Hit]
type = HitDef
triggerall = Anim = Var(5)+245
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = S, NA
damage = 65, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -12, -90
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -6.9
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
getpower = 85,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 240, StateTypeSet]
type = StateTypeSet
triggerall = Anim = Var(5)+240
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 240, StateTypeSet]
type = StateTypeSet
triggerall = Anim = Var(5)+245
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 240, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lunging Side Kick
[Statedef 260]
type = S
movetype = A
physics = S
juggle = 6
poweradd = 0
ctrl = 0
anim = Var(5)+260

[State 260, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0

[State 260, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 18

[State 260, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 260, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 240,0
channel = 1

[State 260, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 6
attr = S, NA
damage = 38, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -76
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 9
ground.hittime  = 16
ground.velocity = -5.2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-2.8
getpower = 75,35
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 260, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 260, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; High Roundhouse Kick
[Statedef 270]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 0
ctrl = 0
anim = Var(5)+270

[State 260, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0

[State 270, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A
physics = N

[State 270, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 2
y = -3.5

[State 270, VelAdd]
type = VelAdd
trigger1 = Time > 8
y = 0.5

[State 260, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,1
channel = 0

[State 260, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 240,0
channel = 1

[State 270, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 7
attr = S, NA
damage = 35, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -73
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 11
ground.hittime  = 14
ground.velocity = -7.2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-2.8
getpower = 75,35
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 260, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

[State 270, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 275
ctrl = 0

;---------------------------------------------------------------------------
; Landing from High Roundhouse Kick
[Statedef 275]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
poweradd = 0
anim = Var(5)+275

[State 275, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 275, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Hip Launch
[Statedef 285]
type = S
movetype = A
physics = S
juggle = 0
poweradd = 0
ctrl = 0
velset = 0,0
anim = Var(5)+285
facep2 = 1

[State 285, StopSnd]
type = StopSnd
trigger1 = !time
channel = 1

[State 285, Varset]
type = Varset
trigger1 = AnimElemtime(4) < 0
fvar(1) = 0

[State 285, Nothitby]
type = Nothitby
trigger1 = 1
value = , AT

[State 285, voice]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = s450, 0
channel = 1
persistent = 0

[State 285, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = S0,1

[State 285, AfterImage]
type = AfterImage
trigger1 = animelemtime(3) = 0
time = 2
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1
TimeGap  = 3
FrameGap = 2
length = 8
ignorehitpause = 1

[State 285, chain combo detector]
type = VarSet
trigger1 = (prevstateno = 200) || (prevstateno = 400)
var(4) = 1

[State 285, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 8.875
y = -11

[State 285, accel]
type = VelAdd
trigger1 = statetype = A
x = .25

[State 285, gravity]
type = Gravity
trigger1 = statetype = A

[State 285, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A
physics = N

[State 285, hitdef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 128
getpower = 120*!var(7), 60*!var(7)
givepower = 60, 40
animtype = Back
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
guard.pausetime = 12, 12
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -73
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.hittime = 14
ground.slidetime = 12
ground.velocity = -7, -15
guard.velocity = -14.5
air.type = High
air.hittime = 12
air.velocity = -7, -15
airguard.ctrltime = 14
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent = 1
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
id = 200

[State 285, dampener]
type = varset
trigger1 = MoveHit && numtarget
fvar(2) = 0.843125 * fvar(2)
ignorehitpause = 1
persistent = 0

[State 285, land]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = pos y > -vel y
value = 290

;---------------------------------------------------------------------------
;Landing from Hip Launch
[Statedef 290]
type    = S
physics = S
movetype = I
ctrl = 0
velset = 0,0
anim = Var(5)+290

[State 290, voice]
type = PlaySnd
trigger1 = animelemtime(0) = 0
value = s40, 0
channel = 1
persistent = 0

[State 290, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 290, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 290, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 0
ctrl = 0
velset = 0,0
anim = Var(5)+400

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 400, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 3
attr = C, NA
damage = 23, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -15, -45
hitsound = S5, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime = 13
ground.velocity = -4.8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
getpower = 85,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>= 0
movetype = I

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 410]
type = C
movetype= A
physics = C
juggle  = 9
poweradd= 0
ctrl = 0
velset = 0,0
anim = Var(5)+410

[State 410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 5

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1
channel = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210,0
channel = 1

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210,0
channel = 1

[State 410, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 3
attr = C, NA
damage = 55, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -12, -63
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 15
ground.hittime = 19
ground.velocity = -6.8
air.type = High
air.velocity = -3,-4
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 0
ctrl = 0
velset = 0,0
anim = Var(5)+430

[State 430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 430, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 25, 0
animtype = Light
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -15, -22
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 13
ground.velocity = -5.5
air.type = High
air.velocity = -1.9,-3
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 430, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 430, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 440]
type = C
movetype = A
physics = C
juggle = 9
poweradd= 0
ctrl = 0
velset = 0,0
anim = Var(5)+440

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 440, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 60, 0
animtype = Hard
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -8
hitsound = S5, 3
guardsound = S6, 1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -6.4
air.type = High
air.velocity = -1.4,-3
getpower = 85,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 440, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 440, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Sweep
[Statedef 450]
type = C
movetype = A
physics = C
juggle = 8
poweradd = 0
ctrl = 0
velset = 0,0
anim = Var(5)+450

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 5

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 2

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 450,0
channel = 1

[State 450, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 7
attr = C, NA
damage = 68, 0
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -14
hitsound = S5, 3
guardsound = S6, 1
ground.type = Trip
ground.slidetime = 12
ground.hittime  = 19
ground.velocity = -1.4,-3.9
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 450, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

[State 450, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
movetype = A
physics = A
juggle = 3
poweradd = 0
ctrl = 0
anim = Var(5)+600

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 600, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 2
attr = A, NA
damage = 20, 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 2, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -15, -70
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 9
ground.velocity = -3
air.type = High
air.velocity = -1.9,-3
air.hittime = 9
getpower = 85,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 610]
type = A
movetype = A
physics = A
juggle = 6
poweradd = 0
ctrl = 0
anim = Var(5)+610

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 210,0
channel = 1

[State 610, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 4
attr = A, NA
damage = 45, 0
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 2, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -20, -55
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4.2
air.type = High
air.velocity = -2.9,-3
air.hittime = 12
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type = A
movetype = A
physics = A
juggle  = 3
poweradd = 0
ctrl = 0
anim = Var(5)+630

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 630, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 3
attr = A, NA
damage = 28, 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -18, -54
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 9
ground.velocity = -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.9,-3
air.hittime = 9
getpower = 90,45
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 630, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 6
poweradd = 0
ctrl = 0
anim = Var(5)+640

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 240,0
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = A, NA
damage = 53, 0
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -25, -92
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4.2
air.type = High
air.velocity = -2.9,-2.5
air.hittime = 12
getpower = 100,50
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 640, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

;---------------------------------------------------------------------------
; Light Dive Kick
[Statedef 650]
type = A
movetype = A
physics = N
juggle = 4
poweradd = 0
ctrl = 0
anim = Var(5)+650

[State 650, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 650, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3

[State 650, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5)>= 0
y = 1.1

[State 650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel = 0

[State 650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 650,0
channel = 1

[State 650, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = Time = 0
attr = A, NA
damage = 35, 0
animtype = Medium
guardflag = HA
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8010
guard.sparkno =	S8400
sparkxy = 5, 5
hitsound = S5, 3
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -3.7
air.type = High
air.velocity = -2.2,-4
air.hittime = 12
getpower = 80,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 650, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 665
ctrl = 0

;---------------------------------------------------------------------------
; Strong Dive Kick
[Statedef 660]
type = A
movetype = A
physics = N
juggle = 4
poweradd = 0
ctrl = 0
velset = .6,-1
anim = Var(5)+660

[State 660, VelSet]
type = VelSet
trigger1 = AnimTime >= 14
x = .5

[State 660, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5)>= 0 || AnimTime = 0
x = .5
y = 1.2

[State 660, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel = 0

[State 660, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 650,0
channel = 1

[State 660, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = Time = 0
attr = A, NA
damage = 35, 0
animtype = Medium
guardflag = HA
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -17, -11
hitsound = S5, 3
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -3.7
air.type = High
air.velocity = -2.2,-4
air.hittime = 12
getpower = 80,40
fall = 0
fall.recover = 1
fall.recoverTime = 120
id = 200

[State 660, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 665
ctrl = 0

;---------------------------------------------------------------------------
; Landing from Dive Kick
[Statedef 665]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
poweradd = 0
anim = Var(5)+665

[State 665, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 665, PosAdd]
type = PosAdd
triggerall = PrevStateNo = 660
trigger1 = Time = 0
x = 20

[State 665, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw - Attempt
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 0
anim = Var(5)+800

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0
channel = 1

[State 800, HitDef]
type = HitDef
triggerall = p2bodydist X < 15
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = var(10) = 0
triggerall = p2movetype != H
trigger1 = time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = Ifelse(command = "holdback", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1
numhits = 0

[State 800, VarSet]
type = VarSet
trigger1 = facing = 1
v = 6
value = Ifelse (command = "holdback",810,10810)

[State 800, VarSet]
type = VarSet
trigger1 = facing = -1
v = 6
value = Ifelse (command = "holdback",10810,810)

[State 800, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3)>= 0
movetype = I

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throwing the opponent
[Statedef 810]
type = S
movetype = A
physics = N
anim = Var(6)
poweradd = 100

[State 810, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Width]
type = Width
trigger1 = 1
edge = 65,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 34, 0

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 34, 0

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 41, 0

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 31, -20

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 22, -38

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -9, -108

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -20, -94

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 8
value = -1

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = -23, -51

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 9
value = -1

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = -25, 0

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = -25

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 450,0
channel = 1

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 9
time = 8
freq = 30
ampl = 5
persistent = 0

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -60

[State 810, TargetState]
type = TargetState
trigger1 = AnimElemTime(9)= 5
value = 821

[State 810, Turn]
type = Turn
trigger1 = AnimElem = 12

[State 810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Opponent Thrown
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------------------------------------------------------------------
; Opponent thrown into the ground
[Statedef 821]
type = S
movetype = H
physics = N
velset = 0,0
poweradd = 40

[State 821, SelfState]
type = SelfState
trigger1 = Time = 0
value = 5110

;---------------------------------------------------------------------------
; Leap Attack
[Statedef 900]
type = S
movetype = A
physics = S
juggle = 4
ctrl = 0
poweradd = 0
velset = 0,0
anim = Var(5)+900
sprpriority = 2

[State 900, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
physics = N

[State 900, VelSet]
type = VelSet
trigger1 = Time = 4
X = 2
Y = -4.5

[State 900, VelAdd]
type = VelAdd
trigger1 = Time > 4
Y = 0.4375

[State 900, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 900, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 900,0
channel = 1

[State 900, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 45, 0
animtype = Light
guardflag = HA
hitflag = MA
priority = 3, Hit
pausetime = 8,8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -18, -54
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -2.7,-3
air.hittime = 12
fall.recovertime = 15400
getpower = 80,40

[State 900, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = (Pos Y + Vel Y) >= 7;0
value = 905
ctrl = 0

;---------------------------------------------------------------------------
; Leap Attack End
[Statedef 905]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = Var(5)+905

[State 905, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 905, End]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Break Attack
[Statedef 950]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = Var(5)+950
velset = 0,0
poweradd = 0

[State 950, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = -50,-50,-50
mul = 130,130,130
sinadd = 50,50,50,30
ignorehitpause = 1

[State 950, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 950, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 950,0
channel = 1

[State 950, Hit]
type = HitDef
triggerall = P2StateType!= A
trigger1 = AnimElem = 5
attr = S, NA
damage = IfElse((P2StateNo = 130) || (P2StateNo = 131),0,60)
hitflag = MA
guardflag =
priority = 3, Hit
pausetime = 11, 11
sparkno = SIfElse((P2StateNo = 130) || (P2StateNo = 131),8400,8010)
guard.sparkno =	S8400
sparkxy = -15, -71
hitsound = S5, 1
guardsound = S6, 1
p2facing = 1
p2stateno = 955
fall = 0
getpower = 0

[State 950, Hit]
type = HitDef
triggerall = P2StateType = A
trigger1 = AnimElem = 5
attr = S, NA
damage = 60, 0
animtype = Hard
guardflag =
hitflag = MA
priority = 2, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -15, -71
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 9
ground.hittime  = 16
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.4,-2.3
air.hittime = 18
getpower = 0

[State 950, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 950, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Opponent Guard Break
[Statedef 955]
type = S
movetype = H
physics = S
velset = 0,0

[State 955, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 11
x = -6.4

[State 955, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 955

[State 955, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) >= 35
x = 0

[State 955, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
