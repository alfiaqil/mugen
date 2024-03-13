;================ Normal Moves ====================
;-------- Stand Weak ATK ---------
[StateDef 200]
type = S
movetype= A
physics = S
anim = 200
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 20


[State 200, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = Random < 700
trigger1 = anim = 200
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4,200 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 200, SND WindFX]
type = PlaySnd
trigger1 = anim = 200
trigger1 = AnimElemTime(2) = 1
value = 1,0
volumescale = 100
channel = 1
;abspan = 0

[State 200, FX]
type = Explod
trigger1 = anim = 200
trigger1 = AnimElemTime(3) = 0
anim = 6200
ID = 6200
space = stage
pos = 188 * facing * Const(size.xscale),-188 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 0
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 30,0
getPower = 30,10
givePower = 0,0
pauseTime = 10,9
guard.pauseTime = 10,9
animType = light
ground.type = High
air.type = Low
ground.hitTime = 13
ground.slideTime = 13
guard.hitTime = 13
air.hitTime = 13
ground.velocity = -18 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -18 * Const(size.xscale)
ground.cornerpush.veloff = -18 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 28; From Hit to revocery + 4
forceStand = 0
hitSound = S2,14
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor(-200)))
envShake.time = 6
envShake.ampl = 4
envShake.freq = 120
p1sprpriority =  1
p2sprpriority = -1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 200
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 200, End]
type = ChangeState
trigger1 = Anim = 200
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------- Stand Middle ATK ---------
[StateDef 205]
type = S
movetype= A
physics = S
anim = 205
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 30

[State 205, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = anim = 205
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4,205 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 205, SND WindFX]
type = PlaySnd
trigger1 = anim = 205
trigger1 = AnimElemTime(1) = 2
value = 1,1
volumescale = 100
channel = 1
;abspan = 0

[State 205, Vel]
type = VelAdd
trigger1 = AnimElemTime(2) = 0
x = 18 * Const(size.xscale)

[State 205, FX]
type = Explod
trigger1 = anim = 205
trigger1 = AnimElemTime(3) = 0
anim = 6201
ID = 6201
space = stage
pos = 205 * facing * Const(size.xscale),-296 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 0
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 205, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 50,0
getPower = 40,10
givePower = 0,0
pauseTime = 10,10
guard.pauseTime = 10,10
animType = medium
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 15
ground.velocity = -28 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -7 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -28 * Const(size.xscale)
ground.cornerpush.veloff = -30 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 30; From Hit to revocery + 4
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-280))))
envShake.time = 10
envShake.ampl = 8
envShake.freq = 120
p1sprpriority = 1
p2sprpriority = -1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 205
trigger1 = AnimElemTime(4) >= 1
movetype = I

[State 205, End]
type = ChangeState
trigger1 = Anim = 205
trigger1 = AnimTime = 0
value = 0
ctrl = 1





;-------- Stand Heavy ATK ---------
[StateDef 210]
type = S
movetype= A
physics = S
anim = 210
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 40

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
trigger1 = !time
var(18) = var(18) + 64
ignorehitpause = 1

[State Safe No combo cancel]
type = varset
trigger1 = (var(18) & 64)
trigger1 = AnimElemTime(3) > 0
var(18) = var(18) - 64
ignorehitpause = 1

[State 210, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = anim = 210
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4,210 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 210, SND WindFX]
type = PlaySnd
trigger1 = anim = 210
trigger1 = AnimElemTime(2) = 2
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 210, Vel]
type = VelAdd
trigger1 = AnimElemTime(3) = 0
x = 22 * Const(size.xscale)

[State 210, FX]
type = Explod
trigger1 = anim = 210
trigger1 = AnimElemTime(4) = 0
anim = 6202
ID = 6202
space = stage
pos = 269 * facing * Const(size.xscale),-145 * Const(size.yscale)
bindID = ID
bindtime = 4
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 70,0
getPower = 40,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 20
ground.velocity = -30 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -7 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34; From Hit to revocery + 4
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-144))))
envShake.time = 12
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
ID = StateNo

[State 800, Enemy-Can-Not-Tech-Grab]
type = varset
triggerall = (var(19) & 64)
triggerall = Anim = 210
triggerall = AnimElemTime(1) = 3
triggerall = Enemynear,StateType != A
trigger1 = Enemynear,MoveType != I
trigger2 = Enemynear,StateNo >= 200
var(19) = var(19) - 64

[State 800, Enemy-Can-Tech-Grab]
type = varset
triggerall = !(var(19) & 64)
triggerall = Anim = 210
triggerall = AnimElemTime(1) = 3
triggerall = Enemynear,StateType != A
trigger1 = Enemynear,MoveType = I
trigger2 = Enemynear,StateNo < 200
var(19) = var(19) + 64

[State 800, Grab]
type = hitdef
triggerall = P2MoveType != H && !(P2StateNo = [150,159])
triggerall = Anim = 210
triggerall = AnimElemTime(1) = 3
triggerall = PrevStateNo != 100 || AILevel
trigger1 = AILevel = 0
trigger1 = Command = "holdfwd" || Command = "holdback"
trigger2 = AILevel
attr = S, NT
hitflag = M-
priority = 5, Miss
sparkNo = -1 + 0 * (var(53) := -1)
hitsound = s2, 14
p1facing = 0
p2facing = 0
p1stateno = 800
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0
ID = 800
Fall.Envshake.Time = 0
Fall.Envshake.Ampl = ID * 2; Send Thrower ID; For 1080p screen only Even number can pass, so x 2


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 210
trigger1 = AnimElemTime(5) >= 1
movetype = I

[State 210, End]
type = ChangeState
trigger1 = Anim = 210
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------- Crouch Weak ATK ---------
[StateDef 300]
type = C
movetype= A
physics = C
anim = 300
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 20

[State 300, times]
type = varset
trigger1 = !time
trigger1 = PrevStateNo != 300
var(10) = 0

[State 300, times]
type = varadd
trigger1 = !time
trigger1 = PrevStateNo = 300
var(10) = 1

[State 300, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = Random < 700
trigger1 = anim = 300
trigger1 = AnimElemTime(1) = 2
trigger1 = var(6) := 1
value = 4,300 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 300, SND WindFX]
type = PlaySnd
trigger1 = anim = 300
trigger1 = AnimElemTime(1) = 2
value = 1,0
volumescale = 100
channel = 1
;abspan = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 300, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C,NA
hitFlag = MAFD
guardFlag = L
priority = 4, Hit
damage = 25,0
getPower = 30,10
givePower = 0,0
pauseTime = 11,9
guard.pauseTime = 11,9
animType = light
ground.type = Low
air.type = Low
ground.hitTime = 13
ground.slideTime = 13
guard.hitTime = 13
air.hitTime = 13
ground.velocity = -12 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -12 * Const(size.xscale)
ground.cornerpush.veloff = -14 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 28; From Hit to revocery + 4
forceStand = 0
hitSound = S2,10
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := 0)
envShake.time = 6
envShake.ampl = 4
envShake.freq = 120
p1sprpriority = 1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 300
trigger1 = AnimElemTime(3) >= 1
movetype = I

[State 300, End]
type = ChangeState
trigger1 = Anim = 300
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;-------- Crouch Middle ATK ---------
[StateDef 305]
type = C
movetype= A
physics = C
anim = 305
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 30

[State 305, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = anim = 305
trigger1 = AnimElemTime(2) = 1
trigger1 = Random < 700
trigger1 = var(6) := 1
value = 4, 305 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 305, SND WindFX]
type = PlaySnd
trigger1 = anim = 305
trigger1 = AnimElemTime(2) = 1
value = 1,1
volumescale = 100
channel = 1
;abspan = 0

[State 305, FX]
type = Explod
trigger1 = anim = 305
trigger1 = AnimElemTime(3) = 0
anim = 6204
ID = 6204
space = stage
pos = 232 * facing * Const(size.xscale),-245 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 1
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 305, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 45,0
getPower = 30,10
givePower = 0,0
pauseTime = 10,10
guard.pauseTime = 10,10
animType = medium
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 15
ground.velocity = -28 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -7 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -28 * Const(size.xscale)
ground.cornerpush.veloff = -28 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 30; From Hit to revocery + 4
forceStand = 0
hitSound = S2,14
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := -226)
envShake.time = 10
envShake.ampl = 8
envShake.freq = 120
p1sprpriority = 1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 305
trigger1 = AnimElemTime(4) >= 1
movetype = I

[State 305, End]
type = ChangeState
trigger1 = Anim = 305
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;-------- Crouch Heavy ATK ---------
[StateDef 310]
type = C
movetype= A
physics = C
anim = 310
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 40

[State 310, Vel]
type = velAdd
trigger1 = anim = 310
trigger1 = AnimElemTime(3) = 0
x = 26 * Const(Size.xScale)

[State 310, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = anim = 310
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4,310 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 310, SND FX]
type = PlaySnd
trigger1 = anim = 310
trigger1 = AnimElemTime(3) = 0
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 310, FX]
type = Explod
trigger1 = anim = 310
trigger1 = AnimElemTime(4) = 0
anim = 6205
ID = 6205
space = stage
pos = 304 * facing * Const(size.xscale), -9 * Const(size.yscale)
bindID = ID
bindtime = 2
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 310, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = C,NA
hitFlag = MAFD
guardFlag = L
priority = 4, Hit
damage = 70,0
getPower = 30,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = back
ground.type = Trip
air.type = Trip
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -8 * Const(size.xscale), -11  * Const(size.yscale)
air.velocity = -8 * Const(size.xscale), IFElse(P2StateType = L,0,-11) * Const(size.yscale)
guard.velocity = -8 * Const(size.xscale)
ground.cornerpush.veloff = -8 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34; From Hit to revocery + 4
forceStand = 0
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := -20)
envShake.time = 10
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
ID = StateNo


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 310
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 310, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1




;===================== Air Moves ==================

;--------------------- Air Light ATK --------------
[StateDef 400]
type = A
movetype= A
physics = N
anim = 400
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 20

[State 400, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = anim = 400
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4, IFElse(Random<500,400,300)
volumescale = 100
channel = 0
;abspan = 0

[State 400, SND WindFX]
type = PlaySnd
trigger1 = anim = 400
trigger1 = AnimElemTime(2) = 1
value = 1,0
volumescale = 100
channel = 1
;abspan = 0

[State 400, FX]
type = Explod
trigger1 = anim = 400
trigger1 = AnimElemTime(3) = 0
anim = 6206
ID = 6206
space = stage
pos = 203 * facing * Const(size.xscale),-172 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = -30
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 400, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = 25,0
getPower = 30,10
givePower = 0,0
pauseTime = 8,8
guard.pauseTime = 8,8
animType = light
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 12
ground.velocity = -18 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -18 * Const(size.xscale)
ground.cornerpush.veloff = -18 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 28; From Hit to revocery + 4
forceStand = 0
hitSound = S2,14
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := -198)
envShake.time = 6
envShake.ampl = 4
envShake.freq = 120
p1sprpriority = 1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 400
trigger1 = AnimElemTime(4) >= 1
movetype = I

[State Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 52

[State 400, End]
type = ChangeState
trigger1 = Anim = 400
trigger1 = AnimElemTime(6) >= 0
value = 50

;----------- Air Mid Attack ----------------
[StateDef 405]
type = A
movetype= A
physics = N
anim = 405
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 30

[State 405, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = AnimElemTime(3) = 1
trigger1 = var(6) := 1
value = 4, 405+Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 405, SND WindFX]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 1,1
volumescale = 100
channel = 1
;abspan = 0

[State 405, FX]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 6207
ID = 6207
space = stage
pos = 112 * facing * Const(size.xscale),-144 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
removeongethit = 1
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 405, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A,NP
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = 45,0
getPower = 30,10
givePower = 0,0
pauseTime = 10,10
guard.pauseTime = 10,10
animType = medium
ground.type = High
air.type = High
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 15
ground.velocity = -28 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -28 * Const(size.xscale)
ground.cornerpush.veloff = -28 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 30; From Hit to revocery + 4
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := Floor(-164))
envShake.time = 10
envShake.ampl = 8
envShake.freq = 120
p1sprpriority = 1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = AnimElemTime(5) >= 1
movetype = I

[State Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 52

[State 405, End]
type = ChangeState
trigger1 = AnimElemTime(8) >= 0
value = 50



;--------------------- Air Heavy ATK --------------
[StateDef 410]
type = A
movetype= A
physics = N
anim = 410
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 40

[State 410, SND Voice]
type = PlaySnd
triggerall = var(6) > 40
trigger1 = anim = 410
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4, 410 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 410, SND WindFX]
type = PlaySnd
trigger1 = anim = 410
trigger1 = AnimElemTime(2) = 1
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 410, FX]
type = Explod
trigger1 = Anim = 410
trigger1 = AnimElemTime(4) = 0
anim = 6205
ID = 6205
space = stage
pos = 201 * facing * Const(size.xscale), -99 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 10
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 410, HitDef]
type = HitDef
trigger1 = Anim = 410
trigger1 = AnimElem = 4
attr = A,NA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = 65,0
getPower = 30,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 20
ground.velocity = -28 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -8 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -28 * Const(size.xscale)
ground.cornerpush.veloff = -30 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34; From Hit to revocery + 4
forceStand = 0
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := Floor(-112))
envShake.time = 10
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
ID = StateNo



[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 410
trigger1 = AnimElemTime(5) >= 1
movetype = I

[State Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 52

[State 410, End]
type = ChangeState
trigger1 = AnimElemTime(8) >= 0
value = 50



;================ Call supporter ==================
[Statedef 600]
type = S
movetype= I
physics = S
anim = 600
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 600, Reset Counter]
type = varset
trigger1 = !time
var(6) = 1

[State 600, Redirect back]
type = ChangeState
trigger1 = NumHelper(30000)
trigger1 = Helper(30000),StateNo = 30470
value = PrevStateNo
ctrl = IFElse(AILevel && PrevStateNo = 21,0,1)

[State 600, snd voice Mokito]
type = playsnd
triggerall = var(6) != 1
triggerall = var(31) = 2
triggerall = Anim = 600
triggerall = NumHelper(30000)
triggerall = Helper(30000),StateNo = [30260,30279]
trigger1 = AnimElem = 2
trigger1 = var(6):= 1
value = 4, (600 + 10*var(31)) + random%2
channel = 0

[State 600, snd voice Uiharu]
type = playsnd
triggerall = var(6) != 1
triggerall = var(31) = 4
triggerall = Anim = 600
triggerall = NumHelper(30000)
triggerall = Helper(30000),StateNo = [30460,30479]
trigger1 = AnimElem = 2
trigger1 = var(6):= 1
value = 4, (600 + 10*var(31)) + random%2
channel = 0


[State 600, snd voice General]
type = playsnd
triggerall = var(6) != 1
triggerall = Anim = 600
trigger1 = AnimElem = 2
trigger1 = var(6) := 1
value = 4, 600 + random%4
channel = 0

[State 600, End]
type = ChangeState
trigger1 = Anim = 600
trigger1 = Animtime = 0
value = 0
ctrl = 1

;=============== Throw =========
[StateDef 800]
type = S
movetype= A
physics = S
sprpriority = -1
ctrl = 0
velset = 0, 0
facep2 = 1

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
var(18) = var(18) + 64
ignorehitpause = 1

[State 800, Our-Anim]
type = ChangeAnim
trigger1 = time = 0
value = 800

[State 800, Enemy-Anim]
type = TargetState
trigger1 = NumTarget(StateNo)
trigger1 = time = 0
value = 11800

[State 800, Enemy-Anim]
type = TargetState
trigger1 = NumTarget(StateNo)
trigger1 = time = 11
value = 7120

[State 800, Enemy-Anim]
type = TargetState
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = 7120 && Target(StateNo),Time >= 14
value = 7121 + !(Target(StateNo),pos y = 0)

[State 800, Enemy-Facing]
type = TargetFacing
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),facing = facing
value = -1
ID = StateNo


[State 800, Trun var]
type = varset
triggerall = AILevel = 0
trigger1 = time = 0
var(9) = 0 + Command = "holdback"

[State 800, Posfix_before_turn]
type = PosAdd
triggerall = BackEdgeBodyDist < 60
triggerall = Anim = 800
triggerall = AnimElemTime(1) = 10
trigger1 = AILevel = 0
trigger1 = var(9)
trigger2 = AILevel
trigger2 = BackEdgeDist < FrontEdgeDist
x = Floor(60 * Const(Size.xScale))

[State 800, Trun-Human]
type = Turn
triggerall = AIlevel = 0
triggerall = Anim = 800
triggerall = AnimElemTime(1) = 10
trigger1 = var(9)

[State 800, Trun-AI]
type = Turn
triggerall = AIlevel
triggerall = Anim = 800
triggerall = AnimElemTime(1) = 10
trigger1 = BackEdgeDist < FrontEdgeDist

[State 800, TargetPos]
type = TargetBind
triggerall = NumTarget(StateNo)
triggerall = Anim = 800
trigger1 = AnimElemTime(1) = 0 || AnimElemTime(1) = 10
time = 1
pos = 100 * Const(size.xscale), 0 * Const(size.yscale)

[State 800, SND Voice]
type = PlaySnd
trigger1 = Anim = 800
trigger1 = AnimElemTime(1) = 2
value = 4,800 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 800, Zoom Shake Helper]
type = helper
trigger1 = !NumExplod(7666)
trigger1 = Anim = 800
trigger1 = AnimElemTime(1) = 0
stateno = 7666
ID = 7666
name = "ZoomHelper - Shake"
facing = 1
postype = back
pos = Floor(GameWidth / 2.0) , 0
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = 8 ; Give Shake time

[State 800, Circle]
type = Explod
trigger1 = !NumExplod(7434)
trigger1 = Anim = 800
trigger1 = AnimElemTime(1) = 0
anim = 7434
ID = 7434
space = stage
pos = 111 * facing * Const(size.xscale), -278 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.2 * Const(size.xscale), 0.2 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;remappal = 7000,2
ignorehitpause = 0

[State 800, Circle grow]
type = ModifyExplod
trigger1 = NumExplod(7434)
trigger1 = Anim = 800
trigger1 = (AnimElemTime(1) = [3,8])
ID = 7434
scale = (0.2 + 0.1*(AnimElemTime(1) -2)) * Const(size.xscale), (0.2 + 0.1*(AnimElemTime(1) -2)) * Const(size.yscale)
trans = add
alpha = 256 - 30*(AnimElemTime(1) -2),256

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 800
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 800, Proceed]
type = ChangeState
trigger1 = AnimTime = 0
value = 801
ctrl = 0

[State 800, Lost Target]
type = ChangeState
triggerall = Anim = 800
trigger1 = !NumTarget(800)
trigger2 = NumTarget(800)
trigger2 = !((Target(800),StateNo = [11800,11801]) || (Target(800),StateNo = [7120,7122]))
trigger3 = NumTarget(800)
trigger3 = (Target(800),StateNo = [11802,11804])
value = 808

;------------- Phase 2 Grab ATK -------
[StateDef 801]
type = S
movetype= A
physics = S
sprpriority = 1
ctrl = 0
velset = 0, 0
facep2 = 1
anim = 801

[State 801, TargetBind]
type = TargetBind
triggerall = NumTarget(800)
trigger1 = Anim = 801
trigger1 = Target(800),StateNo = 7120 && Target(800),Time = 15
ID = 800
time = 1
pos = Floor(280 * Const(Size.xScale)), Floor(-240 * Const(size.yScale))

[State 801, Enemy-Anim]
type = TargetState
trigger1 = NumTarget(800)
trigger1 = Target(800),StateNo = 7120 && Target(800),Time >= 22
value = 7122

[State 801, Jump]
type = VelAdd
trigger1 = Anim = 801
trigger1 = AnimElemTime(4) = 0
x =  6 * Const(Size.xScale)
y = -22 * Const(Size.yScale)

[State 801, StateTypeChange]
type = StateTypeSet
trigger1 = Anim = 801
trigger1 = AnimElemTime(4) = 0
statetype = A
movetype = A
physics = N

[State 801, HitDef]
type = HitDef
trigger1 = Anim = 801
trigger1 = AnimElem = 7
attr = S,NA
hitFlag = MAFD
guardFlag = 
priority = 5, Hit
damage = 110,0
getPower = 40,10
givePower = 0,0
pauseTime = 12,14
guard.pauseTime = 12,14
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 16
ground.velocity = -32 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -32 * Const(size.xscale), IFElse(P2StateType = L,0,-8) * Const(size.yscale)
guard.velocity = -32 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-191 ))))
envShake.time = 12
envShake.ampl = 10
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
ID = StateNo

[State Safe No combo cancel]
type = varset
trigger1 = (var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
var(18) = var(18) - 64
ignorehitpause = 1


[State , Gravity]
type = VelAdd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State , Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = vel y > 0 && pos y >= 0
value = 52





;------------- Lost Target ------------
[StateDef 808]
type = S
movetype= I
physics = S
;sprpriority = 1
ctrl = 0
velset = 0, 0

[State 808, Our-Anim]
type = ChangeAnim
trigger1 = time = 0
value = 130

[State Hitby]
type = HitBy
trigger1 = 1
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 809
slot = 7
time = 1
ignorehitpause = 1

[State 808, End]
type = ChangeState
trigger1 = Time >= 10
value = 809
ctrl = 0

;------ Slide away ----------
[StateDef 809]
type = S
movetype= H
physics = S
;sprpriority = 1
ctrl = 0
velset = 0, 0
anim = 150

[State 809, vel]
type = veladd
trigger1 = time = 1
x = -32 * Const(Size.xScale)

[State 809, Anim]
type = ChangeAnim
trigger1 = time >= 18
trigger1 = Anim != 140
value = 140

[State 809, End]
type = SelfState
trigger1 = Anim = 140
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;=============== Throw Enemy side =========
[StateDef 11800]
type = S
movetype= H
physics = S
;sprpriority = 0
ctrl = 0

;cant use sysvar(1) as para since used by tech move
;[State para, X]
;type = varset
;trigger1 = !time
;sysvar(0) = Const720p(-240)

;[State para, Y]
;type = varset
;trigger1 = !time
;sysvar(2) = Const720p(-280)

[State para, Custom Gravity]
type = varset
trigger1 = 1
sysfvar(3) = Const720p(0.8)

[State para, ExitState]
type = varset
trigger1 = 1
sysvar(4) = 7122

[State 11800, Anim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 11800

[State 11800, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 11800, Throw-Tech-var]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[State 11800, Throw-Tech-var]
type = varset
trigger1 = command= "c" && (command="holdfwd" || command="holdback")
sysvar(1) = 1

[State 11800, Throw-tech]
type = ChangeState
trigger1 = PlayerIDExist(GetHitvar(Fall.Envshake.Ampl) / 2)
trigger1 = PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),var(19) & 64
trigger1 = time = 7 && sysvar(1)
value = ifelse(SelfAnimExist(26863),11803,11802)

;;May cause bug on Some PC with antivius? ust targetfacing instead
;[State 11800, Turn]
;type = Turn
;triggerall = PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),StateNo = 800
;trigger1 = Facing = PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Facing


[State 11800, End]
type = SelfState
trigger1 = AnimTime = 0
trigger2 = time > 60
value = 0
ctrl = 1


;----------- Normal Target side tech-throw ------------
[StateDef 11802]
type = S
movetype= H
physics = S
;sprpriority = 0
ctrl = 0

[State 11802, Anim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 11802

[State 11802, Anim-overwrite]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(200)
value = 200

[State 11802, Anim-overwrite]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5945)
value = 5945

[State 11802, Flash]
type = PalFx
trigger1 = time <= 19
time = 1
add = 256 - (13*time), 256 - (13*time), 256 - (13*time)


[State 11802, End]
type = SelfState
trigger1 = AnimTime = 0
trigger2 = time > 46
value = 0
ctrl = 1

;----------- DBFCI Target side tech-throw ------------
[StateDef 11803]
type = S
movetype= H
physics = S
;sprpriority = 0
ctrl = 0

[State 11803, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 26863

[State 11803, Anim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(200)
value = 200

[State 11803, Anim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5945)
value = 5945

[State 11803, Beterhans-Template]
type = SelfState
trigger1 = (var(19) & 128)
value = 11804

[State 11803, Flash]
type = PalFx
trigger1 = time <= 19
time = 1
add = 256 - (13*time), 256 - (13*time), 256 - (13*time)

[State 11803, End]
type = SelfState
trigger1 = AnimTime = 0
trigger2 = time > 46
value = 0
ctrl = 1

;--------- Beterhans Type Escape for DBFCI --------
[StateDef 11804]
type = S
movetype= A
physics = S
anim = 5945
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 11804, Flash]
type = PalFx
trigger1 = time <= 19
time = 1
add = 256 - (13*time), 256 - (13*time), 256 - (13*time)

[State 11804, SND Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = 4,11804 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 11804, SND WindFX]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = 1,1
volumescale = 100
channel = 1
;abspan = 0

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 205
trigger1 = AnimElemTime(4) >= 1
movetype = I

[State 11804, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;=============== Impact Skill 01 =========
[StateDef 900]
type = S
movetype= A
physics = S
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
trigger1 = !time
var(18) = var(18) + 64
ignorehitpause = 1

[State 900, Stop]
type = velset
trigger1 = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
x = 0
y = 0

[State 900, Anim]
type = ChangeAnim
trigger1 = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
value = 900
elem = 1

[State 900, HitOverride]
type = HitOverride
trigger1 = Anim = 900
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
attr = SCA,AA,AP
stateno = 900
slot = 7
time = 1

[State 900, Imapct Pause]
type = Pause
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 0
time = 22
endcmdbuftime = 22
movetime = 0
pausebg = 0

[State 900, Impact Helper]
type = helper
triggerall = !NumHelper(7437)
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 0
helpertype = normal
stateno = 7437
ID = 7437
name = "Impact Helper"
postype = P1
pos = 40 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 900, SND Voice]
type = PlaySnd
trigger1 = anim = 900
trigger1 = AnimElemTime(2) = 1
value = 4, 900+Random%2
volumescale = 100
channel = 0
;abspan = 0

[State NotHitby]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0
value = SCA,AA,AP,AT
time = 1

[State NoPush]
type = PlayerPush
trigger1 = AnimElemTime(2) >= 0
value = 0

[State 900, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = AnimElemTime(2) = 0
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 14; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1


[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow


[State 900, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 901
ctrl = 0

;---------- Teleporting ----------
[StateDef 901]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
anim = 901
velset = 0,0
facep2 = 1

[State 901, Move]
type = veladd
trigger1 = PrevStateNo = 900
trigger1 = time = 0
x =  54 * Const(Size.xScale)
y = -14 * Const(Size.yScale)

[State 901, Stop]
type = velset
trigger1 = vel x
trigger1 = MoveContact
x =  0 * Const(Size.xScale)
y =  0 * Const(Size.yScale)
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 901, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = 0,0
getPower = 40,10
givePower = 0,0
pauseTime = 0,20
guard.pauseTime = 0,20
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 18
ground.velocity = 0 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = 0 * Const(size.xscale), IFElse(P2StateType = L,0,0) * Const(size.yscale)
guard.velocity = 0 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = -1;S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := -1)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := 0)), Floor(0 * (var(56) := Floor((-160))))
;envShake.time = 12
;envShake.ampl = 12
;envShake.freq = 100
;p1sprpriority = 1
;p2sprpriority = 0
forcestand = 1
ID = StateNo

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
var(18) = var(18) + 64
ignorehitpause = 1


[State 901, End Hit]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = NumTarget(901) && MoveHit
trigger1 = Target(901),StateNo = [5000,5030]
value = 906
ctrl = 0

[State 901, End NotHit]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = MoveHit = 0
trigger2 = !NumTarget(901)
trigger3 = NumTarget(901)
trigger3 = !(Target(901),StateNo = [5000,5030])
value = 902
ctrl = 0


;---------- Mo Hit Exit ----------
[StateDef 902]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
anim = 902
velset = 0,0
facep2 = 1

[State NotHitby]
type = NotHitBy
trigger1 = time < 2
value = SCA,AA,AP,AT
time = 1

[State 902, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 0
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 7; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 902, couter reset]
type = varset
trigger1 = AnimElemTime(3) = 0
var(6) = 0

[State 902, Red FX]
type = Explod
triggerall = !NumExplod(7536)
trigger1 = AnimElemTime(3) = 0
anim = 7536
ID = 7536
space = stage
pos = 104 * facing * Const(size.xscale), -167 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = -120
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 902, Red FX Grow]
type = ModifyExplod
triggerall = NumExplod(7536)
trigger1 = var(6) = [0,3]
ID = 7536
scale = (4 - 1*var(6)) * Const(size.xscale), (1 + 1*var(6)) * Const(size.yscale)
trans = add
alpha = 256,256
ignorehitpause = 1

[State 902, Red FX]
type = Explod
triggerall = !NumExplod(7537)
trigger1 = AnimElemTime(3) = 0
anim = 7537
ID = 7537
space = stage
pos = 104 * facing * Const(size.xscale), -167 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),2 * Const(size.yscale)
trans = add
alpha = 256,256
angle = -120
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 902, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
attr = S,SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = 40,0
getPower = 40,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 18
ground.velocity = -8 * Const(size.xscale), -18  * Const(size.yscale)
air.velocity = -8 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := 104)), Floor(0 * (var(56) := Floor((-167))))
envShake.time = 12
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
ID = StateNo

[State Safe No combo cancel]
type = varset
trigger1 = (var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
var(18) = var(18) - 64
ignorehitpause = 1


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 902
trigger1 = AnimElemTime(4) >= 1
movetype = I

[State Gravity]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(3)>= 0
y = Const(Movement.yaccel) * Const(Size.yScale)

[State X movement]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(3) = 0
x = 6 * Const(Size.xScale)

[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 57

[State 902, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;---------- Hit Exit 1 ----------
[StateDef 906]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
anim = 906
velset = 0,0
facep2 = 1



[State 906, PosFix]
type = PosSet
trigger1 = !time && NumTarget(901)
x = Target(901),Pos x - (160 * Const(Size.xScale)) * Target(901),facing
y = Target(901),Pos y + ((Target(901),Const(Size.mid.pos.y) + 100) * Target(901),Const(Size.yScale))

[State 906, Turn]
type = Turn
trigger1= !time && NumTarget(901)
trigger1 = Target(901),facing != facing

[State NoPush]
type = PlayerPush
trigger1 = AnimElemTime(5) < 0
value = 0

[State 906, TargetPosfix]
type = TargetBind
triggerall = !time && NumTarget(901)
trigger1 = Target(901),BackEdgeBodydist < 80
trigger2 = Target(901),FrontEdgeBodydist < 80
time = 1
ID = 901
pos = (200 * Const(Size.xScale)), -Pos y

[State NotHitby]
type = NotHitBy
trigger1 = time < 2
value = SCA,AA,AP,AT
time = 1

[State 906, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 0
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 7; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1




[State 906, couter reset]
type = varset
trigger1 = AnimElemTime(3) = 0
var(6) = 0

[State 906, Red FX]
type = Explod
triggerall = !NumExplod(7536)
trigger1 = AnimElemTime(3) = 0
anim = 7536
ID = 7536
space = stage
pos = 104 * facing * Const(size.xscale), -167 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = -120
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 906, Red FX Grow]
type = ModifyExplod
triggerall = NumExplod(7536)
trigger1 = var(6) = [0,3]
ID = 7536
scale = (4 - 1*var(6)) * Const(size.xscale), (1 + 1*var(6)) * Const(size.yscale)
trans = add
alpha = 256,256
ignorehitpause = 1

[State 906, Red FX]
type = Explod
triggerall = !NumExplod(7537)
trigger1 = AnimElemTime(3) = 0
anim = 7537
ID = 7537
space = stage
pos = 104 * facing * Const(size.xscale), -167 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),2 * Const(size.yscale)
trans = add
alpha = 256,256
angle = -120
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 906, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
attr = S,SA
hitFlag = MAFD
guardFlag = 
priority = 4, Hit
damage = 36,0
getPower = 40,10
givePower = 0,0
pauseTime = 13,13
guard.pauseTime = 13,13
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 18
ground.velocity = -18 * Const(size.xscale), 0 * Const(size.yscale)
air.velocity = -18 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := 104)), Floor(0 * (var(56) := Floor((-167))))
envShake.time = 12
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
Fall.Envshake.Ampl = ID * 2; Send Thrower ID; For 1080p screen only Even number can pass, so x 2
ID = StateNo

;------------ After Hit -------------
[State 906, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = MoveContact = 2 && NumTarget(StateNo)
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 14; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State 906, Enemy-Anim]
type = TargetState
trigger1 = NumTarget(StateNo)
trigger1 = MoveContact = 1
value = 111906

[State 906, Enemy-Anim]
type = TargetState
trigger1 = NumTarget(StateNo)
trigger1 = MoveContact = 2
value = 7120

[State Gravity]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(3)>= 0
y = Const(Movement.yaccel) * Const(Size.yScale)

[State X movement]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(3) = 0
x = 6 * Const(Size.xScale)

[State 906, Fix Pos]
type = Velset
trigger1 = NumTarget(StateNo)
x = 0
y = 0

[State 906, Next]
type = ChangeState
trigger1 = NumTarget(StateNo)
trigger1 = MoveContact > 1
trigger1 = NumHelper(7110)
trigger1 = Helper(7110),time = 14
value = 907


[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 57

[State 906, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;---------- Hit Exit 2 ----------
[StateDef 907]
type = S
movetype= A
physics = S
sprpriority = 1
ctrl = 0
anim = 907
velset = 0,0

[State 907, NoPush]
type = PlayerPush
trigger1 = time < 2
value = 0

[State 907, Turn]
type = Turn
trigger1= !time

[State 907, PosFix]
type = PosSet
trigger1 = !time
y = 0

[State 907, PosFix]
type = PosAdd
trigger1 = !time
x = -200 * Const(Size.xScale)

[State 907, Counter reset]
type = varset
trigger1 = AnimElemTime(3) = 0
var(6) = 0

[State 907, TargetBind]
type = TargetBind
triggerall = NumTarget(906)
trigger1 = !time
time = 1
ID = 906
pos = 280 * Const(Size.xScale),-160 * Const(size.yScale)

[State 907, TargetState]
type = TargetState
triggerall = NumTarget(906)
trigger1 = !time
ID = 906
value = 7122


[State 907, Red FX]
type = Explod
triggerall = !NumExplod(7536)
trigger1 = AnimElemTime(3) = 0
anim = 7536
ID = 7536
space = stage
pos = 250 * facing * Const(size.xscale), -170 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = -90
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 907, Red FX Grow]
type = ModifyExplod
triggerall = NumExplod(7536)
trigger1 = var(6) = [0,3]
ID = 7536
scale = (4 - 1*var(6)) * Const(size.xscale), (1 + 1*var(6)) * Const(size.yscale)
trans = add
alpha = 256,256
ignorehitpause = 1

[State 907, Red FX]
type = Explod
triggerall = !NumExplod(7537)
trigger1 = AnimElemTime(3) = 0
anim = 7537
ID = 7537
space = stage
pos = 250 * facing * Const(size.xscale), -170 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),2 * Const(size.yscale)
trans = add
alpha = 256,256
angle = -90
sprpriority = 2
ownpal = 1
ignorehitpause = 1


[State 907, HitDef]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 3
attr = S,SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 70,0
getPower = 40,10
givePower = 0,0
pauseTime = 18,18
guard.pauseTime = 18,18
animType = hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -18 * Const(size.xscale), -20  * Const(size.yscale)
air.velocity = -18 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -36 * Const(size.xscale)
ground.cornerpush.veloff = -36 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,13
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := 250)), Floor(0 * (var(56) := Floor((-170))))
envShake.time = 18
envShake.ampl = 18
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
Fall.Envshake.Ampl= ID * 2
ID = StateNo

[State Safe No combo cancel]
type = varset
trigger1 = (var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
var(18) = var(18) - 64
ignorehitpause = 1


[State 907, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

[State 907, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;============== Target ==============
[StateDef 111906]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

;[State para, X]
;type = varset
;trigger1 = !time
;sysvar(0) = Const720p(-280)

[State para, X]
type = varset
trigger1 = 1
sysvar(1) = 14;	How long to stay in 7120

;[State para, Y]
;type = varset
;trigger1 = !time
;sysvar(2) = Const720p(-140)

[State para, Custom Gravity]
type = varset
trigger1 = 1
sysfvar(3) = Const720p(1.84)

[State para, ExitState]
type = varset
trigger1 = 1
sysvar(4) = 7122

[State 111906, AnimFreeze]
type = ChangeAnim
trigger1 = time < 120
value = Anim
Elem = AnimElemNo(0)

[State 111906, fall if in air]
type = SelfState
trigger1 = time >= 120
trigger1 = Pos y < 0
value = 5030

[State 111906, fall if in air]
type = SelfState
trigger1 = time >= 120
trigger1 = Pos y > 0
value = 5100

[State 111906, normal]
type = SelfState
trigger1 = time >= 120
value = 0
ctrl = 1

;=============== Impact Skill 02 =========
[StateDef 950]
type = C
movetype= A
physics = C
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State 950, Anim]
type = ChangeAnim
trigger1 = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
value = 950
elem = 1

[State 950, HitOverride]
type = HitOverride
trigger1 = Anim = 950
attr = SCA,AA,AP
stateno = 950
slot = 7
time = 1

[State 950, Imapct Pause]
type = Pause
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 0
time = 22
endcmdbuftime = 22
movetime = 0
pausebg = 0

[State 950, Imapct Pause]
type = Pause
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 1
time = 8
endcmdbuftime = 8
movetime = 8
pausebg = 0

[State 950, Impact Helper]
type = helper
triggerall = !NumHelper(7437)
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 0
helpertype = normal
stateno = 7437
ID = 7437
name = "Impact Helper"
postype = P1
pos = -60 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 950, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = Anim = 950
trigger1 = AnimElemTime(2) = 4
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 14; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State NotHitBy]
type = NotHitBy
trigger1 = NumHelper(7110)
value = SCA,AA,AP,AT
time = 1

[State 950, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 0

;-------- ATK Phase ---------
[StateDef 951]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0
anim = 951
facep2 = 1

[State 951, Init Add]
type = veladd
trigger1 = !time
x =  4 * Const(Size.xScale)
y = -20 * Const(Size.yScale)

[State 951, Init Pos]
type = PosAdd
trigger1 = !time
x = IFElse(P2BodyDist x < (100 * Const(Size.xScale)),P2Bodydist x,100 * Const(Size.xScale))
y = IFElse(P2BodyDist x < (120 * Const(Size.xScale)) && Enemynear,StateType = A && Enemynear,Pos y < (-150 * Const(Size.yScale)) ,(P2Dist y) + (80 * Const(Size.yScale)),-110 * Const(Size.yScale))

[State 111, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 0
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 7; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 951, SND Voice]
type = PlaySnd
trigger1 = anim = 951
trigger1 = AnimElemTime(2) = 1
trigger1 = var(6) := 1
value = 4,950 + Random%4
volumescale = 100
channel = 0
;abspan = 0

[State 951, SND WindFX]
type = PlaySnd
trigger1 = anim = 951
trigger1 = AnimElemTime(2) = 1
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 951, FX]
type = Explod
trigger1 = anim = 951
trigger1 = AnimElemTime(4) = 0
anim = 6209
ID = 6209
space = stage
pos = 169 * facing * Const(size.xscale),-245 * Const(size.yscale)
bindID = ID
bindtime = 3
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 951, HitDef]
type = HitDef
trigger1 = Anim = 951
trigger1 = AnimElem = 4
attr = A,SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = 110,0
getPower = 30,10
givePower = 0,0
pauseTime = 13,13
guard.pauseTime = 13,13
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -8 * Const(size.xscale), -28  * Const(size.yscale)
air.velocity = -8 * Const(size.xscale), IFElse(P2StateType = L,0,-28) * Const(size.yscale)
guard.velocity = -8 * Const(size.xscale)
ground.cornerpush.veloff = -30 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := Floor(-123))
envShake.time = 10
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
ID = 950


[State 951, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 950, Land]
type = ChangeState
triggerall = StateType = A
trigger1 = Pos y >= 0
trigger1 = Vel y > 0
value = 57
ctrl = 0

;=============== Impact Skill Overhead ==============
[StateDef 930]
type = U
movetype= U
physics = U
sprpriority = 1
ctrl = 0
poweradd = 30

[State 930, No Vel]
type = velset
trigger1 = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
x = 0
y = 0

[State 930, Trigger]
type = varset
trigger1 = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
var(10) = 0

[State 930, StateType]
type = StateTypeSet
triggerall = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
statetype = S
movetype = A
physics = S

[State 930, StateType overRide]
type = StateTypeSet
trigger1 = time = 0
movetype = A

[State 930, Trigger]
type = varset
triggerall = !var(10)
triggerall = Anim = 930
triggerall = AnimElemTime(3) >= 0
triggerall = MoveContact
trigger1 = !AILevel
trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger2 = AILevel
trigger2 = MoveHit && NumTarget(930)
trigger2 = Target(930),StateNo = [5000,5030]
var(10) = 1

[State 930, Anim]
type = ChangeAnim
trigger1 = !(PrevStateNo = [5000,5020])
trigger1 = time = 0
value = 40
elem = 1

[State 930, Jump]
type = StateTypeSet
triggerall = !(PrevStateNo = [5000,5020])
triggerall = StateType != A
trigger1 = Anim = 40 && AnimTime = 0
statetype = A
movetype = A
physics = N

[State 930, Jump]
type = veladd
triggerall = !(PrevStateNo = [5000,5020])
trigger1 = Anim = 40 && AnimTime = 0
x = 4 * Const(Size.xScale)
y = -29 * Const(Size.yScale)

[State 930, Anim]
type = ChangeAnim
triggerall = !(PrevStateNo = [5000,5020])
trigger1 = Anim = 40 && AnimTime = 0
value = 930
elem = 1


[State 930, HitOverride]
type = HitOverride
trigger1 = Anim = 930
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 3
attr = SCA,AA,AP
stateno = 930
slot = 7
time = 1

[State 930, Imapct Pause]
type = Pause
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 0
time = 22
;endcmdbuftime = 22
movetime = 0
pausebg = 1
ignorehitpause = 1

[State -2, Impact Helper]
type = helper
triggerall = !NumHelper(7437)
trigger1 = (PrevStateNo = [5000,5020])
trigger1 = time = 0
helpertype = normal
stateno = 7437
ID = 7437
name = "Impact Helper"
postype = P1
pos = 0 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 930, SND Voice]
type = PlaySnd
trigger1 = anim = 930
trigger1 = AnimElemTime(2) = 1
value = 4, 930
volumescale = 100
channel = 0
;abspan = 0

[State 930, SND WindFX]
type = PlaySnd
trigger1 = anim = 930
trigger1 = AnimElemTime(2) = 2
value = 1,1
volumescale = 100
channel = 1
;abspan = 0

[State 930, FX]
type = Explod
trigger1 = anim = 930
trigger1 = AnimElemTime(3) = 0
anim = 6206
ID = 6206
space = stage
pos = 203 * facing * Const(size.xscale),-172 * Const(size.yscale)
bindID = ID
bindtime = 4
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = -35
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State 930, HitDef]
type = HitDef
triggerall = !(MoveContact || MoveReversed)
triggerall = time != 0
trigger1 = Anim = 930
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
attr = A,NP
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = 90,8
getPower = 30,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = medium
ground.type = High
air.type = Low
ground.hitTime = 24
ground.slideTime = 24
guard.hitTime = 24
air.hitTime = 24
ground.velocity = -18 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -32 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))),0 * (var(56) := -198)
envShake.time = 12
envShake.ampl = 8
envShake.freq = 120
p1sprpriority = 1
ID = StateNo

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 930
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Land]
type = ChangeState
triggerall = StateType = A
trigger1 = vel y > 0 && pos y >= 0
value = IFElse(var(10),931,52)


;---- Follow Ups ----
[Statedef 931]
type = S
movetype= A
physics = S
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 931, Anim]
type = ChangeAnim
trigger1 = time = 0
value = 931
elem = 1

[State 931, Dash]
type = velset
trigger1 = Anim = 931
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(6)<0
x = 16 * Const(Size.xScale)



[State 931, SND Voice]
type = PlaySnd
trigger1 = anim = 931
trigger1 = AnimElemTime(2) = 1
value = 4, 931
volumescale = 100
channel = 0
;abspan = 0

[State 931, SND WindFX]
type = PlaySnd
trigger1 = anim = 931
trigger1 = AnimElemTime(2) = 2
value = 0,110
volumescale = 60
channel = 2
;abspan = 0

[State 931, SND WindFX]
type = PlaySnd
trigger1 = anim = 931
trigger1 = AnimElemTime(2) = 1 || AnimElemTime(6) = 1
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 931, FX]
type = Explod
trigger1 = anim = 931
trigger1 = AnimElemTime(3) = 0
anim = 6201
ID = 6201
space = stage
pos = 205 * facing * Const(size.xscale),-296 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 0
ownpal = 1
ignorehitpause = 0


[State 931, HitDef last hit]
type = HitDef
trigger1 = anim = 931
trigger1 = AnimElem = 3
attr = S,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 39,4
getPower = 30,10
givePower = 0,0
pauseTime = 40,40
guard.pauseTime = 12,12
animType = Up
ground.type = High
air.type = Low
ground.hitTime = 26
ground.slideTime = 26
guard.hitTime = 26
air.hitTime = 26
ground.velocity = -4 * Const(size.xscale), -35  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), -35 * Const(size.yscale)
guard.velocity = -24 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7457)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-280))))
envShake.time = 28
envShake.ampl = 14
envShake.freq = 100
envshake.phase = 90
p1sprpriority = 1
p2sprpriority = -1
ID = 931


[State 931, Zoom Helper]
type = helper
triggerall = !NumHelper(7661)
trigger1 = MoveType = A && MoveHit = 1 && NumTarget(StateNo)
trigger1 = Target(StateNo),Time = 0 && (Target(StateNo),StateNo = [5000,5100])
stateno = 7661
ID = 7661
name = "ZoomHelper - Hit"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = Target(StateNo),ID; Give Target ID to Child
ignorehitpause = 1

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
trigger1 = !time
var(18) = var(18) + 64
ignorehitpause = 1


;------- After attack ------
[State 931, Anim Hit]
type = ChangeAnim
triggerall = Anim = 931
trigger1 = MoveContact && NumTarget(931)
trigger1 = Target(931),StateNo = [5000,5099]
value = 41
elem = 1

[State 931, Anim No Hit]
type = ChangeAnim
triggerall = Anim = 931 && MoveContact
trigger1 = MoveGuarded || !NumTarget(931)
trigger2 = NumTarget(931)
trigger2 = !(Target(931),StateNo = [5000,5099])
value = 43
elem = 1

[State 931, No Contect]
type = ChangeState
triggerall = Anim = 931 && !MoveContact
trigger1 = !AnimTime
value = 0
ctrl = 1

[State 931, Jump]
type = VelSet
trigger1 = Anim = 41 && AnimElemTime(1) = 0
x = 4 * Const(Size.xScale)
y = 1.38 * const(velocity.jump.y) * Const(Size.yScale)

[State 931, Jump]
type = VelSet
trigger1 = Anim = 43 && AnimElemTime(1) = 0
x = 0.8 * const(velocity.jump.back.x) * Const(Size.xScale)
y = Const(velocity.jump.y) * Const(Size.yScale)

[State 931, Jump]
type = StateTypeSet
triggerall = StateType != A
trigger1 = Anim = 41 || Anim = 43
statetype = A
movetype = I
physics = N

[State 931, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim != 931
movetype = I

[State Safe No combo cancel]
type = varset
triggerall = Anim = 41
trigger1 = vel y
trigger1 = (var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
var(18) = var(18) - 64
ignorehitpause = 1

[State Change]
type = ChangeState
triggerall = Anim = 41
trigger1 = vel y
value = 50
ctrl = 1

[State Change]
type = ChangeState
triggerall = StateType = A
trigger1 = vel y > 0 && Pos y >= 0
value = 52

;================ Blast ==================
[Statedef 980]
type = S
movetype= A
physics = S
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1

;Type 1 = Power; Type 2 = Cancel; Type 3 = Escape
[State 980, Type Detect for debug]
type = varset
triggerall = !time
trigger1 = !(var(10) = [1,3])
var(10) = 1


[State 980, Anim]
type = ChangeAnim
trigger1 = !time
value = 980 + (var(10) - 1)

[State 980, Blast]
type = helper
triggerall = !NumHelper(985)
trigger1 = (Anim = [980,982]) && AnimElemtime(1) <= 1
stateno = 985
ID = 985
helpertype = normal
keyctrl = 0
name = "Blast"
postype = P1
pos = 0 * Const(size.xscale),Const(size.mid.pos.y) * Const(size.yscale)
ownpal = 1
size.proj.doscale = ID
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
;ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

;--------- Types ----------------
[State 980, Blast Type]; Power UP
type = varset
triggerall = !(var(19) & 2)
trigger1 = var(10) = 1
trigger1 = (Anim = [980,982]) && AnimElem = 1
var(19) = var(19) + 2

[State 980, Blast Type]; Cancel
type = varset
triggerall = !(var(19) & 4)
trigger1 = var(10) = 2
trigger1 = (Anim = [980,982]) && AnimElem = 1
var(19) = var(19) + 4

[State 980, Blast Type]; Escape
type = varset
triggerall = !(var(19) & 8)
trigger1 = var(10) = 3
trigger1 = (Anim = [980,982]) && AnimElem = 1
var(19) = var(19) + 8


[State 980, SND Voice Power-UP]
type = PlaySnd
trigger1 = (var(19) & 2)
trigger1 = Anim = [980,982]
trigger1 = AnimElemTime(2) = 0
value = 4,980 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 980, SND Voice Cancel]
type = PlaySnd
trigger1 = (var(19) & 4)
trigger1 = Anim = [980,982]
trigger1 = AnimElemTime(2) = 0
value = 4,985 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 980, SND Voice Escape]
type = PlaySnd
trigger1 = (var(19) & 8)
trigger1 = Anim = [980,982]
trigger1 = AnimElemTime(2) = 0
value = 4,990 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 980, pos to air]
type = velset
triggerall = (Anim = [980,982])
trigger1 = time = 0
Y = IFElse(Pos y >= 0, -16,-12) * Const(size.yscale)

[State 980, vel freeze]
type = velset
triggerall = (Anim = [980,982])
trigger1 = Pos Y < (-90 * Const(size.yscale))
trigger1 = time >= 8
Y = 0

[State 980, StateType]
type = StateTypeSet
triggerall = StateType != A
trigger1 = (Anim = [980,982]) && AnimElemTime(1) = 1
StateType = A
MoveType = A
Physics = A

[State 980, StateType]
type = StateTypeSet
triggerall = StateType = A
trigger1 = (Anim = [980,982]) && AnimElemTime(4) = 1
MoveType = I

[State 980, NotHitBy]
type = NotHitBy
triggerall = (Anim = [980,981])
trigger1 = MoveType = A
value = SCA,AA,AP,AT
time = 2

[State 980, NotHitBy]
type = NotHitBy
trigger1 = Anim = 982
value = SCA,AA,AP,AT
time = 8

[State 980, AnimLand]
type = ChangeAnim
trigger1 = (Anim = [980,982])
trigger1 = AnimTime = 0
value = 986

[State 980, vel pushdown]
type = velset
triggerall = Anim = 986
trigger1 = AnimElemTime(1) = 0
Y = 22 * Const(size.yscale)

[State 980, End]
type = ChangeState
triggerall = Anim = 986
trigger1 = vel y > 0 && pos y >= 0
value = 52

;================ Special Moves ====================
;---------------- SP 01 Steel Darts ----------------------------
[StateDef 1000]
type = U
movetype= A
physics = U
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State 1000, Type]
type = varset
triggerall = !AILevel
trigger1 = time = 0
var(10) = IFElse(Command = "holdc",2,IFElse(Command = "holdb",1,0))

[State 1000, var10 AI-Init-No Normal]
type = varset
triggerall = AILevel && !time
trigger1 = P2MoveType != H
var(10) = 0 + ((P2Bodydist x / Const(Size.xScale)) = [250,480]) + 2*((P2Bodydist x / Const(Size.xScale)) > 480 )

[State 1000, var10 AI-Init-No Combo]
type = varset
triggerall = AILevel && !time
trigger1 = P2MoveType = H
var(10) = 0 + ((P2Bodydist x / Const(Size.xScale)) = [150,380]) + 2*((P2Bodydist x / Const(Size.xScale)) > 380 )


[State 1000, on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y >= 0 || StateType != A
statetype = S
physics = S

[State 1000, not_on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y < 0 || StateType = A
statetype = A
physics = N

[State 1000, Ground_vel]
type = VelSet
trigger1 = !time && StateType != A
x = 0
y = 0

[State 1000, Ground_pos]
type = PosSet
trigger1 = !time && StateType != A
y = 0

[State 1000, air_vel]
type = VelMul
trigger1 = StateType = A
trigger1 = time = [0,6]
x = 0.7
y = 0.7

[State 1000, air_vel]
type = VelSet
trigger1 = StateType = A
trigger1 = time = 7
x = 0
y = 0


[State 1000, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = (Anim = [1020,1023])
trigger1 = AnimElemTime(7) >= 0
y = Const(Movement.yaccel) * Const(Size.yScale)


[State 1000, Anim INIT]
type = ChangeAnim
trigger1 = time = 0
value = 1000 + var(10) + 20*(StateType = A)
elem = 1

[State 1000, Anim Charge Human]
type = ChangeAnim
triggerall = !AILevel
triggerall = (Command = "holda" || Command = "holdb" || Command = "holdc")
trigger1 = (Anim = [1000,1002]) || (Anim = [1020,1022])
trigger1 = AnimElemTime(2) = 3
trigger2 = Anim = 1003 || Anim = 1023
trigger2 = AnimElemTime(3) = -1
value = 1003 + 20*(StateType = A)
elem = 1

[State 1000, Anim Charge AI Hold]
type = ChangeAnim
triggerall = AILevel
triggerall = (((Anim = [1000,1002]) || (Anim = [1020,1022])) && AnimElemTime(2) = 3) || ((Anim = 1003 || Anim = 1023) && AnimElemTime(3) = -1)
trigger1 = NumHelper(1010)
trigger2 = ((P2Bodydist x / Const(Size.xScale)) > 710) || P2Dist x < 0
trigger3 = !(P2Dist y = [-220,220])
value = 1003 + 20*(StateType = A)
elem = 1

[State 1000, Anim ATK]
type = ChangeAnim
triggerall = Anim = 1003 || Anim = 1023 
triggerall = AnimElemTime(3) < 0
trigger1 = time > 60
trigger2 = !AILevel
trigger2 = !(Command = "holda" || Command = "holdb" || Command = "holdc")
trigger3 = AILevel
trigger3 = NumHelper(1010)
trigger3 = Helper(1010), Pos x = [Enemynear,Pos x - 100,Enemynear,Pos x + 100]
trigger3 = Helper(1010), Pos y = [Helper(1010),fvar(20) - 100,Helper(1010),fvar(20) + 100]
value = 1003 + 20*(StateType = A)
elem = 3

[State 1000, Charge-Helper]
type = helper
triggerall = !NumHelper(7004)
trigger1 = Anim = (1003 + 20*(StateType = A))
trigger1 = AnimElemTime(2) = 1
helpertype = normal
stateno = 7004
ID = 7004
name = "Kuroko-Charge-Helper"
postype = P1
pos = 30 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = 16; 16 ticks to kill
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 1000, ATK Distance]
type = AttackDist
trigger1 = MoveType = A
value = Floor((5000) * Const(Size.xScale))

[State 1000, SND Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 4,1000 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 1000, SND WindFX]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 1000, FX]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 6210
ID = 6210
space = stage
pos = 160 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.6 * Const(size.xscale),0.6 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1

[State 1000, Projectile]
type = helper
trigger1 = !NumExplod(StateNo+5)
trigger1 = AnimElemTime(4) = 0
stateno = StateNo+5
ID = StateNo+5
name = "Projectile - Needle"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = Floor(300 + 200*var(10) * Const(Size.xScale)), Floor((Const(Size.mid.pos.y) - 30) * Const(Size.yScale))
;supermovetime = 65535
;pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1

[State 1000, Teleport-Portail]
type = helper
triggerall = !NumHelper(1010)
trigger1 = NumHelper(7004)
trigger1 = Helper(7004),time = 2
stateno = 1010
ID = 1010
name = "Teleport-Portail"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = Floor(300 + 200*var(10) * Const(Size.xScale)), Floor((Const(Size.mid.pos.y) - 30) * Const(Size.yScale))
;supermovetime = 65535
;pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 1000, End]
type = ChangeState
trigger1 = StateType != A
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = pos y >= 0 && Vel y >= 0
value = 52




;---------------- SP 01 EX Steel Darts ----------------------------
[StateDef 1050]
type = U
movetype= A
physics = U
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = -1000

[State 1050, Type]
type = varset
trigger1 = time = 0
var(10) = 3


[State 1050, on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y >= 0 || StateType != A
statetype = S
physics = S

[State 1050, not_on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y < 0 || StateType = A
statetype = A
physics = N

[State 1050, Ground_vel]
type = VelSet
trigger1 = !time && StateType != A
x = 0
y = 0

[State 1050, Ground_pos]
type = PosSet
trigger1 = !time && StateType != A
y = 0

[State 1050, air_vel]
type = VelMul
trigger1 = StateType = A
trigger1 = time = [0,6]
x = 0.7
y = 0.7

[State 1050, air_vel]
type = VelSet
trigger1 = StateType = A
trigger1 = time = 7
x = 0
y = 0


[State 1050, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = AnimElemTime(7) >= 0
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 1050, CameraVarOn]
type = varset
trigger1 = !(var(19) & 256)
trigger1 = time = 0
var(19) = var(19) + 256

[State 1050, CameraVarOff]
type = varset
trigger1 = (var(19) & 256)
trigger1 = AnimElemTime(2) = 1
var(19) = var(19) - 256


[State 1050, EX-Charge-Helper]
type = helper
triggerall = !NumHelper(7550)
trigger1 = time = 0
helpertype = normal
stateno = 7550
ID = 7550
name = "EX-Charge-Helper"
postype = P1
pos = 0 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535

[State 1050, Zoom Helper]
type = helper
triggerall = (var(19) & 256)
trigger1 = !NumHelper(7660)
trigger1 = time = 0
stateno = 7660
ID = 7660
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 1050, SuperChargePause]
type = SuperPause
trigger1 = time = 0
time = 20
anim = -1
;sound = s7,1050
p2defmul = 1
darken = 0
movetime = 20



[State 1050, Anim INIT]
type = ChangeAnim
trigger1 = time = 0
value = 1050 + 20*(StateType = A)
elem = 1

[State 1050, Anim Charge Human]
type = ChangeAnim
triggerall = !AILevel
triggerall = (Command = "holda" || Command = "holdb" || Command = "holdc")
trigger1 = Anim = 1050 || Anim = 1070
trigger1 = AnimElemTime(2) = 3
trigger2 = Anim = 1053 || Anim = 1073
trigger2 = AnimElemTime(3) = -1
value = 1053 + 20*(StateType = A)
elem = 1

[State 1050, Anim ATK]
type = ChangeAnim
triggerall = Anim = 1053 || Anim = 1073 
triggerall = AnimElemTime(3) < 0
trigger1 = time > 120
trigger2 = !AILevel
trigger2 = !(Command = "holda" || Command = "holdb" || Command = "holdc")
value = 1053 + 20*(StateType = A)
elem = 3

[State 1050, Charge-Helper]
type = helper
triggerall = !NumHelper(7004)
trigger1 = Anim = (1053 + 20*(StateType = A))
trigger1 = AnimElemTime(2) = 1
helpertype = normal
stateno = 7004
ID = 7004
name = "Kuroko-Charge-Helper"
postype = P1
pos = 0 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = 16; 16 ticks to kill
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 1050, ATK Distance]
type = AttackDist
trigger1 = MoveType = A
value = Floor((999000) * Const(Size.xScale))

[State 1050, SND Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 4,1050
volumescale = 100
channel = 0
;abspan = 0

[State 1050, SND WindFX]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 1,2
volumescale = 100
channel = 1
;abspan = 0

[State 1050, FX]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 6210
ID = 6210
space = stage
pos = 160 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.6 * Const(size.xscale),0.6 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1

[State 1050, Projectile]
type = helper
trigger1 = !NumExplod(StateNo+5)
trigger1 = AnimElemTime(4) = 0
stateno = 1005
ID = StateNo+5
name = "Projectile - Needle"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = Floor(300 + 200*var(10) * Const(Size.xScale)), Floor((Const(Size.mid.pos.y) - 30) * Const(Size.yScale))
;supermovetime = 65535
;pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1

[State 1050, Teleport-Portail]
type = helper
triggerall = !NumHelper(1010)
trigger1 = NumHelper(7004)
trigger1 = Helper(7004),time = 2
stateno = 1010
ID = 1010
name = "Teleport-Portail"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = Floor(300 + 200*var(10) * Const(Size.xScale)), Floor((Const(Size.mid.pos.y) - 30) * Const(Size.yScale))
;supermovetime = 65535
;pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 1050, End]
type = ChangeState
trigger1 = StateType != A
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1050, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = pos y >= 0 && Vel y >= 0
value = 52





;---------------- Sexy Teleport ---------
[StateDef 1100]
type = U
movetype= A
physics = U
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50
velset = 0,0

[State 1100, Type]
type = varset
triggerall = !AILevel
trigger1 = time = 0
var(10) = IFElse(Command = "holdc",2,IFElse(Command = "holdb",1,0))

[State 1100, AI]
type = varset
triggerall = AILevel && !time
trigger1 = time = 0
var(10) = IFElse(P2Bodydist x < (200 * Const(Size.xScale)),0,IFElse(P2Bodydist x < (400 * Const(Size.xScale)),1,2))

[State 1100, on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y >= 0 || StateType != A
statetype = S
physics = S

[State 1100, not_on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y < 0 || StateType = A
statetype = A
physics = N

[State 1100, Ground_vel]
type = VelSet
trigger1 = !time && StateType != A
x = 0
y = 0

[State 1100, Ground_pos]
type = PosSet
trigger1 = !time && StateType != A
y = 0

[State 1100, air_vel]
type = VelMul
trigger1 = StateType = A
trigger1 = time = [0,2]
x = 0.5
y = 0.5

[State 1000, air_vel]
type = VelSet
trigger1 = StateType = A
trigger1 = time = 3
x = 0
y = 0


[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1100 + 10*(StateType = A) + var(10)

[State 1100, SND Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger1 = var(6) := 1
value = 4,1100 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 1100, SND FX]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 1,2
volumescale = 100
channel = 1

[State 1100, Vel 1]
type = VelSet
trigger1 = StateType != A
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
x = 2 * Const(Size.xScale)


[State 1100, Vel 2]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x =  12 * Const(Size.xScale)
y = -20 * Const(Size.yScale)

[State 1100, Vel 3]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x =  (20 + 8*(var(10))) * Const(Size.xScale)

[State 1100, SlowDown]
type = VelMul
trigger1 = Vel x > (10 * Const(Size.xScale))
trigger1 = AnimElemTime(7) >= 0
x = 0.9

[State 1100, StateType]
type = StateTypeSet
trigger1 = StateType != A
trigger1 = AnimElemTime(3) = 0
Statetype = A
Physics = N

[State 1100, Explod Airdash]
type = Explod
triggerAll = !NumExplod(7014)
trigger1 = AnimElemTime(4) = 0
anim = 7014
ID = 7014
space = stage
pos = 0 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,128
;remappal = 6415, 0
ignorehitpause = 1

[State 1100, Explod Air wind]
type = Explod
triggerAll = !NumExplod(7520)
trigger1 = AnimElemTime(4) = 0
anim = 7520
ID = 7520
space = stage
pos = 0 * facing * Const(size.xscale),-180 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = -facing
removetime = -2
vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
accel = -1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.8 * Const(size.xscale),0.8 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 1


[State 1100, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = AnimElemTime(3) >= 0
y = Const(Movement.yaccel) * Const(Size.yScale)


[State 1100, HitDef]
type = HitDef
trigger1 = !MoveContact
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) < 0
attr = A,SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = Ceil(40 + 1.25*var(10)),10
getPower = 40,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = hard
ground.type = low
air.type = low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -4 * Const(size.xscale), -22  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-22) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-169))))
envShake.time = 12
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
ID = StateNo

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
var(18) = var(18) + 64
ignorehitpause = 1

[State SuccessHit]
type = ChangeState
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
value = 1106


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = AnimElemTime(7) >= 0
movetype = I


[State 1100, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = pos y >= 0 && Vel y >= 0
value = 57



;------ Success hit follow up --------
[StateDef 1106]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
facep2 = 1
anim = 1106

[State 1106, stop y]
type = VelMul
trigger1 = time = 0
y = 0

[State 1106, Slowdown]
type = VelMul
trigger1 = time = [0,2]
trigger1 = P2Bodydist x < 10
x = 0.8

[State 1106, Slowdown]
type = VelMul
trigger1 = time > 3
trigger1 = P2Bodydist x < 10
x = 0

[State 1106, HitDef]
type = HitDef
trigger1 = !MoveContact
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
attr = A,ST
hitFlag = MAF
guardFlag = 
priority = 8, Hit
damage = 0,0
getPower = 40,10
givePower = 0,0
pauseTime = 0,18
guard.pauseTime = 0,18
animType = hard
ground.type = low
air.type = low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -4 * Const(size.xscale), -16  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-16) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-272))))
P2StateNo = 111106
p1sprpriority = 1
p2sprpriority = 0
ID = StateNo
Fall.Envshake.Ampl = ID * 2; Send Thrower ID; For 1080p screen only Even number can pass, so x 2

[State 1106, Target Pos]
type = TargetBind
trigger1 = MoveHit
trigger1 = NumTarget(StateNo) 
trigger1 = Target(StateNo),StateNo = 111106
trigger1 = AnimTime < -1
ID = StateNo
time = 1
pos = Floor(80 * Const(Size.xScale)),Floor(-60 * Const(Size.yScale))
ignorehitpause = 1

[State 1106, TargetState Teleport]
type = TargetState
trigger1 = NumTarget(StateNo) 
trigger1 = Target(StateNo),StateNo = 111106
trigger1 = Target(StateNo),time >= 1
trigger1 = AnimElemTime(4) >= 0
value = 7120
ignorehitpause = 1

[State 1106, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = NumTarget(StateNo)
trigger1 = AnimElemTime(4) = 0
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 20; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State NotHitBy]
type = NotHitBy
trigger1 = NumHelper(7110)
value = SCA

[State 1106, Safe if lost target]
type = ChangeAnim
triggerall = Anim = 1106 && !AnimTime
trigger1 = !NumTarget(StateNo) 
trigger2 = NumTarget(StateNo) 
trigger2 = !(Target(StateNo),StateNo = 111106 || (Target(StateNo),StateNo = [7120,7122]))
value = 41

[State 1106, safe]
type = veladd
triggerall = StateType = A
trigger1 = Anim != 1106
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim != 1106
movetype = I

[State 1106, Posfix Target]
type = TargetBind
trigger1 = NumTarget(1106)
trigger1 = AnimTime >= -1
trigger1 = Target(1106),Pos y > -300
time = 1
pos = Floor(80 * Const(Size.xScale)) ,Floor((-300 - Pos y) + (Pos y - Target(1106),Pos y))
ignorehitpause = 1

[State 1106, Next]
type = ChangeState
trigger1 = !AnimTime
value = 1107

[State 1106, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = pos y >= 0 && Vel y >= 0
value = 57



;============== Target 1 ==============
[StateDef 111106]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0



[State 111106, AnimFreeze]
type = ChangeAnim
trigger1 = time < 120
value = Anim
Elem = AnimElemNo(0)

[State 111106, fall if in air]
type = SelfState
trigger1 = time >= 120
trigger1 = Pos y < 0
value = 5030

[State 111106, fall if in air]
type = SelfState
trigger1 = time >= 120
trigger1 = Pos y > 0
value = 5100

[State 111106, normal]
type = SelfState
trigger1 = time >= 120
value = 0
ctrl = 1


;------ Success hit Push Down --------
[StateDef 1107]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0
facep2 = 1
anim = 1107

[State 1107, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = time < 4
value = SCA,AA,AP,AT
time = 1

[State 1107, PosFix]
type = BindToTarget
trigger1 = NumTarget(1106)
trigger1 = !time
time = 1
ID = 1106
pos = Floor(40 * Const(Size.xScale)), Floor(-60 * Const(Size.yScale)), Foot
ignorehitpause = 1

[State 1107, Target-fade-in]
type = TargetState
trigger1 = NumTarget(1106)
trigger1 = !time
value = 7122

[State 1107, Screen]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,IFElse((ScreenPos y / gameheight) > 0.6,1,0)

[State 1107, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 0
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 7; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 1107, slow]
type = veladd
triggerall = StateType = A
trigger1 = AnimElemTime(3) < 0
y = 0.2 * Const(Size.yScale)

[State 1107, slow]
type = veladd
triggerall = StateType = A
trigger1 = AnimElemTime(3) = 0
y = 16 * Const(Size.yScale)

[State 1107, SND Voice]
type = PlaySnd
trigger1 = var(10) != 3
trigger1 = AnimElemTime(1) = 1
value = 4, 1110 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 1107, SND Voice]
type = PlaySnd
trigger1 = var(10) = 3
trigger1 = AnimElemTime(1) = 1
value = 4, 1160 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 1107, TargetState]
type = TargetState
trigger1 = NumTarget(1106)
trigger1 = Target(1106),StateNo != 111107
trigger1 = AnimElemTime(3) >= 0
value = 111107

[State 1107, TargetPos]
type = TargetBind
trigger1 = NumTarget(1106)
trigger1 = Target(1106),StateNo = 111107
pos = 20 * Const(Size.xScale), 20 * Const(Size.yScale)

[State 1107, TargetState]
type = TargetState
trigger1 = NumTarget(1106)
trigger1 = Target(1106),StateNo = 111107
trigger1 = Target(1106),Pos y > -Vel y
value = 111108

[State 1107, Gavity]
type = veladd
triggerall = StateType = A
trigger1 = AnimElemTime(3) >= 0
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 1107, Land]
type = ChangeState
triggerall = StateType = A
trigger1 = pos y >= 0 && Vel y >= 0
trigger2 = NumTarget(1106)
trigger2 = Target(1106),StateNo = 111108
value = 1108

;============== Target 2 ==============
[StateDef 111107]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 111107, AnimFreeze]
type = ChangeAnim2
trigger1 = time < 120
value = 5100
Elem = 1

[State 111107, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 111107, Screen]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 111107, Gavity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 111107, fall if in air]
type = SelfState
trigger1 = time >= 120
trigger1 = Pos y < 0
value = 5030

[State 111107, fall if in air]
type = SelfState
trigger1 = time >= 120
trigger1 = Pos y > 0
trigger2 = Pos y > 0 && vel y > 0
value = 5100


;------ Success hit On Ground --------
[StateDef 1108]
type = C
movetype= A
physics = C
sprpriority = 1
ctrl = 0
facep2 = 1
anim = 1108

[State 1108, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1108, VelFix]
type = VelSet
trigger1 = StateType != A
trigger1 = vel y
x = 0
y = 0

[State 1108, PosFix]
type = PosSet
trigger1 = !time
trigger1 = var(6) := 1
y = Floor(-30 * Const(Size.yScale))


[State 1108, Land-Dust]
type = Explod
trigger1 = var(6) = 1
anim = 7015
ID = 7015
space = stage
pos =  0 * facing * Const(size.xscale),Floor(30 * Const(Size.yScale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
trans = add
alpha = 256,128
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1108, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7015)
trigger1 = var(6) = [8,15]
ID = 7015
scale = (1 + 0.1*(var(6)-7)) * Const(size.xscale),(1 + 0.1*(var(6)-7)) * Const(size.yscale)
trans = add
alpha = 256 - (var(6)-7)*32, 128 + (var(6)-7)*32
ignorehitpause = 1

[State 1108, Land-Dust 2]
type = Explod
trigger1 = var(6) = 1
anim = 7016
ID = 7016
space = stage
pos =  0 * facing * Const(size.xscale),Floor(30 * Const(Size.yScale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
;trans = add
;alpha = 192,256
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1108, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7016)
trigger1 = var(6) = [2,5]
ID = 7016
scale = (1 + 0.2*(var(6)-1)) * Const(size.xscale),(1 + 0.2*(var(6)-1)) * Const(size.yscale)
;trans = add
;alpha = 192,256
ignorehitpause = 1


[State 1108, HitDef]
type = HitDef
trigger1 = !MoveContact
trigger1 = AnimElem = 1
attr = A,SA
hitFlag = MAFD
guardFlag = 
priority = 8, Hit
damage = IFElse(var(10)=3,90,60),IFElse(var(10)=3,90,60)
getPower = 40,10
givePower = 0,0
pauseTime = 17,17
guard.pauseTime = 17,17
animType = hard
ground.type = low
air.type = low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = 0 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = 0 * Const(size.xscale), IFElse(P2StateType = L,0,0) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(47))), Floor(0 * (var(56) := Floor((8))))
p1sprpriority = 1
p2sprpriority = 0
p2stateno = 111108
envshake.time = 16
envshake.freq = 90
envshake.ampl = -20
envshake.phase = 0
ID = StateNo
Fall.Envshake.Ampl = ID * 2; Send Thrower ID; For 1080p screen only Even number can pass, so x 2

[State 1108, End]
type = Velset
triggerall = Anim = 1108
trigger1 = !AnimTime
trigger2 = MoveContact
x = -12 * Const(Size.xScale)
y = -24 * Const(Size.yScale)

[State 1108, StateType]
type = StateTypeSet
triggerall = Anim = 1108
trigger1 = !AnimTime
trigger2 = MoveContact
Statetype = A
movetype= I
physics = N


[State 1108, Anim]
type = ChangeAnim
triggerall = Anim = 1108
trigger1 = !AnimTime
trigger2 = MoveContact
value = 43

[State Safe No combo cancel]
type = varset
triggerall = (var(18) & 64)
trigger1 = MoveContact
var(18) = var(18) - 64
ignorehitpause = 1

[State 1108, Gavity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 1108, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = Anim = 43
trigger1 = pos y >= 0 && Vel y >= 0
value = 57

[State 1108, Counter]
type = varadd
trigger1 = 1
var(6) = 1
ignorehitpause = 1


;============== Target 3 ==============
[StateDef 111108]
type = L
movetype= H
physics = C
velset = 0,0
sprpriority = 0
ctrl = 0

[State 111108, PosFix]
type = PosSet
trigger1 = !time
y = 0

[State 111108, AnimFreeze]
type = ChangeAnim2
trigger1 = !time
value = 111108

[State 111108, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 111108, next]
type = ChangeState
trigger1 = time >= 17
value = 111109

[State 111108, fall if in air]
type = SelfState
trigger1 = time > 60
value = 5100

;============== Target 4 ==============
[StateDef 111109]
type = A
movetype= H
physics = N
sprpriority = 0
ctrl = 0
facep2 = 1

[State 111109, AnimFreeze]
type = ChangeAnim2
trigger1 = !time
value = 111109

[State 1108, TargetVelAdd]
type = VelSet
trigger1 = !time
x = -12 * PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Const(Size.xScale)
y = -22 * PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Const(Size.yScale)

[State 1111303, Gravity]
type = veladd
trigger1 = time
trigger1 = StateType = A
y = Const720p(GetHitvar(yaccel) * Enemynear,Const(Size.yScale))

[State 111109, fall if in air]
type = SelfState
trigger1 = time
trigger1 = Pos y >= 0 && Vel y >= 0
value = 5110



;---------------- EX Sexy Teleport ---------
[StateDef 1150]
type = U
movetype= A
physics = U
sprpriority = 1
ctrl = 0
poweradd = -1000
facep2 = 1
velset = 0,0

[State 1150, Type]
type = varset
triggerall = !AILevel
trigger1 = time = 0
var(10) = 3


[State 1150, on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y >= 0 || StateType != A
statetype = S
physics = S

[State 1150, not_on_Ground]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y < 0 || StateType = A
statetype = A
physics = N

[State 1150, Ground_vel]
type = VelSet
trigger1 = !time && StateType != A
x = 0
y = 0

[State 1150, Ground_pos]
type = PosSet
trigger1 = !time && StateType != A
y = 0

[State 1150, air_vel]
type = VelMul
trigger1 = StateType = A
trigger1 = time = [0,2]
x = 0.5
y = 0.5

[State 1150, CameraVarOn]
type = varset
trigger1 = !(var(19) & 256)
trigger1 = time = 0
var(19) = var(19) + 256

[State 1150, CameraVarOff]
type = varset
trigger1 = (var(19) & 256)
trigger1 = AnimElemTime(2) = 1
var(19) = var(19) - 256


[State 1150, EX-Charge-Helper]
type = helper
triggerall = !NumHelper(7550)
trigger1 = time = 0
helpertype = normal
stateno = 7550
ID = 7550
name = "EX-Charge-Helper"
postype = P1
pos = 0 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535

[State 1150, Zoom Helper]
type = helper
triggerall = (var(19) & 256)
trigger1 = !NumHelper(7660)
trigger1 = time = 0
stateno = 7660
ID = 7660
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 1150, SuperChargePause]
type = SuperPause
trigger1 = time = 0
time = 20
anim = -1
;sound = s7,1050
p2defmul = 1
darken = 0
movetime = 20


[State 1000, air_vel]
type = VelSet
trigger1 = StateType = A
trigger1 = time = 3
x = 0
y = 0


[State 1150, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1150 + 10*(StateType = A)

[State 1150, SND Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger1 = var(6) := 1
value = 4,1150
volumescale = 100
channel = 0
;abspan = 0

[State 1150, SND FX]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 1,2
volumescale = 100
channel = 1

[State 1150, Vel 1]
type = VelSet
trigger1 = StateType != A
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
x = 2 * Const(Size.xScale)


[State 1150, Vel 2]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x =  12 * Const(Size.xScale)
y = -20 * Const(Size.yScale)

[State 1150, Vel 3]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x =  (40) * Const(Size.xScale)

[State 1150, SlowDown]
type = VelMul
trigger1 = Vel x > (10 * Const(Size.xScale))
trigger1 = AnimElemTime(7) >= 0
x = 0.9

[State 1150, StateType]
type = StateTypeSet
trigger1 = StateType != A
trigger1 = AnimElemTime(3) = 0
Statetype = A
Physics = N

[State 1150, Explod Airdash]
type = Explod
triggerAll = !NumExplod(7014)
trigger1 = AnimElemTime(4) = 0
anim = 7014
ID = 7014
space = stage
pos = 0 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,128
;remappal = 6415, 0
ignorehitpause = 1

[State 1105, Explod Air wind]
type = Explod
triggerAll = !NumExplod(7520)
trigger1 = AnimElemTime(4) = 0
anim = 7520
ID = 7520
space = stage
pos = 0 * facing * Const(size.xscale),-180 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = -facing
removetime = -2
vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
accel = -1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.8 * Const(size.xscale),0.8 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 1

[State 1150, Red FX]
type = Explod
triggerall = !NumExplod(7536)
trigger1 = AnimElemTime(4) = 0
trigger1 = var(6) := 1
anim = 7536
ID = 7536
space = stage
pos = 130 * facing * Const(size.xscale), -170 * Const(size.yscale)
bindID = ID
bindtime = 4
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
trans = add
alpha = 224,256
angle = -90
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1150, Red FX Grow]
type = ModifyExplod
triggerall = NumExplod(7536)
trigger1 = var(6) = [1,4]
ID = 7536
scale = (3 - 0.6*(var(6)-1)) * Const(size.xscale), (3 + 0.6*(var(6)-1)) * Const(size.yscale)
trans = add
alpha = 224,256
ignorehitpause = 1


[State 1150, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = AnimElemTime(3) >= 0
y = Const(Movement.yaccel) * Const(Size.yScale)


[State 1150, HitDef]
type = HitDef
trigger1 = !MoveContact
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) < 0
attr = A,SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = 50,10
getPower = 40,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = hard
ground.type = low
air.type = low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -4 * Const(size.xscale), -22  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-22) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2Bodydist x + Enemynear,Const(size.ground.front)/2))), Floor(0 * (var(56) := Floor((-169))))
envShake.time = 12
envShake.ampl = 12
envShake.freq = 100
p1sprpriority = 1
p2sprpriority = 0
ID = StateNo

[State Safe No combo]
type = varset
trigger1 = !(var(18) & 64)
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
var(18) = var(18) + 64
ignorehitpause = 1

[State SuccessHit]
type = ChangeState
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = [5000,5030]
value = 1106


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = AnimElemTime(7) >= 0
movetype = I


[State 1150, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = pos y >= 0 && Vel y >= 0
value = 57

[State 1150, Counter]
type = VarAdd
trigger1 = var(6)
var(6) = 1
ignorehitpause = 1


;================ Trump Card Move ==================
[Statedef 2900]
type = S
movetype= A
physics = S
anim = 2900
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 2900, subtract Trump card number]
type = varset
trigger1 = !time
var(22) = IFElse(var(22)>=1,var(22)-1,0)

[State NotHitby]
type = NotHitBy
trigger1 = Anim = 2900
time = 1
value = SCA,AT,AP,AA

[State 2900, Trump-Charge-Helper]
type = helper
triggerall = !NumHelper(7550)
trigger1 = time = 0
helpertype = normal
stateno = 7560
ID = 7560
name = "Trump-Charge-Helper"
postype = P1
pos = -30 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535

[State 2900, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = AnimElemTime(2) = 0
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 14; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow


[State 2900, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 2901
ctrl = 1


;---------- Follow up -----------
[Statedef 2901]
type = A
movetype= A
physics = N
anim = 2902
velset = 0,0
sprpriority = 1
ctrl = 0

[State 2901, Vel Up]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(1) = 0
x = 0 * Const(Size.yScale)
y = -14 * Const(Size.yScale)

[State 2901, PosFix]
type = PosAdd
trigger1 = !time
x = IFElse((P2BodyDist x - 40) < Floor(320 * Const(Size.xScale)),(P2BodyDist x - 40),Floor(320 * Const(Size.xScale)))
y = -300 * Const(Size.yScale)

[State 1107, Screen]
type = ScreenBound
trigger1 = AnimElemTime(9) < 0
value = 1
movecamera = 1,IFElse((ScreenPos y / gameheight) > 0.6,1,0)

[State 1107, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
ignorehitpause = 1


[State 2901, Chair]
type = Explod
trigger1 = !NumExplod(6230)
trigger1 = Anim = 2902
trigger1 = AnimElemTime(1) = 0
trigger1 = var(6) := 1
anim = 6230
ID = 6230
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 0
sprpriority = 0
ownpal = 0
;remappal = 7000,2
ignorehitpause = 0

;----- Fade in -----
[State 2901, PalFX fade in]
type = PalFX
trigger1 = time = [0,3]
time = 1
add = 256 - (85 * time),256 - (85 * time),256 - (85 * time)
mul = 256,256,256
color = 256

[State 2901, Explod Teleport]
type = Explod
triggerall = !NumExplod(7531)
trigger1 = var(6) = 1
anim = 7530
ID = 7531
space = stage
pos = 0 * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 6
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
angle = 0
sprpriority = 3
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 2901, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7531)
trigger1 = var(6) = [1,6]
ID = 7531
scale = (4 - (0.6 * var(6))) * Const(size.xscale),(0.3 + (0.28 * var(6))) * Const(size.yscale)
trans = add
alpha = 256,256



[State 2901, SND Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = 4, 2900 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 2901, Vel Up]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(4) = 0
x = 2 * Const(Size.yScale)
y = -30 * Const(Size.yScale)

[State 2901, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)


[State 2901, Projectile]
type = helper
trigger1 = !NumExplod(StateNo+5)
trigger1 = AnimElemTime(4) = 0
stateno = 2905
ID = StateNo+5
name = "Projectile - Chair"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = Floor(172 * Const(Size.xScale)), Floor((-20) * Const(Size.yScale))
;supermovetime = 65535
;pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1

[State 2900, Trump Move Timer set]
type = varset
trigger1 = AnimElemTime(5) = -1
var(24) = 1200 + 27; (27 is buffer for compensation)

[State 2901, Land]
type = ChangeState
trigger1 = Vel y > 0
trigger1 = Vel y > -(Pos y)
value = 57

[State 2901, Counter]
type = varadd
trigger1 = var(6)
var(6) = 1
ignorehitpause = 1












;=================== Super Move 01 =======================
[Statedef 3000]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 1
ctrl = 0
poweradd = -2000
facep2 = 1

[State 3000, Posfix]
type = PosSet
trigger1 = !time
y = 0


[State Unguardable Ticks]
type = VarSet
triggerall = !(PrevStateNo = [5000,5100])
trigger1 = anim = 3000 && animelemtime(1)=1 && NumEnemy
trigger1 = !(P2StateNo = [120,155])
var(17) = 66

;-------- Power Up --------------
[State Level]
type = varset
trigger1 = time = 0
var(10) = 0

[State Level up hunman by trump cards]
type = varadd
triggerall = !AILevel
triggerall = var(22) && var(6) > 8 ;# var(6) Must > Command Buffer time
triggerall = time > 9 && time < 50
trigger1 = Command = "a+c" || Command = "y"
trigger1 = var(6) := 1
var(10) = 1

[State Level up AI by trump cards]
type = varadd
triggerall = AILevel
triggerall = var(22) && var(6) > 8 ;# var(6) Must > Command Buffer time
triggerall = time > 9 && time < 50
trigger1 = P2Life - (351 * fvar(29)) = [1 , 66*var(22)*fvar(29)]
trigger1 = var(6) := 1
var(10) = 1

[State Level up AI by Support Climax]
type = varadd
triggerall = var(6) > 8 ;# var(6) Must > Command Buffer time
triggerall = (var(21) & 2)
trigger1 = time = 24
trigger1 = var(6) := 1
var(10) = 1

[State trump card]
type = varadd
triggerall = var(22)
triggerall = !(var(21) & 2)
trigger1 = var(10) && var(6) = 1
var(22) = -1

[State Shake power up]
type = EnvShake
triggerall = var(22)
trigger1 = var(10) && var(6) = 1
time = 10
freq = 90
ampl = 8
phase = 30
persistent = 0

[State SND power up]
type = PlaySnd
trigger1 = var(10)
trigger1 = var(6) = 1
value = 7,2900
volumescale = 100
channel = 8
abspan = 0

[State PalFx when power-up]
type = PalFx
trigger1 = var(10)
trigger1 = var(6) = [1,16]
time = 1
add = 256 - 16*var(6), 256 - 16*var(6), 256 - 16*var(6)
mul = 256,256,256
invertall = 0
color = 256

[State Explod Clear]
type = RemoveExplod
trigger1 = var(10)
trigger1 = var(6) = 1

[State Explod power up wave]
type = Explod
trigger1 = !NumExplod(7443)
trigger1 = var(10)
trigger1 = var(6) = 1
anim = 7443
ID = 7443
space = stage
pos = (10) * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),2.0 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
remappal = 7000,IFElse((var(21) & 2),5,1)
ignorehitpause = 0

[State Explod Power Up ring]
type = Explod
trigger1 = !NumExplod(7442)
trigger1 = var(10)
trigger1 = var(6) = 1
anim = 7442
ID = 7442
space = stage
pos = (10) * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -1
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale),0.5 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
remappal = 7442,IFElse((var(21) & 2),1,0)
ignorehitpause = 0

[State Explod Power Up ring grow1]
type = ModifyExplod
trigger1 = NumExplod(7442)
trigger1 = var(6) = [1,12]
ID = 7442
scale = (0.5 + 0.14*var(6)) * Const(size.xscale),(0.5 + 0.14*var(6)) * Const(size.yscale)
trans = add
alpha = 256,256

[State Explod Power Up ring grow2]
type = ModifyExplod
trigger1 = NumExplod(7442)
trigger1 = var(6) = [13,18]
ID = 7442
scale = (2.2 + 0.46*(var(6) -12)) * Const(size.xscale),(2.2 + 0.46*(var(6)-12)) * Const(size.yscale)
trans = add
alpha = 256 - 40*(var(6) -12),256

[State Explod Power Up ring remove]
type = RemoveExplod
trigger1 = NumExplod(7442)
trigger1 = var(6) >= 19
ID = 7442

;--------- Power Up END ------------

[State 3000, Anim]
type = ChangeAnim
trigger1 = time = 0 && Anim != 3000
trigger1 = !(PrevStateNo = [5000,5020])
value = 3000

[State NotHitby]
type = NotHitBy
trigger1 = Anim = 3000
trigger2 = Anim = 3001 && AnimElemTime(2) <= 0
time = 1
value = SCA,AA,AT,AP

[State 3000, CameraVarOn]
type = varset
trigger1 = !(var(19) & 256)
trigger1 = time = 0
var(19) = var(19) + 256

[State 3000, CameraVarOff]
type = varset
trigger1 = (var(19) & 256)
trigger1 = Anim = 3000
trigger1 = AnimElemTime(2) = 36
var(19) = var(19) - 256

[State 3000, Zoom Helper]
type = helper
triggerall = (var(19) & 256)
trigger1 = !NumHelper(7662)
trigger1 = time = 0
stateno = 7662
ID = 7662
name = "Super - ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 3000, SuperChargePause]
type = SuperPause
triggerall = !(PrevStateNo = [5000,5100])
trigger1 = anim = 3000 && animelemtime(1) = 0
time = 64
anim = -1
;sound = s7,1050
p2defmul = 1
darken = 0
movetime = 64

[State 3000, Super-Charge-Helper]
type = helper
triggerall = !NumHelper(7570)
trigger1 = time = 0
helpertype = normal
stateno = 7570
ID = 7570
name = "Super-Charge-Helper"
postype = P1
pos = 10 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535

[State 3000, Super-Portrait-Helper]
type = helper
triggerall = !NumHelper(7602)
trigger1 = Anim = 3000
trigger1 = AnimElemTime(1) = 12
helpertype = normal
stateno = 7602
ID = 7602
name = "Super-Portrait-Helper"
postype = P1
pos = -40 * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = 1 * Const(Size.xScale)
size.yScale = 1 * Const(Size.yScale)
size.proj.doscale = (9002 + Random%3); Anim to DisPlay
supermovetime = 65535
pausemovetime = 65535

[State 3000, SND Voice]
type = PlaySnd
trigger1 = Anim = 3000
trigger1 = AnimElemTime(1) = 2
value = 4,3000 + Random%2
volumescale = 100
channel = 0
;abspan = 0

;------ Anime -------
[State 3000, Anime]
type = ChangeAnim
trigger1 = Anim = 3000 && !AnimTime
trigger1 = var(6) := 1
value = 3001

[State 3000, Run]
type = VelSet
trigger1 = Anim = 3001
x = Const(velocity.run.fwd.x) * Const(Size.xscale) * IFElse(NumHelper(7110) && !NumHelper(7111),2,1)

[State 3000, Snd-Steps]
type = PlaySnd
triggerall = !(NumHelper(7110) && !NumHelper(7111))
trigger1 = Anim = 3001
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
;abspan = 0


[State 3000, Teleport Mask]
type = helper
trigger1 = !NumHelper(7110)
trigger1 = Anim = 3001
trigger1 = AnimElemTime(2) = 3 || AnimElemTime(6) = 5
trigger2 = Anim = 3003
trigger2 = AnimElemTime(3) = 0
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = IFElse(Anim = 3003,25,12); Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1


[State Invisiable if masked]
type = AssertSpecial
triggerall = NumHelper(7110) && !NumHelper(7111)
trigger1 = Anim = 3001
trigger2 = Anim = 3003
trigger2 = AnimElemTime(3) > 1
flag = invisible
flag2 = noshadow

[State NotHitby]
type = NotHitBy
trigger1 = NumHelper(7110) || NumHelper(7111)
value = SCA
ignorehitpause = 1

[State 3000, Teleport Mask out]
type = helper
trigger1 = !NumHelper(7111)
trigger1 = var(6) > 2
trigger1 = Anim = 3001
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(1) = 0
trigger2 = Anim = 3003
trigger2 = AnimElemTime(1) = 1
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = IFElse(Anim = 3003,4,7); Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1



[State 3100, HitDef]
type = HitDef
;triggerall = !NumTarget(StateNo)
trigger1 = Anim = 3001 && var(6) > 1
trigger2 = Anim = 3003
trigger2 = AnimElemTime(5) < 0
attr = S,HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 0,0
pauseTime = 0,12
guard.pauseTime = 0,12
animType = Light
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 12
ground.velocity = -2 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -2 * Const(size.xscale), IFElse(P2StateType = L,0,-2) * Const(size.yscale)
guard.velocity = -12 * Const(size.xscale)
ground.cornerpush.veloff = -12 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 0
fall.recover = 1
fall.recoverTime = 32
forceStand = 1
hitSound = -1;S2,19
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7450)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 180 + 0 * (var(55) := 180), -200 + 0 * (var(56) := -200)
;envShake.time = 8
;envShake.ampl = 6
;envShake.freq = 120
p1sprpriority = 1
p1sprpriority = 0
ID = StateNo
NoChainID = StateNo
Fall.Envshake.Ampl= ID * 2; Tell target Who am I and fix 1080p issue
mindist = Floor(110 * Const(Size.xScale)),0
maxdist = Floor(120 * Const(Size.xScale)),0

[State Stop]
type = VelSet
triggerall = vel x
trigger1 = NumTarget(StateNo)
x = 0
ignorehitpause = 1

[State 3000, Hit and Grab]
type = ChangeAnim
trigger1 = Anim = 3001 && MoveHit
trigger1 = NumTarget(StateNo)
trigger1 = (Target(StateNo),StateNo = [5000,5039]) || (Target(StateNo),StateNo = 1113000)
value = 3003

;---- Target State Change ----

;Freeze Target
[State 3000, TargetState]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target(StateNo),StateNo != 1113000 && Target(StateNo),StateNo != 1113001 && Target(StateNo),StateNo != 1113002 && Target(StateNo),StateNo != 7120
trigger1 = Anim = 3000
trigger2 = Anim = 3003
trigger2 = AnimElemTime(3) < 0
value = 1113000
;ID = StateNo

;Hit Target
[State 3000, TargetState]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target(StateNo),StateNo != 1113001 && Target(StateNo),StateNo != 1113002 && Target(StateNo),StateNo != 7120
trigger1 = Anim = 3003
trigger1 = AnimElemTime(3) >= 0
value = 1113001
;ID = StateNo

;TelePort Target
[State 3000, TargetState]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target(StateNo),StateNo != 1113002 && Target(StateNo),StateNo != 7120
trigger1 = Anim = 3003
trigger1 = AnimElemTime(3) >= 0
trigger1 = Target(StateNo),StateNo = 1113001 && Target(StateNo),time >= 1
value = 7120
;ID = StateNo

[State 3000, BlackOut]
type = helper
triggerall = !NumHelper(7130)
trigger1 = Anim = 3003
trigger1 = AnimElemTime(3) = 11
helpertype = normal
stateno = 7130
ID = 7130
name = "Black our trans"
postype = back
pos = Floor(GameWidth / 2.0), 0
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
;size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 16; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

;[State MoveBack]
;type = VelSet
;triggerall = NumHelper(7130)
;trigger1 = Helper(7130),Var(5) = 1
;x = -99999 * Const(Size.xScale)

[State 3000, Anime]
type = ChangeAnim
triggerall = Anim = 3001
trigger1 = var(6) > 50
trigger2 = MoveGuarded
trigger3 = MoveHit && NumTarget(StateNo)
trigger3 = !(Target(StateNo),StateNo = [5000,5039])
value = 3002

[State 3000, Hit SND]
type = PlaySnd
trigger1 = Anim = 3003
trigger1 = AnimElemTime(3) = 0
value = 2,10
volumescale = 100
channel = 2


[State 3000, Next]
type = ChangeState
trigger1 = Anim = 3003 && AnimTime = 0
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = (Target(StateNo),StateNo = [1113000,1113002]) || (Target(StateNo),StateNo = [7120,7122])
value = 3001

[State 3000, End if 3003 failed]
type = ChangeState
trigger1 = Anim = 3003 && AnimTime = 0
value = 57
ctrl = 0


[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 3002
movetype = I

[State 3000, End]
type = ChangeState
trigger1 = Anim = 3002
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3000, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1




;------ Remove windows ----
[Statedef 3001]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0

[State 3001, TargetState force again]
type = TargetState
trigger1 = NumTarget(3000)
trigger1 = Target(3000),StateNo != 1113002
value = 1113002
;ID = 3000
ignorehitpause = 1

[State PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA

;------ Phase --------
[State 3001, INIT]
type = varset
trigger1 = !time
var(5) = 0

[State 3001, Run]
type = varset
trigger1 = var(5) = 0
trigger1 = Anim = 3004
trigger1 = var(6) := 1
var(5) = 1


[State 3001, StageMove]
type = varset
trigger1 = var(5) = 1
trigger1 = var(6) = 34
trigger1 = var(6) := 1
var(5) = 2

[State 3001, Stage Stop Move]
type = varset
trigger1 = var(5) = 2
trigger1 = var(6) >= 122
trigger1 = var(6) := 1
var(5) = 3

[State 3001, Stage Stop Move]
type = varset
trigger1 = var(5) = 3
trigger1 = var(6) > 36
trigger1 = var(6) := 1
var(5) = 4

;------ Phase End ---

[State ScreenOff]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Counter]
type = varset
trigger1 = time = 0
var(6) = 0

[State Pos Fix]
type = PosSet
trigger1 = !time
x = -340 * facing * Const(Size.xScale)
y = -100 * Const(Size.yScale)

[State Init Vel]
type = VelSet
trigger1 = !time
y = -12 * Const(Size.yScale)

[State Init Anim]
type = ChangeAnim
trigger1 = !time
value = 41
Elem = 4

[State 3001, House Helper]
type = helper
triggerall = !NumHelper(3010)
trigger1 = !time
helpertype = normal
stateno = 3010
ID = 3010
name = "House Helper 01"
postype = back
pos = Floor(GameWidth / 2.0), 0
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
;size.proj.doscale = Target(3000),ID; IF not this state Kill Aura
;size.shadowoffset = Target(3000),ID; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1

[State 3001, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 3001, Land]
type = ChangeAnim
trigger1 = StateType = A
trigger1 = Vel y >= -(Pos y)
value = 47

[State 3001, StateType]
type = StateTypeSet
trigger1 = StateType = A
trigger1 = Anim != 41
statetype = S

[State 3001, Fix Vel]
type = VelSet
trigger1 = StateType != A && vel y
y = 0

[State 3001, Fix Pos]
type = PosSet
trigger1 = StateType != A && Pos y
y = 0

[State 3001, Anim]
type = ChangeAnim
trigger1 = Anim = 47 && AnimTime = 0
value = 3004

[State 3001, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 47
trigger1 = AnimElemTime(1) = 0
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 3001, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 3004
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 3001, SND Voice]
type = PlaySnd
trigger1 = anim = 3004
trigger1 = AnimElemTime(4) = 1
value = 4,3002 + Random%2
volumescale = 100
channel = 0
;abspan = 0
persistent = 0

[State 3001, Snd-Window]
type = PlaySnd
triggerall = Anim = 3004 && NumHelper(3010)
trigger1 = Floor(Pos x - Helper(3010),Pos x) * facing = [-69,-54]
trigger2 = Floor(Pos x - Helper(3010),Pos x) * facing = [530,542]
trigger3 = Floor(Pos x - Helper(3010),Pos x) * facing = [889,901]
trigger4 = Floor(Pos x - Helper(3010),Pos x) * facing = [1334,1346]
trigger5 = Floor(Pos x - Helper(3010),Pos x) * facing = [1676,1688]
trigger6 = Floor(Pos x - Helper(3010),Pos x) * facing = [2155,2167]
value = 5,3000
volumescale = 100
channel = 5
;abspan = 0

[State 3001, Tele Explod]
type = Explod
triggerall = Anim = 3004 && NumHelper(3010)
trigger1 = Floor(Pos x - Helper(3010),Pos x) * facing = [-69,-54]
trigger2 = Floor(Pos x - Helper(3010),Pos x) * facing = [530,542]
trigger3 = Floor(Pos x - Helper(3010),Pos x) * facing = [889,901]
trigger4 = Floor(Pos x - Helper(3010),Pos x) * facing = [1334,1346]
trigger5 = Floor(Pos x - Helper(3010),Pos x) * facing = [1676,1688]
trigger6 = Floor(Pos x - Helper(3010),Pos x) * facing = [2155,2167]
anim = 6227
ID = 6227
space = stage
pos = Floor(140 * facing * Const(size.xscale)),Floor(-250 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
vel = IFElse(var(5) = 2,-15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.8 * Const(size.xscale),2.8 * Const(size.yscale)
angle = 0
sprpriority = -1
ownpal = 1
trans = default
remappal = 6225,0




[State 3001, Land-Dust]
type = Explod
trigger1 = Anim = 47
trigger1 = AnimElemTime(1) = 0
anim = 7015
ID = 7015
space = stage
pos =  0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
trans = add
alpha = 256,128
sprpriority = 2
ownpal = 1

[State 3001, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7015)
trigger1 = Anim = 47
trigger1 = AnimElemTime(1) = [8,15]
ID = 7015
trans = add
alpha = 256 - (AnimElemTime(1)-7)*32, 128 + (AnimElemTime(1)-7)*32


[State 3001, RUN]
type = VelSet
triggerall = Anim = 3004
trigger1 = var(5) = 1 ||  var(5) = 3
x = 15 * Const(Size.xscale)

[State 3001, RUN-Fake]
type = VelSet
triggerall = Anim = 3004
trigger1 = var(5) = 2 && Vel x
x = 0


[State 3001, BlackOut to room 2]
type = helper
triggerall = !NumHelper(7130)
trigger1 = var(5) = 4
trigger1 = var(6) = 32
helpertype = normal
stateno = 7130
ID = 7130
name = "Black our trans"
postype = back
pos = Floor(GameWidth / 2.0), 0
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
;size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 21; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 3001, Next]
type = ChangeState
trigger1 = var(5) = 4
trigger1 = var(6) >= 40
value = 3002
ctrl = 1

[State 3001, Safe]
type = ChangeState
trigger1 = time > 500
value = 0
ctrl = 1

[State 3001, Counter]
type = varadd
trigger1 = var(6) < 65535
var(6) = 1





;----- Main Hide Target take damage ---
;------ Remove windows ----
[Statedef 3002]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0
anim = 9741

[State PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA

;------ Phase --------
[State 3002, INIT]
type = varset
trigger1 = !time
var(5) = 0

[State ScreenOff]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Counter]
type = varset
trigger1 = time = 0
var(6) = 0

[State Pos Fix]
type = PosSet
trigger1 = !time
x = -340 * facing * Const(Size.xScale)
y = 0

[State 3002, House Helper]
type = helper
triggerall = !NumHelper(3011)
trigger1 = !time
helpertype = normal
stateno = 3011
ID = 3011
name = "House Helper 02"
postype = back
pos = Floor(GameWidth / 2.0), 0
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
;size.proj.doscale = Target(3000),ID; IF not this state Kill Aura
;size.shadowoffset = Target(3000),ID; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1

[State 3002, Target]
type = TargetState
trigger1 = NumTarget(3000)
trigger1 = !time
value = 1113003
;ID = 3000

[State 3002, BlackOut]
type = helper
triggerall = NumHelper(3011)
trigger1 = Helper(3011),time = 250
helpertype = normal
stateno = 7131
ID = 7131
name = "White our trans"
postype = back
pos = Floor(GameWidth / 2.0), 0
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
;size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 21; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1



[State 3002, Safe]
type = ChangeState
trigger1 = time > 500
value = 0
ctrl = 1

[State 3002, Counter]
type = varadd
trigger1 = var(6) < 65535
var(6) = 1

[State 3002, End]
type = ChangeAnim
trigger1 = time
trigger1 = !NumHelper(3011)
value = 41
Elem = 3

[State 3002, End]
type = PosSet
trigger1 = time
trigger1 = !NumHelper(3011)
y = -300 * Const(Size.yScale)

[State 3002, End]
type = ChangeState
trigger1 = time
trigger1 = !NumHelper(3011)
value = 50
ctrl = 0





;-Freeze Target for 3000----
[Statedef 1113000]
type = U
physics = U
movetype = H
ctrl = 0
sprpriority = 0
velset = 0,0

[State 1113000,Anim Fix]
type = ChangeAnim
trigger1 = 1
value = Anim
Elem = AnimElemNo(0)

[State 1113000,Safe Fallback]
type = SelfState
trigger1 = time > 60
trigger2 = AnimTime = 0
value = 0
ctrl = 1

;-Target Hit
[Statedef 1113001]
type = U
physics = U
movetype = H
ctrl = 0
sprpriority = 0
velset = 0,0


[State 1113001,Anim Fix]
type = ChangeAnim2
trigger1 = !time
value = 1113001

[State para, ExitState]
type = varset
trigger1 = !time
sysvar(4) = 1113002


[State 1113001,Safe Fallback]
type = SelfState
trigger1 = time > 60
trigger2 = AnimTime = 0
value = 0
ctrl = 1

;Hide Target
[Statedef 1113002]
type = U
physics = U
movetype = H
ctrl = 0
sprpriority = 0
velset = 0,0
facep2 = 1

[State ScreenOff]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State posfix]
type = PosSet
trigger1 = PlayerIDExist(GetHitvar(Fall.Envshake.Ampl) / 2) = 1
x = PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Pos x - 100 * facing
y = PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Pos y


[State 1113002,Anim Fix]
type = ChangeAnim2
trigger1 = !time
value = 9741

[State Safe]
type = SelfState
trigger1 = time > 300
value = 5120


;Target Down
[Statedef 1113003]
type = L
physics = C
movetype = H
ctrl = 0
sprpriority = 0
velset = 0,0
facep2 = 1

[State ScreenOff]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State posfix]
type = PosSet
trigger1 = !time
x = 0 * facing
y = 0

[State 1113003,Anim Fix]
type = ChangeAnim2
trigger1 = !time
value = 1113003

[State 1113003,Safe]
type = SelfState
triggerall = Alive
trigger1 = Anim = 1113003
trigger1 = AnimTime = 0
value = 5120

[State 1113003,Safe]
type = SelfState
triggerall = !Alive
trigger1 = Anim = 1113003
trigger1 = AnimTime = 0
value = 5150
ctrl = 1

[State Safe]
type = SelfState
trigger1 = time > 300
value = 5120







;=================== Super Move 02 -Steel Phalanx- =======================
[Statedef 3100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3100
sprpriority = 1
ctrl = 0
poweradd = -2000
facep2 = 1

[State 3000, Posfix]
type = PosSet
trigger1 = !time
y = 0

[State 3100, ATK Distance]
type = AttackDist
trigger1 = MoveType = A
value = Floor((2000) * Const(Size.xScale))

[State Unguardable Ticks]
type = VarSet
triggerall = !(PrevStateNo = [5000,5100])
trigger1 = anim = 3100 && animelemtime(1)=1 && NumEnemy
trigger1 = !(P2StateNo = [120,155])
var(17) = 72

;-------- Power Up --------------
[State Level]
type = varset
trigger1 = time = 0
var(10) = 0

[State Level up hunman by trump cards]
type = varadd
triggerall = !AILevel
triggerall = var(22) && var(6) > 8 ;# var(6) Must > Command Buffer time
triggerall = time > 9 && time < 50
trigger1 = Command = "a+c" || Command = "y"
trigger1 = var(6) := 1
var(10) = 1

[State Level up AI by trump cards]
type = varadd
triggerall = AILevel
triggerall = var(22) && var(6) > 8 ;# var(6) Must > Command Buffer time
triggerall = time > 9 && time < 50
trigger1 = P2Life - (262 * fvar(29)) = [1 , 66*var(22)*fvar(29)]
trigger1 = var(6) := 1
var(10) = 1

[State Level up AI by Support Climax]
type = varadd
triggerall = var(6) > 8 ;# var(6) Must > Command Buffer time
triggerall = (var(21) & 2)
trigger1 = time = 24
trigger1 = var(6) := 1
var(10) = 1

[State trump card]
type = varadd
triggerall = var(22)
triggerall = !(var(21) & 2)
trigger1 = var(10) && var(6) = 1
var(22) = -1

[State Shake power up]
type = EnvShake
triggerall = var(22)
trigger1 = var(10) && var(6) = 1
time = 10
freq = 90
ampl = 8
phase = 30
persistent = 0

[State SND power up]
type = PlaySnd
trigger1 = var(10)
trigger1 = var(6) = 1
value = 7,2900
volumescale = 100
channel = 8
abspan = 0

[State PalFx when power-up]
type = PalFx
trigger1 = var(10)
trigger1 = var(6) = [1,16]
time = 1
add = 256 - 16*var(6), 256 - 16*var(6), 256 - 16*var(6)
mul = 256,256,256
invertall = 0
color = 256

[State Explod Clear]
type = RemoveExplod
trigger1 = var(10)
trigger1 = var(6) = 1

[State Explod power up wave]
type = Explod
trigger1 = !NumExplod(7443)
trigger1 = var(10)
trigger1 = var(6) = 1
anim = 7443
ID = 7443
space = stage
pos = (10) * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),2.0 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
remappal = 7000,IFElse((var(21) & 2),5,1)
ignorehitpause = 0

[State Explod Power Up ring]
type = Explod
trigger1 = !NumExplod(7442)
trigger1 = var(10)
trigger1 = var(6) = 1
anim = 7442
ID = 7442
space = stage
pos = (10) * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -1
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale),0.5 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
remappal = 7442,IFElse((var(21) & 2),1,0)
ignorehitpause = 0

[State Explod Power Up ring grow1]
type = ModifyExplod
trigger1 = NumExplod(7442)
trigger1 = var(6) = [1,12]
ID = 7442
scale = (0.5 + 0.14*var(6)) * Const(size.xscale),(0.5 + 0.14*var(6)) * Const(size.yscale)
trans = add
alpha = 256,256

[State Explod Power Up ring grow2]
type = ModifyExplod
trigger1 = NumExplod(7442)
trigger1 = var(6) = [13,18]
ID = 7442
scale = (2.2 + 0.46*(var(6) -12)) * Const(size.xscale),(2.2 + 0.46*(var(6)-12)) * Const(size.yscale)
trans = add
alpha = 256 - 40*(var(6) -12),256

[State Explod Power Up ring remove]
type = RemoveExplod
trigger1 = NumExplod(7442)
trigger1 = var(6) >= 19
ID = 7442

;--------- Power Up END ------------


[State NotHitby]
type = NotHitBy
trigger1 = Anim = 3100
trigger1 = AnimElemTime(11) < 0
trigger2 = Anim = 3101
time = 1
value = SCA,AA,AT,AP


[State 3100, CameraVarOn]
type = varset
trigger1 = !(var(19) & 256)
trigger1 = time = 0
var(19) = var(19) + 256

[State 3100, CameraVarOff]
type = varset
trigger1 = (var(19) & 256)
trigger1 = Anim = 3100
trigger1 = AnimElemTime(6) = 6
var(19) = var(19) - 256

[State 3100, Zoom Helper]
type = helper
triggerall = (var(19) & 256)
trigger1 = !NumHelper(7662)
trigger1 = time = 1
stateno = 7662
ID = 7662
name = "Super - ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 3100, SuperChargePause]
type = SuperPause
triggerall = !(PrevStateNo = [5000,5100])
trigger1 = anim = 3100 && animelemtime(1)=1
time = 68
anim = -1
;sound = s7,1050
p2defmul = 1
darken = 0
movetime = 68

[State 3100, Super-Charge-Helper]
type = helper
triggerall = !NumHelper(7570)
trigger1 = time = 0
helpertype = normal
stateno = 7570
ID = 7570
name = "Super-Charge-Helper"
postype = P1
pos = 10 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535

[State 3100, Super-Portrait-Helper]
type = helper
triggerall = !NumHelper(7602)
trigger1 = Anim = 3100
trigger1 = AnimElemTime(1) = 12
helpertype = normal
stateno = 7602
ID = 7602
name = "Super-Portrait-Helper"
postype = P1
pos = -40 * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = 1 * Const(Size.xScale)
size.yScale = 1 * Const(Size.yScale)
size.proj.doscale = (9003); Anim to DisPlay
supermovetime = 65535
pausemovetime = 65535

;---------- Move --------------
[State 3100, SND Voice]
type = PlaySnd
trigger1 = anim = 3100
trigger1 = AnimElemTime(1) = 2
value = 4,3100 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 3100, Bag]
type = Explod
trigger1 = Anim = 3100 && AnimElemTime(10) = 0
anim = 3107
ID = 3107
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 0
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0

[State 3100, Belt]
type = Explod
trigger1 = Anim = 3100 && AnimElemTime(11) = 0
anim = 3108
ID = 3108
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 80
facing = facing
removetime = -2
removeongethit = 1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 0
sprpriority = 0
ownpal = 0
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0

[State 3100, Teleporting darts 1]
type = helper
trigger1 = Anim = 3100
trigger1 = AnimElemTime(9) = 1
helpertype = normal
stateno = 6225
ID = 6225
name = "Local Teleporting darts"
postype = P1
pos = -10 * Const(Size.xScale), -346 * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 3100, Teleporting darts 2]
type = helper
trigger1 = Anim = 3100
trigger1 = AnimElemTime(10) = 1
helpertype = normal
stateno = 6225
ID = 6225
name = "Local Teleporting darts"
postype = P1
pos = -102 * Const(Size.xScale), -234 * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 3100, Teleporting darts 3]
type = helper
triggerall = Anim = 3100
trigger1 = AnimElemTime(11) >= 1 && AnimElemTime(33) <= 1
;trigger1 = AnimElemTime(AnimElemNo(0)) = 1
trigger1 = AnimElemTime(11)%4 = 1
helpertype = normal
stateno = 6225
ID = 6225
name = "Local Teleporting Darts"
postype = P1
pos = -100 * Const(Size.xScale), -254 * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 3100, Projectile]
type = helper
trigger1 = !NumExplod(StateNo+5)
trigger1 = Anim = 3100
trigger1 = AnimElemTime(9) = 1
stateno = StateNo+5
ID = StateNo+5
name = "Projectile-Steel Phalanx-"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = 0,0
;supermovetime = 65535
;pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1

;-------------- Exit -------------
[State Guarded]
type = ChangeAnim
triggerall = Anim = 3100 && AnimTime = 0
trigger1 = NumHelper(StateNo+5)
trigger1 = Helper(StateNo+5),MoveHit && Helper(StateNo+5),NumTarget(StateNo+5)
value = 3101

[State Guarded]
type = ChangeAnim
trigger1 = Anim = 3100 && AnimTime = 0
value = 3102

[State 3100, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = Anim = 3101
trigger1 = AnimElemTime(3) = 0
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 14; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State 3100, Follow Up State]
type = ChangeState
trigger1 = Anim = 3101 && !AnimTime
value = 3106

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 3102
movetype = I

[State End]
type = ChangeAnim
trigger1 = Anim = 3102 && AnimTime = 0
value = 3104

[State 3100, End Failed]
type = ChangeState
trigger1 = Anim = 3104
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3100, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1




;------ Follow Up ---------
[Statedef 3106]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0
poweradd = -2000
facep2 = 1

[State 3106, Posfix]
type = PosSet
triggerall = PlayerIDExist(var(3)) = 1
trigger1 = !time
x = Floor(PlayerID(var(3)),Pos x - 180*facing*Const(Size.xScale))
y = PlayerID(var(3)),Pos y - 100 * Const(Size.yScale)

[State 3106, Posfix]
type = PosSet
triggerall = PlayerIDExist(var(3)) = 0
trigger1 = !time
x = Floor(Enemynear,Pos x - 180*facing*Const(Size.xScale))
y = Enemynear,Pos y - 100 * Const(Size.yScale)

[State 3106, Anim]
type = ChangeAnim
trigger1 = !time
value = 3106

[State 3106, SND Voice]
type = PlaySnd
trigger1 = anim = 3106
trigger1 = AnimElemTime(2) = 0
value = 4,3102 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 3106, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 0
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 7; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 3106, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3106
trigger1 = AnimElemTime(6) < 0
value = SCA

[State 3106, Vel INIT]
type = VelSet
trigger1 = Anim = 3106
trigger1 = AnimElemTime(1) = 0
x = 6 * Const(Size.xScale)
y = -4 * Const(Size.yScale)

[State 3106, Vel Back]
type = VelSet
trigger1 = Anim = 3106
trigger1 = AnimElemTime(6) = 0
x = -2 * Const(Size.xScale)
y = -28 * Const(Size.yScale)

[State 3106, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = Anim = 3106
trigger1 = AnimElemTime(6) >= 0
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 3106, HitDef]
type = HitDef
triggerall = Anim = 3106
trigger1 = AnimElem = 5
attr = A,HA
hitFlag = MAF
guardFlag = 
priority = 5, Hit
damage = Ceil(100 * (1+0.25*var(10))) ,10
getPower = 0,0
givePower = 0,0
pauseTime = 31,31
guard.pauseTime = 31,31
animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 32
ground.slideTime = 32
guard.hitTime = 32
air.hitTime = 32
ground.velocity = -20 * Const(size.xscale), IFElse(P2StateType = L,0,50)  * Const(size.yscale)
air.velocity = -20 * Const(size.xscale), IFElse(P2StateType = L,0,50) * Const(size.yscale)
guard.velocity = -70 * Const(size.xscale)
ground.cornerpush.veloff = -50 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,13
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = -1 + 0 * (var(55) := Floor(136)), -1 + 0 * (var(56) := Floor(-69))
p1Sprpriority = 1
envShake.time = 30
envShake.ampl = -22
envShake.freq = 90
envShake.phase = 60
ID = StateNo

[State 3106, Hit Sparks Addional]
type = helper
triggerall = var(54) > 0 && var(53) > 0
triggerall = MoveHit = 1
triggerall = NumTarget(StateNo) && MoveType = A
trigger1 = Target(StateNo),Time = 0
stateno = 7458
ID = 7458
helpertype = normal
keyctrl = 0
name = "Hit Sparks - Special"
postype = P1
pos = var(55) * Const(size.xscale), var(56) * Const(size.yscale)
ownpal = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3106, ScreenBond]
type = ScreenBound
trigger1 = NumTarget(StateNo)
trigger1 = AnimElemTime(6) >= 0
value = 1
MoveCamera = 1,0

[State 3106, Land]
type = ChangeState
trigger1 = StateType = A
trigger1 = Vel y > 0
trigger1 = Vel y > -(Pos y)
value = 57





