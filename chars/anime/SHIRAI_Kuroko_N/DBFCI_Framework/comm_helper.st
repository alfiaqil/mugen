;====================== Blaster =======================
[Statedef 985]
type = A
moveType = A
physics = N
sprpriority = 2
ctrl = 0

[State 985, Color Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(1) = Parent, var(10);				1=red 2=blue 3=green 4=yellow

[State 985, Type Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo && var(1)
trigger1 = IFElse(Parent,PalNo%3 = 1,0,IFElse(Parent,PalNo%3 = 2,1,2)) + 1 = var(1)
var(10) = 1

[State 985, Anim]
type = ChangeAnim
trigger1 = !PrevStateNo
trigger1 = time = 0
trigger2 = (Parent,Anim = [980,982]) && Parent,AnimElemTime(3) < 0
trigger2 = AnimElemTime(3) = -1
value = 7409 + var(10)
elem = 1

[State 985, Anim]
type = ChangeAnim
triggerall = AnimElemNo(0) < 3
trigger1 = (Parent,Anim = [980,982]) && Parent,AnimElemNo(0) = 3
value = 7409 + var(10)
elem = 3

;----------- State control ----------
[State 985, blast]
type = varset
trigger1 = var(5) = 0
trigger1 = (Parent,Anim = [980,982]) && Parent,AnimElemNo(0) = 3
trigger1 = var(6):=1
var(5) = 1


;----------- Pos fix ----------------
[State 985, Bind]
type = BindToParent
trigger1 = AnimElemtime(3) < 0
time = 1
facing = 1
pos = 0,Const(size.mid.pos.y) * Const(size.yscale)

;----------- ATK --------------------
[State 985, No Reverse Guard]
type = AssertSpecial
trigger1 = Enemynear,facing = facing
flag = unguardable

[State 985, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignoreHitPause = 1


[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = RoundState = 2
value = root,fvar(29)
ignorehitpause = 1

[State 985, HitDef Normal]
type = HitDef
trigger1 = var(1) != 2
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
attr = A,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = Ceil(Parent,fvar(11)*10),7
getPower = 0,0
givePower = 0,0
pauseTime = 0,12
guard.pauseTime = 0, 12
animType = DiagUp
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 60
ground.velocity = -25 * Const(size.xscale), -30  * Const(size.yscale)
ground.cornerPush.velOff = 0 * Const(size.xscale)
guard.velocity = -40 * Const(size.xscale)
guard.cornerPush.velOff = 0 * Const(size.xscale)
air.velocity = -25 * Const(size.xscale), -30 * Const(size.yscale)
airGuard.cornerPush.velOff = 0
yAccel = 2.0 * Const(size.yscale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,17
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(P2BodyDist x) + 0 * (var(55) := Floor(P2BodyDist x)), Floor(P2Dist y + Enemynear,Const(size.mid.pos.y)) + 0 * (var(56) := Floor(P2Dist y + Enemynear,Const(size.mid.pos.y)))
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1sprpriority = 3
ID = StateNo
NoChainID = StateNo

[State 985, HitDef Cancel Human]
type = HitDef
triggerall = Parent,AILevel = 0
trigger1 = var(1) = 2
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
attr = A,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = Ceil(Parent,fvar(11)*10),7
getPower = 0,0
givePower = 0,0
pauseTime = 0,12
guard.pauseTime = 0, 12
animType = Up
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 60
ground.velocity = (-2 - 20*(Parent,Command = "holdfwd")) * Const(size.xscale),(-50 + 20*(Parent,Command = "holdfwd")) * Const(size.yscale)
ground.cornerPush.velOff = 0 * Const(size.xscale)
guard.velocity = -40 * Const(size.xscale)
guard.cornerPush.velOff = 0 * Const(size.xscale)
air.velocity = (-2 - 20*(Parent,Command = "holdfwd")) * Const(size.xscale),(-50 + 20*(Parent,Command = "holdfwd")) * Const(size.yscale)
airGuard.cornerPush.velOff = 0
yAccel = 2.0 * Const(size.yscale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,17
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(P2BodyDist x) + 0 * (var(55) := Floor(P2BodyDist x)), Floor(P2Dist y + Enemynear,Const(size.mid.pos.y)) + 0 * (var(56) := Floor(P2Dist y + Enemynear,Const(size.mid.pos.y)))
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1sprpriority = 3
ID = StateNo
NoChainID = StateNo

[State 985, HitDef Cancel AI]
type = HitDef
triggerall = Parent,AILevel
trigger1 = var(1) = 2
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
attr = A,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = Ceil(Parent,fvar(11)*10),7
getPower = 0,0
givePower = 0,0
pauseTime = 0,12
guard.pauseTime = 0, 12
animType = Up
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 60
ground.velocity = (-2) * Const(size.xscale),(-50) * Const(size.yscale)
ground.cornerPush.velOff = 0 * Const(size.xscale)
guard.velocity = -40 * Const(size.xscale)
guard.cornerPush.velOff = 0 * Const(size.xscale)
air.velocity = (-2) * Const(size.xscale),(-50) * Const(size.yscale)
airGuard.cornerPush.velOff = 0
yAccel = 2.0 * Const(size.yscale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,17
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(P2BodyDist x) + 0 * (var(55) := Floor(P2BodyDist x)), Floor(P2Dist y + Enemynear,Const(size.mid.pos.y)) + 0 * (var(56) := Floor(P2Dist y + Enemynear,Const(size.mid.pos.y)))
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1sprpriority = 3
ID = StateNo
NoChainID = StateNo

[State 985, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimElemTime(4) > 0
MoveType = I

[State 985, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State 985, MoveHitProperty]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(53) = var(53)
ignorehitpause = 1

[State 985, MoveHitProperty]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(54) = var(54)
ignorehitpause = 1

[State 985, MoveHitProperty]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(55) = var(55)
ignorehitpause = 1

[State 985, MoveHitProperty]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(56) = var(56)
ignorehitpause = 1

[State 985, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Heavy Hit Sparks"
postype = P1
pos = var(55) * Const(size.xscale), var(56) * Const(size.yscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1


[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target(StateNo),Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5080
trigger1 = Target(StateNo),Time = 1
value = 1115080
ignorehitpause = 1

[State Extend For Target]
type = varset
triggerall = (AnimElemTime(7)>=0 && !(NumHelper(10985) || NumHelper(10986)  || NumHelper(10987) || NumHelper(10988) || NumHelper(10989) || NumHelper(10990) || NumHelper(117416) || NumHelper(117426) || NumHelper(117417) || NumHelper(117427) || NumHelper(127436) || NumHelper(127426) || NumHelper(107418) || NumHelper(107419) || NumHelper(107420) || NumHelper(107421) || NumHelper(107422) || NumHelper(107423) || NumHelper(107419)));Same as end
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999



[State 985, End]
type = DestroySelf
trigger1 = (AnimElemTime(7)>=0 && !(NumHelper(10985) || NumHelper(10986)  || NumHelper(10987) || NumHelper(10988) || NumHelper(10989) || NumHelper(10990) || NumHelper(117416) || NumHelper(117426) || NumHelper(117417) || NumHelper(117427) || NumHelper(127436) || NumHelper(127426) || NumHelper(107418) || NumHelper(107419) || NumHelper(107420) || NumHelper(107421) || NumHelper(107422) || NumHelper(107423) || NumHelper(107419)))
removeexplods = 1
recursive = 1

;----------- effects ----------------


[State 985, Pal]
type = RemapPal
trigger1 = time = 0
source = 7000,1
dest = 7000,var(1);				1=red 2=blue 3=green 4=yellow

[State 985, scale]
type = AngleDraw
trigger1 = var(5) = 0
trigger1 = Parent,AnimElemTime(3) < 0
value = 0
scale = (1 + (3.5+var(10)) / Abs(Parent,AnimElemTime(3))) * Const(size.xscale),(1 + (3.5+var(10)) / Abs(Parent,AnimElemTime(3))) * Const(size.yscale)

[State 191, snd FX]
type = playsnd
trigger1 = var(5) = 1
trigger1 = AnimElemTime(3) = 0
value = 5, 980
channel = 1
volumescale = 70 + 30*var(10)

[State 985, PowerUP Blast Line 1]
type = helper
triggerall = var(5) = 0
triggerall = !NumHelper(10985)
trigger1 = AnimElemTime(1) = 0
stateno = 10985
ID = 10985
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Line"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Line 2]
type = helper
triggerall = var(5) = 0
triggerall = !NumHelper(10986)
trigger1 = AnimElemTime(1) = 0
stateno = 10986
ID = 10986
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Line"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Line 3]
type = helper
triggerall = var(5) = 0
triggerall = !NumHelper(10987)
trigger1 = AnimElemTime(1) = 0
stateno = 10987
ID = 10987
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Line"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Line 4]
type = helper
triggerall = var(5) = 0
triggerall = !NumHelper(10988)
trigger1 = AnimElemTime(2) = 0
stateno = 10988
ID = 10988
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Line"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Line 5]
type = helper
triggerall = var(5) = 0
triggerall = !NumHelper(10989)
trigger1 = AnimElemTime(2) = 0
stateno = 10989
ID = 10989
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Line"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Line 6]
type = helper
triggerall = var(5) = 0
triggerall = !NumHelper(10990)
trigger1 = AnimElemTime(2) = 0
stateno = 10990
ID = 10990
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Line"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

;----------- Weak version Helpers -------------------

[State 985, PowerUP Blast weak Circle m up]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(117416)
trigger1 = Anim = 7409 && AnimElemTime(3) = 0
stateno = 117416
ID = 117416
helpertype = normal
keyctrl = 0
name = "Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast weak Circle m Down]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(117426)
trigger1 = Anim = 7409 && AnimElemTime(3) = 0
stateno = 117426
ID = 117426
helpertype = normal
keyctrl = 0
name = "Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast weak Circle L up]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(117417)
trigger1 = Anim = 7409 && AnimElemTime(3) = 0
stateno = 117417
ID = 117417
helpertype = normal
keyctrl = 0
name = "Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast weak Circle L Down]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(117427)
trigger1 = Anim = 7409 && AnimElemTime(3) = 0
stateno = 117427
ID = 117427
helpertype = normal
keyctrl = 0
name = "Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast weak Circle R UP]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(127436)
trigger1 = Anim = 7409 && AnimElemTime(3) = 0
stateno = 127436
ID = 127436
helpertype = normal
keyctrl = 0
name = "Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast weak Circle R DN]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(127426)
trigger1 = Anim = 7409 && AnimElemTime(3) = 0
stateno = 127426
ID = 127426
helpertype = normal
keyctrl = 0
name = "Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

;----------- Strong version Helpers -------------------

[State 985, PowerUP Blast Circle 1 up]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(107418)
trigger1 = Anim = 7410 && AnimElemTime(3) = 0
stateno = 107418
ID = 107418
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Circle 2 down]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(107419)
trigger1 = Anim = 7410 && AnimElemTime(3) = 0
stateno = 107419
ID = 107419
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Circle 3 ring 1]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(107420)
trigger1 = Anim = 7410 && AnimElemTime(3) = 0
stateno = 107420
ID = 107420
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Circle 3 ring 2]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(107421)
trigger1 = Anim = 7410 && AnimElemTime(3) = 0
stateno = 107421
ID = 107421
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Circle 3 ring 3]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(107422)
trigger1 = Anim = 7410 && AnimElemTime(3) = 0
stateno = 107422
ID = 107422
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

[State 985, PowerUP Blast Circle 3 ring 4]
type = helper
triggerall = var(5) = 1
triggerall = !NumHelper(107423)
trigger1 = Anim = 7410 && AnimElemTime(3) = 0
stateno = 107423
ID = 107423
helpertype = normal
keyctrl = 0
name = "PowerUP Blast Circle"
postype = P1
pos = 0,0
ownpal = 0
size.proj.doscale = ID
size.xscale = 1 * Const(size.xscale)
size.yscale = 1 * Const(size.yscale)
ignorehitpause = 1
;pausemovetime = 65535
;supermovetime = 65535

;--------- Explods -----------
[State 985, Explod BustElectric]
type = Explod
triggerall = var(5) = 1
triggerall = !NumExplod(7723)
trigger1 = anim = 7410
trigger1 = AnimelemTime(4)=0
anim = 7723
ID = 7723
space = stage
pos = 0,0
bindID = ID
facing = facing
bindtime = -1
removetime = -2
scale = 1.8 * Const(Size.xscale), 3.6 * Const(Size.yscale)
sprpriority = 2
ownpal = 1
ignorehitpause = 0
;supermovetime = 65535
;pausemovetime = 65535

[State 985, Explod updown]
type = Explod
triggerall = var(5) = 1
triggerall = !NumExplod(20403)
trigger1 = var(6) = 1
anim = 20403
ID = 20403
space = stage
pos = 0,0
bindID = ID
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
;supermovetime = 65535
;pausemovetime = 65535

[State 985, Explod updown scale]
type = ModifyExplod
triggerall = NumExplod(20403)
trigger1 = var(5) = 1 && var(6) = [1,12]
ID = 20403
scale = 5 - (var(6)*0.38) ,4



[State 985, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(6)=%d | ID=%d | counter=%d"
params = var(5), var(6), ID,var(6)
ignorehitpause = 1

[State 985, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;------- Dizzy Duck Helper ---------
[Statedef 7300]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7300, var]
type = varset
trigger1 = !time
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(10) =  Const(size.proj.doscale)

[State 7300, Bind]
type = PosSet
trigger1 = PlayerIDExist(var(10))
x = PlayerID(var(10)), Pos x
y = PlayerID(var(10)), Pos y + PlayerID(var(10)),Const(size.head.pos.y) * PlayerID(var(10)),Const(Size.yScale)


[State 7300, Explod Ducks]
type = Explod
trigger1 = !NumExplod(7300)
anim = 7300
ID = 7300
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 1

[State 7300, SND Ducks]
type = PlaySnd
trigger1 = time%60 = 0
value = 7, 7300
volumescale = 100
channel = 7
;abspan = 0

[State 7300, End Destroy]
type = DestroySelf
trigger1 = PlayerIDExist(var(10)) = 0
trigger2 = PlayerIDExist(var(10))
trigger2 = PlayerID(var(10)), MoveType != H || PlayerID(var(10)),Ctrl
removeexplods = 1
recursive = 1

[State 7300, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(6)=%d | ID=%d | counter=%d"
params = var(5), var(6), ID,var(6)
ignorehitpause = 1

[State 7300, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1






;====================== Blaster Power Lines 1 =======================
[Statedef 10985]
type = A
physics = N
sprpriority = 2
anim = 7411
ctrl = 0

[State 10985, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7411
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

[State 10985, no_reflect]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;----------- Pos fix ----------------
[State 10985, Bind]
type = BindToParent
trigger1 = Anim = 7411
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 10985, AngleDraw]
type = AngleDraw
trigger1 = anim = 7411
value = 280 - (var(6) * 2)



[State 10985, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
trigger4 = Parent,var(5)
removeexplods = 1
recursive = 1

[State 10985, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 10985, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Lines 2 =======================
[Statedef 10986]
type = A
physics = N
sprpriority = 2
anim = 7411
ctrl = 0

[State 10986, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7411
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

[State 10986, no_reflect]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;----------- Pos fix ----------------
[State 10986, Bind]
type = BindToParent
trigger1 = Anim = 7411
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 10986, AngleDraw]
type = AngleDraw
trigger1 = anim = 7411
value = 140 - (var(6) * 2)




[State 10986, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
trigger4 = Parent,var(5)
removeexplods = 1
recursive = 1

[State 10986, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 10986, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Lines 3 =======================
[Statedef 10987]
type = A
physics = N
sprpriority = 2
anim = 7411
ctrl = 0

[State 10987, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7411
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

[State 10987, no_reflect]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;----------- Pos fix ----------------
[State 10987, Bind]
type = BindToParent
trigger1 = Anim = 7411
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 10987, AngleDraw]
type = AngleDraw
trigger1 = anim = 7411
value = 45 - (var(6) * 2)



[State 10987, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
trigger4 = Parent,var(5)
removeexplods = 1
recursive = 1

[State 10987, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 10987, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Lines 4 =======================
[Statedef 10988]
type = A
physics = N
sprpriority = 2
anim = 7411
ctrl = 0

[State 10988, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7411
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

[State 10988, no_reflect]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;----------- Pos fix ----------------
[State 10988, Bind]
type = BindToParent
trigger1 = Anim = 7411
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 10988, AngleDraw]
type = AngleDraw
trigger1 = anim = 7411
value = 300 + (var(6) * 2)



[State 10988, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
trigger4 = Parent,var(5)
removeexplods = 1
recursive = 1

[State 10988, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 10988, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Lines 5 =======================
[Statedef 10989]
type = A
physics = N
sprpriority = 2
anim = 7411
ctrl = 0

[State 10989, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7411
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

[State 10989, no_reflect]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;----------- Pos fix ----------------
[State 10989, Bind]
type = BindToParent
trigger1 = Anim = 7411
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 10989, AngleDraw]
type = AngleDraw
trigger1 = anim = 7411
value = 230 - (var(6) * 2)




[State 10989, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
trigger4 = Parent,var(5)
removeexplods = 1
recursive = 1

[State 10989, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 10989, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Lines 6 =======================
[Statedef 10990]
type = A
physics = N
sprpriority = 2
anim = 7411
ctrl = 0

[State 10990, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7411
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

[State 10990, no_reflect]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;----------- Pos fix ----------------
[State 10990, Bind]
type = BindToParent
trigger1 = Anim = 7411
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 10990, AngleDraw]
type = AngleDraw
trigger1 = anim = 7411
value = 150 - (var(6) * 8)




[State 10990, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
trigger4 = Parent,var(5)
removeexplods = 1
recursive = 1

[State 10990, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 10990, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;====================== Blaster Weak Circle Left Up =======================
[Statedef 117417]
type = A
physics = N
sprpriority = 2
anim = 7417
ctrl = 0

[State 117417, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7416
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 117417, Bind]
type = BindToParent
trigger1 = time = 0
time = 1
facing = 1
pos = 0,60		;-110,0

[State 117417, Move]
type = velset
trigger1 = var(6) < 11
x = -10
y = -6

[State 117417, Move]
type = velset
trigger1 = var(6) >= 11
x = -1
y = -1

;---------- Rollate ---
[State 117417, AngleDraw 1]
type = AngleDraw
trigger1 = var(6) = 0
value = 120		;30
scale = 1.8, 0.4	;0.8,1.4

[State 117417, AngleDraw 2]
type = AngleDraw
trigger1 = var(6) = [1,10]
value = 120 - var(6) * 9
scale = 1.8 - var(6) * 0.1, 0.4 + var(6) * 0.1

[State 117417, AngleDraw 3]
type = AngleDraw
trigger1 = var(6) >= 11
value = 30 - (var(6) - 11)
scale = 0.8 + (var(6) - 10) * 0.01, 1.4 + (var(6) - 10) * 0.01


[State 117417, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = AnimTime = 0
recursive = 1
removeexplods = 1

[State 117417, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 117417, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Weak Circle Left Down =======================
[Statedef 117427]
type = A
physics = N
sprpriority = 2
anim = 7417
ctrl = 0

[State 117427, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7416
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 117427, Bind]
type = BindToParent
trigger1 = time = 0
time = 1
facing = 1
pos = 0,-60		;-80,-140

[State 117427, Move]
type = velset
trigger1 = var(6) < 11
x = -8
y = -8

[State 117427, Move]
type = velset
trigger1 = var(6) >= 11
x = -1
y = -1

;---------- Rollate ---
[State 117427, AngleDraw 1]
type = AngleDraw
trigger1 = var(6) = 0
value = 300		;210
scale = 1.8, 0.4	;1.12, 1.56

[State 117427, AngleDraw 2]
type = AngleDraw
trigger1 = var(6) = [1,10]
value = 300 - var(6) * 9
scale = 1.8 - var(6) * 0.068, 0.4 + var(6) * 0.116

[State 117427, AngleDraw 3]
type = AngleDraw
trigger1 = var(6) >= 11
value = 210 - (var(6) - 11)
scale = 1.12 + (var(6) - 10) * 0.01, 1.56 + (var(6) - 10) * 0.01


[State 117427, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = AnimTime = 0
recursive = 1
removeexplods = 1

[State 117427, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 117427, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1




;====================== Blaster Weak Circle m Up =======================
[Statedef 117416]
type = A
physics = N
sprpriority = 2
anim = 7416
ctrl = 0

[State 117416, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7416
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 117416, Bind]
type = BindToParent
trigger1 = time = 0
time = 1
facing = 1
pos = 0,0

[State 117416, Move]
type = velset
trigger1 = var(6) < 11
x = 6

[State 117416, Move]
type = velset
trigger1 = var(6) >= 11
x = 1

;---------- Rollate ---
[State 117416, AngleDraw 1]
type = AngleDraw
trigger1 = var(6) = 0
value = 80
scale = 1.6, 1.2

[State 117416, AngleDraw 2]
type = AngleDraw
trigger1 = var(6) = [1,10]
value = 80 - var(6) * 7
scale = 1.6 + var(6) * 0.01, 1.2 + var(6) * 0.01

[State 117416, AngleDraw 3]
type = AngleDraw
trigger1 = var(6) >= 11
value = 10 - (var(6) - 11)
scale = 1.7 + (var(6) - 10) * 0.01, 1.3  + (var(6) - 10) * 0.01


[State 117416, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = AnimTime = 0
recursive = 1
removeexplods = 1

[State 117416, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 117416, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Weak Circle m Down =======================
[Statedef 117426]
type = A
physics = N
sprpriority = 2
anim = 7416
ctrl = 0

[State 117426, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7416
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 117426, Bind]
type = BindToParent
trigger1 = time = 0
time = 1
facing = 1
pos = 0,0

[State 117426, Move]
type = velset
trigger1 = var(6) < 11
x = -6

[State 117426, Move]
type = velset
trigger1 = var(6) >= 11
x = -1

;---------- Rollate ---
[State 117426, AngleDraw 1]
type = AngleDraw
trigger1 = var(6) = 0
value = 260
scale = 1.6, 1.2

[State 117426, AngleDraw 2]
type = AngleDraw
trigger1 = var(6) = [1,10]
value = 260 - var(6) * 7
scale = 1.6 + var(6) * 0.01, 1.2 + var(6) * 0.01

[State 117426, AngleDraw 3]
type = AngleDraw
trigger1 = var(6) >= 11
value = 190 - (var(6) - 11)
scale = 1.7 + (var(6) - 10) * 0.01, 1.3  + (var(6) - 10) * 0.01


[State 117426, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = AnimTime = 0
recursive = 1
removeexplods = 1

[State 117426, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 117426, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;====================== Blaster Weak Circle Right DN =======================
[Statedef 127426]
type = A
physics = N
sprpriority = 2
anim = 7426
ctrl = 0

[State 127426, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7416
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 127426, Bind]
type = BindToParent
trigger1 = time = 0
time = 1
facing = 1
pos = -60,60		;-60,60

;[State 127426, Move]
;type = velset
;trigger1 = var(6) < 11
;x = -6
;y = 6

[State 127426, Move]
type = velset
trigger1 = var(6) >= 11
x = -1
y = 1

;---------- Rollate ---
[State 127426, AngleDraw 1]
type = AngleDraw
trigger1 = var(6) = 0
value = 40		;	-20
scale = 1.2,0.5	;		0.8,1.4

[State 127426, AngleDraw 2]
type = AngleDraw
trigger1 = var(6) = [1,10]
value = 40 - var(6) * 6
scale = 1.2 - var(6) * 0.04, 0.5 + var(6) * 0.09

[State 127426, AngleDraw 3]
type = AngleDraw
trigger1 = var(6) >= 11
value = -20 - (var(6) - 11)
scale = 0.8 + (var(6) - 10) * 0.01, 1.4 + (var(6) - 10) * 0.01


[State 127426, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = AnimTime = 0
recursive = 1
removeexplods = 1

[State 127426, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 127426, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1




;====================== Blaster Weak Circle Right up =======================
[Statedef 127436]
type = A
physics = N
sprpriority = 2
anim = 7426
ctrl = 0

[State 127436, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7416
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 127436, Bind]
type = BindToParent
trigger1 = time = 0
time = 1
facing = 1
pos = 60,-120		;0,-60

[State 127436, Move]
type = velset
trigger1 = var(6) < 11
x = -6
y = 6

[State 127436, Move]
type = velset
trigger1 = var(6) >= 11
x = -1
y = 1

;---------- Rollate ---
[State 127436, AngleDraw 1]
type = AngleDraw
trigger1 = var(6) = 0
value = 225		;	165
scale = 0.8, 0.4	;	1.5, 1.8

[State 127436, AngleDraw 2]
type = AngleDraw
trigger1 = var(6) = [1,10]
value = 225 - var(6) * 6
scale = 0.8 + var(6) * 0.07, 0.4 + var(6) * 0.14

[State 127436, AngleDraw 3]
type = AngleDraw
trigger1 = var(6) >= 11
value = 165 - (var(6) - 11)
scale = 1.5 + (var(6) - 10) * 0.01, 1.8 + (var(6) - 10) * 0.01


[State 127436, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = AnimTime = 0
recursive = 1
removeexplods = 1

[State 127436, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 127436, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1













;====================== Blaster Power Circle 1 Up =======================
[Statedef 107418]
type = A
physics = N
sprpriority = 2
anim = 7418
ctrl = 0

[State 107418, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7418
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 107418, Bind]
type = BindToParent
trigger1 = Anim = 7418
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 107418, AngleDraw]
type = AngleDraw
trigger1 = anim = 7418
value = 170 - (var(6) * 12)
scale = 2.1 + (var(6)/4.2) , 2.1 + (var(6)/4.2)



[State 107418, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 107418, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 107418, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

;====================== Blaster Power Circle 2 Down =======================
[Statedef 107419]
type = A
physics = N
sprpriority = 2
anim = 7418
ctrl = 0

[State 107419, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7418
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 107419, Bind]
type = BindToParent
trigger1 = Anim = 7418
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 107419, AngleDraw]
type = AngleDraw
trigger1 = anim = 7418
value = 350 - (var(6) * 12)
scale = 2.1 + (var(6)/4.2) , 2.1 + (var(6)/4.2)


[State 107419, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 107419, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 107419, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Circle 3 ring 1 =======================
[Statedef 107420]
type = A
physics = N
sprpriority = 2
anim = 7412
ctrl = 0

[State 107420, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7412
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 107420, Bind]
type = BindToParent
trigger1 = Anim = 7412
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 107420, AngleDraw]
type = AngleDraw
trigger1 = anim = 7412
value = 45 - (var(6) * 2)
scale = 2,1



[State 107420, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 107420, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 107420, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

;====================== Blaster Power Circle 3 ring 3 =======================
[Statedef 107422]
type = A
physics = N
sprpriority = 2
anim = 7412
ctrl = 0

[State 107422, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7412
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 107422, Bind]
type = BindToParent
trigger1 = Anim = 7412
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 107422, AngleDraw]
type = AngleDraw
trigger1 = anim = 7412
value = 225 - (var(6) * 2)
scale = 2,1




[State 107422, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 107422, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 107422, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Circle 3 ring 2 =======================
[Statedef 107421]
type = A
physics = N
sprpriority = 2
anim = 7422
ctrl = 0

[State 107421, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7422
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 107421, Bind]
type = BindToParent
trigger1 = Anim = 7422
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 107421, AngleDraw]
type = AngleDraw
trigger1 = anim = 7422
value = 315 - (var(6) * 2)
scale = 2,1



[State 107421, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 107421, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 107421, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;====================== Blaster Power Circle 3 ring 4 =======================
[Statedef 107423]
type = A
physics = N
sprpriority = 2
anim = 7422
ctrl = 0

[State 107423, Pal]
type = RemapPal
trigger1 = time = 0
trigger1 = Anim = 7422
source = 7000,1
dest = 7000,Parent,var(1);				1=red 2=green 3=blue 4=yellow

;----------- Pos fix ----------------
[State 107423, Bind]
type = BindToParent
trigger1 = Anim = 7422
time = 1
facing = 1
pos = 0,0

;---------- Rollate ---
[State 107423, AngleDraw]
type = AngleDraw
trigger1 = anim = 7422
value = 135 - (var(6) * 2)
scale = 2,1


[State 107423, End]
type = DestroySelf
trigger1 = time > 300
trigger2 = Parent,StateNo != [985,989]
trigger3 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 107423, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), Const(size.xscale),var(6)
ignorehitpause = 1

[State 107423, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;=================== Kuroko Charge Helper ============
[Statedef 7004]
type = A
moveType = I
physics = N
sprpriority = 0
ctrl = 0
anim = 9741
velset = 0,0

[State 7004, ParentX]
type = VarSet
trigger1 = IsHelper
trigger1 = !PrevStateNo && !time
fvar(10) = ParentDist X

[State 7004, ParentX]
type = VarSet
trigger1 = IsHelper
trigger1 = !PrevStateNo && !time
fvar(11) = ParentDist Y


[State 7004, Pos Fix]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = -fvar(10),-fvar(11)
ignorehitpause = 1

[State 7004, SND-FX]
type = PlaySnd
trigger1 = var(5) = 0
trigger1 = var(6) = 0
value = 7,1003
volumescale = 100
channel = 7
;abspan = 0

[State 7004, Ring out 1]
type = Explod
trigger1 = !NumExplod(7413)
trigger1 = var(5) = 0
trigger1 = var(6) = 0
anim = 7413
ID = 7413
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),2.3 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5

[State 7004, Ring out 2]
type = Explod
trigger1 = !NumExplod(17413)
trigger1 = var(5) = 0
trigger1 = var(6) = 0
anim = 7413
ID = 17413
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),2.3 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5

[State 7004, Ring out 1 roll]
type = ModifyExplod
trigger1 = NumExplod(7413)
trigger1 = var(5) = 0
trigger1 = var(6) = [0,3]
ID = 7413
angle = Floor(45 - 15*var(6))

[State 7004, Ring out 2 roll]
type = ModifyExplod
trigger1 = NumExplod(17413)
trigger1 = var(5) = 0
trigger1 = var(6) = [0,3]
ID = 17413
angle = Floor(225 - 15*var(6))



[State 7004, Ring mid 1]
type = Explod
trigger1 = !NumExplod(7414)
trigger1 = var(5) = 0
trigger1 = var(6) = 4
anim = 7414
ID = 7414
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.6 * Const(size.xscale), 1.2 * Const(size.yscale)
angle = 90
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5

[State 7004, Ring mid 2]
type = Explod
trigger1 = !NumExplod(17414)
trigger1 = var(5) = 0
trigger1 = var(6) = 4
anim = 7414
ID = 17414
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.6 * Const(size.xscale), 1.2 * Const(size.yscale)
angle = 90
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5

[State 7004, Ring mid 1 roll]
type = ModifyExplod
trigger1 = NumExplod(7414)
trigger1 = var(5) = 0
trigger1 = var(6) = [4,7]
ID = 7414
angle = Floor(90 - 15*(var(6) - 4))

[State 7004, Ring mid 2 roll]
type = ModifyExplod
trigger1 = NumExplod(17414)
trigger1 = var(5) = 0
trigger1 = var(6) = [4,7]
ID = 17414
angle = Floor(270 - 15*(var(6) - 4))

[State 7004, Ring inner 1]
type = Explod
trigger1 = !NumExplod(7415)
trigger1 = var(5) = 0
trigger1 = var(6) = 8
anim = 7418
ID = 7415
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 180
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5

[State 7004, Ring inner 2]
type = Explod
trigger1 = !NumExplod(17415)
trigger1 = var(5) = 0
trigger1 = var(6) = 8
anim = 7418
ID = 17415
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 180
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5


[State 7004, Ring inner 1 roll]
type = ModifyExplod
trigger1 = NumExplod(7415)
trigger1 = var(5) = 0
trigger1 = var(6) = [8,16]
ID = 7415
angle = Floor(180 - 15*(var(6) - 8))
scale = (1 + 0.12*(var(6) - 8)) * Const(size.xscale), (1 + 0.12*(var(6) - 8)) * Const(size.yscale)

[State 7004, Ring inner 2 roll]
type = ModifyExplod
trigger1 = NumExplod(17415)
trigger1 = var(5) = 0
trigger1 = var(6) = [8,16]
ID = 17415
angle = Floor(0 - 15*(var(6) - 8))
scale = (1 + 0.12*(var(6) - 8)) * Const(size.xscale), (1 + 0.12*(var(6) - 8)) * Const(size.yscale)


[State 7004, Explod Spark 01]
type = Explod
trigger1 = NumExplod(7551) < 2
trigger1 = var(6) = 13
anim = 7551
ID = 7551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = -20
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7004, Explod Spark 02]
type = Explod
trigger1 = NumExplod(7551) < 2
trigger1 = var(6) = 13
anim = 7551
ID = 7551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 70
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7004, Explod Spark Grow Longer]
type = ModifyExplod
trigger1 = NumExplod(7551)
trigger1 = var(6) = [13,14]
ID = 7551
scale = 2.0 * Const(size.xscale),(1.0 + 1*(var(6)-12)) * Const(size.yscale)


[State 7004, Explod Spark Grow thinner]
type = ModifyExplod
trigger1 = NumExplod(7551)
trigger1 = var(6) = [15,16]
ID = 7551
scale = (2.0 - 0.8*(var(6)-14)) * Const(size.xscale),3.0 * Const(size.yscale)


[State 7004, ball 1]
type = Explod
trigger1 = !NumExplod(7008)
trigger1 = var(5) = 0
trigger1 = var(6) = 1
anim = 7008
ID = 7008
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 12
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7000,5

[State 7004, Explod Spark Grow thinner]
type = ModifyExplod
trigger1 = NumExplod(7008)
trigger1 = var(6) = [1,12]
ID = 7008
scale = (0.25 * var(6)) * Const(size.xscale), (0.25 * var(6)) * Const(size.yscale)

[State 7004, End]
type = DestroySelf
trigger1 = var(6) > Const(size.proj.doscale)
removeexplods = 1
recursive = 1


[State 7004, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | var(2)=%d | var(3)=%d | counter=%d"
params = var(10), var(2), var(3),var(6)
ignorehitpause = 1

[State 7004, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 0


; ---------- Back Aura ------
[Statedef 7109]
type = A
physics = N
sprpriority = -1
anim = 9741
ctrl = 0

[State 7109, Remeber]
type = varset
trigger1 = !time
trigger2 = var(6)%24 = 0
var(10) = Parent,Anim

[State 7109, Remeber]
type = varset
trigger1 = !time
trigger2 = var(6)%24 = 0
var(11) = Parent,AnimElemNo(0)

[State 7109, Fix Post to Parent]
type = PosSet
trigger1 = var(6)%24 = 0
x = Parent,Pos x
y = Parent,Pos y
ignorehitpause = 1

[State 7109, NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7109, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 7109, noShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7109, Fix Anime]
type = ChangeAnim
trigger1 = 1
value = var(10)
Elem = var(11)
ignorehitpause = 1

;[State 7109, Fix Anime]
;type = ChangeAnim
;trigger1 = Anim != Parent,Anim
;trigger2 = AnimElemNo(0) != Parent,AnimElemNo(0)
;value = Parent,Anim
;Elem = Parent,AnimElemNo(0)
;ignorehitpause = 1

[State 7109, AngleDraw Scale]
type = AngleDraw
trigger1 = 1
value = 0
scale = (1 + 0.006 * (var(6)%24)),(1 + 0.006 * (var(6)%24))
ignorehitpause = 1

[State 7109, PalFX]
type = PalFx
trigger1 = 1
time = 1
add = 255,10,10
mul = 256,256,256
color = 256
invertall = 0
ignorehitpause = 1

[State 7109, Trans]
type = Trans
trigger1 = var(6)%24 < 12
Trans = add
alpha = 128,128
ignorehitpause = 1

[State 7109, Trans]
type = Trans
trigger1 = var(6)%24 >= 12
Trans = add
alpha = 128 - 10*(var(6)%24 - 11),128 + 10*(var(6)%24 - 11)
ignorehitpause = 1

[State 7109, End]
type = DestroySelf
trigger1 = Parent,StateNo != Const(size.proj.doscale)
trigger2 = var(6) > Const(size.shadowoffset)
removeexplods = 1
recursive = 1

[State 7109, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | counter=%d"
params = var(5), var(6)%24, var(6)
ignorehitpause = 1

[State 7109, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1





; ---------- Teleport FX into ------
[Statedef 7110]
type = A
physics = N
sprpriority = 2
anim = 9741
ctrl = 0

[State Remember]
type = varset
trigger1 = !PrevStateNo && !time
var(11) = Parent,Anim

[State Remember]
type = varset
trigger1 = !PrevStateNo && !time
var(12) = Parent,AnimElemNo(0)

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State Sync]
type = varset
trigger1 = !PrevStateNo && !time
var(6) = 1

[State Pos Fix]
type = PosSet
trigger1 = var(5) = [0,1]
trigger1 = var(6) = 1
x = Parent,Pos x
y = Parent,Pos y

;[State 7110, Fix Anim]
;type = ChangeAnim
;trigger1 = Anim != Parent,Anim
;trigger2 = AnimElemNo(0) != Parent,AnimElemNo(0)
;value = Parent,Anim
;Elem = Parent,AnimElemNo(0)

[State 7110, Fix Anim]
type = ChangeAnim
trigger1 = 1
value = var(11)
Elem = var(12)

[State 7110, PalFX fade in]
type = PalFX
trigger1 = var(5) = 0
trigger1 = var(6) = [1,4]
time = 1
add = 50 * (var(6) - 1),50 * (var(6) - 1),50 * (var(6) - 1)
mul = 256,256,256
color = 256

[State 7110, PalFX stay]
type = PalFX
trigger1 = var(5) = 0
trigger1 = var(6) > 4
time = 1
add = 256,256,256
mul = 256,256,256
color = 256

[State 7110,fade out trans]
type = trans
trigger1 = var(5) = 0
trigger1 = var(6) = [6,14]
trans = add
alpha = 256 - 24*(var(6) - 5), 0 + 24*(var(6) - 5)

[State 7110,fade out trans invisible]
type = trans
trigger1 = var(5) = 0
trigger1 = var(6) > 14
trans = add
alpha = 0,256


[State 7110, SND Teleport]
type = PlaySnd
trigger1 = var(5) = 0
trigger1 = var(6) = 1
value = 5,7530
volumescale = 100
channel = 5
;abspan = 0

[State 7110, Explod Teleport]
type = Explod
triggerall = !NumExplod(7530)
trigger1 = var(5) = 0
trigger1 = var(6) = 1
anim = 7530
ID = 7530
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

[State 7110, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7530)
trigger1 = var(5) = [0,1]
trigger1 = var(6) = [1,6]
ID = 7530
scale = (4 - (0.6 * var(6))) * Const(size.xscale),(0.3 + (0.28 * var(6))) * Const(size.yscale)
trans = add
alpha = 256,256



[State 7110, End]
type = DestroySelf
trigger1 = var(6) > Const(size.shadowoffset)
;trigger2 = Parent,StateNo != Const(size.proj.doscale)
removeexplods = 1
recursive = 1

[State 7110, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | counter=%d"
params = var(5), var(6)
ignorehitpause = 1

[State 7110, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;Miyuki Magic_Circle
[Statedef 7114]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7114, Type]
type = varset
trigger1 = !PrevStateNo && !time
var(8) = Parent,ID

[State 7114, Type]
type = varset
trigger1 = !PrevStateNo && !time
var(10) = Parent,var(10)

[State 7114, Update_EndTime]
type = varset
triggerall = IsHelper
trigger1 = !time && !PrevStateNo
var(9) = Const(size.shadowoffset)

[State 7114, Update_EndTime]
type = varset
triggerall = IsHelper
trigger1 = PlayerIDExist(var(8))
trigger1 = PlayerID(var(8)),IsHelper
trigger1 = Const(size.shadowoffset) <= 0
var(9) = var(6) + 11

[State 315, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 315, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0


;[State 7114, Magic_Circle]
;type = Explod
;trigger1 = !time && !PrevStateNo
;anim = 7114
;ID = 7114
;space = stage
;pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
;bindID = ID
;bindtime = -1
;facing = facing
;removetime = -1
;removeongethit = 0
;supermovetime = 65535
;pausemovetime = 65535
;scale = 1 * Const(size.xscale) * fvar(11), 0.25 * Const(size.yscale) * fvar(12)
;angle = 0
;trans = add
;alpha = 160,256
;sprpriority = -2
;ownpal = 1
;remappal = 7111,1
;ignorehitpause = 0

[State 7114, Magic_Circle]
type = Explod
trigger1 = !time && !PrevStateNo
anim = 7114
ID = 7114
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
removeongethit = 0
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = 0
xangle = 90
yangle = 0
trans = add
alpha = 160,256
sprpriority = -2
ownpal = 1
remappal = 7111,1
ignorehitpause = 0

[State 7114, Magic_Circle_light]
type = Explod
trigger1 = !time && !PrevStateNo
anim = 7112
ID = 7112
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
removeongethit = 0
supermovetime = 65535
pausemovetime = 65535
scale = 2.75 * Const(size.xscale) * fvar(11), 2.75 * Const(size.yscale) * fvar(12)
angle = 0
trans = add
alpha = 160,256
sprpriority = 2
ownpal = 1
remappal = 7111,0
ignorehitpause = 0


;[State 7114, Explod_Fade_in]
;type = ModifyExplod
;trigger1 = NumExplod(7114)
;trigger1 = var(6) = [0,9]
;ID = 7114
;scale = 1 * Const(size.xscale) * fvar(11) * ((var(6)+1)/10.0), 0.25 * Const(size.yscale) * fvar(12)* ((var(6)+1)/10.0)
;angle = 0
;trans = add
;alpha = 160,256

[State 7114, Explod_Fade_in]
type = ModifyExplod
trigger1 = NumExplod(7114)
trigger1 = var(6) = [0,9]
ID = 7114
scale = 1 * Const(size.xscale) * fvar(11) * ((var(6)+1)/10.0), 1 * Const(size.yscale) * fvar(12)* ((var(6)+1)/10.0)
angle = 0
trans = add
alpha = 160,256

[State 7114, Explod_Fade_in]
type = ModifyExplod
trigger1 = NumExplod(7112)
trigger1 = var(6) = [0,9]
ID = 7112
scale = 2.75 * Const(size.xscale) * fvar(11) * ((var(6)+1)/10.0), 2.75 * Const(size.yscale) * fvar(12) * ((var(6)+1)/10.0)
angle = 0
trans = add
alpha = 160,256

[State 7114, Explod_Fade_out]
type = ModifyExplod
trigger1 = NumExplod(7114)
trigger1 = var(6) = [(var(9)-10),var(9)]
ID = 7114
;scale = 1 * Const(size.xscale) * fvar(11) * (1-((var(6)-(var(9)-10))/10.0)), 0.25 * Const(size.yscale) * fvar(12)  * (1-((var(6)-(var(9)-10))/10.0))
angle = 0
trans = add
alpha = Floor(160* (1-((var(6)-(var(9)-10))/10.0))),256

[State 7114, Explod_Fade_out]
type = ModifyExplod
trigger1 = NumExplod(7112)
trigger1 = var(6) = [(var(9)-10),var(9)]
ID = 7112
;scale = 2.75 * Const(size.xscale) * fvar(11) * (1-((var(6)-(var(9)-10))/10.0)), 2.75 * Const(size.yscale) * fvar(12) * (1-((var(6)-(var(9)-10))/10.0))
angle = 0
trans = add
alpha = Floor(160* (1-((var(6)-(var(9)-10))/10.0))),256

[State 7114, End]
type = DestroySelf
trigger1 = var(6) > var(9)
removeexplods = 1
recursive = 1

[State 7114, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | counter=%d"
params = var(5), var(6)
ignorehitpause = 1

[State 7114, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;Miyuki Digi Ring
[Statedef 7542]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7542, Type]
type = varset
trigger1 = !PrevStateNo && !time
var(8) = Parent,ID

[State 7542, Angle]; Need / 2
type = varset
trigger1 = !PrevStateNo && !time
var(10) = Const(size.proj.doscale) / 2

[State 7542, Update_EndTime]
type = varset
triggerall = IsHelper
trigger1 = !time && !PrevStateNo
trigger1 = Parent,IsHelper = 0
var(9) = Const(size.shadowoffset)

[State 7542, Update_EndTime]
type = varset
triggerall = IsHelper
trigger1 = PlayerIDExist(var(8))
trigger1 = PlayerID(var(8)),IsHelper
var(9) = var(6) + 11

[State 315, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 315, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State 7542, X]
type = varset
trigger1 = !PrevStateNo && !time
var(21) = Floor(ParentDist x)

[State 7542, Y]
type = varset
trigger1 = !PrevStateNo && !time
var(22) = Floor(ParentDist y)

[State 7542, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = -var(21), -var(22)
ignorehitpause = 1
persistent = 1


[State 7542, Digi_Rings_Back_01]
type = Explod
triggerall = var(4) < var(9)
triggerall = NumExplod(75421) < 4
trigger1 = var(4)%24 = 0
trigger1 = var(5):=1
anim = 7542
ID = 75421
space = stage
pos = 120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11), 120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
removeongethit = 1
supermovetime = 65535
pausemovetime = 65535
vel = -(120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11))/12.0, (120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12))/12.0
;accel = -0.05 * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = var(10)
ownpal = 1
sprpriority = 0
ignorehitpause = 0

[State 7542, Digi_Rings_Front_01]
type = Explod
triggerall = var(4) < var(9)
triggerall = NumExplod(75421) < 4
trigger1 = var(4)%24 = 0
anim = 7543
ID = 75421
space = stage
pos = 120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11), 120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
removeongethit = 1
supermovetime = 65535
pausemovetime = 65535
vel = -(120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11))/12.0, (120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12))/12.0
;accel = -0.05 * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = var(10)
ownpal = 1
sprpriority = 4
ignorehitpause = 0

[State 7542, Digi_Rings_Back_02]
type = Explod
triggerall = var(4) < var(9)
triggerall = NumExplod(75422) < 4
trigger1 = var(4)%24 = 8
trigger1 = var(6):=1
anim = 7542
ID = 75422
space = stage
pos = 120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11), 120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
removeongethit = 1
supermovetime = 65535
pausemovetime = 65535
vel = -(120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11))/12.0, (120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12))/12.0
;accel = -0.05 * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = var(10)
ownpal = 1
sprpriority = 0
ignorehitpause = 0

[State 7542, Digi_Rings_Front_02]
type = Explod
triggerall = var(4) < var(9)
triggerall = NumExplod(75422) < 4
trigger1 = var(4)%24 = 8
anim = 7543
ID = 75422
space = stage
pos = 120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11), 120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
removeongethit = 1
supermovetime = 65535
pausemovetime = 65535
vel = -(120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11))/12.0, (120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12))/12.0
;accel = -0.05 * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = var(10)
ownpal = 1
sprpriority = 4
ignorehitpause = 0

[State 7542, Digi_Rings_Back_03]
type = Explod
triggerall = var(4) < var(9)
triggerall = NumExplod(75423) < 4
trigger1 = var(4)%24 = 16
trigger1 = var(7):=1
anim = 7542
ID = 75423
space = stage
pos = 120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11), 120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
removeongethit = 1
supermovetime = 65535
pausemovetime = 65535
vel = -(120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11))/12.0, (120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12))/12.0
;accel = -0.05 * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = var(10)
ownpal = 1
sprpriority = 0
ignorehitpause = 0

[State 7542, Digi_Rings_Font_03]
type = Explod
triggerall = var(4) < var(9)
triggerall = NumExplod(75423) < 4
trigger1 = var(4)%24 = 16
anim = 7543
ID = 75423
space = stage
pos = 120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11), 120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
removeongethit = 1
supermovetime = 65535
pausemovetime = 65535
vel = -(120 * Cos(var(10)*(Pi/180.0)) * facing * Const(size.xscale) * fvar(11))/12.0, (120 * Sin(var(10)*(Pi/180.0)) * Const(size.yscale) * fvar(12))/12.0
;accel = -0.05 * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
angle = var(10)
ownpal = 1
sprpriority = 4
ignorehitpause = 0


[State 7542, Digi_Rings_Front_01]
type = ModifyExplod
trigger1 = var(5)
trigger1 = NumExplod(75421)
ID = 75421
scale = 1 * Const(size.xscale) * fvar(11), 1.4*Sin((var(5)*5 + 20)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
trans = add
alpha = IFElse(var(5)<=5,var(5)*32,IFElse(var(5)>=20,(25-var(5))*32,192)), IFElse(var(5)<=5,256-var(5)*32,IFElse(var(5)>=20,256-(25-var(5))*32,64))
ignorehitpause = 1

[State 7542, Digi_Rings_Front_02]
type = ModifyExplod
trigger1 = var(6)
trigger1 = NumExplod(75422)
ID = 75422
scale = 1 * Const(size.xscale) * fvar(11), 1.4*Sin((var(6)*5 + 20)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
trans = add
alpha = IFElse(var(6)<=5,var(6)*32,IFElse(var(6)>=20,(25-var(6))*32,192)), IFElse(var(6)<=5,256-var(6)*32,IFElse(var(6)>=20,256-(25-var(6))*32,64))
ignorehitpause = 1

[State 7542, Digi_Rings_Front_03]
type = ModifyExplod
trigger1 = var(7)
trigger1 = NumExplod(75423)
ID = 75423
scale = 1 * Const(size.xscale) * fvar(11), 1.4*Sin((var(7)*5 + 20)*(Pi/180.0)) * Const(size.yscale) * fvar(12)
trans = add
alpha = IFElse(var(7)<=5,var(7)*32,IFElse(var(7)>=20,(25-var(7))*32,192)), IFElse(var(7)<=5,256-var(7)*32,IFElse(var(7)>=20,256-(25-var(7))*32,64))
ignorehitpause = 1

[State 7542, End]
type = DestroySelf
triggerall = !(NumExplod(75421) || NumExplod(75422) || NumExplod(75423))
trigger1 = var(4) > var(9)
removeexplods = 0
recursive = 1

[State 7542, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(4)=%d | var(5)=%d | var(6)=%d | var(7)=%d | NumExplod(75421)=%d"
params = var(4), var(5), var(6), var(7), NumExplod(75421)
ignorehitpause = 1

[State 7542, Run Counter]
type = varadd
trigger1 = var(4) < 16777215
var(4) = 1
ignorehitpause = 1

[State 7542, Run Counter]
type = varadd
trigger1 = var(5) < 16777215
var(5) = 1
ignorehitpause = 1

[State 7542, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 7542, Run Counter]
type = varadd
trigger1 = var(7) < 16777215
var(7) = 1
ignorehitpause = 1


;Teleport FX out
[Statedef 7111]
type = A
physics = N
sprpriority = 2
anim = 9741
ctrl = 0

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State Sync]
type = varset
trigger1 = !PrevStateNo && !time
var(6) = 1

[State Pos Fix]
type = PosSet
trigger1 = 1
x = Parent,Pos x
y = Parent,Pos y

[State 7111, Fix Anim]
type = ChangeAnim
trigger1 = Anim != Parent,Anim
trigger2 = AnimElemNo(0) != Parent,AnimElemNo(0)
value = Parent,Anim
Elem = Parent,AnimElemNo(0)

[State 7111, PalFX fade in]
type = PalFX
trigger1 = var(5) = 0
trigger1 = var(6) = [1,4]
time = 1
add = 256 - (85 * (var(6) - 1)),256 - (85 * (var(6) - 1)),256 - (85 * (var(6) - 1))
mul = 256,256,256
color = 256

[State 7111, Explod Teleport]
type = Explod
triggerall = !NumExplod(7531)
trigger1 = var(5) = 0
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

[State 7111, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7531)
trigger1 = var(5) = [0,1]
trigger1 = var(6) = [1,6]
ID = 7531
scale = (4 - (0.6 * var(6))) * Const(size.xscale),(0.3 + (0.28 * var(6))) * Const(size.yscale)
trans = add
alpha = 256,256



[State 7111, End]
type = DestroySelf
trigger1 = var(6) > Const(size.shadowoffset)
;trigger2 = Parent,StateNo != Const(size.proj.doscale)
removeexplods = 1
recursive = 1

[State 7111, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | counter=%d"
params = var(5), var(6)
ignorehitpause = 1

[State 7111, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1




; ---------- Teleport FX into Target ------
[Statedef 7120]
type = U
physics = N
MoveType = U
sprpriority = 1
ctrl = 0

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 7120, Fix Anim]
type = ChangeAnim2
trigger1 = 1
value = Anim
Elem = AnimElemNo(0)

[State 7120, PalFX fade in]
type = PalFX
trigger1 = time = [0,4]
time = 1
add = 50 * time,50 * time,50 * time
mul = 256,256,256
color = 256

[State 7120, PalFX stay]
type = PalFX
trigger1 = time > 4
time = 1
add = 256,256,256
mul = 256,256,256
color = 256

[State 7120,fade out trans]
type = trans
trigger1 = time =  [6,14]
trans = add
alpha = 256 - 24*(time - 5), 0 + 24*(time - 5)

[State 7120,fade out trans]
type = trans
trigger1 = time > 14
trans = add
alpha = 0,256

[State 7120, Safe]
type = SelfState
triggerall = time > 1
trigger1 = time > 300
trigger2 = PlayerIDExist(GetHitvar(Fall.Envshake.Ampl) / 2) = 0
trigger3 = PlayerIDExist(GetHitvar(Fall.Envshake.Ampl) / 2)
trigger3 = PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),MoveType = H || PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),StateNo < 200
value = 5100

[State Target,Clip board]
type = displaytoclipboard
trigger1 = 1
text = "SYSVAR(0)=%d, SYSVAR(1)=%d, SYSVAR(2)=%d, SYSVAR(3)=%d, SYSVAR(4)=%d, TEST=%d"
params = sysvar(0),sysvar(1),sysvar(2),sysvar(3),sysvar(4),GetHitvar(Fall.Envshake.Ampl) / 2
ignorehitpause = 1


; ---------- Teleport FX out Air Target ------
[Statedef 7122]
type = A
physics = N
MoveType = H
sprpriority = 0
velset = 0,0
ctrl = 0

[State NotHitby]
type = NotHitBy
trigger1 = time < 4
value = SCA,AA,AP,AT
time = 1

[State NoPush]
type = PlayerPush
trigger1 = time < 4
value = 0

[State NoCamera]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 7122, Fix Anim]
type = ChangeAnim2
trigger1 = !time
value = 5750

[State 7122, PalFX fade in]
type = PalFX
trigger1 = time = [0,3]
time = 1
add = 256 - (85 * time),256 - (85 * time),256 - (85 * time)
mul = 256,256,256
color = 256

[State 7122, Gravity]
type = veladd
trigger1 = time >= 4
trigger1 = StateType = A
y = Const720p(2)


[State 7122, Proceed]
type = SelfState
trigger1 = vel y >= 0
trigger1 = Pos y >= 0
value = 5100



; ---------- BlackOut Transaction ------
[Statedef 7130]
type = A
physics = N
MoveType = I
sprpriority = 0
velset = 0,0
ctrl = 0
anim = 9741

[State 7130, Fadeout and in time]
type = varset
trigger1 = !time && Const(size.shadowoffset)
var(11) = Ceil(Const(size.shadowoffset) / 3.0)

;-------- Phase control --------
[State 7130, To Stay]
type = varset
trigger1 = var(5) = 0
trigger1 = var(6) >= var(11)
trigger1 = var(6) := 1
var(5) = 1

[State 7130, To FadeOut]
type = varset
trigger1 = var(5) = 1
trigger1 = var(6) >= 2*var(11)
trigger1 = var(6) := 1
var(5) = 2

[State 7130]
type = Explod
trigger1 = !NumExplod(7999)
trigger1 = !time
anim = 7999
ID = 7999
space = screen
facing = facing
pos = Floor(ScreenWidth/2.0), Floor(ScreenHeight/2.0)
removetime = -1
scale = 100,100
sprpriority = 30
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 0
ignorehitpause = 0

[State 7130, Fade IN]
type = ModifyExplod
trigger1 = NumExplod(7999)
trigger1 = var(5) = 0
trigger1 = var(6) = [0,var(11) -1]
ID = 7999
trans = add
alpha = Floor(var(6) * Floor(256.0/var(11))), 256 - Floor(var(6) * Floor(256.0/var(11)))

[State 7130, Stay]
type = ModifyExplod
trigger1 = NumExplod(7999)
trigger1 = var(5) = 1
ID = 7999
trans = add
alpha = 256,0

[State 7130, Fade Out]
type = ModifyExplod
trigger1 = NumExplod(7999)
trigger1 = var(5) = 2
trigger1 = var(6) >= 1
ID = 7999
trans = add
alpha = 256 - Floor(var(6) * Floor(256.0/var(11))),Floor(var(6) * Floor(256.0/var(11)))

[State 7130, End]
type = DestroySelf
trigger1 = var(6) > Const(size.shadowoffset)
removeexplods = 1
recursive = 1

[State Target,Clip board]
type = displaytoclipboard
trigger1 = 1
text = "STAGE=%d | Counter=%d"
params = var(5), var(6)
ignorehitpause = 1


[State Counter]
type = VarAdd
trigger1 = var(6) < 16777215
var(6) = 1


; ---------- WhiteOut Transaction ------
[Statedef 7131]
type = A
physics = N
MoveType = I
sprpriority = 0
velset = 0,0
ctrl = 0
anim = 9741

[State 7131, Fadeout and in time]
type = varset
trigger1 = !time && Const(size.shadowoffset)
var(11) = Ceil(Const(size.shadowoffset) / 3.0)

;-------- Phase control --------
[State 7131, To Stay]
type = varset
trigger1 = var(5) = 0
trigger1 = var(6) >= var(11)
trigger1 = var(6) := 1
var(5) = 1

[State 7131, To FadeOut]
type = varset
trigger1 = var(5) = 1
trigger1 = var(6) >= 2*var(11)
trigger1 = var(6) := 1
var(5) = 2

[State 7131]
type = Explod
trigger1 = !NumExplod(7998)
trigger1 = !time
anim = 7998
ID = 7998
space = screen
facing = facing
pos = Floor(ScreenWidth/2.0), Floor(ScreenHeight/2.0)
removetime = -1
scale = 100,100
sprpriority = 30
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 0
ignorehitpause = 0

[State 7131, Fade IN]
type = ModifyExplod
trigger1 = NumExplod(7998)
trigger1 = var(5) = 0
trigger1 = var(6) = [0,var(11) -1]
ID = 7998
trans = add
alpha = Floor(var(6) * Floor(256.0/var(11))), 256 - Floor(var(6) * Floor(256.0/var(11)))

[State 7131, Stay]
type = ModifyExplod
trigger1 = NumExplod(7998)
trigger1 = var(5) = 1
ID = 7998
trans = add
alpha = 256,0

[State 7131, Fade Out]
type = ModifyExplod
trigger1 = NumExplod(7998)
trigger1 = var(5) = 2
trigger1 = var(6) >= 1
ID = 7998
trans = add
alpha = 256 - Floor(var(6) * Floor(256.0/var(11))),Floor(var(6) * Floor(256.0/var(11)))

[State 7131, End]
type = DestroySelf
trigger1 = var(6) > Const(size.shadowoffset)
removeexplods = 1
recursive = 1

[State Target,Clip board]
type = displaytoclipboard
trigger1 = 1
text = "STAGE=%d | Counter=%d"
params = var(5), var(6)
ignorehitpause = 1


[State Counter]
type = VarAdd
trigger1 = var(6) < 16777215
var(6) = 1





;==================== Enpty spark ==============
[Statedef 7450]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7450, End]
type = DestroySelf
trigger1 = 1
removeexplods = 1
recursive = 1

;==================== Hit Sparks Light ==============
; Use proj.doscale for ignorehitpause
[Statedef 7451]
type = A
physics = N
sprpriority = 4
anim = 9741
ctrl = 0

;--------- Explods -----------
;----- Shape Pieces ---------
[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 16s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 16
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 16s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 16
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 16s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 16
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 16s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 16
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 16s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 16
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 16s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 16
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)



[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 8s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 8
vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 8s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 8
vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 8s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 8
vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 8s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 8
vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7451, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7451, Explod Shapes 8s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 8
vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

;----- End Shape Pieces ---------

[State 7451, MoveExplod];S16
type = ModifyExplod
triggerall = NumExplod(7451)
trigger1 = var(6) = [0,16]
ID = 7451
scale = 3 - (0.175 * var(6)) * Const(size.xscale),3 - (0.175 * var(6)) * Const(size.yscale)

[State 7451, MoveExplod];S8
type = ModifyExplod
triggerall = NumExplod(7452)
trigger1 = var(6) = [0,8]
ID = 7452
scale = 3 - (0.35 * var(6)) * Const(size.xscale),3 - (0.35 * var(6)) * Const(size.yscale)

[State 7451, End]
type = DestroySelf
trigger1 = var(6) > 16
removeexplods = 1
recursive = 1

[State 7451, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(55)=%d | NumExplod=%d | counter=%d"
params = var(5), var(55), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)






;==================== Hit Sparks Mid Short ==============
; Use proj.doscale for ignorehitpause
[StateDef 7452]
type = A
physics = N
sprpriority = 4
anim = 7449
ctrl = 0

[State 7452, level]
type = varset
trigger1 = time = 0
var(10) = Parent,var(10)

[State 7452, random angle]
type = varset
trigger1 = time = 0
var(55) = (random%360)


[State 7452, no shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 7452, angle]
type = AngleDraw
trigger1 = time = 0
value = var(55)
scale = 1.6 * Const(size.xscale), 1.6 * Const(size.yscale)

[State 7452, angle]
type = AngleDraw
trigger1 = time = 1
value = var(55)
scale = 1.6 * Const(size.xscale), 5.2 * Const(size.yscale)

[State 7452, angle]
type = AngleDraw
trigger1 = time > 1
value = var(55)
scale = 1.6 * Const(size.xscale), 7.2 * Const(size.yscale)


[State 7452, End]
type = DestroySelf
trigger1 = time > 8
trigger2 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 7452, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7452, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)



;==================== Hit Sparks Heavy ==============
; Use proj.doscale for ignorehitpause
[Statedef 7453]
type = A
physics = N
sprpriority = 4
anim = 9741
ctrl = 0

;--------- Explods pointing -----------
[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%61) - 30

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%61) - 30

[State 7453, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Explod Type1No1]
type = Explod
trigger1 = var(6) = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%61) - 30

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%61) - 30

[State 7453, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Explod Type1No2]
type = Explod
trigger1 = var(6) = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%61) - 30

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%61) - 30

[State 7453, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Explod Type1No3]
type = Explod
trigger1 = var(6) = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%61) - 30

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%61) - 30

[State 7453, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7453, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7453, Explod Type1No3]
type = Explod
trigger1 = var(6) = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7453, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = var(6) = [0,3]
ID = 7456
scale = 2.6 * Const(size.xscale), 2.6 + (2.2 * var(6)) * Const(size.yscale)

[State 7453, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = var(6) = [4,9]
ID = 7456
scale = (2.6 - (var(6) - 4 + 1)*0.43)  * Const(size.xscale), 9.2 * Const(size.yscale)


;---------- Explod Pieces -----------
;----- Shape Pieces ---------
[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%400) - 200

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 22s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 22
vel = var(55) * facing * Const(size.xscale) / 12.0 ,var(56) * Const(size.yscale) / 12.0
accel = -var(55) * facing * Const(size.xscale) / 240.0 ,-var(56) * Const(size.yscale) / 240.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%400) - 200

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 22s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 22
vel = var(55) * facing * Const(size.xscale) / 12.0 ,var(56) * Const(size.yscale) / 12.0
accel = -var(55) * facing * Const(size.xscale) / 240.0 ,-var(56) * Const(size.yscale) / 240.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%400) - 200

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 22s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 22
vel = var(55) * facing * Const(size.xscale) / 12.0 ,var(56) * Const(size.yscale) / 12.0
accel = -var(55) * facing * Const(size.xscale) / 240.0 ,-var(56) * Const(size.yscale) / 240.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%400) - 200

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 22s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 22
vel = var(55) * facing * Const(size.xscale) / 12.0 ,var(56) * Const(size.yscale) / 12.0
accel = -var(55) * facing * Const(size.xscale) / 240.0 ,-var(56) * Const(size.yscale) / 240.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%400) - 200

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 22s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 22
vel = var(55) * facing * Const(size.xscale) / 12.0 ,var(56) * Const(size.yscale) / 12.0
accel = -var(55) * facing * Const(size.xscale) / 240.0 ,-var(56) * Const(size.yscale) / 240.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%400) - 200

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 22s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7451
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 22
vel = var(55) * facing * Const(size.xscale) / 12.0 ,var(56) * Const(size.yscale) / 12.0
accel = -var(55) * facing * Const(size.xscale) / 240.0 ,-var(56) * Const(size.yscale) / 240.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)




[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 12s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 4.0 ,var(56) * Const(size.yscale) / 4.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 12s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 4.0 ,var(56) * Const(size.yscale) / 4.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 12s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 4.0 ,var(56) * Const(size.yscale) / 4.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 12s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 4.0 ,var(56) * Const(size.yscale) / 4.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 12s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 4.0 ,var(56) * Const(size.yscale) / 4.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, random x]
type = varset
trigger1 = var(6) = 0
var(55) = (random%200) - 100

[State 7453, random y]
type = varset
trigger1 = var(6) = 0
var(56) = (random%200) - 100

[State 7453, Explod Shapes 12s]
type = Explod
trigger1 = var(6) = 0
anim = 7451 + Random%5
ID = 7452
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 4.0 ,var(56) * Const(size.yscale) / 4.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

;----- End Shape Pieces ---------

[State 7451, MoveExplod];S22
type = ModifyExplod
triggerall = NumExplod(7451)
trigger1 = var(6) = [0,22]
ID = 7451
scale = 3 - (0.127 * var(6)) * Const(size.xscale),3 - (0.127 * var(6)) * Const(size.yscale)

[State 7451, MoveExplod];S12
type = ModifyExplod
triggerall = NumExplod(7452)
trigger1 = var(6) = [0,12]
ID = 7452
scale = 3 - (0.2333 * var(6)) * Const(size.xscale),3 - (0.2333 * var(6)) * Const(size.yscale)

[State 7453, End]
type = DestroySelf
trigger1 = time > 22
removeexplods = 1
recursive = 1

[State 7453, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(56)=%d | NumExplod=%d | counter=%d"
params = var(5), var(56), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7453, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)



;==================== Hit Sparks Mid Long ==============
; Use proj.doscale for ignorehitpause
[Statedef 7454]
type = A
physics = N
sprpriority = 4
anim = 7450
ctrl = 0

[State 7451, FixPal]
type = ReMapPal
trigger1 = !time
dest = 7450,0

[State 7451, level]
type = varset
trigger1 = time = 0
var(10) = Parent,var(10)

[State 7451, random angle]
type = varset
trigger1 = time = 0
var(11) = (random%360)


[State 7454, no shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 7454, angle]
type = AngleDraw
trigger1 = (time = [0,2])
value = var(11)
scale = (2.8 - 0.3*(time)) * Const(size.xscale), (2.8 + 4.6*(time)) * Const(size.yscale)

[State 7454, angle]
type = AngleDraw
trigger1 = (time = [3,6])
value = var(11)
scale = (2.2 - 0.1*(time-3)) * Const(size.xscale), (12 + 0*(time-3)) * Const(size.yscale)

[State 7454, angle]
type = AngleDraw
trigger1 = time > 6
value = var(11)
scale = (1.9 - 0.2*(time-3)) * Const(size.xscale), 12 * Const(size.yscale)


;--------- Explods pointing -----------
[State 7454, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7454, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7454, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7454, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7454, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7454, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7454, Explod Type1No1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7452, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7454, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7454, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7454, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7454, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7454, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7454, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7454, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7452, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7454, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7454, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7454, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7454, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7454, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7454, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7454, Explod Type1No3]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7452, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7454, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [0,3]
ID = 7456
scale = 2.6 * Const(size.xscale), 2.6 + (2.2 * time) * Const(size.yscale)

[State 7454, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [4,9]
ID = 7456
scale = (2.6 - (time - 4 + 1)*0.43)  * Const(size.xscale), 9.2 * Const(size.yscale)



[State 7454, End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 7454, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7454, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)


;==================== Hit Sparks Heavy Electric ==============
; Use proj.doscale for ignorehitpausek
[Statedef 7456]
type = A
physics = N
sprpriority = 4
anim = 9741
ctrl = 0

;--------- Explods pointing -----------
[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7456, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7456, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7456, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7456, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7456, Explod Type1No1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7456, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7456, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7456, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7456, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7456, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7456, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7456, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7456, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7456, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7456, Explod Type1No3]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7456, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [0,3]
ID = 7456
scale = 2.6 * Const(size.xscale), 2.6 + (2.2 * time) * Const(size.yscale)

[State 7456, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [4,9]
ID = 7456
scale = (2.6 - (time - 4 + 1)*0.43)  * Const(size.xscale), 9.2 * Const(size.yscale)


;---------- Explod normal -----------
[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7456, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7456, Explod Type2No1]
type = Explod
trigger1 = time = 0
anim = 7452
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7456, Explod Type2No2]
type = Explod
trigger1 = time = 0
anim = 7452
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7456, Explod Type3No1]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7456, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7456, Explod Type3No2]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 1
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7453)
trigger1 = time = [0,8]
ID = 7453
scale = 2.4 - (0.2 * time) * Const(size.xscale),2.4 - (0.2 * time) * Const(size.yscale)

[State 7456, End]
type = DestroySelf
trigger1 = time > 12
removeexplods = 1
recursive = 1

[State 7456, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7456, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)

;==================== Hit Sparks for Turmp Moves ==============
; Use proj.doscale for ignorehitpause
[Statedef 7457]
type = A
physics = N
sprpriority = 4
anim = 9741
ctrl = 0

;--------- Explods pointing -----------
[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7457, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Explod Type1No1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7457, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Explod Type1No1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7457, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Explod Type1No1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7457, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7457, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7457, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7457, Explod Type1No3]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7457, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = var(6) = [0,3]
ID = 7456
scale = 2.6 * Const(size.xscale), 2.6 + (2.2 * var(6)) * Const(size.yscale)

[State 7457, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = var(6) = [4,9]
ID = 7456
scale = (2.6 - (var(6) - 4 + 1)*0.43)  * Const(size.xscale), 9.2 * Const(size.yscale)


;---------- Explod normal -----------
[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type2No1]
type = Explod
trigger1 = time = 0
anim = 7452
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type2No2]
type = Explod
trigger1 = time = 0
anim = 7452
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type3No1]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type3No2]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type2No1]
type = Explod
trigger1 = time = 0
anim = 7452
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type2No2]
type = Explod
trigger1 = time = 0
anim = 7452
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type3No1]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, random x]
type = varset
trigger1 = time = 0
var(55) = (random%201) - 100

[State 7457, random y]
type = varset
trigger1 = time = 0
var(56) = (random%201) - 100

[State 7457, Explod Type3No2]
type = Explod
trigger1 = time = 0
anim = 7453
ID = 7453
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 48
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 1
remappal = 7451 + Random%3, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7457, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7453)
trigger1 = var(6) = [0,12]
ID = 7453
scale = 2.4 - (0.2 * var(6)) * Const(size.xscale),2.4 - (0.2 * var(6)) * Const(size.yscale)

[State 7457, End]
type = DestroySelf
trigger1 = time > 48
trigger2 = NumExplod = 0
removeexplods = 1
recursive = 1

[State 7457, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7457, Run Counter]
type = varadd
triggerall = var(6) < 16777215
trigger1 = !(time = [3,34])
trigger2 = (time = [3,34])
trigger2 = time%9 = 0
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)





;==================== Hit Sparks Kuroko Super-02 Steel Phalanx ==============
; Use proj.doscale for ignorehitpause
[StateDef 7458]
type = A
physics = N
sprpriority = 4
anim = 9741
ctrl = 0

[State 7458, level]
type = varset
trigger1 = time = 0
var(10) = Parent,var(10)


[State 7458, Explod Main]
type = Explod
triggerall = !NumExplod(7457)
trigger1 = var(6) = 0
anim = 7457
ID = 7457
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 1.25 * Const(size.xscale), 1.25 * Const(size.yscale)
trans = add
alpha = 256,256
angle = Random%360
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7451, Explod Main]
type = ModifyExplod
triggerall = NumExplod(7457)
trigger1 = var(6) = [24,37]
ID = 7457
scale = (1.25 + 0.2*(var(6)-24)) * Const(size.xscale), (1.25 + 0.2*(var(6)-24)) * Const(size.yscale)
trans = add
alpha = 256 - 16*(var(6)-24), 256
ignorehitpause = Const(Size.Proj.DoScale)


[State 7458, Explod Thick]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale), 5 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 80;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Explod Thick]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 140;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Explod Thick]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 210;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Explod Thick]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 300;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Explod Thick]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 340;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)


[State 7458, Explod thin]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 1.2 * Const(size.xscale), 4 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 120;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Explod thin]
type = Explod
trigger1 = var(6) = 0
anim = 7458 + Random%2
ID = 7458
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 38
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 128.0 ,-var(56) * Const(size.yscale) / 128.0
supermovetime = 65535
pausemovetime = 65535
scale = 1.2 * Const(size.xscale), 4 * Const(size.yscale)
trans = add
alpha = 256,256
angle = 245;Random%360
xangle = 0
yangle = 0
sprpriority = 3
ownpal = 1
;remappal = 7457 + Random%4, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Explod Thin-Thick]
type = ModifyExplod
triggerall = NumExplod(7458)
trigger1 = var(6) = [0,7]
ID = 7458
trans = add
alpha = 32 + var(6) * 32, 256
ignorehitpause = Const(Size.Proj.DoScale)


[State 7458, Explod Thin-Thick]
type = ModifyExplod
triggerall = NumExplod(7458)
trigger1 = var(6) = [34,37]
ID = 7458
trans = add
alpha = 256 - 64*(var(6)-34), 256
ignorehitpause = Const(Size.Proj.DoScale)


[State 7458, End]
type = DestroySelf
trigger1 = time >= 38
trigger2 = NumExplod = 0
removeexplods = 1
recursive = 1

[State 7458, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7458, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)










;==================== Hit Sparks Uiharu Sniper ==============
; Use proj.doscale for ignorehitpause
[StateDef 7459]
type = A
physics = N
sprpriority = 4
anim = 9741
ctrl = 0

[State 7459, level]
type = varset
trigger1 = time = 0
var(10) = Parent,var(10)

[State 7459, random angle]
type = varset
trigger1 = time = 0
var(55) = (random%360)


[State 7459, no shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 7459, Blast outer]
type = Explod
trigger1 = !NumExplod(30423)
trigger1 = !time
anim = 30423
ID = 30423
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
scale = 2 * Const(size.xscale),2 * Const(size.yscale)
angle = var(55)
sprpriority = 3
ownpal = 1
trans = add
alpha = 256,256
;remappal = 6415, 0

[State 7459, Blast inner]
type = Explod
trigger1 = !NumExplod(30422)
trigger1 = !time
anim = 30422
ID = 30422
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
scale = 2 * Const(size.xscale),2 * Const(size.yscale)
angle = var(55) + Random%180
sprpriority = 4
ownpal = 1
trans = add
alpha = 256,0
;remappal = 6415, 0

[State 7459, Blast grow 8]
type = ModifyExplod
trigger1 = NumExplod(30422)
trigger1 = var(6) = [1,8]
ID = 30422
scale = (2 + 1.6*(var(6)/8.0)) * Const(size.xscale), (2 + 1.6*(var(6)/8.0)) * Const(size.yscale)
trans = add
alpha = 256,0

[State 7459, Blast grow 8]
type = ModifyExplod
trigger1 = NumExplod(30422)
trigger1 = var(6) = [9,12]
ID = 30422
scale = 3.6 * Const(size.xscale), 3.6 * Const(size.yscale)
trans = add
alpha = 256 - 64*(var(6) - 8), 64*(var(6) - 8)

[State 7459, Blast grow 18]
type = ModifyExplod
trigger1 = NumExplod(30423)
trigger1 = var(6) = [1,8]
ID = 30423
scale = (2 + 2.2*(var(6)/8.0)) * Const(size.xscale), (2 + 2.2*(var(6)/8.0)) * Const(size.yscale)
trans = add
alpha = 256,256

[State 7459, Blast grow 18]
type = ModifyExplod
trigger1 = NumExplod(30423)
trigger1 = var(6) = [9,18]
ID = 30423
scale = (4.2 + 2*((var(6) - 8)/10.0)) * Const(size.xscale), (4.2 + 2*((var(6) - 8)/10.0)) * Const(size.yscale)
trans = add
alpha = 256 - 25*(var(6) - 8), 25*(var(6) - 8)


[State 7459, End]
type = DestroySelf
trigger1 = var(6) > 18
removeexplods = 1
recursive = 1

[State 7459, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | NumExplod=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7459, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)



;==================== Guard Sparks ==============
; Use proj.doscale for ignorehitpause
[StateDef 7431]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7431, Pospush]
type = Posadd
trigger1 = !time
x = Floor(40 * Const(size.yscale))

[State 7431, Explod Guard Sheld]
type = Explod
trigger1 = time = 0
anim = 7431
ID = 7431
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
;accel = -var(55) * facing * Const(size.xscale) / 72.0 ,-var(56) * Const(size.yscale) / 72.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.8 * Const(size.xscale), 2.8 * Const(size.yscale)
angle = 0
sprpriority = 4
ownpal = 1
remappal = 7451, 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7431, Explod Guard spark 1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = -7.05308 * facing * Const(size.xscale),-40 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
;vel = var(55) * facing * Const(size.xscale) ,var(56) * Const(size.yscale)
accel = -0.176327 * facing * Const(size.xscale) ,-1 * Const(size.yscale) 
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale), 1 * Const(size.yscale)
angle = 10
sprpriority = 4
ownpal = 1
remappal = 7450 + IFElse(Random < 700,2,Random%5), 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7431, Explod Guard spark 2]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos =  0* facing * Const(size.xscale),32 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
;vel = var(55) * facing * Const(size.xscale) ,var(56) * Const(size.yscale)
accel = -0.46188 * facing * Const(size.xscale) ,0.8 * Const(size.yscale) 
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale), 1 * Const(size.yscale)
angle = 150
sprpriority = 4
ownpal = 1
remappal = 7450 + IFElse(Random < 700,2,Random%5), 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7431, Explod Guard spark 3]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos =  10 * facing * Const(size.xscale), 3 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 12
;vel = var(55) * facing * Const(size.xscale) ,var(56) * Const(size.yscale)
accel = 0.95 * facing * Const(size.xscale) ,0.34577 * Const(size.yscale) 
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale), 1 * Const(size.yscale)
angle = 250
sprpriority = 4
ownpal = 1
remappal = 7450 + IFElse(Random < 700,2,Random%5), 0
ignorehitpause = Const(Size.Proj.DoScale)

[State 7431, Explod Guard sparks grow 1]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [1,6]
ID = 7456
scale = (4 - 0.3333*time) * Const(size.xscale), (1 + 0.16666*time) * Const(size.yscale)

[State 7431, Explod Guard sparks grow 2]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [7,12]
ID = 7456
scale = (2 - 0.31666*(time-6)) * Const(size.xscale), (2 + 0.16666*(time-6)) * Const(size.yscale)



[State 7431, End]
type = DestroySelf
trigger1 = time > 12
recursive = 1
removeexplods = 1

[State 7431, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = 1

[State 7431, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)



;==================== Reflection Guard ==============
; Use size.proj.doscale for ignorehitpause
[StateDef 7445]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7445, SND FX-Hit]
type = PlaySnd
trigger1 = !var(6)
value = 2,1
volumescale = 100
channel = 7
;abspan = 0
persistent = 0


[State 7445, Explod Ring 1]
type = Explod
trigger1 = var(6) = 0
anim = 7445
ID = 7445
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
accel = -0.3 * facing * Const(size.xscale), 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.1 * Const(size.xscale), 0.2 * Const(size.yscale)
angle = 0
sprpriority = 4
ownpal = 1
;remappal = 7451 + Random%3, 0
ignorehitpause = Const(size.proj.doscale)

[State 7445, Explod Ring 1 grow 1]
type = ModifyExplod
triggerall = NumExplod(7445)
trigger1 = var(6) = [1,4]
ID = 7445
scale = (0.1 + 0.05*var(6)) * Const(size.xscale), (0.2 + 0.1*var(6)) * Const(size.yscale)


[State 7445, Explod Ring 1 grow 2]
type = ModifyExplod
triggerall = NumExplod(7445)
trigger1 = var(6) = [8,10]
ID = 7445
scale = (0.3 + 0.0333*(var(6)-7)) * Const(size.xscale), (0.6 + 0.0666*(var(6)-7)) * Const(size.yscale)
trans = add
alpha = 256 - 64*(var(6)-7), 256


[State 7445, Explod Ring 2]
type = Explod
trigger1 = var(6) = 2
anim = 7446
ID = 7446
space = stage
pos = 18 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
accel = -0.3 * facing * Const(size.xscale), 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.1 * Const(size.xscale), 0.2 * Const(size.yscale)
angle = 0
sprpriority = 4
ownpal = 1
;remappal = 7451 + Random%3, 0
ignorehitpause = Const(size.proj.doscale)

[State 7445, Explod Ring 2 grow 1]
type = ModifyExplod
triggerall = NumExplod(7446)
trigger1 = var(6) = [3,4]
ID = 7446
scale = (0.1 + 0.05*(var(6)-2)) * Const(size.xscale), (0.2 + 0.1*(var(6)-2)) * Const(size.yscale)


[State 7445, Explod Ring 2 grow 2]
type = ModifyExplod
triggerall = NumExplod(7446)
trigger1 = var(6) = [8,12]
ID = 7446
scale = (0.2 + 0.0333*(var(6)-7)) * Const(size.xscale), (0.4 + 0.0666*(var(6)-7)) * Const(size.yscale)
trans = add
alpha = 256 - 50*(var(6)-7), 256

[State 7445, Wall of Push]
type = Helper
triggerall = !NumHelper(7447)
trigger1 = var(6) = 0
helpertype = normal
stateno = 7447
ID = 7447
name = "Reflection Guard - wall of Push"
postype = P1
pos = 0 * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535

[State 7445, End]
type = DestroySelf
trigger1 = var(6) > 12
recursive = 1
removeexplods = 1

[State 7445, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7445, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = Const(Size.Proj.DoScale)





;==================== Reflection Guard - Wall of Push ==============
; Use size.proj.doscale for ignorehitpause
[StateDef 7447]
type = S
physics = S
sprpriority = 0
anim = 7447
ctrl = 0

[State 7447, Unhitable]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT

[State 7447, Camera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 7447, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 7447, Ground]
type = posset
trigger1 = !time
y = 0

[State 7447, Move]
type = velset
trigger1 = var(6) > 0 && var(6) < 8
x = 3 * Const(Velocity.run.fwd.x) * Const(Size.xScale)

[State 7447, End]
type = DestroySelf
trigger1 = var(6) > 12
recursive = 1
removeexplods = 1

[State 7447, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = Const(Size.Proj.DoScale)

[State 7447, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0










;==================== Impact Skill - Rings ==============
[Statedef 7437]
type = A
physics = N
sprpriority = 2
anim = 9741
ctrl = 0

[State 7437, Impact SND]
type = PlaySnd
trigger1 = time = 0
value = 2,2
volumescale = 100
channel = 2
;abspan = 0


[State 6901, Shake]
type = envshake
trigger1= time = 0
time = 18
freq = 90
ampl = 16
ignorehitpause = 1

[State 7437, Light Ball]
type = Explod
trigger1 = !NumExplod(7008)
trigger1 = time = 0
anim = 7008
ID = 7008
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 3.8 * Const(size.xscale), 3.8 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7000,2
ignorehitpause = 1

[State 7437, Light Ball Shrink]
type = ModifyExplod
trigger1 = NumExplod(7008)
trigger1 = time = [8,16]
ID = 7008
scale = (3.8 - 0.42222*(time-7)) * Const(size.xscale), (3.8 - 0.42222*(time-7)) * Const(size.yscale)

[State 7437, Light Ring 01]
type = Explod
trigger1 = !NumExplod(7437)
trigger1 = time = 0
anim = 7437
ID = 7437
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale), 0.5 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7000,2
ignorehitpause = 1

[State 7437, Modify Light Ring 01]
type = ModifyExplod
trigger1 = NumExplod(7437)
trigger1 = (time = [1,8])
ID = 7437
scale = (0.5 + (Time/8.0)) * Const(size.xscale), (0.5 + (Time/8.0)) * Const(size.yscale)
ignorehitpause = 1

[State 7437, Modify Light Ring 01]
type = ModifyExplod
trigger1 = NumExplod(7437)
trigger1 = (time = [9,16])
ID = 7437
scale = (1.5 + ((Time-8)/35.0)) * Const(size.xscale), (1.5 + ((Time-8)/35.0)) * Const(size.yscale)
ignorehitpause = 1

[State 7437, Light Ring 02]
type = Explod
trigger1 = !NumExplod(7438)
trigger1 = time = 4
anim = 7438
ID = 7438
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 12
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale), 0.5 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7000,4
ignorehitpause = 1

[State 7437, Modify Light Ring 02]
type = ModifyExplod
trigger1 = NumExplod(7438)
trigger1 = (time = [4,8])
ID = 7438
scale = (0.5 + ((Time-4)/10.0)) * Const(size.xscale), (0.5 + ((Time-4)/10.0)) * Const(size.yscale)
ignorehitpause = 1

[State 7437, Modify Light Ring 02]
type = ModifyExplod
trigger1 = NumExplod(7438)
trigger1 = (time = [9,14])
ID = 7438
scale = (0.9 + ((Time-8)/35.0)) * Const(size.xscale), (0.9 + ((Time-8)/35.0)) * Const(size.yscale)
ignorehitpause = 1

;-------- Hit Sparks ---------
;--------- Explods pointing -----------
[State 7437, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7437, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7437, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7437, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7437, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7437, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7437, Explod Type1No1]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 2
ownpal = 1
remappal = 7451 + Random%3, 0

[State 7437, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7437, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7437, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7437, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7437, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7437, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7437, Explod Type1No2]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 2
ownpal = 1
remappal = 7451 + Random%3, 0

[State 7437, random x]
type = varset
trigger1 = time = 0
var(55) = (random%61) - 30

[State 7437, random y]
type = varset
trigger1 = time = 0
var(56) = (random%61) - 30

[State 7437, Angle 0-90]
type = varset
trigger1 = var(55) <= 0 && var(56) < 0
var(57) = 0 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7437, Angle 90-180]
type = varset
trigger1 = var(55) < 0 && var(56) >= 0
var(57) = 90 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7437, Angle 180-270]
type = varset
trigger1 = var(55) >= 0 && var(56) > 0
var(57) = 180 + Floor(Atan(1.0*Abs(var(55))/Abs(var(56))) * (180/Pi))

[State 7437, Angle 270-360]
type = varset
trigger1 = var(55) > 0 && var(56) <= 0
var(57) = 270 + Floor(Atan(1.0*Abs(var(56))/Abs(var(55))) * (180/Pi))

[State 7437, Explod Type1No3]
type = Explod
trigger1 = time = 0
anim = 7456
ID = 7456
space = stage
pos = var(55) * facing * Const(size.xscale),var(56) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 9
vel = var(55) * facing * Const(size.xscale) / 8.0 ,var(56) * Const(size.yscale) / 8.0
accel = -var(55) * facing * Const(size.xscale) / 96.0 ,-var(56) * Const(size.yscale) / 96.0
supermovetime = 65535
pausemovetime = 65535
scale = 2.4 * Const(size.xscale),2.4 * Const(size.yscale)
angle = var(57)
sprpriority = 2
ownpal = 1
remappal = 7451 + Random%3, 0



[State 7437, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [0,3]
ID = 7456
scale = 2.6 * Const(size.xscale), 2.6 + (2.2 * time) * Const(size.yscale)

[State 7437, MoveExplod]
type = ModifyExplod
triggerall = NumExplod(7456)
trigger1 = time = [4,9]
ID = 7456
scale = (2.6 - (time - 4 + 1)*0.43)  * Const(size.xscale), 9.2 * Const(size.yscale)




[State 7437, End]
type = DestroySelf
trigger1 = time >= 16
removeexplods = 1
recursive = 1

[State 7437, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = 1

[State 7437, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1





;=============== Support Cancel Aura ===========
[Statedef 7460]
type = A
physics = N
MoveType = I
sprpriority = 0
anim = 9741
ctrl = 0

[State 7460, Power]; Helper and Parent Share power
type = PowerAdd
trigger1 = !PrevStateNo && !time
trigger1 = Parent,var(24) = 0
value = -1000

[State 7460, INIT SND FX]
type = PlaySnd
triggerall = !PrevStateNo
trigger1 = var(6) = 0
value = 7,7460
volumescale = 100
channel = 7
;abspan = 0

[State 7460, Explod 1st Ring]
type = Explod
trigger1 = var(6) = 0
anim = 7460
ID = 7460
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.8 * Const(size.xscale),0.9 * Const(size.yscale)
angle = 45
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7453, 0
;ignorehitpause = 0

[State 7460, Explod 2nd Ring]
type = Explod
trigger1 = var(6) = 0
anim = 7460
ID = 7460
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.8 * Const(size.xscale),0.9 * Const(size.yscale)
angle = -45
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7453, 0
;ignorehitpause = 0

[State 7460, Explod 3rd Ring]
type = Explod
trigger1 = var(6) = 4
trigger1 = var(16) := 1
anim = 7460
ID = 7461
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.8 * Const(size.xscale),0.9 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
remappal = 7453, 0
;ignorehitpause = 0

[State 7460, MoidfyExplod 1n2 Ring]
type = ModifyExplod
triggerall = NumExplod(7460)
trigger1 = var(6) = [8,17]
ID = 7460
scale = (1.8 + 0.08*(var(6)-7)) * Const(size.xscale),(0.9 + 0.08*(var(6)-7)) * Const(size.yscale)
trans = add
alpha = 256 - 22*(var(6)-7),256

[State 7460, MoidfyExplod 3rd Ring]
type = ModifyExplod
triggerall = NumExplod(7461)
trigger1 = var(16) = [8,17]
ID = 7461
scale = (1.8 + 0.08*(var(16)-7)) * Const(size.xscale),(0.9 + 0.08*(var(16)-7)) * Const(size.yscale)
trans = add
alpha = 256 - 22*(var(16)-7),256




[State 7460, End]
type = DestroySelf
trigger1 = time && NumExplod = 0
trigger2 = time > 24
removeexplods = 1
recursive = 1

[State 7460, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | counter=%d | var(16)=%d | var(17)=%d | ExplodNo=%d "
params = var(5), var(6),var(16),var(17), NumExplod
ignorehitpause = 1

[State 7460, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 7460, Run Counter]
type = varadd
trigger1 = var(16)
trigger1 = var(16) < 16777215
var(16) = 1
ignorehitpause = 1






;================= Super Charge Helpers ====================
;----------------- EX Charge Helper ------------------------
[Statedef 7550]
type = A
physics = N
sprpriority = 2
anim = 9741
ctrl = 0

[State 7550, SND-FX]
type = PlaySnd
trigger1 = time = 0
value = 7,1050
volumescale = 100
channel = 7
abspan = 0

[State 7550, Explod Spark 01]
type = Explod
trigger1 = NumExplod(7551) < 2
trigger1 = time = 0
anim = 7551
ID = 7551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale),2 * Const(size.yscale)
angle = 45
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7550, Explod Spark 02]
type = Explod
trigger1 = NumExplod(7551) < 2
trigger1 = time = 0
anim = 7551
ID = 7551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale),2 * Const(size.yscale)
angle = -45
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7550, Explod Spark Grow Longer]
type = ModifyExplod
trigger1 = NumExplod(7551)
trigger1 = time = [1,3]
ID = 7551
scale = 4.0 * Const(size.xscale),(2.0 + 2*(time)) * Const(size.yscale)


[State 7550, Explod Spark Grow thinner]
type = ModifyExplod
trigger1 = NumExplod(7551)
trigger1 = time = [4,10]
ID = 7551
scale = (4.0 - 0.5571*(time - 3)) * Const(size.xscale),8.0 * Const(size.yscale)

[State 7550, Explod Spark kill]
type = RemoveExplod
trigger1 = NumExplod(7551)
trigger1 = time = 11
ID = 7551

[State 7550, Explod Ring]
type = Explod
trigger1 = !NumExplod(7552)
trigger1 = time = 2
anim = 7552
ID = 7552
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),3 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7000,5

[State 7550, Explod Spark Grow 1]
type = ModifyExplod
trigger1 = NumExplod(7552)
trigger1 = time = [3,7]
ID = 7552
scale = (3.0 + 0.2*(time-2)) * Const(size.xscale),(3.0 + 0.2*(time-2)) * Const(size.yscale)

[State 7550, Explod Spark Grow 2]
type = ModifyExplod
trigger1 = NumExplod(7552)
trigger1 = time = [8,10]
ID = 7552
scale = (4.0 + 0.1*(time-8)) * Const(size.xscale),(4.0 + 0.1*(time-8)) * Const(size.yscale)
trans = add
Alpha = 200 - 64*(time-8),256

[State 7550, Explod Spark kill]
type = RemoveExplod
trigger1 = NumExplod(7552)
trigger1 = time = 11
ID = 7552

[State 7550, BG Darken]
type = BGPalFX
trigger1 = (time = [0,5])
time = 1
add = 0,0,0
mul = 256 - 25*Time, 256 - 25*Time, 256 - 25*Time
color = 256

[State 7550, BG Darken]
type = BGPalFX
trigger1 = (time = [6,41])
time = 1
add = 0,0,0
mul = 128, 128, 128
color = 256

[State 7550, BG Darken]
type = BGPalFX
trigger1 = (time = [42,52])
time = 1
add = 0,0,0
mul = 128 + 11*(Time - 41), 128 + 11*(Time - 41), 128 + 11*(Time - 41)
color = 256

[State 7550, End]
type = DestroySelf
trigger1 = time >= 52
removeexplods = 1
recursive = 1

[State 7550, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = 1

[State 7550, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;Miyuki-Sheld
[Statedef 7594]
type = A
moveType = I
physics = N
sprpriority = 1
anim = 9741
ctrl = 0

[State 7594, Remember X]
type = varset
trigger1 = !PrevStateNo && !time
var(11) = Floor(ParentDist x)

[State 7594, Remember X]
type = varset
trigger1 = !PrevStateNo && !time
var(12) = Floor(ParentDist y)


[State 7594, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 7594, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7594, Bind]
type = BindtoParent
trigger1 = 1
time = 1
facing = 1
pos = -var(11),-var(12)
ignorehitpause = 1

[State 7594, Main_Sheld]
type = Explod
trigger1 = !NumExplod(7594)
trigger1 = var(6) := 1
anim = 7594
ID = 7594
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = 0
xangle = 0
yangle = 0
sprpriority = 1
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7594, Main_Sheld]
type = ModifyExplod
trigger1 = NumExplod(7594)
trigger1 = var(6) = [1,8]
ID = 7594
scale = 0.4 * Const(size.xscale) * fvar(11) * (var(6)*(0.7/8.0)), 1.6 * Const(size.yscale) * fvar(12) * (var(6)*(0.7/8.0))
ignorehitpause = 1

[State 7594, Main_Sheld]
type = ModifyExplod
trigger1 = NumExplod(7594)
trigger1 = var(6) = [9,16]
ID = 7594
scale = 0.4 * Const(size.xscale) * fvar(11) * ((var(6)*(0.3/8.0)) + 0.7), 1.6 * Const(size.yscale) * fvar(12) * ((var(6)*(0.3/8.0)) + 0.7)
ignorehitpause = 1

[State 7594, Dot_FX_00]
type = Explod
trigger1 = var(6) = 4
anim = 7120
ID = 7120
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.2 * Const(Size.xScale) * fvar(11), 0.6 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 90
sprpriority = 2
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 7594, Dot_FX_00]
type = Explod
trigger1 = var(6) = 6
anim = 7120
ID = 7120
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.2 * Const(Size.xScale) * fvar(11), 0.6 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -90
sprpriority = 2
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 7594, Main_Sheld]
type = ModifyExplod
trigger1 = NumExplod(7120)
trigger1 = var(6) = [1,8]
ID = 7120
scale = 1.2 * Const(size.xscale) * fvar(11) * (var(6)*(0.7/8.0)), 0.6 * Const(size.yscale) * fvar(12) * (var(6)*(0.7/8.0))
ignorehitpause = 1

[State 7594, Main_Sheld]
type = ModifyExplod
trigger1 = NumExplod(7120)
trigger1 = var(6) = [9,16]
ID = 7120
scale = 1.2 * Const(size.xscale) * fvar(11) * ((var(6)*(0.3/8.0)) + 0.7), 0.6 * Const(size.yscale) * fvar(12) * ((var(6)*(0.3/8.0)) + 0.7)
ignorehitpause = 1

[State 7594, End]
type = DestroySelf
triggerall = var(6) >= 17
trigger1 = !(Parent,StateNo = [150,159])
removeexplods = 1
recursive = 1


[State 7594, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | counter=%d"
params = var(10) ,var(6)
ignorehitpause = 1

[State 7594, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1



;Tatsuya-Ring-Locker
[Statedef 7596]
type = A
moveType = I
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7596, Remember target ID]
type = varset
trigger1 = !PrevStateNo && !time
var(10) = Const(size.proj.doscale)


[State 7596, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 7596, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7596, Bind]
type = PosSet
trigger1 = var(5) >= 0
trigger1 = PlayerIDExist(var(10))
time = 1
;facing = 1
x = PlayerID(var(10)),Pos x
y = PlayerID(var(10)),Pos y - 200
ignorehitpause = 1

;---------- Phase -----------
[State 7596, End]
type = varset
triggerall = var(5) >= 0
trigger1 = PlayerIDExist(var(10)) = 0
trigger1 = var(6) := 1
trigger2 = Const(size.shadowoffset) > 0
trigger2 = var(6) >= Const(size.shadowoffset)
trigger2 = var(6) := 1
trigger3 = Parent,MoveType != A
trigger3 = var(6) := 1
var(5) = -1

;---------- End Phase -------

[State 7596, RING_1]
type = Explod
triggerall = var(5) >= 0
trigger1 = !NumExplod(7596)
trigger1 = var(6) := 1
anim = 7596
ID = 7596
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 0.8 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = 30
xangle = 0
yangle = 0
sprpriority = 2
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7596, RING_1]
type = Explod
triggerall = var(5) >= 0
trigger1 = NumExplod(7596) < 2
trigger1 = var(6) := 1
anim = 7596
ID = 7596
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 0.8 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = -30
xangle = 0
yangle = 0
sprpriority = 2
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7596, RING]
type = ModifyExplod
triggerall = var(5) >= 0
trigger1 = NumExplod(7596)
trigger1 = var(6) = [1,16]
ID = 7596
trans = add
alpha = var(6) * 16, 256 - (var(6) * 16)

[State 7596, RING]
type = ModifyExplod
triggerall = var(5) = -1
trigger1 = NumExplod(7596)
trigger1 = var(6) = [1,16]
ID = 7596
trans = add
alpha = 256 - (var(6) * 16), var(6) * 16

[State 7596, End]
type = DestroySelf
trigger1 = var(5) = -1
trigger1 = var(6) > 16
removeexplods = 1
recursive = 1


[State 7596, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | counter=%d"
params = var(5) ,var(6)
ignorehitpause = 1

[State 7596, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1




;Tatsuya-Ring-Protect
[Statedef 7597]
type = A
moveType = I
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7597, Remember X]
type = varset
trigger1 = !PrevStateNo && !time
var(10) = Parent,ID

[State 7597, Remember X]
type = varset
trigger1 = !PrevStateNo && !time
var(11) = Floor(ParentDist x)

[State 7597, Remember X]
type = varset
trigger1 = !PrevStateNo && !time
var(12) = Floor(ParentDist y)


[State 7597, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 7597, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

;[State 7597, Bind]
;type = BindtoParent
;trigger1 = var(5) >= 0
;time = 1
;;facing = 1
;pos = -var(11),-var(12)
;ignorehitpause = 1

;---------- Phase -----------
[State 7597, End]
type = varset
triggerall = var(5) >= 0
trigger1 = PlayerIDExist(var(10)) = 0
trigger1 = var(6) := 1
trigger2 = Const(size.shadowoffset) > 0
trigger2 = var(6) >= Const(size.shadowoffset)
trigger2 = var(6) := 1
trigger3 = Parent,MoveType != A
trigger3 = var(6) := 1
var(5) = -1

;---------- End Phase -------

[State 7597, SND]
type = PlaySnd
trigger1 = !time && !PrevStateNo
value = 5, 3001
volumescale = 100
channel = 5
;abspan = 0

[State 7597, RING_1]
type = Explod
triggerall = var(5) >= 0
trigger1 = !NumExplod(7597)
trigger1 = var(7) := 1
anim = 7597
ID = 7597
space = stage
pos = -30 * facing * Const(size.xscale) * fvar(11), -40 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = Const(size.proj.doscale)
xangle = 0
yangle = 0
sprpriority = 2
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7597, RING_2]
type = Explod
triggerall = var(5) >= 0
trigger1 = !NumExplod(7598)
trigger1 = var(7) = 10
trigger1 = var(8) := 1
anim = 7597
ID = 7597 + 1
space = stage
pos = -30 * facing * Const(size.xscale) * fvar(11), -40 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = Const(size.proj.doscale)
xangle = 0
yangle = 0
sprpriority = 2
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7597, RING_3]
type = Explod
triggerall = var(5) >= 0
trigger1 = !NumExplod(7599)
trigger1 = var(7) = 20
trigger1 = var(9) := 1
anim = 7597
ID = 7597 + 2
space = stage
pos = -30 * facing * Const(size.xscale) * fvar(11), -40 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = Const(size.proj.doscale)
xangle = 0
yangle = 0
sprpriority = 2
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7597, RING_1]
type = ModifyExplod
trigger1 = NumExplod(7597)
trigger1 = var(7) = [1,22]
ID = 7597
scale = (var(7) * 0.13636) * Const(size.xscale) * fvar(11), (var(7) * 0.13636) * Const(size.yscale) * fvar(12)

[State 7597, RING_1]
type = ModifyExplod
trigger1 = NumExplod(7597)
trigger1 = var(7) = [23,30]
ID = 7597
scale = ((var(7)-22) * 0.125 + 3) * Const(size.xscale) * fvar(11), ((var(7)-22) * 0.125 + 3) * Const(size.yscale) * fvar(12)
trans = add
alpha = 256 - (var(7)-22)*32, (var(7)-22)*32

[State 7597, RING_2]
type = ModifyExplod
trigger1 = NumExplod(7597+1)
trigger1 = var(8) = [1,22]
ID = 7597+1
scale = (var(8) * 0.13636) * Const(size.xscale) * fvar(11), (var(8) * 0.13636) * Const(size.yscale) * fvar(12)

[State 7597, RING_2]
type = ModifyExplod
trigger1 = NumExplod(7597+1)
trigger1 = var(8) = [23,30]
ID = 7597+1
scale = ((var(8)-22) * 0.125 + 3) * Const(size.xscale) * fvar(11), ((var(8)-22) * 0.125 + 3) * Const(size.yscale) * fvar(12)
trans = add
alpha = 256 - (var(8)-22)*32, (var(8)-22)*32


[State 7597, RING_3]
type = ModifyExplod
trigger1 = NumExplod(7597+2)
trigger1 = var(9) = [1,22]
ID = 7597+2
scale = (var(9) * 0.13636) * Const(size.xscale) * fvar(11), (var(9) * 0.13636) * Const(size.yscale) * fvar(12)

[State 7597, RING_3]
type = ModifyExplod
trigger1 = NumExplod(7597+2)
trigger1 = var(9) = [23,30]
ID = 7597+2
scale = ((var(9)-22) * 0.125 + 3) * Const(size.xscale) * fvar(11), ((var(9)-22) * 0.125 + 3) * Const(size.yscale) * fvar(12)
trans = add
alpha = 256 - (var(9)-22)*32, (var(9)-22)*32



[State 7597, End]
type = DestroySelf
trigger1 = var(5) = -1
trigger1 = var(6) > 30
removeexplods = 1
recursive = 1


[State 7597, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | counter=%d"
params = var(5) ,var(6)
ignorehitpause = 1

[State 7597, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1

[State 7597, Run Counter]
type = varadd
trigger1 = var(7) < 16777216
var(7) = 1
ignorehitpause = 1

[State 7597, Run Counter]
type = varadd
trigger1 = var(8) < 16777216
var(8) = 1
ignorehitpause = 1

[State 7597, Run Counter]
type = varadd
trigger1 = var(9) < 16777216
var(9) = 1
ignorehitpause = 1



;Tatsuya-Ring-Color
[Statedef 7598]
type = A
moveType = I
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State 7598, Remember target ID]
type = varset
trigger1 = !PrevStateNo && !time
var(10) = Parent,ID


[State 7598, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 7598, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

;---------- Phase -----------
[State 7598, End]
type = varset
triggerall = var(5) >= 0
trigger1 = PlayerIDExist(var(10)) = 0
trigger1 = var(6) := 1
trigger2 = Const(size.shadowoffset) > 0
trigger2 = var(6) >= Const(size.shadowoffset)
trigger2 = var(6) := 1
var(5) = -1

;---------- End Phase -------

[State 7598, RING]
type = Explod
triggerall = var(5) >= 0
trigger1 = !NumExplod(7598)
trigger1 = var(6) := 1
anim = 7598
ID = 7598
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale) * fvar(11), 1 * Const(size.yscale) * fvar(12)
;vel = 7.2 * facing * Const(size.xscale) * fvar(11), -3.6 * Const(size.yscale) * fvar(12)
;accel = -0.18 * facing * Const(size.xscale) * fvar(11), 0.45 * Const(size.yscale) * fvar(12)
angle = Const(size.proj.doscale) / 2
xangle = 0
yangle = 0
sprpriority = 2
ownpal = 1
shadow = 0
;remappal = 7111, 1
ignorehitpause = 1

[State 7598, RING]
type = ModifyExplod
triggerall = var(5) >= 0
trigger1 = NumExplod(7598)
trigger1 = var(6) = [1,8]
ID = 7598
scale = (var(6) * 0.125) * Const(size.xscale) * fvar(11), (var(6) * 0.125) * Const(size.yscale) * fvar(12)
trans = add
alpha = var(6) * 32, 256 - (var(6) * 32)

[State 7598, RING]
type = ModifyExplod
triggerall = var(5) = -1
trigger1 = NumExplod(7598)
trigger1 = var(6) = [1,8]
ID = 7598
scale = (1+(var(6) * 0.125)) * Const(size.xscale) * fvar(11), (1+(var(6) * 0.125)) * Const(size.yscale) * fvar(12)
trans = add
alpha = 256 - (var(6) * 32),  var(6) * 32

[State 7598, End]
type = DestroySelf
trigger1 = var(5) = -1
trigger1 = var(6) > 16
removeexplods = 1
recursive = 1

[State 7598, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | counter=%d"
params = var(5) ,var(6)
ignorehitpause = 1

[State 7598, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1





;----------------- Trump Charge Helper ------------------------
[Statedef 7560]
type = A
physics = N
sprpriority = 2
anim = 9741
ctrl = 0

[State 7560, SND-FX]
type = PlaySnd
trigger1 = time = 0
value = 7,2900
volumescale = 100
channel = 7
abspan = 0

[State 7560, Explod Shockwave]
type = Explod
trigger1 = !NumExplod(7433)
trigger1 = time = 0
anim = 7433
ID = 7433
space = stage
pos = (0) * facing * Const(size.xscale), (0) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3.0 * Const(size.xscale),2.0 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0

[State 7560, Explod Circle]
type = Explod
trigger1 = !NumExplod(7434)
trigger1 = time = 0
anim = 7434
ID = 7434
space = stage
pos = (0) * facing * Const(size.xscale), (0) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0

[State 7560, Explod Circle Grow]
type = ModifyExplod
trigger1 = NumExplod(7434)
trigger1 = time = [0,11]
ID = 7434
scale = (0.3 + 0.0818*time) * Const(size.xscale), (0.3 + 0.0818*time) * Const(size.yscale)
trans = add
alpha = 256,256

[State 7560, Explod Ball]
type = Explod
trigger1 = !NumExplod(7432)
trigger1 = time = 0
anim = 7432
ID = 7432
space = stage
pos = (0) * facing * Const(size.xscale), (0) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = (Random%17 - 8) * facing * Const(size.xscale) , (-(Random%25) + 12) * Const(size.yscale)
;accel = 0 * facing * Const(size.xscale),Const(Movement.yaccel) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3.0 * Const(size.xscale),3.0 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0

[State 7560, Explod Ball Grow]
type = ModifyExplod
trigger1 = NumExplod(7432)
trigger1 = time = [0,6]
ID = 7432
scale = (3.0 - 0.4333*time) * Const(size.xscale), (3.0 - 0.4333*time) * Const(size.yscale)
trans = add
alpha = 256,256

[State 7560, End]
type = DestroySelf
trigger1 = time >= 13
removeexplods = 1
recursive = 1

[State 7560, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = 1

[State 7560, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1





;----------  Common Super Portrait -------------
[Statedef 7602]
type = A
physics = N
movetype= I
sprpriority = 0
ctrl = 0
anim = 9741

[State 7602, Explod Portrait]
type = Explod
trigger1 = !NumExplod(7602)
trigger1 = time = 0
anim = Const(size.proj.doscale)
ID = 7602
space = Screen
pos = Floor(ScreenWidth * IFElse(facing = 1,0.22, 0.78)), Floor(ScreenHeight * 0.7)
;bindID = ID
;bindtime = -1
facing = facing
removetime = 56
vel = 2 * facing , -2
accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1.5, 1.5
angle = 0
trans = add
alpha = 256,0
sprpriority = -15
ownpal = 1
;remappal = 7721,0

[State 7602, Explod Portrait fadein]
type = ModifyExplod
trigger1 = NumExplod(7602)
trigger1 = var(6) = [0,8]
ID = 7602
trans = add
alpha = (32 * var(6)), 256 - (32 * var(6))

[State 7602, Explod Portrait fadein]
type = ModifyExplod
trigger1 = NumExplod(7602)
trigger1 = var(6) = [48,55]
ID = 7602
trans = add
alpha = 256-(32 * (var(6) - 47)), (32 * (var(6) - 47))



[State 7602, End]
type = DestroySelf
trigger1 = time > 56
trigger2 = !NumExplod(7602)
removeexplods = 1
recursive = 1

[State 7602, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d counter=%d var(1)=%d var(2)=%d var(3)=%d"
params = var(5), var(6), var(1),var(2),var(3)
ignorehitpause = 1

[State 7602, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;-- Charge Helper 01 --
[Statedef 7100]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

;------ Phase -------
[State 7100, End flag]
type = varset
triggerall = var(5) = 0
triggerall = var(6) >= 16
trigger1 = Parent,Anim != Const(size.shadowoffset)
trigger1 = var(6) := 1
trigger2 = var(6) > 600
trigger2 = var(6) := 1
var(5) = 1

;---------------------

;------ BG ------
[State 7100, BG-PAL]
type = BGPalFX
trigger1 = var(5) = 0
trigger1 = var(6) = [0,15]
time = 1
add = 0,0,0
mul = 256 - 8*(var(6)+1), 256 - 8*(var(6)+1), 256 - 8*(var(6)+1)
invertall = 0
color = 256

[State 7100, BG-PAL]
type = BGPalFX
trigger1 = var(5) = 0
trigger1 = var(6) >= 16
time = 1
add = 0,0,0
mul = 128, 128, 128
invertall = 0
color = 256

[State 7100, BG-PAL-Exit]
type = BGPalFX
trigger1 = var(5) = 1
trigger1 = var(6) = [1,16]
time = 1
add = 0,0,0
mul = 128 + 8*var(6),128 + 8*var(6),128 + 8*var(6)
invertall = 0
color = 256

;------ BG End --

[State 7100, SND-FX]
type = PlaySnd
trigger1 = var(5) = 0
trigger1 = var(6) = 0
value = 30660,232
volumescale = 100
channel = 7
abspan = 0

[State 7100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = GlobalNoShadow

;Long 512 x 3 Scale / 48 = 32
[State 7100, BG 1st]
type = Explod
trigger1 = var(5) = 0
trigger1 = var(6) = 0
anim = 7100
ID = 7100
space = Screen
pos = IFElse(facing = 1,0,ScreenWidth), ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = 40
vel = -48 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 3, 3 / ((ScreenWidth*1.0 / ScreenHeight) / 1.777777)
angle = 0
trans = add
alpha = 256,256
sprpriority = -20
ownpal = 1
remappal = 6000,Const(size.proj.doscale); Color 1=Grey 234=RGB 5=Dard Orange 6=Purple

;Long 512 x 3 Scale / 48 = 32
[State 7100, BG repeat]
type = Explod
trigger1 = time%32 = 0
anim = 7100
ID = 7100
space = Screen
pos = IFElse(facing = 1,0,ScreenWidth) + 1536*facing, ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = 64
vel = -48 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 3, 3 / ((ScreenWidth*1.0 / ScreenHeight) / 1.777777)
angle = 0
trans = add
alpha = 256,256
sprpriority = -20
ownpal = 1
remappal = 6000,Const(size.proj.doscale); Color 1=Grey 234=RGB 5=Dard Orange 6=Purple

[State 7100, BG Trans]
type = ModifyExplod
trigger1 = NumExplod(7100)
trigger1 = var(5) = 0
trigger1 = var(6) = [0,15]
ID = 7100
Trans = add
Alpha = (16*var(6)), 256

[State 7100, BG Trans]
type = ModifyExplod
trigger1 = NumExplod(7100)
trigger1 = var(5) = 0
trigger1 = var(6) >= 16
ID = 7100
Trans = add
Alpha = 256, 256

[State 7100, BG Trans]
type = ModifyExplod
trigger1 = NumExplod(7100)
trigger1 = var(5) = 1
trigger1 = var(6) = [1,16]
ID = 7100
Trans = add
Alpha = 256-(16*var(6)), 256

[State 7100, End]
type = DestroySelf
trigger1 = var(5) = 1
trigger1 = var(6) > 16
removeexplods = 1
recursive = 1

[State 7100, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(6)=%d | test=%d"
params = var(5), var(6), (ScreenWidth*1.0 / ScreenHeight) / 1.777777
ignorehitpause = 1

[State 7100, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;-- Super Charge Helper DBFCI Style --
[Statedef 7570]
type = A
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

;------ States -------
[State 7570, End flag]
type = varset
triggerall = var(5) = 0
trigger1 = !((Parent,StateNo = [3000,4999]) || (Parent,StateNo >= 40000))
trigger1 = var(6) := 1
trigger2 = NumHelper(7130); BlackOur trans
trigger2 = Helper(7130),var(5) >= 1
trigger2 = var(6) := 1
trigger3 = NumHelper(7131); Whiteout trans
trigger3 = Helper(7131),var(5) >= 1
trigger3 = var(6) := 1
var(5) = 3

;---------------------

[State 7570, SND-FX]
type = PlaySnd
trigger1 = var(5) = 0
trigger1 = var(6) = 0
value = 7,3000
volumescale = 100
channel = 7
abspan = 0

[State 7570, AssertSpecial]
type = AssertSpecial
trigger1 = var(5) = 0
trigger1 = var(6) > 9
flag = noFG
flag2 = GlobalNoShadow


[State 7570, Explod Spark 01]
type = Explod
trigger1 = NumExplod(7551) < 2
trigger1 = var(5) = 0
trigger1 = var(6) = 0
anim = 7551
ID = 7551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 16
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale),2 * Const(size.yscale)
angle = 45
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7570, Explod Spark 02]
type = Explod
trigger1 = NumExplod(7551) < 2
trigger1 = var(5) = 0
trigger1 = var(6) = 0
anim = 7551
ID = 7551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 16
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 4 * Const(size.xscale),2 * Const(size.yscale)
angle = -45
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7570, Explod Spark Grow Longer]
type = ModifyExplod
trigger1 = NumExplod(7551)
trigger1 = var(5) = 0
trigger1 = var(6) = [1,5]
ID = 7551
scale = 4.0 * Const(size.xscale),(2.0 + 1.2*(var(6))) * Const(size.yscale)


[State 7570, Explod Spark Grow thinner]
type = ModifyExplod
trigger1 = NumExplod(7551)
trigger1 = var(5) = 0
trigger1 = var(6) = [6,16]
ID = 7551
scale = (4.0 - 0.38*(var(6) - 5)) * Const(size.xscale),8.0 * Const(size.yscale)

[State 7570, Explod Spark 11]
type = Explod
trigger1 = NumExplod(17551) < 2
trigger1 = var(5) = 0
trigger1 = var(6) = 10
anim = 7551
ID = 17551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 16
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7570, Explod Spark 12]
type = Explod
trigger1 = NumExplod(17551) < 2
trigger1 = var(5) = 0
trigger1 = var(6) = 10
anim = 7551
ID = 17551
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 16
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 3 * Const(size.xscale),1 * Const(size.yscale)
angle = 90
sprpriority = 2
ownpal = 1
remappal = 7451, 0

[State 7570, Explod Spark Grow Longer 10]
type = ModifyExplod
trigger1 = NumExplod(17551)
trigger1 = var(5) = 0
trigger1 = var(6) = [11,15]
ID = 17551
scale = 3.0 * Const(size.xscale),(1.0 + 1.0*(var(6) - 10)) * Const(size.yscale)


[State 7570, Explod Spark Grow thinner 10]
type = ModifyExplod
trigger1 = NumExplod(17551)
trigger1 = var(5) = 0
trigger1 = var(6) = [16,26]
ID = 17551
scale = (3.0 - 0.264*(var(6) - 15)) * Const(size.xscale),6.0 * Const(size.yscale)


[State 7570, Explod Ring 1]
type = Explod
trigger1 = !NumExplod(7434)
trigger1 = var(5) = 0
trigger1 = var(6) = 2
anim = 7434
ID = 7434
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 14
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale), 0.5 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7000,5

[State 7570, Explod Spark Grow 1]
type = ModifyExplod
trigger1 = NumExplod(7434)
trigger1 = var(5) = 0
trigger1 = var(6) = [3,15]
ID = 7434
scale = (0.5 + 0.11538*(var(6)-2)) * Const(size.xscale),(0.5 + 0.11538*(var(6)-2)) * Const(size.yscale)

[State 7570, Explod Ring 2]
type = Explod
trigger1 = !NumExplod(17434)
trigger1 = var(5) = 0
trigger1 = var(6) = 12
anim = 7434
ID = 17434
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 14
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = 7000,5

[State 7570, Explod Spark Grow 2]
type = ModifyExplod
trigger1 = NumExplod(17434)
trigger1 = var(5) = 0
trigger1 = var(6) = [13,18]
ID = 17434
scale = (0.4 + 0.08*(var(6)-12)) * Const(size.xscale),(0.4 + 0.08*(var(6)-12)) * Const(size.yscale)

[State 7570, Explod Spark Grow 2]
type = ModifyExplod
trigger1 = NumExplod(17434)
trigger1 = var(5) = 0
trigger1 = var(6) = [19,25]
ID = 17434
trans = add
scale = (0.88 + 0.01*(var(6)-18)) * Const(size.xscale),(0.88 + 0.01*(var(6)-18)) * Const(size.yscale)
alpha = 256 - 30*(var(6) - 18),256


[State 7570, BG Darken]
type = BGPalFX
trigger1 = var(5) = 0
trigger1 = (var(6) = [0,9])
time = 1
add = 0,0,0
mul = 256 - 28*var(6), 256 - 28*var(6), 256 - 28*var(6)
color = 256

[State 7570, BG Darken]
type = BGPalFX
trigger1 = var(5) = 0
trigger1 = var(6) > 9
time = 1
add = 0,0,0
mul = 0,0,0
color = 256

[State 7570, BG Darken]
type = BGPalFX
trigger1 = var(5) = 3
trigger1 = (var(6) = [1,8])
time = 1
add = 0,0,0
mul = 32*var(6),32*var(6),32*var(6)
color = 256


[State 7570, Explod BrightBall]
type = Explod
trigger1 = !NumExplod(7008)
trigger1 = var(5) = 0
trigger1 = var(6) = 9
anim = 7008
ID = 7008
space = Screen
pos = ScreenWidth / 2, ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = 20
vel = 0 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 2.0, 2.0
angle = 0
trans = add
alpha = 256,256
sprpriority = -20
ownpal = 1
remappal = 7000,2

[State 7570, Explod BrightBall Grow]
type = ModifyExplod
trigger1 = NumExplod(7008)
trigger1 = var(5) = 0
trigger1 = var(6) = [10,18]
ID = 7008
scale = (2.0 + 0.5*(var(6)-9)),(2.0 + 0.5*(var(6)-9))
trans = add
alpha = 256,256

[State 7570, Explod BrightBall Grow]
type = ModifyExplod
trigger1 = NumExplod(7008)
trigger1 = var(5) = 0
trigger1 = var(6) = [20,28]
ID = 7008
scale = 6.5 - 0.7*(var(6)-19), 6.5 - 0.7*(var(6)-19)
trans = add
alpha = 256 - 27*(var(6)-19), 256

[State 7570, Explod BingLine]
type = Explod
trigger1 = !NumExplod(7721)
trigger1 = var(5) = 0
trigger1 = var(6) = 19
anim = 7721
ID = 7721
space = Screen
pos = ScreenWidth / 2, ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = 36
vel = 0 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 2.0 , 18.0
angle = 0
trans = add
alpha = 256,256
sprpriority = -21
ownpal = 1
remappal = 7721,0

[State 7570, Explod BrightBall Grow longer]
type = ModifyExplod
trigger1 = NumExplod(7721)
trigger1 = var(5) = 0
trigger1 = var(6) = [20,29]
ID = 7721
scale = 2 + 0.8*(var(6) - 19), 18 - 1.2*(var(6) - 19)
;scale = 10.0 , 6.0
trans = add
alpha = 256,256

[State 7570, Explod BrightBall Grow thiner]
type = ModifyExplod
trigger1 = NumExplod(7721)
trigger1 = var(5) = 0
trigger1 = var(6) = [30,54]
ID = 7721
scale = 10.0, 6 - 0.232*(var(6) - 29)
trans = add
alpha = 256,256

[State 7570, Explod CA-BG-1]
type = Explod
triggerall = !NumExplod(7810)
trigger1 = var(5) = 0
trigger1 = var(6) = 28
anim = 7810
ID = 7810
space = Screen
pos = IFElse(facing = 1, 0 - 8000, ScreenWidth + 8000), ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = -1
vel = 40 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 16,2
angle = 0
;trans = add
;alpha = 256,256
sprpriority = -22
ownpal = 1
;remappal = 7000,2

[State 7570, Explod CA-BG-1-fadein]
type = ModifyExplod
triggerall = NumExplod(7810)
trigger1 = var(5) = 0
trigger1 = var(6) = [28,35]
ID = 7810
trans = add
alpha = 32 * (var(6) - 27) ,256

[State 7570, Explod CA-BG-1-fadeout]
type = ModifyExplod
triggerall = NumExplod(7810)
trigger1 = var(5) = 3
trigger1 = var(6) = [1,8]
ID = 7810
trans = add
alpha = 256 - 32*(var(6)) ,256

[State 7570, Explod Speed-Lines forward]
type = Explod
trigger1 = var(5) = 0
trigger1 = var(6) = 40
anim = 7020
ID = 7020
space = Screen
pos = IFElse(facing = 1, 0 - 960, ScreenWidth + 960), ScreenHeight * 0.3
;bindID = ID
;bindtime = -1
facing = facing
removetime = 38
vel = 80 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 1.8, 1.2
angle = 0
;trans = add
;alpha = 256,256
sprpriority = 12
ownpal = 1
;remappal = 7000,2

[State 7570, Explod Speed-Lines backward]
type = Explod
trigger1 = var(5) = 0
trigger1 = var(6) = 40
anim = 7020
ID = 7020
space = Screen
pos = IFElse(facing = 1, ScreenWidth + 960,0 - 960), ScreenHeight * 0.7
;bindID = ID
;bindtime = -1
facing = facing
removetime = 38
vel = -80 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 1.8, 1.2
angle = 0
;trans = add
;alpha = 256,256
sprpriority = 12
ownpal = 1
;remappal = 7000,2

[State 7570, Explod Speed-Lines forward-random]
type = Explod
trigger1 = var(5) = 0
trigger1 = var(6) > 40
trigger1 = Random < 48
anim = 7020
ID = 7020
space = Screen
pos = IFElse(facing = 1, 0 - 960, ScreenWidth + 960), ScreenHeight * (Random%10 / 10.0)
;bindID = ID
;bindtime = -1
facing = facing
removetime = 38
vel = 80 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 1.8, 1
angle = 0
;trans = add
;alpha = 256,256
sprpriority = 12
ownpal = 1
;remappal = 7000,2

[State 7570, Explod Speed-Lines backward - random]
type = Explod
trigger1 = var(5) = 0
trigger1 = var(6) > 40
trigger1 = Random < 48
anim = 7020
ID = 7020
space = Screen
pos = IFElse(facing = 1, ScreenWidth + 960,0 - 960), ScreenHeight * (Random%10 / 10.0)
;bindID = ID
;bindtime = -1
facing = facing
removetime = 38
vel = -80 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 1.8, 1
angle = 0
;trans = add
;alpha = 256,256
sprpriority = 12
ownpal = 1
;remappal = 7000,2


[State 7570, Explod MovingRings 1]
type = Explod
triggerall = Parent,MoveType = A
trigger1 = var(5) = 0
trigger1 = var(6) >= 30
trigger1 = var(6)%10 = 0
anim = 7439 + Random%2
ID = 7439
space = Screen
pos = IFElse(facing = 1, 0 - 260, ScreenWidth + 260), ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = 60
vel = 30 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 0.4, 1.4
angle = Random%31 - 15
trans = add
alpha = 32,256
sprpriority = -19
ownpal = 1
remappal = 7000,2

[State 7570, Explod MovingRings 1]
type = Explod
triggerall = Parent,MoveType = A
trigger1 = var(5) = 0
trigger1 = var(6) >= 30
trigger1 = var(6)%10 = 0
anim = 7439 + Random%2
ID = 7439
space = Screen
pos = IFElse(facing != 1, 0 - 260, ScreenWidth + 260), ScreenHeight / 2
;bindID = ID
;bindtime = -1
facing = facing
removetime = 60
vel = -30 * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 0.4, 1.4
angle = Random%31 - 15
trans = add
alpha = 32,256
sprpriority = -19
ownpal = 1
remappal = 7000,2

[State 7570, Explod MovingRings 1]
type = ModifyExplod
trigger1 = NumExplod(7439)
trigger1 = var(5) = 3
trigger1 = var(6) = [1,4]
ID = 7439
trans = add
alpha = 32 - 8*var(6),256


[State 7570, Explod Words]
type = Explod
triggerall = NumExplod(7811) < 3
triggerall = Parent,MoveType = A
trigger1 = var(5) = 0
trigger1 = var(6) >= 40
trigger1 = var(6)%10 = 0
anim = 7811 + Random%10
ID = 7811
space = Screen
pos = IFElse(Random < 500, 0 + 400, ScreenWidth - 400), ScreenHeight * (0.3 + ((Random%51) / 100.0))
;bindID = ID
;bindtime = -1
facing = 1
removetime = -2
vel = (4 - Random%9) * facing , 0
supermovetime = 65535
pausemovetime = 65535
scale = 2.0, 2.0
angle = 0
sprpriority = -18
ownpal = 1
;remappal = 7000,2


[State 7570, End]
type = DestroySelf
trigger1 = var(5) = 3
trigger1 = var(6) > 8
removeexplods = 1
recursive = 1

[State 7570, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(3)=%d | scale=%d | counter=%d"
params = var(5), var(3), NumExplod,var(6)
ignorehitpause = 1

[State 7570, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;============ Zoom Helpers =======================
; ---- Beterhans General Zoom Helper -----
[Statedef 7660]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller

;---------- Parent Check ----------------
[State Parent Check 1]
type = varset
trigger1 = var(40) = 0
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(40) = Const(size.proj.doscale)
ignoreHitPause = 1

[State Parent Check 2]
type = varset
trigger1 = var(40)
trigger1 = PlayerIDExist(Const(size.proj.doscale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 7660, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1
ignoreHitPause = 1

;------- set config values -----------
[State 7660, get-var10]
type = varset
trigger1 = !time
var(10) = parent,var(10)
persistent = 0

;---- Uncommint compensation to allow AbsZoom ----
;[State 7660, compensation zoom var]
;type = varset
;trigger1 = !time
;trigger1 = CameraZoom > 0 && CameraZoom < 1
;fvar(21) = (1 / CameraZoom) - 1
;
;[State 7660, compensation zoom var]
;type = varset
;trigger1 = !time
;trigger1 = CameraZoom >= 1
;fvar(21) = 0
;---- Uncommint compensation to allow Abszoom ----


[State 7660, set fadin time]
type = varset
trigger1 = !time
var(11) = 10
persistent = 0

[State 7660, set fadout time]
type = varset
trigger1 = !time
var(12) = 12
persistent = 0

[State 7660, set target zoom level]
type = varset
trigger1 = !time
fvar(13) = fvar(21) + 0.2

[State 7660, calcuate zoomin step size]
type = varset
trigger1 = !time
fvar(5) = fvar(13) / var(11)

[State 7660, calcuate zoomout step size]
type = varset
trigger1 = !time
fvar(15) = fvar(13) / var(12)

;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 7660, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = !var(40); Parent or Target not existed
trigger1 = var(6) := 1
trigger2 = root,MoveType != A
trigger2 = var(6) := 1
var(5) = -1

[State 7660, Change zoom State 1]; stay in or exit
type = varadd
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11) <= 0
trigger2 = var(5) = 2 && var(12) <= 0
var(5) = 1

[State 7660, Change zoom State 2 zoom out]; no super charge helper found zoom out
type = varset
triggerall = var(5) >= 0
trigger1 = var(5) = 1
trigger1 = !(Parent,var(19) & 256)
var(5) = 2

;--------------- Pos Move and Binds ---------------
[State 7660, Init Pos]; alway zoom from camera pos to view it smoothly.
type = posset
trigger1 = !time
x = 0;camera always in middle of the screen
y = CameraPos y

[State 7660, fly to parent fad in];zoom in 
type = velset
trigger1 = !time
trigger1 = var(40) && var(5) = 0
x = (ParentDist x + (Const(Size.ground.front) * Const(Size.xScale) * 2.0 )) / var(11)
y = (ParentDist y + (Parent,P2Dist y / 3.0)) / var(11)
ignorehitpause = 1

[State 7660, bind to parent stay for 1]; stay and stop moving
type = BindToParent
trigger1 = var(40) && var(5) = 1
time = 1
facing = 1
pos = Floor(2 * Const(Size.ground.front) * Const(Size.xScale)), Floor(Parent,P2Dist y / 3.0 * Const(Size.yScale))
;pos = Parent,P2Dist x / 4.0, Parent,P2Dist y / 3.0
ignorehitpause = 1

[State 7660, move fadout]; zoom out move
type = velset
trigger1 = var(5) >= 2
trigger2 = var(5) = -1; In case error
x = (-Pos x * facing) / var(12)
y = (CameraPos y - Pos y) / var(12)
persistent = 0

;----------------- Compute zoom factor fvar(22) ---------------------
[State 7660, compute scale on error unexpected exit]
type = varset
triggerall = var(5) = -1
trigger1 = var(6) <= var(12)
fvar(22) = IFElse(fvar(22) <= 1, 1, 1 + (((fvar(22) - 1) / var(12)) * (var(12) - var(6))))
ignorehitpause = 1

[State 7660, Zoom in]; and - counter var(11)
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11)
trigger1 = var(11):= var(11) - 1
fvar(22) = (1 + (fvar(13) - (fvar(5) * var(11))))
ignorehitpause = 1

[State 7660, Zoom keep]; no couter but triggered by supercharge helper disappear.
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11) = 0
trigger2 = var(5) = 1
fvar(22) = (1 + (fvar(13) - (fvar(5) * var(11))))
ignorehitpause = 1

[State 7660, Zoom out]; and - counter var(12)
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 2 && var(12)
trigger1 = var(12):= var(12) - 1
fvar(22) = (1 + (fvar(15) * var(12)))
ignorehitpause = 1



;---------------- Apply Zoom -------
[State 7660, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7660, end]
type = destroyself
trigger1 = var(5) = -1
trigger1 = var(6) > var(12); Unexpected finish
trigger2 = var(5) >= 3; normal exit

[State 7660, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7660, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(12)=%d, fvar(15)=%d, fvar(13)=%d"  
params = var(5),var(6),var(12),fvar(15),fvar(13)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7660, Run Counter]
type = varadd
trigger1 = var(6) != 0
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 7660, Counter var7 add 1]
type = varadd
trigger1 = var(7) != 0
trigger1 = var(7) < 16777215
var(7) = 1




; ---- MoveHit Zoom Helper -----
[Statedef 7661]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller


;------- Control system camera -----------
[State 7661, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0
ignoreHitPause = 1

;------- set config values -----------
[State 7661, get-var10]
type = varset
trigger1 = !time
var(10) = parent,var(10)
persistent = 0

;---- Uncommint compensation to allow AbsZoom ----
;[State 7661, compensation zoom var]
;type = varset
;trigger1 = !time
;trigger1 = CameraZoom > 0 && CameraZoom < 1
;fvar(21) = (1 / CameraZoom) - 1
;
;[State 7661, compensation zoom var]
;type = varset
;trigger1 = !time
;trigger1 = CameraZoom >= 1
;fvar(21) = 0
;---- Uncommint compensation to allow Abszoom ----


[State 7661, set fadin time]
type = varset
trigger1 = !time
var(11) = 6
persistent = 0

[State 7661, set fadout time]
type = varset
trigger1 = !time
var(12) = 6
persistent = 0

[State 7661, set target zoom level]
type = varset
trigger1 = !time
fvar(13) = fvar(21) + 0.6

[State 7661, calcuate zoomin step size]
type = varset
trigger1 = !time
fvar(5) = fvar(13) / var(11)

[State 7661, calcuate zoomout step size]
type = varset
trigger1 = !time
fvar(15) = fvar(13) / var(12)

;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 7661, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = Parent,Ctrl || Parent,StateNo < 200 || (Parent,StateNo = [5000,5999])
trigger1 = var(6) := 1
trigger2 = !(Parent,StateNo = 931 || (Parent,StateNo = [2900,2919]))
trigger2 = var(6) := 1
trigger3 = PlayerIDExist(Const(size.proj.doscale)) = 0
trigger3 = var(6) := 1
trigger4 = PlayerIDExist(Const(size.proj.doscale)) = 1
trigger4 = PlayerID(Const(size.proj.doscale)),Ctrl || PlayerID(Const(size.proj.doscale)), MoveType != H
trigger4 = var(6) := 1
trigger5 = root,MoveType != A
trigger5 = var(6) := 1
var(5) = -1

[State 7661, Change zoom State 1]; stay in
type = varadd
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11) <= 0
trigger1 = var(6) := 1
trigger2 = var(5) = 2 && var(12) <= 0
trigger2 = var(6) := 1
var(5) = 1

[State 7661, Change zoom State 2 zoom out]; no super charge helper found zoom out
type = varset
triggerall = var(5) = 1
trigger1 = Parent,MoveContact > 1
trigger1 = var(6) := 1
trigger2 = Parent,StateNo = 931
trigger2 = var(6) > 30
var(5) = 2

;--------------- Pos Move and Binds ---------------
[State 7661, Init Pos]; alway zoom from camera pos to view it smoothly.
type = posset
trigger1 = !time
x = 0;camera always in middle of the screen
y = CameraPos y

[State 7661, fly to parent fad in];zoom in in 20 frames
type = velset
triggerall = Parent,IsHelper = 0
trigger1 = var(5) = 0
trigger1 = var(6) = 0
x = (ParentDist x + (Const(Size.ground.front)* 4 * Const(Size.xScale) )) / var(11)
y = ((ParentDist y + (PlayerID(Const(size.proj.doscale)),Pos y - Pos y)) / 2.0) / var(11)
ignorehitpause = 1

[State 7661, fly to parent fad in];zoom in in 20 frames
type = velset
triggerall = Parent,IsHelper = 1
trigger1 = var(5) = 0
trigger1 = var(6) = 0
x = (ParentDist x * Const(Size.xScale) ) / var(11)
y = ((ParentDist y + (PlayerID(Const(size.proj.doscale)),Pos y - Pos y)) / 2.0) / var(11)
ignorehitpause = 1

[State 7661, stop]; stay and stop moving
type = velset
trigger1 = var(5) = 1
trigger1 = var(6) = 1
x = 0
y = 0
ignorehitpause = 1

[State 7661, move fadout]; zoom out move
type = velset
trigger1 = var(5) = 2  && var(6) = 1
trigger2 = var(5) = -1 && var(6) = 1
x = (-Pos x * facing) / var(12)
y = (CameraPos y - Pos y) / var(12)
persistent = 0

;----------------- Compute zoom factor fvar(22) ---------------------
[State 7661, compute scale on error unexpected exit]
type = varset
triggerall = var(5) = -1
trigger1 = var(6) <= var(12)
fvar(22) = IFElse(fvar(22) <= 1, 1, 1 + (((fvar(22) - 1) / var(12)) * (var(12) - var(6))))
ignorehitpause = 1

[State 7661, Zoom in]; and - counter var(11)
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11)
trigger1 = var(11):= var(11) - 1
fvar(22) = (1 + (fvar(13) - (fvar(5) * var(11))))
ignorehitpause = 1

[State 7661, Zoom keep]; no couter but triggered by supercharge helper disappear.
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11) = 0
trigger2 = var(5) = 1
fvar(22) = (1 + (fvar(13) - (fvar(5) * var(11))))
ignorehitpause = 1

[State 7661, Zoom out]; and - counter var(12)
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 2 && var(12)
trigger1 = var(12):= var(12) - 1
fvar(22) = (1 + (fvar(15) * var(12)))
ignorehitpause = 1



;---------------- Apply Zoom -------
[State 7661, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7661, end]
type = destroyself
trigger1 = var(5) = -1
trigger1 = var(6) > var(12); Unexpected finish
trigger2 = var(5) >= 3; normal exit

[State 7661, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7661, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(12)=%d, fvar(15)=%d, fvar(13)=%d"  
params = var(5),var(6),var(12),fvar(15),fvar(13)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7661, Run Counter]
type = varadd
trigger1 = var(6) != 0
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 7661, Counter var7 add 1]
type = varadd
trigger1 = var(7) != 0
trigger1 = var(7) < 16777215
var(7) = 1







; ---- Super Zoom Helper -----
[Statedef 7662]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller

;---------- Parent Check ----------------
[State Parent Check 1]
type = varset
trigger1 = var(40) = 0
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(40) = Const(size.proj.doscale)
ignoreHitPause = 1

[State Parent Check 2]
type = varset
trigger1 = var(40)
trigger1 = PlayerIDExist(Const(size.proj.doscale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 7662, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,1
ignoreHitPause = 1

;------- set config values -----------
[State 7662, get-var10]
type = varset
trigger1 = !time
var(10) = parent,var(10)
persistent = 0

;---- Uncommint compensation to allow AbsZoom ----
[State 7662, compensation zoom var]
type = varset
trigger1 = !time
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1 / CameraZoom) - 1

[State 7662, compensation zoom var]
type = varset
trigger1 = !time
trigger1 = CameraZoom >= 1
fvar(21) = 0

;---- Uncommint compensation to allow Abszoom ----


;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 7662, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = !var(40); Parent or Target not existed
trigger1 = var(6) := 1
trigger2 = !((Parent,StateNo = [3000,4999]) || (Parent,StateNo >= 40000))
trigger2 = var(6) := 1
trigger3 = root,MoveType != A
trigger3 = var(6) := 1
var(5) = -1

[State 7662, Change zoom State 1]; stay
type = varset
trigger1 = var(5) = 0
trigger1 = var(6) >= 20
trigger1 = var(6):= 1
var(5) = 1

[State 7662, Change zoom State 1]; zoom up for power up
type = varset
trigger1 = var(5) = 1 && var(6) > 2
trigger1 = Parent,var(10)
trigger1 = var(6):= 1
var(5) = 2

[State 7662, Change zoom State 2 zoom out]; no super charge helper found zoom out
type = varset
trigger1 = var(5) = [1,2]
trigger1 = !(Parent,var(19) & 256)
trigger1 = var(6):= 1
var(5) = 3

;--------------- Pos Move and Binds ---------------
[State 7662, Init Pos]; alway zoom from camera pos to view it smoothly.
type = posset
trigger1 = !time
x = 0;camera always in middle of the screen
y = CameraPos y

[State 7662, fly to parent fad in];zoom in in 20 frames
type = velset
trigger1 = var(5) = 0
trigger1 = var(6) = 0
x = (ParentDist x + (Const(Size.ground.front) * Const(Size.xScale) )) / 20.0
y = (ParentDist y) / 20.0

[State 7662, fly to parent fad in];stop
type = velset
trigger1 = var(5) = 1
trigger1 = var(6) = 1
x = 0
y = 0

[State 7662, fly to center];zoom in in 10 frames
type = velset
trigger1 = var(5) = 3 || var(5) = -1
trigger1 = var(6) = 1
x = -facing * Pos x / 10.0
y = Pos y / 10.0


;----------------- Compute zoom factor fvar(22) ---------------------
[State 7662, compute scale on error unexpected exit]
type = varset
triggerall = var(5) = -1
trigger1 = var(6) <= var(12)
fvar(22) = IFElse(fvar(22) <= 1, 1, 1 + (((fvar(22) - 1) / var(12)) * (var(12) - var(6))))


[State 7662, Zoom in]; in 20 frames
type = VarSet
trigger1 = var(5) = 0
trigger1 = var(6) = [0,19]
fvar(22) = 1 + (var(6) + 1) * ((fvar(21) + 0.1) / 20.0)

[State 7662, Zoom in]; in 8 frames power up
type = VarSet
trigger1 = var(5) = 2
trigger1 = var(6) = [1,8]
fvar(22) = 1 + (fvar(21) + 0.1) + var(6) * 0.075;0.6

[State 7662, Snapshot fvar22]
type = varset
triggerall = fvar(23) != fvar(22)
trigger1 = var(5) = 3 || var(5) = -1
trigger1 = var(6) = 1
fvar(23) = fvar(22)

[State 7662, Zoom out]; in 10 frames
type = VarSet
trigger1 = var(5) = 3 || var(5) = -1
trigger1 = var(6) = [1,10]
fvar(22) = fvar(23) - ((fvar(23) - 1) / 10.0) * var(6)

;---------------- Apply Zoom -------
[State 7662, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7662, end]
type = destroyself
trigger1 = var(5) = -1
trigger1 = var(6) > 10
trigger2 = var(5) = 3
trigger2 = var(6) > 10

[State 7662, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7662, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(12)=%d, fvar(15)=%d, fvar(13)=%d"  
params = var(5),var(6),var(12),fvar(15),fvar(13)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7662, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 7662, Counter var7 add 1]
type = varadd
trigger1 = var(7) != 0
trigger1 = var(7) < 16777215
var(7) = 1






; --------------------- ShakeCam Horizontal Zoom Helper -------------------------
[Statedef 7666]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller

;---------- Parent Check ----------------
[State Parent Check 1]
type = varset
trigger1 = var(40) = 0
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(40) = Const(size.proj.doscale)
ignoreHitPause = 1

[State Parent Check 2]
type = varset
trigger1 = var(40)
trigger1 = PlayerIDExist(Const(size.proj.doscale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 7666, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0
ignoreHitPause = 1

;---- Uncommint compensation to allow AbsZoom ----
;[State 7666, compensation zoom var]
;type = varset
;trigger1 = !time
;trigger1 = CameraZoom > 0 && CameraZoom < 1
;fvar(21) = (1 / CameraZoom) - 1
;
;[State 7666, compensation zoom var]
;type = varset
;trigger1 = !time
;trigger1 = CameraZoom >= 1
;fvar(21) = 0
;---- Uncommint compensation to allow Abszoom ----

;--------------- Parameters -------------

[State 7666, get-pos]
type = varset
trigger1 = time = 0
var(10) = Floor(Pos x)
persistent = 0

[State 7666, ShakeTime]
type = varset
trigger1 = time = 0
var(11) = Const(size.proj.doscale)

[State 7666, Shake-Amplitude]
type = varset
trigger1 = time = 0
fvar(12) = 12 * Const(Size.xScale)

[State 7666, Shake-Fequency Hz]
type = varset
trigger1 = time = 0
var(13) = 6

[State 7666, Shake-Phase]
type = varset
trigger1 = time = 0
var(14) = 0


;------------- Camera Phase control var(5) ---------
;[State 7666, Exit for unexpected reasons]
;type = varset
;triggerall = var(5) != -1
;trigger1 = !var(40); Parent or Target not existed
;trigger1 = var(6) := 1
;var(5) = -1


;--------------- Pos Move and Binds ---------------
[State 7666, Init Pos]; alway zoom from camera pos to view it smoothly.
type = posset
trigger1 = 1
x = Floor( var(10) + ( sin((var(14) + (var(6) * var(13) * (360/60))) * (Pi/180)) ) * fvar(12) )
;   Base      SIN(phase offset)+(clock * stepsize to degree) x amplitude.



;----------------- Compute zoom factor fvar(22) ---------------------
[State 7666, Zoom in]; and - counter var(11)
type = VarSet
trigger1 = var(5) >= 0
fvar(22) = (1.02 + (fvar(21)))
ignorehitpause = 1


;---------------- Apply Zoom -------
[State 7666, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7666, end]
type = destroyself
trigger1 = var(5) = -1
trigger2 = var(5) >= 3; normal exit
trigger3 = time > var(11); timeout

[State 7666, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7666, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(14)=%d, var(11)=%d"  
params = var(5),var(6),var(14),var(11)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7666, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 7666, Counter var7 add 1]
type = varadd
trigger1 = var(7) < 16777215
var(7) = 1






;========================<Intro CAMERA CONTROL>=============================
[StateDef 7999]
type = S
velSet = 0,0
anim = 9741

[State 7999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 7999, End]
type = DestroySelf
trigger1 = RoundState = 2




;========================<Extend Helpers Time for override target state>=============================
[StateDef 19999]
type = U
velSet = 0,0
anim = 9741
ctrl = 0

[State Remove Explod]
type = RemoveExplod
trigger1 = !time

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
triggerall = Target,IsHelper = 0
triggerall = Target,HitFall
triggerall = Target,StateNo = [5000,5030]
triggerall = Abs(Target,vel x) > (Const720p(20) * Target,Const(Size.xScale))
triggerall = Target,Pos y < (Const720p(-20) * Target,Const(Size.yScale))
trigger1 = Target,FrontEdgeBodyDist <= Const720p(12)
trigger2 = Target,BackEdgeBodyDist <= Const720p(12)
value = 1111302
ignorehitpause = 1

[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget
triggerall = Target,IsHelper = 0
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,IsHelper = 0
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1


[State 19999, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target,StateNo = 1115110 || Target,StateNo = 1115080
trigger3 = NumTarget
trigger3 = Target,Hitfall = 0
trigger4 = NumTarget
trigger4 = (Target,StateNo = [5000,5030])
trigger4 = Target,time < 3
ignorehitpause = 1