;---------------------------------------------------------------------------
; Shinshinmumyou Togihotaru
[Statedef 3000]
type = S
movetype = A
physics = S
juggle = 6
anim = Var(5)+3000
velset = 0,0
ctrl = 0

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -26,-75
darken = 1
poweradd = -1000

[State 3000, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 110
length = 6
timegap = 2
framegap = 2
trans = add1

[State 3000, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 107
time = 2

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,0
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 28
value = 3000,1
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 48
value = 1200,0
channel = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = , NA, NT
time = 2

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 16

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 12
trigger2 = AnimElem = 27
trigger3 = AnimElem = 35
x = 5

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 18
trigger2 = AnimElem = 46
x = 6

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 39
x = 8

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 7
trigger2 = AnimElem = 14
trigger3 = AnimElem = 22
trigger4 = AnimElem = 31
trigger5 = AnimElem = 38
trigger6 = AnimElem = 43
trigger7 = AnimElem = 53
x = 0

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 27
x = 18

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 48
x = 16

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
damage = 20, 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -12, -90
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 4
ground.hittime  = 20
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.2,-10.5
fall = 0
air.fall = 1
fall.animtype = Hard
fall.recover = 0
yaccel = .5
getpower = 0,0

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 14
attr = S, HA
damage = 20, 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -15, -121
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 4
ground.hittime  = 20
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.9,-3.2
getpower = 0,0

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 21
attr = S, HA
damage = 20, 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -15, -113
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 4
ground.hittime  = 20
ground.velocity = -3.2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-2.9
getpower = 0,0

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 30
attr = S, HA
damage = 20, 10
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -15, -76
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 4
ground.hittime  = 20
ground.velocity = -3.2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-3.2
getpower = 0,0

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 37
attr = S, HA
damage = 20, 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -15, -22
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 20
ground.velocity = -2
air.type = High
air.velocity = -1.9,-3
getpower = 0,0

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 42
attr = S, HA
damage = 20, 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -12, -90
hitsound = S5, 3
guardsound = S6, 1
ground.type = High
ground.slidetime = 4
ground.hittime  = 20
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3.3
getpower = 0,0

[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 50
attr = S, SA
damage = 85, 15
animtype = Back
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 11, 11
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -20, -50
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.5, -10
airguard.velocity = -2,-1
air.type = High
air.hittime = 12
air.velocity = -1.5, -7
fall = 1
air.fall = 1
yaccel = .5
fall.animtype = Hard
fall.recover = 0
getpower = 0,0

[State 3000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(51)>= 0
movetype = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo Attempt
[Statedef 3100]
type = S
movetype = A
physics = S
sprpriority = 2
velset = 0, 0
anim = Var(5)+3100
ctrl = 0

[State 3100, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(14) < 0
value = 0

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA, NA, NT
time = 5

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 27

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 24

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 19

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 5

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 3

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 0

[State 3100, Turn]
type = Turn
trigger1 = AnimElem = 14

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 17
value = 3100,0
channel = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = AnimElem = 17, = 0
anim = S8500
sound = S20,0
pos = 37,-75
darken = 1
poweradd = -1000

[State 3100, HitDef]
type = HitDef
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = Time = 0
attr = S, HT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3101
p2stateno = 3102
fall = 1
numhits = 0
getpower = 0,0

[State 3100, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo - Kick up
[Statedef 3101]
type = S
movetype = A
physics = N
poweradd = 0
anim = Var(5)+3101
ctrl = 0

[State 3101, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3101, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0

[State 3100, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 36
length = 6
timegap = 2
framegap = 2
trans = add1

[State 3101, Hit]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 70, 0
animtype = Back
hitflag = M
priority = 4, Hit
pausetime = 11, 11
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -20, -50
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0, -13
fall = 1
fall.recover = 0
yaccel = .4
p2facing = 1
forcestand = 1
hitonce = 1
kill = 0
getpower = 0,0
id = 3100

[State 3101, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3103
ctrl = 0

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo - Kick up - State for Opponent
[Statedef 3102]
type = S
movetype = I
physics = N
sprpriority = 0

[State 3102, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3102

[State 3102, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo - Going up
[Statedef 3103]
type = A
movetype = A
physics = N
poweradd = 0
anim = Var(5)+3103
ctrl = 0

[State 3103, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3103, VelSet]
type = VelSet
trigger1 = Time = 0
y = const(velocity.jump.y)

[State 3103, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 17
length = 6
timegap = 2
framegap = 2
trans = add1

[State 3103, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HT
hitflag = AF
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3104
p2stateno = 3105
fall = 1
numhits = 0
getpower = 0,0
chainID = 3100

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo
[Statedef 3104]
type = A
movetype = A
physics = N
poweradd = 0
anim = Var(5)+1001
ctrl = 0

[State 3104, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3104, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 95
length = 6
timegap = 2
framegap = 2
trans = add1

[State 3104, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,2
channel = 1

[State 3104, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,1
channel = 0

[State 3104, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 3104, Bind 2-3]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
pos = 35, 0

[State 3104, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -3, -20

[State 3104, Bind 5-12]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
pos = -3, -20

[State 3104, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = -5, -20

[State 3104, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = -5, -16

[State 3104, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = -5, -65

[State 3104, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0, -55

[State 3104, Bind 17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 0, -55

[State 3104, Bind 18-20]
type = TargetBind
trigger1 = AnimElem = 18
trigger1 = AnimElem = 19
trigger1 = AnimElem = 20
pos = 0, -22

[State 3104, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
trigger9 = AnimElem = 13
trigger10 = AnimElem = 14
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
value = 1

[State 3104, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
trigger10 = AnimElem = 15
value = -1

[State 3104, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = -13

[State 3104, Veladd]
type = Veladd
trigger1 = AnimElem = 10
y = .9

[State 3104, VelSet]
type = VelSet
trigger1 = AnimElem = 12
y = -8.5

[State 3104, VelSet]
type = VelSet
trigger1 = AnimElem = 14
y = .88

[State 3104, VelSet]
type = Velset
trigger1 = AnimElem = 15
y = 2.88

[State 3104, VelSet]
type = Velset
trigger1 = AnimElem = 16
y = 9.2

[State 3104, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
y = 5.7

[State 3104, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 12

[State 3104, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -10

[State 3104, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = -7
y = -8

[State 3104, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= (Pos Y + Vel Y) >= 50;pos y > -vel y
value = 3106
ctrl = 0

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo - State for Opponent
[Statedef 3105]
type = S
movetype = H
physics = N
sprpriority = 0

[State 3105, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1002

[State 3105, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo End
[Statedef 3106]
type = S
movetype = A
physics = N
poweradd = 0
anim = Var(5)+1003
ctrl = 0

[State 3106, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 4
length = 6
timegap = 2
framegap = 2
trans = add1

[State 3106, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1
channel = 0

[State 3106, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -200

[State 3106, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 3107

[State 3106, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8020
ID = 3106
postype = p2
pos = 0, 2
bindtime = 1
sprpriority = 9
ownpal = 1

[State 3106, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 17
freq = 85
ampl = 15
persistent = 0

[State 3106, HitAdd]
type = HitAdd
trigger1 = AnimElem = 1
value = 1

[State 3106, Velset]
type = Velset
trigger1 = Time = 0
y = 0

[State 3106, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3106, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3199
ctrl = 0

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo Opponent End
[Statedef 3107]
type = S
movetype = H
physics = N
velset = 0,0

[State 3107, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1004

[State 3107, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3107, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = -3

[State 3107, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;---------------------------------------------------------------------------
; Tenraigin Kuchinawaichigo Jump Back
[Statedef 3199]
type = S
movetype = I
physics = N
poweradd = 0
anim = Var(5)+1099
ctrl = 0

[State 3199, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 23
length = 6
timegap = 2
framegap = 2
trans = add1

[State 3199, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
y = -15

[State 3199, VelSet]
type = VelSet
trigger1 = Time = 4
X = -3.5
Y = -5.5

[State 3199, VelAdd]
type = VelAdd
trigger1 = Time > 4
Y = 0.5

[State 3199, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = (Pos Y + Vel Y) >= 7
value = 52
ctrl = 0
