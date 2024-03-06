;---------------------------------------------------------------------------
;Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim!= 10000 && Anim != 5 && Anim != 10005
trigger2 = (Anim = 5||Anim = 10005) && AnimTime = 0
value = Var(5)+0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3]
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4]
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
;Stand to Crouch
[Statedef 10]
type = C
physics = C
anim = Var(5)+10

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;Crouching
[Statedef 11]
type = C
physics = C
anim = Var(5)+11
sprpriority = 0

[State 11, 1]
type = ChangeAnim
trigger1 = (Anim = 6||Anim=10006) && AnimTime = 0
value = Var(5)+11

;---------------------------------------------------------------------------
;Crouch to Stand
[Statedef 12]
type = S
physics = S
anim = Var(5)+12

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;Walk
[Statedef 20]
type = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5 && Anim != 10020 && Anim != 10005
trigger2 = (Anim = 5||Anim = 10005) && AnimTime = 0
value = Var(5)+20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5 && Anim != 10021 && Anim != 10005
trigger2 = (Anim = 5||Anim = 10005) && AnimTime = 0
value = Var(5)+21

;---------------------------------------------------------------------------
;Jump Start
[StateDef 40]
type = S
physics = S
moveType = I
anim = Var(5)+40
ctrl = 0
velSet = 0,0

[State 40, VarSet]
type = VarSet
trigger1 = 1
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, VarSet]
type = VarSet
trigger1 = !Time
var(2) = ifElse(command = "HighJump", 3, 0)

[State 40, VarSet]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(2) = 3

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime && var(2) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;AirJump Start
[Statedef 45]
type = A
physics = N
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
triggerall = Var(5) = 0
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
triggerall = Var(5) = 10000
trigger1 = SelfAnimExist(10044)
value = 10044

[State 45, 3]
type = ChangeAnim
triggerall = Var(5) = 0
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 4]
type = ChangeAnim
triggerall = Var(5) = 10000
trigger1 = !SelfAnimExist(10044)
value = 10041

[State 45, 5]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 6]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 7]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 8]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 9]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Up
[Statedef 50]
type = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, Var(5)+41, ifelse((vel x)>0, Var(5)+42, Var(5)+43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + Var(5)+3

;---------------------------------------------------------------------------
;Jump Down (empty state for compatibility)
[Statedef 51]
type = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
;Jump Land
[Statedef 52]
type = S
physics = S
ctrl = 0
anim = Var(5)+47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Wall Jump
[Statedef 60]
type = A
physics = N
velset = 0,0
anim = Var(5)+60
ctrl = 0

[State 60, 0]
type = Turn
trigger1 = FrontEdgeBodyDist <= 0 && time = 0

[State 60, 1]
type = PosAdd
trigger1 = AnimTime = 0
x = 20

[State 60, 1]
type = VelSet
trigger1 = AnimTime = 0
x = const(velocity.jump.fwd.x)
y = const(velocity.jump.y)

[State 60, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Forward Dash
[Statedef 101]
type = S
physics = S
anim = Var(5)+101
sprpriority = 1
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,0
channel = 1

[State 101, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 10.75

[State 101, VelMul]
type = VelMul
trigger1 = AnimElem = 1, > 0
x = 1

[State 101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 101, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 101, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Back Dash
[Statedef 105]
type = S
physics = S
anim = Var(5)+105
sprpriority = 1
ctrl = 0

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -9.75

[State 105, VelMul]
type = VelMul
trigger1 = AnimElem = 2, > 0
x = 1

[State 105, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 105, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 105, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;GUARD (start)
[Statedef 120]
type = U
physics = U

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = Var(5)+120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
;STAND GUARD (guarding)
[Statedef 130]
type = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != Var(5)+130
value = Var(5)+130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
;CROUCH GUARD (guarding)
[Statedef 131]
type = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != Var(5)+131
value = Var(5)+131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
;AIR GUARD (guarding)
[Statedef 132]
type = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != Var(5)+132
value = Var(5)+132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
;GUARD (end)
[Statedef 140]
type = U
physics = U
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = Var(5)+140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

;---------------------------------------------------------------------------
;SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = Var(5)+150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
;SGUARDHIT2 (knocked back)
[Statedef 151]
type = S
movetype= H
physics = S
anim = Var(5)+150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
;CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = Var(5)+151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
;CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = Var(5)+151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
;AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = Var(5)+152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
;AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = Var(5)+152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
;Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = Var(5)+170
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
;Win pose
[Statedef 181]
type = S
ctrl = 0
anim = Var(5)+180
velset = 0,0

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,200]
flag = roundnotover

[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
[Statedef 190]
type = S
ctrl = 0
anim = Var(5)+190
velset = 0,0

[State 190, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = Var(5)+190

[State 190, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, GameMakeAnim]
type = GameMakeAnim
trigger1 = AnimElem = 5
value = 120
pos = 0,0

[State 190, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0

[State 190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Standing and Crouching Parry
[Statedef 700]
type = U
movetype = I
physics = U
anim = IfElse(StateType = S,Var(5)+700,Var(5)+701)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 700, CtrlSet]
type = CtrlSet
trigger1 = (Time > 5) && (StateType = S)
value = 1

[State 700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 700, Pause]
type = Pause
trigger1 = (!Time)
time = 5
movetime = 5

[State 700, VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 700, PalFX]
type = PalFX
trigger1 = (!Time)
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 700, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 8
freq = 60
ampl = -2
phase = 90

[State 700, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,0
channel = 0

[State 700, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,1
channel = 1

[State 700, Explod]
type = Explod
triggerall = StateType = S
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 20,-92
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 700, Explod]
type = Explod
triggerall = StateType = C
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 20,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 700, End]
type = ChangeState
trigger1 = (!AnimTime)
value = IfElse(StateType = S,0,11)
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Parry
[Statedef 702]
type = A
movetype = I
physics = N
anim = Var(5)+702
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 702, CtrlSet]
type = CtrlSet
trigger1 = (Time > 4)
value = 1

[State 702, NotHitBy]
type = NotHitBy
trigger1 = (Time < 14)
value = SCA

[State 702, Pause]
type = Pause
trigger1 = (!Time)
time = 5
movetime = 5

[State 702, VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 702, PalFX]
type = PalFX
trigger1 = (!Time)
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 702, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 8
freq = 60
ampl = -2
phase = 90

[State 702, Null]
type = Null
trigger1 = (!Time)
trigger1 = (FVar(0) := Vel X) && (FVar(1) := Vel Y)

[State 702, VelSet]
type = VelSet
trigger1 = (Time)
x = 0
y = 0
persistent = 0

[State 702, VelSet]
type = VelSet
trigger1 = (Time > 14)
x = FVar(0)
y = FVar(1)
persistent = 0

[State 702, VelAdd]
type = VelAdd
trigger1 = (Time > 14)
y = 0.45

[State 702, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,0
channel = 0

[State 702, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,1
channel = 1

[State 702, Explod]
type = Explod
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 20,-78
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 702, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Parry Helper
[Statedef 703]
type = A
movetype = I
physics = N
anim = 703
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 703, ParentVarSet]
type = ParentVarSet
trigger1 = (!Time)
var(0) = 8
ignorehitpause = 1

[State 703, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Command != "holdfwd")

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),Var(5)+5000,Var(5)+5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = Var(5)+5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(Var(5)+5047 + GetHitVar(animtype)))
value = Var(5)+5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = Var(5)+5000
trigger2 = anim = Var(5)+5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = Var(5)+5001
trigger2 = anim = Var(5)+5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = Var(5)+5012
trigger2 = anim = Var(5)+5002
trigger3 = anim = Var(5)+5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Var(5)+5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = Var(5)+5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = Var(5)+5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(Var(5)+5047 + GetHitVar(animtype)))
value = Var(5)+5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;HITC_SLIDE

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = Var(5)+5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = Var(5)+5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = Var(5)+5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Var(5)+5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),Var(5)+5000,Var(5)+5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = Var(5)+5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(Var(5)+5047 + GetHitVar(animtype)))
value = Var(5)+5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = Var(5)+5000
trigger2 = anim = Var(5)+5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = Var(5)+5001
trigger2 = anim = Var(5)+5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = Var(5)+5012
trigger2 = anim = Var(5)+5002
trigger3 = anim = Var(5)+5030
trigger4 = anim = [Var(5)+5051,Var(5)+5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(Var(5)+5035)
trigger1 = Anim != [Var(5)+5051,Var(5)+5059] ;Not if in hit up anim
trigger1 = Anim != Var(5)+5090 ;Not if hit off ground anim
value = Var(5)+5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != Var(5)+5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != Var(5)+5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != Var(5)+5040
trigger2 = Time = 0
trigger2 = Anim != Var(5)+5035
value = Var(5)+5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = Var(5)+5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != Var(5)+5035
trigger2 = (Anim != [Var(5)+5051, Var(5)+5059]) && (Anim != [Var(5)+5061, Var(5)+5069])
trigger2 = Anim != Var(5)+5090 ;Not if hit off ground anim
value = Var(5)+5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [Var(5)+5050,Var(5)+5059]
trigger1 = Vel Y >= ifelse(anim = Var(5)+5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [Var(5)+5051,Var(5)+5059]) || (anim = [Var(5)+5061,Var(5)+5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = Var(5)+5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, Var(5)+5080, Var(5)+5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [Var(5)+5081,Var(5)+5089]) || (anim = [Var(5)+5111,Var(5)+5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = Var(5)+5090
trigger1 = !SelfAnimExist(Var(5)+5090)
sysvar(2) = Var(5)+5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [Var(5)+5051,Var(5)+5059]) && (anim != [Var(5)+5061,Var(5)+5069])
trigger2 = !SelfAnimExist(Var(5)+5100 + (anim % 10))
value = Var(5)+5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [Var(5)+5051,Var(5)+5059]) || (anim = [Var(5)+5061,Var(5)+5069])
trigger1 = SelfAnimExist(Var(5)+5100 + (anim % 10))
value = Var(5)+5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [Var(5)+5101,Var(5)+5109]
trigger2 = !SelfAnimExist(Var(5)+5160 + (anim % 10))
value = Var(5)+5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [Var(5)+5101,Var(5)+5109]
trigger1 = SelfAnimExist(Var(5)+5160 + (anim % 10))
value = Var(5)+5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(Var(5)+5110 + (anim % 10))
trigger1 = anim = [Var(5)+5081,Var(5)+5089]
value = Var(5)+5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [Var(5)+5110,Var(5)+5119] ;Not already changed anim
trigger1 = anim != [Var(5)+5161,Var(5)+5169]
trigger2 = !SelfAnimExist(Var(5)+5170 + (anim % 10))
value = Var(5)+5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [Var(5)+5110,Var(5)+5119] ;Not already changed anim
trigger1 = anim = [Var(5)+5161,Var(5)+5169]
trigger1 = SelfAnimExist(Var(5)+5170 + (anim % 10))
value = Var(5)+5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [Var(5)+5171,Var(5)+5179]
triggerall = SelfAnimExist(Var(5)+5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = Var(5)+5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [Var(5)+5111,Var(5)+5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = Var(5)+5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [Var(5)+5110,Var(5)+5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [Var(5)+5111,Var(5)+5119]
trigger2 = !SelfAnimExist(Var(5)+5120 + (anim % 10))
value = Var(5)+5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [Var(5)+5111,Var(5)+5119]
trigger1 = SelfAnimExist(Var(5)+5120 + (anim % 10))
value = Var(5)+5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(Var(5)+5140)
trigger1 = (anim != [Var(5)+5111,Var(5)+5119]) && (anim != [Var(5)+5171,Var(5)+5179])
trigger2 = !SelfAnimExist(Var(5)+5140 + (anim % 10))
value = Var(5)+5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [Var(5)+5111,Var(5)+5119]) || (anim = [Var(5)+5171,Var(5)+5179])
trigger1 = SelfAnimExist(Var(5)+5140 + (anim % 10))
value = Var(5)+5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [Var(5)+5140,Var(5)+5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [Var(5)+5140,Var(5)+5159]
trigger1 = Anim != [Var(5)+5110,Var(5)+5119]
value = Var(5)+5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = Var(5)+5035
trigger1 = AnimTime = 0
value = Var(5)+5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type = S
movetype = H
physics = N
anim = Var(5)+5200
facep2 = 1

[State 5201, 1]
type = Posset
trigger1 = Time = 0
y = 0

[State 5201, 2]
type = Velmul
trigger1 = 1
x = .8125

[State 5201, 3]
type = Velset
trigger1 = Time = 0
x = -9.75
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5]
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 5201,0
channel = 1

[State 5201, 1]
type = Velset
trigger1 = Animtime = 0
x = 0

[State 5201, 7]
type = ChangeState
trigger1 = Animtime = 0
trigger2= animelemtime(animelemno(0))>=4 && !animelemtime(animelemno(0)+1)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = Var(5)+5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Forced P2 Recovery
[StateDef 5025]
type = A
Movetype = H
physics = N
velSet = 0,0
faceP2 = 1

[State 5025, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 5025, End]
type = SelfState
trigger1 = 1
value = ifElse(pos y, 5020, 5000)

;---------------------------------------------------------------------------
; P2 Safe fall
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, End]
type = SelfState
trigger1 = 1
value = ifElse(pos y < -20, 5210, 5200)

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, Direction Left]
type = Varset
trigger1 = facing = 1
var(5) = 0

[State -2, Direction Right]
type = Varset
trigger1 = facing = -1
var(5) = 10000

[State -2, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5 && Facing = -1
value = 10005

[State -2, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && Facing = -1
value = 10006

[State -2, Null]
type = Null
trigger1 = (!Time) && (Var(1) = 0)
trigger1 = ((Command = "holdfwd") && (StateNo = 20)) ^^ ((Command = "holddown") && (StateNo = [10,11]))
trigger1 = (Var(0) := 8)
trigger2 = (Command != "holdfwd") && (Command != "holddown") && (Var(1) = 1)
trigger2 = (Var(1) := 0)
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0)
var(0) = -1
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = ((StateNo = 50) || (StateNo = 702)) && (Command = "holdfwd") && (NumHelper(703) = 0)
helpertype = Normal
name = "Air Parry"
id = 703
pos = 0,0
postype = p1
facing = 0
stateno = 703
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SA, AA, AP
stateno = 700
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holdfwd") && (Command != "holdback")
attr = C, AA, AP
stateno = 700
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = ((StateNo = 50) || (StateNo = 702)) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SCA, AA, AP
stateno = 702
ignorehitpause = 1

[State -2, Throws Allowed]
type = Varset
trigger1 = 1
var(10) = 0

[State -2, Throws Disallowed]
type = Varset
trigger1 = (enemynear,stateno=[150,155])
trigger2 = (enemynear,movetype=H && enemynear,statetype!=A)
trigger3 = (enemynear,stateno=[5020,5040]) && !(enemynear,hitfall)
trigger4 = ((enemynear,stateno=0) || (enemynear,stateno=52)) && (enemynear,prevstateno=[5000,5040]) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger5 = (enemynear,stateno=0) && (enemynear,prevstateno=52) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger6 = (enemynear,stateno=40) && (enemynear,time>=1 || enemynear,prevstateno=0 || enemynear,prevstateno=52)
var(10) = 1

[State -2, P2 Recovery]
type = TargetState
trigger1 = NumTarget(200)
trigger1 = (Target(200), StateNo = 5020) && (Target(200), Alive) && (Target(200), HitFall)
ID = 200
value = 5025
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -20 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 665
trigger3 = stateno = 905
value = 40, 0

[State -3, GetHit Sound]
type = PlaySnd
triggerall = Alive && time = 1
triggerall = Stateno = 5000 || Stateno=5010 || Stateno=5020 || Stateno=5070
trigger1 = Enemynear, Hitdefattr = SCA,SA,HA
trigger2 = Gethitvar(Animtype)>= 2 && random < 500
trigger3 = Gethitvar(Animtype)= 1 && random < 300
trigger4 = Gethitvar(Animtype)= 0 && random < 250
value = 5000,0+(random%5)
channel = 1
ignorehitpause = 1
persistent = 0

[State -3, Prevent Undergound Juggles]
type= TargetBind
trigger1 = movehit = 1
trigger1 = numtarget = 1 && numenemy
trigger1 = (target,time<= 1) && (target,ID = enemynear,ID)
trigger1 = !(target,hitshakeover) && (target, hitfall) && (target, pos y> 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, EX PalFX]
type = PalFX
trigger1 = !(GameTime % 2)
trigger1 = StateNo = 1020 || Stateno = 1021 || Stateno = 1120 || Stateno = 1220
add = 80,60,0
mul = 256, 230, 155
time = 1
ignorehitpause = 1
persistent = 0

[State -3, Jump AfterImage]
type = AfterImage
triggerAll = Time = 1
trigger1 = StateNo = 50 && (var(2) = 2 || var(2) = 3)
time = 14
length = 8
timeGap = 1
frameGap = 4
palBright = 0,0,0
palContrast = 150,150,150
palPostBright = 0,0,0
palAdd = 0,0,0
trans = Add