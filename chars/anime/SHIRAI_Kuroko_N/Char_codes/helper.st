;====================== Move Helpers =======================



;==================== SP Move Helpers ================
;-------------------- Steel Darts -----------------
[Statedef 1005]
type = A
moveType = A
physics = N
sprpriority = 0
ctrl = 0
velset = 0,0

[State 1005, Level-1-Charged]
type = varset
triggerall = !time
trigger1 = NumHelper(1010)
trigger1 = Parent,StateNo = 1000
var(10) = 1

[State 1005, Level-2-EX]
type = varset
triggerall = !time
trigger1 = Parent,StateNo = 1050
var(10) = 2

[State 1005, Level-EX-Charged]
type = varset
triggerall = !time
trigger1 = NumHelper(1010)
trigger1 = Parent,StateNo = 1050
var(10) = 3


[State 1005, Follow portail]
type = PosSet
triggerall = NumHelper(1010)
trigger1 = !time
x = Helper(1010),Pos x
y = Helper(1010),Pos y
ignorehitpause = 1

[State 1005, Enemy_Height]
type = varset
trigger1 = !time
trigger1 = NumEnemy
fvar(20) = Enemynear,Pos y + (Enemynear,Const(Size.mid.pos.y)/2 * Enemynear,Const(Size.yScale) * Enemynear,StateType = C) + (Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale) * (Enemynear,StateType = A || Enemynear,StateType = S))


[State 1005, IF-EX]
type = PosSet
trigger1 = !NumHelper(1010)
trigger1 = !time && var(10) > 1
x = Enemynear,Pos x
y = fvar(20)

[State 1005, Anim]
Type = ChangeAnim
trigger1 = !time
value = 1005 + 50*(var(10) >= 2)

[State 1005, FX-Helper]
type = helper
trigger1 = !NumHelper(1007)
trigger1 = !time
stateno = 1007
ID = 1007
name = "FX-Helper-For-Needle"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = 0,0
;supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1

[State 1005, Portail-Helper]
type = helper
trigger1 = !NumHelper(1010)
trigger1 = time = 2
stateno = 1010
ID = 1010
name = "Portail-helper"
facing = 1
postype = P1
helpertype = Normal
keyctrl = 0
pos = 0,0
;supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID ;
ownpal = 1



[State 1005, SND-FX]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 0
trigger3 = AnimElemTime(4) = 0
value = 1,0
volumescale = 100
channel = 1
;abspan = 0
ignorehitpause = 1


[State 1005, Needle 1]
type = Explod
trigger1 = !NumExplod(62221)
trigger1 = AnimElemTime(2) = 0
anim = 6222
ID = 62221
space = stage
pos = -14 * facing * Const(size.xscale), 14 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = 30
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle 1-2]
type = Explod
trigger1 = !NumExplod(62231)
trigger1 = AnimElemTime(2) = 6
trigger1 = var(6) := 1
anim = 6223
ID = 62231
space = stage
pos = -14 * facing * Const(size.xscale), 14 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
vel = -2 * facing * Const(size.xscale), -8 * Const(size.yScale)
accel = 0 * facing * Const(size.xscale),1.2 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = 30
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle 2]
type = Explod
trigger1 = !NumExplod(62222)
trigger1 = AnimElemTime(3) = 0
anim = 6222
ID = 62222
space = stage
pos = -2 * facing * Const(size.xscale), -10 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = -80
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle 2-2]
type = Explod
trigger1 = !NumExplod(62232)
trigger1 = AnimElemTime(3) = 6
trigger1 = var(7) := 1
anim = 6223
ID = 62232
space = stage
pos = -2 * facing * Const(size.xscale), -10 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
vel = -1 * facing * Const(size.xscale), -6 * Const(size.yScale)
accel = 0 * facing * Const(size.xscale),1.2 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = -80
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle 3]
type = Explod
trigger1 = !NumExplod(62223)
trigger1 = AnimElemTime(4) = 0
anim = 6222
ID = 62223
space = stage
pos = 5 * facing * Const(size.xscale), 4 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = 135
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle 3-2]
type = Explod
trigger1 = !NumExplod(62233)
trigger1 = AnimElemTime(4) = 6
trigger1 = var(8) := 1
anim = 6223
ID = 62233
space = stage
pos = 5 * facing * Const(size.xscale), 4 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
vel = 2 * facing * Const(size.xscale), -7 * Const(size.yScale)
accel = 0 * facing * Const(size.xscale),1.2 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = 135
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Random var]
type = varset
trigger1 = !time
var(16) = Random%5 - 2

[State 1005, Needle 1-2]
type = ModifyExplod
trigger1 = NumExplod(62231)
trigger1 = var(6) = [1,24]
ID = 62231
angle = 30 + var(6)*var(16)

[State 1005, Random var]
type = varset
trigger1 = !time
var(17) = Random%5 - 2

[State 1005, Needle 2-2]
type = ModifyExplod
trigger1 = NumExplod(62232)
trigger1 = var(7) = [1,24]
ID = 62232
angle = -80 + var(6)*var(17)

[State 1005, Random var]
type = varset
trigger1 = !time
var(18) = Random%5 - 2

[State 1005, Needle 3-2]
type = ModifyExplod
trigger1 = NumExplod(62233)
trigger1 = var(8) = [1,24]
ID = 62233
angle = 135 + var(6)*var(18)

[State 1005, Needle 1-2]
type = ModifyExplod
trigger1 = NumExplod(62231)
trigger1 = var(6) = [21,24]
ID = 62231
Trans = add
Alpha = 256 - (64*(var(6)-20)),256

[State 1005, Needle 2-2]
type = ModifyExplod
trigger1 = NumExplod(62232)
trigger1 = var(7) = [21,24]
ID = 62232
Trans = add
Alpha = 256 - (64*(var(7)-20)),256

[State 1005, Needle 3-2]
type = ModifyExplod
trigger1 = NumExplod(62233)
trigger1 = var(8) = [21,24]
ID = 62233
Trans = add
Alpha = 256 - (64*(var(8)-20)),256

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !PrevStateNo
value = root,fvar(29)
ignorehitpause = 1

[State 1005, HitDef]
type = HitDef
triggerall = Anim = 1005
triggerall = HitCount < 3
triggerall = AnimElemTime(1)>=0 && AnimElemTime(5) < 0
trigger1 = AnimElemTime(1)%IFElse(var(10)=1,5,4) = 0
attr = A,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = Floor(IFElse(HitCount = 0,30,22) * IFElse(var(10)=1,1.4,1) * IFElse(var(10)=3,1.16,1) ),4
getPower = 50,10
givePower = 0,0
pauseTime = 4 + 3*var(10)=1,13
guard.pauseTime = 4 + 3*var(10)=1,13
animType = back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = (-4 ) * Const(size.xscale), (-17) * Const(size.yscale)
air.velocity = (-4 ) * Const(size.xscale), (-17) * Const(size.yscale)
guard.velocity = -38 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,24
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = -1 + 0 * (var(55) := Floor(P2Bodydist x)), -1 + 0 * (var(56) := 0)
envShake.time = 6 + 8*(var(10)>=2)
envShake.ampl = 12 + 6*(var(10)>=2)
envShake.freq = 100
envShake.phase = 90
p1sprpriority = 2
ID = StateNo

[State 1005, HitDef];EX
type = HitDef
triggerall = Anim = 1055
triggerall = HitCount < 5
triggerall = AnimElemTime(1)>=0 && AnimElemTime(5) < 0
trigger1 = AnimElemTime(1)%IFElse(var(10)=3,6,4) = 0
attr = A,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = Floor(IFElse(HitCount = 0,30,22) * IFElse(var(10)=1,1.4,1) * IFElse(var(10)=3,1.16,1) ),4
getPower = 50,10
givePower = 0,0
pauseTime = 7 + 6*var(10)=3,13
guard.pauseTime = 7 + 6*var(10)=3,13
animType = back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = (-4 ) * Const(size.xscale), (-17) * Const(size.yscale)
air.velocity = (-4 ) * Const(size.xscale), (-17) * Const(size.yscale)
guard.velocity = -38 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,24
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = -1 + 0 * (var(55) := Floor(P2Bodydist x)), -1 + 0 * (var(56) := 0)
envShake.time = 14
envShake.ampl = 18
envShake.freq = 90
envShake.phase = 90
p1sprpriority = 2
ID = StateNo


[State 1005, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimElemTime(5) > 0
MoveType = I

[State 1005, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State Update Parent ComboNo for Dampener]
type = ParentVarAdd
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(12) = 1
persistent = 0
ignorehitpause = 1

[State 1005, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Hit Sparks"
postype = P1
pos = var(55) * Const(Size.xScale) , var(56) * Const(Size.yScale)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1



[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5080
trigger1 = Target(StateNo),Time = 1
value = 1115080
ignorehitpause = 1

[State Extend For Target]
type = varset
triggerall = AnimTime = 0	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999

[State 1005, End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
recursive = 1


[State 1005, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | var(2)=%d | var(3)=%d | counter=%d"
params = var(10), var(2), var(3),var(6)
ignorehitpause = 1

[State 1005, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 0

[State 1005, Run Counter]
type = varadd
trigger1 = var(7) < 16777216
var(7) = 1
ignorehitpause = 0

[State 1005, Run Counter]
type = varadd
trigger1 = var(8) < 16777216
var(8) = 1
ignorehitpause = 0

[State 1005, Run Counter Target hit]
type = varadd
trigger1 = var(4) < 16777216
trigger1 = MoveContact
var(4) = 1
ignorehitpause = 1


;=================== Needle FX =====================
[Statedef 1007]
type = A
moveType = I
physics = N
sprpriority = 0
ctrl = 0
anim = 9741
velset = 0,0


[State 1007, FX-1]
type = Explod
trigger1 = !NumExplod(62251)
trigger1 = time = 0
trigger1 = var(6) := 1
anim = 6225
ID = 62251
space = stage
pos = -14 * facing * Const(size.xscale), 14 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 30
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6225,0

[State 1007, FX-2]
type = Explod
trigger1 = !NumExplod(62252)
trigger1 = time = 5
trigger1 = var(7) := 1
anim = 6225
ID = 62252
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 100
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 1007, FX-3]
type = Explod
trigger1 = !NumExplod(62253)
trigger1 = time = 10
trigger1 = var(8) := 1
anim = 6225
ID = 62253
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 140
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 1007, FX-4]
type = Explod
trigger1 = !NumExplod(62254)
trigger1 = time = 14
trigger1 = var(9) := 1
anim = 6225
ID = 62254
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = -80
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 1007, FX-5]
type = Explod
trigger1 = !NumExplod(62255)
trigger1 = time = 19
trigger1 = var(10) := 1
anim = 6225
ID = 62255
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 135
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 1007, FX-6]
type = Explod
trigger1 = !NumExplod(62256)
trigger1 = time = 9
trigger1 = var(11) := 1
anim = 6225
ID = 62256
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 30
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5


[State 1007, FX-1-Grow]
type = ModifyExplod
trigger1 = NumExplod(62251)
trigger1 = var(6) = [1,6]
ID = 62251
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(6) - 1)) * Const(size.yscale)

[State 1007, FX-2-Grow]
type = ModifyExplod
trigger1 = NumExplod(62252)
trigger1 = var(7) = [1,6]
ID = 62252
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(7) - 1)) * Const(size.yscale)

[State 1007, FX-3-Grow]
type = ModifyExplod
trigger1 = NumExplod(62253)
trigger1 = var(8) = [1,6]
ID = 62253
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(8) - 1)) * Const(size.yscale)

[State 1007, FX-4-Grow]
type = ModifyExplod
trigger1 = NumExplod(62254)
trigger1 = var(9) = [1,6]
ID = 62254
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(9) - 1)) * Const(size.yscale)

[State 1007, FX-5-Grow]
type = ModifyExplod
trigger1 = NumExplod(62255)
trigger1 = var(10) = [1,6]
ID = 62255
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(10) - 1)) * Const(size.yscale)

[State 1007, FX-6-Grow]
type = ModifyExplod
trigger1 = NumExplod(62256)
trigger1 = var(11) = [1,6]
ID = 62256
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(11) - 1)) * Const(size.yscale)



[State 1007, End]
type = DestroySelf
trigger1 = time > 60
trigger1 = !NumHelper(1005)
removeexplods = 1
recursive = 1


[State 1007, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | var(2)=%d | var(3)=%d | counter=%d"
params = var(10), var(2), var(3),var(6)
ignorehitpause = 1

[State 1007, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1

[State 1007, Run Counter]
type = varadd
trigger1 = var(7) < 16777216
var(7) = 1
ignorehitpause = 1

[State 1007, Run Counter]
type = varadd
trigger1 = var(8) < 16777216
var(8) = 1
ignorehitpause = 1

[State 1007, Run Counter]
type = varadd
trigger1 = var(9) < 16777216
var(9) = 1
ignorehitpause = 1

[State 1007, Run Counter]
type = varadd
trigger1 = var(10) < 16777216
var(10) = 1
ignorehitpause = 1

[State 1007, Run Counter]
type = varadd
trigger1 = var(11) < 16777216
var(11) = 1
ignorehitpause = 1



;=================== Needle Portail =====================
[Statedef 1010]
type = A
moveType = A
physics = N
sprpriority = 0
ctrl = 0
anim = 9741
velset = 0,0

[State 1010, Random Angle]
type = varset
trigger1 = !time
var(4) = Random%360

[State 1010, Phase 1]
type = varset
trigger1 = var(5) = 0
trigger1 = time = 4
trigger1 = var(6) := 1
var(5) = 1

[State 1010, Phase 2]
type = varset
triggerall = var(5) = 1
trigger1 = Root,MoveType != A
trigger2 = !(Root,StateNo = 1000 || Root,StateNo = 1050)
var(5) = 2

[State 1010, Portail Circle]
type = Explod
trigger1 = !NumExplod(6220)
trigger1 = time = 0
anim = 6220
ID = 6220
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 1.4 * Const(size.yscale)
angle = var(4)
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 1010, Portail Circle]
type = ModifyExplod
trigger1 = NumExplod(6220)
trigger1 = time = [0,3]
ID = 6220
scale = (0.35 + 0.35*time) * Const(size.xscale), (0.35 + 0.35*time) * Const(size.yscale)
angle = var(4) + time * 8

[State 1010, Portail Circle]
type = ModifyExplod
trigger1 = NumExplod(6220)
trigger1 = time > 3
ID = 6220
angle = var(4) + time * 8


[State 1010, Portail-Echo-Helper]
type = helper
trigger1 = var(5) = 1
trigger1 = var(6)%5 = 1
stateno = 1011
ID = 1011
name = "Portail-Echo-helper"
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

[State 1010, Enemy_Height]
type = varset
trigger1 = NumEnemy
fvar(20) = Enemynear,Pos y + (Enemynear,Const(Size.mid.pos.y)/2 * Enemynear,Const(Size.yScale) * Enemynear,StateType = C) + (Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale) * (Enemynear,StateType = A || Enemynear,StateType = S))

[State 1010, IF-EX]
type = PosSet
trigger1 = !NumHelper(1005)
trigger1 = !time && root,StateNo = 1050
x = Enemynear,Pos x
y = fvar(20)

[State 1010, Move_Default_Human]
type = velset
triggerall = root,AILevel = 0
triggerall = !NumHelper(1005)
trigger1 = NumEnemy
x = IFElse((Enemynear,Pos x - Pos x)*facing > 20,18,IFElse((Enemynear,Pos x - Pos x)*facing < -20,-18,0)) * Const(Size.xScale)
y = IFElse(Pos y >= 0 ,0,IFElse((fvar(20) - pos y) > 20,18,IFElse((fvar(20) - pos y) < -20,-18,0))) * Const(Size.yScale)

[State 1010, Move_Default_AI]
type = velset
triggerall = root,AILevel
triggerall = !NumHelper(1005)
trigger1 = NumEnemy
x = IFElse((Enemynear,Pos x - Pos x)*facing > 20,32,IFElse((Enemynear,Pos x - Pos x)*facing < -20,-32,0)) * Const(Size.xScale)
y = IFElse(Pos y >= 0 ,0,IFElse((fvar(20) - pos y) > 20,32,IFElse((fvar(20) - pos y) < -20,-32,0))) * Const(Size.yScale)


[State 1010, Move_Human]
type = velset
triggerall = root,AILevel = 0
triggerall = !NumHelper(1005)
trigger1 = root,Command = "holdfwd"
x = 32 * Const(Size.xScale)

[State 1010, Move_Human]
type = velset
triggerall = root,AILevel = 0
triggerall = !NumHelper(1005)
trigger1 = root,Command = "holdback"
x = -32 * Const(Size.xScale)

[State 1010, Move_Human]
type = velset
triggerall = root,AILevel = 0
triggerall = !NumHelper(1005)
trigger1 = root,Command = "holdup"
y = -32 * Const(Size.yScale)

[State 1010, Move_Human]
type = velset
triggerall = root,AILevel = 0
triggerall = !NumHelper(1005)
trigger1 = root,Command = "holddown"
trigger1 = Pos y < 0
y = 32 * Const(Size.yScale)

[State 1010, Fix Vel]
type = velset
triggerall = vel x || vel y
trigger1 = NumHelper(1005) || NumHelper(1055)
x = 0
y = 0


[State 1010, End]
type = DestroySelf
trigger1 = var(5) >= 2
removeexplods = 1
recursive = 0


[State 1010, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | fvar(20)=%d | vel y=%d | counter=%d"
params = var(5), fvar(20), vel y,var(6)
ignorehitpause = 1

[State 1010, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 0



;=================== Portail Echo =====================
[Statedef 1011]
type = A
moveType = I
physics = N
sprpriority = 0
ctrl = 0
anim = 9741
velset = 0,0

[State 1011, Echo Circle]
type = Explod
trigger1 = !NumExplod(6221)
trigger1 = time = 0
anim = 6221
ID = 6221
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.5 * Const(size.xscale), 1.5 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 128,256
;remappal = 7000,5

[State 1007, Portail Circle]
type = ModifyExplod
trigger1 = NumExplod(6221)
trigger1 = time = [0,10]
ID = 6221
scale = (1.5 + 0.05*time) * Const(size.xscale), (1.5 + 0.05*time) * Const(size.yscale)
trans = add
alpha = 128,256

[State 1007, Portail Circle]
type = ModifyExplod
trigger1 = NumExplod(6221)
trigger1 = time = [11,30]
ID = 6221
scale = (2 + 0.005*(time-10)) * Const(size.xscale), (2 + 0.005*(time-10)) * Const(size.yscale)
trans = add
alpha = 128 - 6*(time-10),256

[State 1011, End]
type = DestroySelf
trigger1 = time >= 30
removeexplods = 1
recursive = 1


[State 1011, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | var(2)=%d | var(3)=%d | counter=%d"
params = var(10), var(2), var(3),var(6)
ignorehitpause = 1

[State 1011, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 0








;------- Projtile Chair -----------------
[Statedef 2905]
type = A
moveType = A
physics = N
sprpriority = 2
ctrl = 0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = !(PrevStateNo = [5000,5039])
time = 1
value = SCA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1


[State 2905, Anim]
type = ChangeAnim
trigger1 = Anim != 6231
trigger1 = PrevStateNo != 5000 && !time
value = 6231

[State 2905, Roll_chair]
type = AngleDraw
trigger1 = time
value = 0 - 4*time


[State 2905, Init_Vel]
type = VelAdd
trigger1 = !(PrevStateNo = [5000,5039])
trigger1 = !time
x = Parent,Vel x
y = 34 * Const(Size.yScale)

[State 2905, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !PrevStateNo
value = root,fvar(29)
ignorehitpause = 1

[State 2905, HitDef]
type = HitDef
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 6231
attr = A,HP
hitFlag = MAF
guardFlag = H
priority = 8, Hit
damage = 300 ,35
getPower = 0,0
givePower = 0,0
pauseTime = 36,1
guard.pauseTime = 36,1
animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 32
ground.slideTime = 32
guard.hitTime = 32
air.hitTime = 32
ground.velocity = -8 * Const(size.xscale), -44 * Const(size.yscale)
air.velocity = -8 * Const(size.xscale), -44 * Const(size.yscale)
guard.velocity = -100 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
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
sparkXY = -1 + 0 * (var(55) := 0), -1 + 0 * (var(56) := Floor(10))
envShake.time = 34
envShake.ampl = -22
envShake.freq = 60
envShake.phase = 60
p1sprpriority = 1
ID = StateNo
NoChainID = StateNo

[State 2905, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = Anim = 6305
trigger1 = AnimElemTime(8) >= 0
MoveType = I

[State 2905, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State Update Parent ComboNo for Dampener]
type = ParentVarAdd
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(12) = 1
persistent = 0
ignorehitpause = 1

[State 2905, Hit Sparks]
type = helper
triggerAll = MoveContact && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Sparks"
postype = P1
pos = var(55), var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 2900, Hit Sparks Trump]
type = helper
triggerall = !NumHelper(7456)
triggerAll = MoveContact && NumTarget
trigger1 = Target,time = 0
stateno = 7456
ID = 7456
helpertype = normal
name = "Trump Hit Sparks 1"
postype = P1
pos = var(55), var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = 0 ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 2900, Hit Sparks Trump]
type = helper
triggerall = !NumHelper(7457)
triggerAll = MoveContact && NumTarget
trigger1 = Target,time = 0
stateno = 7457
ID = 7457
helpertype = normal
name = "Trump Hit Sparks 2"
postype = P1
pos = var(55), var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = 0 ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 2905, Zoom Helper]
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

[State 2905, HitPause]
type = Pause
triggerAll = MoveContact && NumTarget
trigger1 = Target,time = 0
time = 36
movetime = 36
pausebg = 1
endcmdbuftime = 12
ignorehitpause = 1

[State 2905, Ground Touch SND FX]
type = PlaySnd
trigger1 = MoveContact = 0 && time
trigger1 = Vel y >= 0 && Pos y >= -(88 * Const(Size.yScale))
trigger2 = MoveContact = 1
value = 5,2903
volumescale = 100
channel = 5
;abspan = 0
persistent = 0
ignorehitpause = 1

[State 2905, Ground Touch SND FX]
type = PlaySnd
trigger1 = MoveContact = 0 && time
trigger1 = Vel y >= 0 && Pos y >= -(88 * Const(Size.yScale))
trigger2 = MoveContact = 1
value = 5,2904
volumescale = 100
channel = 5
;abspan = 0
persistent = 0
ignorehitpause = 1

[State 2905, Ground Touch SND FX]
type = PlaySnd
trigger1 = MoveContact = 0 && time
trigger1 = Vel y >= 0 && Pos y >= -(88 * Const(Size.yScale))
trigger2 = MoveContact = 1
value = 5,2904
volumescale = 100
channel = 5
;abspan = 0
persistent = 0
ignorehitpause = 1

[State 2905, EnvShake Touch Down]
type = EnvShake
trigger1 = MoveContact = 0 && time
trigger1 = Vel y >= 0 && Pos y >= -(88 * Const(Size.yScale))
trigger2 = MoveGuarded = 1
time = 26
freq = 60
ampl = -22
phase = 60
persistent = 0
ignorehitpause = 1

[State 2905, Next]
type = ChangeState
trigger1 = time
trigger1 = Vel y >= 0 && Pos y >= -(88 * Const(Size.yScale))
value = 2906


[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5080
trigger1 = Target(StateNo),Time = 1
value = 1115080
ignorehitpause = 1

[State Extend For Target]
type = varset
triggerall = AnimTime = 0 	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999



[State 2905, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | var(2)=%d | V-Y=%d | counter=%d"
params = var(10), var(2), vel y,var(6)
ignorehitpause = 1

[State 2905, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;------- Chair Down
[Statedef 2906]
type = A
moveType = I
physics = N
sprpriority = 2
ctrl = 0


[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA,AA,AP,AT

[State 2906, Bounce up]
type = VelSet
trigger1 = !time
x = 6 * Const(Size.xScale)
y = -14 * Const(Size.yScale)

[State 2905, Roll_chair]
type = AngleDraw
trigger1 = !time
value = 0

[State 2906, Anim]
type = ChangeAnim
trigger1 = !time
value = 6232

[State 2906, Chair Wheel]
type = Explod
trigger1 = !NumExplod(6233)
anim = 6233
ID = 6233
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
vel = 10 * facing * Const(size.xscale), -14 * Const(size.yscale)
accel = 0 * facing * Const(size.xscale), 0.6 * Const(Size.yScale)
;supermovetime = 65535
;pausemovetime = 65535
angle = 0
sprpriority = 3
ownpal = 0
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 2906, Fade out Explod]
type = ModifyExplod
trigger1 = NumExplod(6233)
trigger1 = Abs(AnimTime) = [1,7]
ID = 6233
trans = add
alpha = (32 * Abs(AnimTime)), 256 - (32 * Abs(AnimTime))

[State 2906, Fade out main]
type = Trans
trigger1 = Abs(AnimTime) = [1,7]
trans = add
alpha = (32 * Abs(AnimTime)), 256 - (32 * Abs(AnimTime))

[State 2906, Gravity]
type = veladd
trigger1 = StateType = A
y = 0.6 * Const(Size.yScale)

[State 2906, End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
recursive = 1


[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5080
trigger1 = Target(StateNo),Time = 1
value = 1115080
ignorehitpause = 1

[State Extend For Target]
type = varset
triggerall = AnimTime = 0 	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999








;----- Super-01-3000 House helper 01 ----
[Statedef 3010]
type = S
physics = N
MoveType = I
sprpriority = 0
velset = 0,0
ctrl = 0
anim = 9741

[State 3010, Assist]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 3010, Posfix]
type = PosSet
trigger1 = !time
x = 0
y = 0

[State 3010, Zoom Helper]
type = helper
triggerall = !NumHelper(3016)
trigger1 = !time
stateno = 3016
ID = 3016
name = "House Zoom"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give ID to Child
ignorehitpause = 1

[State 3010, Sync]
type = varset
trigger1 = Parent,var(5) != var(5)
var(5) = Parent,var(5)
ignorehitpause = 1

[State 3010, Sync]
type = varset
trigger1 = Parent,var(6) != var(6)
var(6) = Parent,var(6)
ignorehitpause = 1

[State 3010, Hours_RUN]
type = velSet
trigger1 = var(5) = 2
trigger1 = var(6) = 2
x = -15 * Const(Size.xscale)

[State 3010, Hours_RUN]
type = velSet
trigger1 = var(5) = 3
trigger1 = var(6) = 2
x = 0


[State 3010, Black]
type = Explod
trigger1 = !NumExplod(7999)
trigger1 = !time && var(5) = 0
anim = 7999
ID = 7999
space = Screen
pos = Floor(ScreenWidth * 0.5),Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = 1
facing = facing
removetime = -1
;vel = -0.2 * facing , 0
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 200,200
angle = 0
sprpriority = -30
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 3010, Sky]
type = Explod
trigger1 = !NumExplod(6241)
trigger1 = !time && var(5) = 0
anim = 6241
ID = 6241
space = Screen
pos = Floor(ScreenWidth * IFElse(facing = 1,0.6,0.4)),Floor(ScreenHeight * 0.45)
;bindID = ID
;bindtime = 1
facing = facing
removetime = -1
vel = -0.2 * facing , 0
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3,3
angle = 0
sprpriority = -21
ownpal = 0
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 3010, House]
type = Explod
trigger1 = !NumExplod(6240)
trigger1 = !time && var(5) = 0
anim = 6240
ID = 6240
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -20
ownpal = 0
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 3010, Window 01]
type = Explod
trigger1 = !NumExplod(624401)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624401
space = stage
pos = Floor(-1*714 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 02]
type = Explod
trigger1 = !NumExplod(624402)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624402
space = stage
pos = Floor(-1*308 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 03]
type = Explod
trigger1 = !NumExplod(624403)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624403
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5


[State 3010, Window 04]
type = Explod
trigger1 = !NumExplod(624404)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624404
space = stage
pos = Floor(404 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 05]
type = Explod
trigger1 = !NumExplod(624405)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624405
space = stage
pos = Floor(712 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 06]
type = Explod
trigger1 = !NumExplod(624406)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624406
space = stage
pos = Floor(1116 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 07]
type = Explod
trigger1 = !NumExplod(624407)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624407
space = stage
pos = Floor(1422 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 08]
type = Explod
trigger1 = !NumExplod(624408)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624408
space = stage
pos = Floor(1828 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 09]
type = Explod
trigger1 = !NumExplod(624409)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624409
space = stage
pos = Floor(2135 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5

[State 3010, Window 10]
type = Explod
trigger1 = !NumExplod(624410)
trigger1 = !time && var(5) = 0
anim = 6244
ID = 624410
space = stage
pos = Floor(6244 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -19
ownpal = 0
trans = add
alpha = 192,256
;remappal = 7000,5


[State 3010, RemoveWindow]
type = RemoveExplod
trigger1 = NumExplod(624403)
trigger1 = Floor(ParentDist x) >= -64
ID = 624403

[State 3010, RemoveWindow]
type = RemoveExplod
trigger1 = NumExplod(624404)
trigger1 = Floor(ParentDist x) >= 534
ID = 624404

[State 3010, RemoveWindow]
type = RemoveExplod
trigger1 = NumExplod(624405)
trigger1 = Floor(ParentDist x) >= 894
ID = 624405

[State 3010, RemoveWindow]
type = RemoveExplod
trigger1 = NumExplod(624406)
trigger1 = Floor(ParentDist x) >= 1339
ID = 624406

[State 3010, RemoveWindow]
type = RemoveExplod
trigger1 = NumExplod(624407)
trigger1 = Floor(ParentDist x) >= 1681
ID = 624407

[State 3010, RemoveWindow]
type = RemoveExplod
trigger1 = NumExplod(624408)
trigger1 = Floor(ParentDist x) >= 2160
ID = 624408

[State 3010, Clear Pillar]
type = RemoveExplod
trigger1 = var(5) = 2
trigger1 = var(6) = 2
trigger2 = var(5) = 3
trigger2 = var(6) = 2
ID = 6242

[State 3010, Pillar 01]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
anim = 6242
ID = 6242
space = stage
pos = Floor(0 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 20
ownpal = 0
;remappal = 7000,5

[State 3010, Pillar 02]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
trigger3 = var(5) = 3 && var(6) = 2
anim = 6242
ID = 6242
space = stage
pos = Floor(IFElse(var(5)=3,(1*1200)-(8*120),1 * 1200) * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 20
ownpal = 0
;remappal = 7000,5

[State 3010, Pillar 03]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
trigger3 = var(5) = 3 && var(6) = 2
anim = 6242
ID = 6242
space = stage
pos = Floor(IFElse(var(5)=3,(2*1200)-(8*120),2 * 1200) * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 20
ownpal = 0
;remappal = 7000,5

;2640
[State 3010, Pillar 04]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
trigger3 = var(5) = 3 && var(6) = 2
anim = 6242
ID = 6242
space = stage
pos = Floor(IFElse(var(5)=3,(3*1200)-(8*120),3 * 1200) * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 20
ownpal = 0
;remappal = 7000,5

[State 3010, Clear Glasses]
type = RemoveExplod
trigger1 = var(5) = 2
trigger1 = var(6) = 2
trigger2 = var(5) = 3
trigger2 = var(6) = 2
ID = 624301

[State 3010, Clear Glasses]
type = RemoveExplod
trigger1 = var(5) = 2
trigger1 = var(6) = 2
trigger2 = var(5) = 3
trigger2 = var(6) = 2
ID = 624302

[State 3010, Clear Glasses]
type = RemoveExplod
trigger1 = var(5) = 2
trigger1 = var(6) = 2
trigger2 = var(5) = 3
trigger2 = var(6) = 2
ID = 624303

[State 3010, Clear Glasses]
type = RemoveExplod
trigger1 = var(5) = 2
trigger1 = var(6) = 2
trigger2 = var(5) = 3
trigger2 = var(6) = 2
ID = 624304


[State 3010, Glasses 01]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
anim = 6243
ID = 624301
space = stage
pos = Floor(0 * facing * Const(size.xscale)),Floor(-300 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 21
trans = add
alpha = 0,256
ownpal = 1
;remappal = 7000,5

[State 3010, Glasses 02]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
trigger3 = var(5) = 3 && var(6) = 2
anim = 6243
ID = 624302
space = stage
pos = Floor(IFElse(var(5)=3,(1*1200)-(8*120),1 * 1200) * facing * Const(size.xscale)),Floor(-300 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 21
trans = add
alpha = 0,256
ownpal = 1
;remappal = 7000,5

[State 3010, Glasses 03]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
trigger3 = var(5) = 3 && var(6) = 2
anim = 6243
ID = 624303
space = stage
pos = Floor(IFElse(var(5)=3,(2*1200)-(8*120),2 * 1200) * facing * Const(size.xscale)),Floor(-300 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 21
trans = add
alpha = 0,256
ownpal = 1
;remappal = 7000,5

;2640
[State 3010, Glasses 04]
type = Explod
trigger1 = !time && var(5) = 0
trigger2 = var(5) = 2 && var(6) = 2
trigger3 = var(5) = 3 && var(6) = 2
anim = 6243
ID = 624304
space = stage
pos = Floor(IFElse(var(5)=3,(3*1200)-(8*120),3 * 1200) * facing * Const(size.xscale)),Floor(-300 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 21
trans = add
alpha = 0,256
ownpal = 1
;remappal = 7000,5




;---- Display Piller Glasses ---
[State 3001, Snd-Tele]
type = PlaySnd
trigger1 = Floor(ParentDist x) = [209,211]
trigger2 = Floor(ParentDist x) = [1150,1152]
trigger3 = Floor(ParentDist x) = [2039,2041]
value = 2,18
volumescale = 100
channel = 2
abspan = 0

[State 3001, EnvShake-Tele]
type = EnvShake
trigger1 = Floor(ParentDist x) = [209,211]
trigger2 = Floor(ParentDist x) = [1150,1152]
trigger3 = Floor(ParentDist x) = [2039,2041]
time = 16
freq = 90
ampl = -16
phase = 60

[State 3010, Tele Explod]
type = Explod
trigger1 = Floor(ParentDist x) = [209,211]
trigger2 = Floor(ParentDist x) = [1150,1152]
trigger3 = Floor(ParentDist x) = [2039,2041]
anim = 6227
ID = 6227
space = stage
pos = Floor(IFElse(var(5)=3,((0 + (ParentDist x >= 1150) + (ParentDist x >= 2039))*1200)-(8*120),((0 + (ParentDist x >= 1150) + (ParentDist x >= 2039)) * 1200) - (8*(var(6)-2))) * facing * Const(size.xscale)),Floor(-270 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
vel = IFElse(var(5) = 2,-8 -15,0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 6 * Const(size.yscale)
angle = -70
sprpriority = 22
ownpal = 1
trans = default
remappal = 6225,0

[State 3010, Glasses 01-Enable]
type = ModifyExplod
trigger1 = NumExplod(624301)
trigger1 = Floor(ParentDist x) >= 209
ID = 624301
trans = add
alpha = 256,256

[State 3010, Glasses 01-Enable]
type = ModifyExplod
trigger1 = NumExplod(624302)
trigger1 = Floor(ParentDist x) >= 1150
ID = 624302
trans = add
alpha = 256,256

[State 3010, Glasses 01-Enable]
type = ModifyExplod
trigger1 = NumExplod(624303)
trigger1 = Floor(ParentDist x) >= 2039
ID = 624303
trans = add
alpha = 256,256


;------ Ending Shake ---------
[State 3001, Snd-House-Shake]
type = PlaySnd
trigger1 = var(5) = 3
trigger1 = var(6) = 2
value = 5,3011
volumescale = 100
channel = 5
abspan = 0

[State 3001, House-Shake]
type = EnvShake
triggerall = var(5) = 3
trigger1 = var(6) = 2
time = 80
freq = 40
ampl = 12
phase = 0


[State 3010, End]
type = DestroySelf
trigger1 = Parent,StateNo != 3001
trigger2 = Parent,MoveType = H
trigger3 = Parent,Ctrl = 1
trigger4 = var(5) = 4
trigger4 = var(6) > 40
removeexplods = 1
recursive = 1

[State Target,Clip board]
type = displaytoclipboard
trigger1 = 1
text = "STAGE=%d | Counter=%d | ParentDist=%d"
params = var(5), var(6), Floor(ParentDist x)
ignorehitpause = 1




;----- Super-01-3000 House helper 02 ----
[Statedef 3011]
type = S
physics = N
MoveType = A
sprpriority = 0
velset = 0,0
ctrl = 0
anim = 3011

[State 3011, Sync var(10)]
type = varset
trigger1 = !time
var(10) = Parent,Var(10)

[State 3011, Assist]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 3011, Posfix]
type = PosSet
trigger1 = !time
x = 0
y = 0

[State 3011, Zoom Helper]
type = helper
triggerall = !NumHelper(3016)
trigger1 = !time
stateno = 3016
ID = 3016
name = "House Zoom"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give ID to Child
ignorehitpause = 1

[State 3011, Sync]
type = varset
trigger1 = Parent,var(5) != var(5)
var(5) = Parent,var(5)
ignorehitpause = 1

[State 3011, Sync]
type = varset
trigger1 = Parent,var(6) != var(6)
var(6) = Parent,var(6)
ignorehitpause = 1

[State 3011, Black]
type = Explod
trigger1 = !NumExplod(7999)
trigger1 = !time && var(5) = 0
anim = 7999
ID = 7999
space = Screen
pos = Floor(ScreenWidth * 0.5),Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = 1
facing = facing
removetime = -1
;vel = -0.2 * facing , 0
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 200,200
angle = 0
sprpriority = -30
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5


[State 3011, House]
type = Explod
trigger1 = !NumExplod(6250)
trigger1 = !time && var(5) = 0
anim = 6250
ID = 6250
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = -20
ownpal = 0
;trans = add
;alpha = 256,0
;remappal = 7000,5

[State 3011, Pillar 01]
type = Explod
trigger1 = !time && var(5) = 0
trigger1 = Random%2
anim = 6242
ID = 6242
space = stage
pos = Floor(-400 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 20
ownpal = 0

[State 3011, Pillar 02]
type = Explod
trigger1 = !time && var(5) = 0
trigger1 = Random%2
anim = 6242
ID = 6242
space = stage
pos = Floor(400 * facing * Const(size.xscale)),Floor(0 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 20
ownpal = 0


;--- Base Rocks -----
[State 3011, Base Rock]
type = Explod
trigger1 = !time && var(5) = 0
anim = 6251
ID = 6251
space = stage
pos = Floor(-300 * facing * Const(size.xscale)),Floor(160 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale),3.2 * Const(size.yscale)
angle = 0
sprpriority = 21
ownpal = 0

[State 3011, Base Rock]
type = Explod
trigger1 = !time && var(5) = 0
anim = 6252
ID = 6252
space = stage
pos = Floor(360 * facing * Const(size.xscale)),Floor(180 * Const(size.yscale))
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale),3 * Const(size.yscale)
angle = 0
sprpriority = 21
ownpal = 0


[State 3011, Dust]
type = Explod
trigger1 = !time && var(5) = 0
anim = 7029
ID = 7029
space = stage
pos = Floor(-260 * facing * Const(size.xscale)),Floor(200 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale),4 * Const(size.yscale)
angle = 0
sprpriority = 25
ownpal = 0

[State 3011, Dust]
type = Explod
trigger1 = !time && var(5) = 0
anim = 7029
ID = 7029
space = stage
pos = Floor(320 * facing * Const(size.xscale)),Floor(200 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale),4 * Const(size.yscale)
angle = 0
sprpriority = 25
ownpal = 0

[State 3011, Dust Grow]
type = ModifyExplod
trigger1 = NumExplod(7029)
trigger1 = time
scale = (4 + 0.08*time) * Const(size.xscale),(4 + 0.08*time) * Const(size.yscale)
angle = Floor(0 + 0.1*time)
trans = add
alpha = 128,256
ID = 7029

;----------------- Rock Drop -----------------
[State 3011, Rock Drop Small]
type = Explod
trigger1 = var(5) = 0 && time < 104
trigger1 = time%12 = 0
anim = 6258
ID = 6258
space = stage
pos = Floor((Random*1.2 - 600) * facing * Const(size.xscale)),Floor(-700 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = 46
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
accel = 0 * facing * Const(size.xscale), 0.8 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = (1 + 0.1*(Random%2)) * Const(size.xscale), (1 + 0.1*(Random%2)) * Const(size.yscale)
angle = Random%360
sprpriority = 3
ownpal = 0

[State 3011, Rock Drop Small]
type = Explod
trigger1 = var(5) = 0 && time < 104
trigger1 = time%4 = 0
anim = 6257
ID = 6257
space = stage
pos = Floor((Random*1.2 - 600) * facing * Const(size.xscale)),Floor(-700 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = 46
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
accel = 0 * facing * Const(size.xscale), 0.8 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = (0.2 + 0.1*(Random%3)) * Const(size.xscale), (0.2 + 0.1*(Random%3)) * Const(size.yscale)
angle = Random%360
sprpriority = 3
ownpal = 0

[State 3011, Rock Drop Middle]
type = Explod
trigger1 = var(5) = 0 && time < 104
trigger1 = time%12 = 0
anim = 6257
ID = 6257
space = stage
pos = Floor((Random - 500) * facing * Const(size.xscale)),Floor(-760 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = 46
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
accel = 0 * facing * Const(size.xscale), 0.8 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = (1 + 0.2*(Random%2)) * Const(size.xscale), (1 + 0.2*(Random%2)) * Const(size.yscale)
angle = Random%360
sprpriority = 4
ownpal = 0


;--------- Final rock
[State 3011, Rock 1 remove]
type = RemoveExplod
triggerall = var(5) = 0
trigger1 = time = 104
ID = 625201

[State 3011, Rock Drop Large in]
type = Explod
triggerall = var(5) = 0
trigger1 = time = 60
trigger2 = time = 104
anim = 6252
ID = 625201
space = stage
pos = Floor(-60 * facing * Const(size.xscale)),Floor(IFElse(time > 60,-60,-1000) * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
;vel = 0 * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
accel = 0 * facing * Const(size.xscale), IFElse(time > 60,0,1) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 6 * Const(size.yscale)
angle = 0
sprpriority = 24
ownpal = 0

[State 3011, Rock Drop Large out]
type = Explod
triggerall = var(5) = 0
trigger1 = time = 60
trigger2 = time = 104
anim = 6252
ID = 625201
space = stage
pos = Floor(180 * facing * Const(size.xscale)),Floor(IFElse(time > 60,20,-600) * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -1
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
accel = 0 * facing * Const(size.xscale), IFElse(time > 60,0,0.7) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3.4 * Const(size.xscale), 4.2 * Const(size.yscale)
angle = 0
sprpriority = 26
ownpal = 0

;--------- Dust waves
[State 3011, Dust Waves]
type = Explod
triggerall = var(5) = 0
trigger1 = time = 104
anim = 7523
ID = 7523
space = stage
pos = Floor(-100 * facing * Const(size.xscale)),Floor(80 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale), IFElse(time > 60,0,0.7) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 5 * Const(size.xscale), 5 * Const(size.yscale)
angle = 0
sprpriority = 30
trans = add
alpha = 256,0
ownpal = 1

[State 3011, Dust Waves]
type = Explod
triggerall = var(5) = 0
trigger1 = time = 104
anim = 7523
ID = 7523
space = stage
pos = Floor(100 * facing * Const(size.xscale)),Floor(80 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale), IFElse(time > 60,0,0.7) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 5 * Const(size.xscale), 5 * Const(size.yscale)
angle = 0
sprpriority = 30
trans = add
alpha = 256,0
ownpal = 1

[State 3011, Dust wave grow]
type = ModifyExplod
triggerall = NumExplod(7523)
triggerall = var(5) = 0
trigger1 = time = [104,110]
ID = 7523
scale = 5 * Const(size.xscale), (2 + 0.65*(time-104)) * Const(size.yscale)
trans = add
alpha = 256,0

[State 3011, Dust Waves]
type = Explod
triggerall = var(5) = 0
trigger1 = time = 106
anim = 7524
ID = 7524
space = stage
pos = Floor(0 * facing * Const(size.xscale)),Floor(80 * Const(size.yscale))
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = IFElse(var(5) = 2,(-8 - 15),0) * facing * Const(Size.xScale) , 0 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale), IFElse(time > 60,0,0.7) * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 6 * Const(size.xscale), 6 * Const(size.yscale)
angle = 0
sprpriority = 28
trans = add
alpha = 192,64
ownpal = 1

[State 3011, Dust wave grow]
type = ModifyExplod
triggerall = NumExplod(7524)
triggerall = var(5) = 0
trigger1 = time = [106,156]
ID = 7524
scale = 6 * Const(size.xscale), (6 + 0.12*(time-106)) * Const(size.yscale)
trans = add
alpha = 192,64

;----- ATK ---------
[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !PrevStateNo
value = root,fvar(29)
ignorehitpause = 1

[State 3011, HitDef]
type = HitDef
trigger1 = time >= 38 && time < 89
trigger1 = time%8 = 0
attr = A,HP
hitFlag = MAFD
guardFlag = 
priority = 5, Hit
damage = Ceil(20 * (1+0.25*var(10))) ,3
getPower = 0,0
givePower = 0,0
pauseTime = 0,6
guard.pauseTime = 0,6
animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 46
ground.slideTime = 46
guard.hitTime = 46
air.hitTime = 46
ground.velocity = 0 * Const(size.xscale), IFElse(P2StateType = L,0,20)  * Const(size.yscale)
air.velocity = 0 * Const(size.xscale), IFElse(P2StateType = L,0,20) * Const(size.yscale)
guard.velocity = 0 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
kill = 0
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 46
forceStand = 0
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = -1 + 0 * (var(55) := Floor(P2Dist x + (Random%120 - 60))), -1 + 0 * (var(56) := Floor(P2Dist y + Const(Size.mid.pos.y)/2))
P2StateNo = 1113003
ID = StateNo

[State 3011, HitDef]
type = HitDef
trigger1 = time = 104
attr = A,HP
hitFlag = MAFD
guardFlag = 
priority = 5, Hit
damage = Ceil(211 * (1+0.25*var(10))),10
getPower = 0,0
givePower = 0,0
pauseTime = 0,50
guard.pauseTime = 0,50
animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 50
ground.slideTime = 50
guard.hitTime = 50
air.hitTime = 50
ground.velocity = 0 * Const(size.xscale), 0 * Const(size.yscale)
air.velocity = 0 * Const(size.xscale), 0 * Const(size.yscale)
guard.velocity = -10 * Const(size.xscale)
ground.cornerpush.veloff = -10 * Const(size.xscale)
yAccel = 1 * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 100
fall.yvelocity = -22 * Const(Size.yScale)
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = -1 + 0 * (var(55) := Floor(P2Dist x)), -1 + 0 * (var(56) := Floor(P2Dist y + Const(Size.mid.pos.y)/2))
P2StateNo = 1113003
ID = 104

[State 3001, TargetDown]
type = TargetState
trigger1 = NumTarget(104)
trigger1 = Target(104),StateNo != 1113003
trigger1 = Target(104),time > 1
value = 1113003


[State 3011, No ATK]
type = StateTypeSet
trigger1 = time > 104
MoveType = I

[State 3011, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1


[State 3011, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Hit Sparks"
postype = P1
pos = var(55) * Const(Size.xScale) , var(56) * Const(Size.yScale)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1



;------ Ending Shake ---------

[State 3011, Snd-House-Shake]
type = PlaySnd
trigger1 = time = 104
value = 5,3013
volumescale = 100
abspan = 0

[State 3011, Snd-House-Shake]
type = PlaySnd
trigger1 = time = 104
value = 5,3013
volumescale = 100
abspan = 0

[State 3011, House-Shake]
type = EnvShake
trigger1 = time < 104
trigger1 = time%5 = 0
time = 20
freq = 72
ampl = 10 + Random%11
phase = 0

[State 3011, House-Shake-Final]
type = EnvShake
trigger1 = time >= 104 && time < 230
trigger1 = (time - 104)%10 = 0
time = 60
freq = 36
ampl = Floor(-60 + 0.5*(time - 104))
phase = 60


[State 3011, End]
type = DestroySelf
trigger1 = Parent,StateNo != [3000,4999]
trigger2 = Parent,MoveType = H
trigger3 = Parent,Ctrl = 1
trigger4 = time > 260
removeexplods = 1
recursive = 1

[State Target,Clip board]
type = displaytoclipboard
trigger1 = 1
text = "STAGE=%d | Counter=%d | ParentDist=%d"
params = var(5), var(6), Floor(ParentDist x)
ignorehitpause = 1







;-- House Zoom Helper ---
[Statedef 3016]
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
[State 3016, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0
ignoreHitPause = 1

;---- Uncommint compensation to allow AbsZoom ----
[State 3016, compensation zoom var]
type = varset
trigger1 = !time
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1 / CameraZoom) - 1

[State 3016, compensation zoom var]
type = varset
trigger1 = !time
trigger1 = CameraZoom >= 1
fvar(21) = 0
;---- Uncommint compensation to allow Abszoom ----

;--------------- Parameters -------------
[State 7660, set target zoom level]
type = varset
trigger1 = !time
fvar(13) = fvar(21) + 0.02



[State 7660, ShakeTime]
type = varset
trigger1 = time = 0
var(11) = 120

[State 7660, Shake-Amplitude]
type = varset
trigger1 = time = 0
fvar(12) = 16 * Const(Size.xScale)

[State 7660, Shake-Fequency Hz]
type = varset
trigger1 = time = 0
var(13) = 6

[State 7660, Shake-Phase]
type = varset
trigger1 = time = 0
var(14) = 0




;------------- Camera Phase control var(5) ---------
[State 3016, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = !var(40); Parent or Target not existed
trigger1 = var(6) := 1
var(5) = -1


;--------------- Pos Move and Binds ---------------
[State 3016, Init Pos]; alway zoom from camera pos to view it smoothly.
type = posset
trigger1 = !time
x = 0
y = CameraPos y

;Apply Shake
[State 7666, Shake]
type = posset
trigger1 = Parent,StateNo = 3010
trigger1 = Parent,var(5) = [3,4]
trigger1 = Parent,Var(6) > 2
x = Floor( var(10) + ( sin((var(14) + (var(6) * var(13) * (360/60))) * (Pi/180)) ) * fvar(12) )

;----------------- Compute zoom factor fvar(22) ---------------------
[State 3016, Zoom in]; and - counter var(11)
type = VarSet
trigger1 = var(5) >= 0
fvar(22) = 1 + fvar(13)
ignorehitpause = 1


;---------------- Apply Zoom -------
[State 3016, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 3016, end]
type = destroyself
trigger1 = var(5) = -1

[State 3016, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 3016, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(14)=%d, var(11)=%d"  
params = var(5),var(6),var(14),var(11)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 3016, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 3016, Counter var7 add 1]
type = varadd
trigger1 = var(7) < 16777215
var(7) = 1









;-- ATK Agent for 3100 Super Steel Phalanx --- 
[Statedef 3105]
type = A
moveType = A
physics = N
sprpriority = 2
ctrl = 0

[State 1005, Enemy_Height]
type = varset
trigger1 = 1
trigger1 = NumEnemy
fvar(20) = Enemynear,Pos y + (Enemynear,Const(Size.mid.pos.y)/2 * Enemynear,Const(Size.yScale) * Enemynear,StateType = C) + (Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale) * (Enemynear,StateType = A || Enemynear,StateType = S))

[State 1005, Fix pos]
type = PosSet
trigger1 = 1
x = Enemynear,Pos x
y = fvar(20)

[State 3105, Power UP times]
type = varset
trigger1 = !time
var(10) = Parent,var(10)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1


[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1

[State 3105, Anim]
type = ChangeAnim
trigger1 = Anim != 3105
trigger1 = PrevStateNo != 5000 && !time
value = 3105

[State 3105, SND-FX]
type = PlaySnd
triggerall = Anim = 3105
trigger1 = AnimElemTime(2) < 0
trigger1 = AnimElemTime(1)%4 = 0
value = 2,18
volumescale = 100
channel = 2
;abspan = 0

[State 3105, Teleporting darts]
type = helper
triggerall = Anim = 3105
trigger1 = AnimElemTime(2) < 0
trigger1 = AnimElemTime(1)%4 = 0
helpertype = normal
stateno = 16225
ID = 16225
name = "Remote Teleporting Darts"
postype = P1
pos = (Random%101 - 50) * Const(Size.xScale), (Random%101 - 50) * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State UnGrardable]
type = varset
trigger1 = !(PrevStateNo = [5000,5039])
trigger1 = !time
var(17) = Parent,var(17)

[State Assert: UnGuardable]
type = AssertSpecial
triggerall = RoundState = 2
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
trigger2 = StateNo = [200,4999]
trigger2 = MoveType = A
trigger2 = Enemynear,P2Dist x < 0
flag = UnGuardable
ignoreHitPause = 1

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !PrevStateNo
value = root,fvar(29)
ignorehitpause = 1

[State 3105, HitDef]
type = HitDef
triggerall = Anim = 3105
trigger1 = AnimElemTime(2) < 0
trigger1 = AnimElemTime(1)%4 = 0
attr = A,HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = Ceil(8 * (1+0.25*var(10))) ,3
getPower = 0,0
givePower = 0,0
pauseTime = 0,32
guard.pauseTime = 0,32
animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 32
ground.slideTime = 32
guard.hitTime = 32
air.hitTime = 32
ground.velocity = -6 * Const(size.xscale), IFElse(AnimElemTime(1)>71,-12,0) * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), IFElse(AnimElemTime(1)>71,-12,0) * Const(size.yscale)
guard.velocity = -30 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = 0.4 * Const(Size.yScale)
fall = IFElse(AnimElemTime(1)>71,1,0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,23
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = -1 + 0 * (var(55) := Floor((Random%101 - 50))), -1 + 0 * (var(56) := Floor((Random%101 - 50)))
;envShake.time = 12
;envShake.ampl = 9
;envShake.freq = 90
p1sprpriority = 0
ID = IFElse(AnimElemTime(1)>71,StateNo,1005)
Fall.Envshake.Ampl= Parent,ID * 2

[State 3105, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimTime = 0
MoveType = I

[State 3105, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State Update Parent ComboNo for Dampener]
type = ParentVarAdd
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(12) = 1
persistent = 0
ignorehitpause = 1

[State 3105, Hit Sparks]
type = helper
triggerAll = MoveContact && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Sparks"
postype = P1
pos = var(55) * Const(size.xscale), var(56) * Const(size.yscale)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 3105, Target State]
type = TargetState
trigger1 = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = 5030
ID = StateNo
value = 1113105
ignorehitpause = 1

[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target,IsHelper = 0
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5080
trigger1 = Target(StateNo),Time = 1
value = 1115080
ignorehitpause = 1

[State Extend For Target]
type = varset
triggerall = AnimTime = 0 	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999



[State 3105, End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
recursive = 1

[State 3105, End]
type = DestroySelf
trigger1 = !(Parent,StateNo = [3100,3109])
trigger2 = Parent,MoveType = H
removeexplods = 1
recursive = 1

[State 3105, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | UnGuardable=%d | counter=%d"
params = var(10), var(17), var(6)
ignorehitpause = 1

[State 3105, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;---- Target Fly ---
[Statedef 1113105]
type = A
physics = N
movetype = H
ctrl = 0
sprpriority = 0

[State 1113105,Vel]
type = velset
triggerall = PlayerIDExist(GetHitvar(Fall.Envshake.Ampl) / 2)
trigger1 = !time
x = -6 * PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Const(size.xscale)
y = -12 * PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Const(size.yscale)

[State 1113105,Anim]
type = ChangeAnim2
trigger1 = !time
value = 5750

[State 1113105,Gravity]
type = veladd
trigger1 = StateType = A
y = 0.4 * PlayerID(GetHitvar(Fall.Envshake.Ampl) / 2),Const(size.yscale)

[State 1113105, Land]
type = SelfState
trigger1 = StateType = A
trigger1 = vel y > -(Pos y)
value = 5100








;- for 3100 --- Local Teleporting darts on Kuroko hands
[Statedef 6225]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0

[State 6225, Belt]
type = Explod
trigger1 = time = 0
anim = 6225
ID = 6225
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 4
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 7000,5
ignorehitpause = 0

[State 6225, Belt]
type = ModifyExplod
triggerall = NumExplod(6225)
trigger1 = time = [0,1]
ID = 6225
scale = (1.4 + 1.4*time) * Const(size.xscale), (0.3) * Const(size.yscale)
angle = 0
trans = add
alpha = 256,256
ignorehitpause = 0

[State 6225, Belt]
type = ModifyExplod
triggerall = NumExplod(6225)
trigger1 = time = [2,3]
ID = 6225
scale = (4.2 + 0.6*(time-2)) * Const(size.xscale), (0.26 - 0.13*(time-2)) * Const(size.yscale)
angle = 0
trans = add
alpha = 256 - (128*(time-2)),256
ignorehitpause = 0

[State 6225, End]
type = DestroySelf
trigger1 = time >= 4
removeexplods = 1
recursive = 1







;-for 3100 --- Local Teleporting darts on Kuroko hands
[Statedef 16225]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0

[State 16225, INIT Angle]
type = varset
trigger1 = !time
var(10) = Random%360

[State 16225, INIT Angle rate]
type = varset
trigger1 = !time
var(11) = Random%5 - 2

[State 16225, FX]
type = Explod
trigger1 = !NumExplod(6225)
trigger1 = time = 0
trigger1 = var(6) := 1
anim = 6225
ID = 6225
space = stage
pos = -14 * facing * Const(size.xscale), 14 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 10
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = var(10)
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 7000,5

[State 16225, FX-1-Grow]
type = ModifyExplod
trigger1 = NumExplod(6225)
trigger1 = var(6) = [1,2]
ID = 6225
scale = 4 * Const(size.xscale), (0.4 - 0.07*(var(6) - 1)) * Const(size.yscale)
trans = add
alpha = 256,256
ignorehitpause = 1

[State 16225, FX-1-Grow]
type = ModifyExplod
trigger1 = NumExplod(6225)
trigger1 = var(6) = [3,5]
ID = 6225
scale = (6 + 1*(var(6)-3)) * Const(size.xscale), (0.8) * Const(size.yscale)
trans = add
alpha = 256,256
ignorehitpause = 1

[State 16225, FX-1-Grow]
type = ModifyExplod
trigger1 = NumExplod(6225)
trigger1 = var(6) = [6,10]
ID = 6225
scale = 8 * Const(size.xscale), (0.8 - 0.15*(var(6)-5)) * Const(size.yscale)
trans = add
alpha = 256,256
ignorehitpause = 1

[State 1005, Needle 1]
type = Explod
trigger1 = !NumExplod(6222)
trigger1 = var(6) = 6
anim = 6222
ID = 6222
space = stage
pos = -14 * facing * Const(size.xscale), 14 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 6
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = var(10)
sprpriority = 1
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle 1-2]
type = Explod
trigger1 = !NumExplod(6223)
trigger1 = var(6) = 12
anim = 6223
ID = 6223
space = stage
pos = -14 * facing * Const(size.xscale), 14 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 24
vel = (Random%9 - 4) * facing * Const(size.xscale), -8 * Const(size.yScale)
accel = 0 * facing * Const(size.xscale),1.2 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.4 * Const(size.xscale), 0.8 * Const(size.yscale)
angle = var(10)
sprpriority = 1
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 7000,5
ignorehitpause = 0
persistent = 0

[State 1005, Needle Angle]
type = ModifyExplod
trigger1 = NumExplod(6223)
trigger1 = var(6) = [13,36]
ID = 6223
angle = var(10) + var(11) * 4 * (var(6) - 13)

[State 1005, Needle Fadeout]
type = ModifyExplod
trigger1 = NumExplod(6223)
trigger1 = var(6) = [33,36]
ID = 6223
Trans = add
Alpha = 256 - (64*(var(6)-32)),256


[State 16225, End]
type = DestroySelf
trigger1 = time >= 36
removeexplods = 1
recursive = 1

[State 16225, Counter]
type = varadd
trigger1 = 1
var(6) = 1
ignorehitpause = 1












;======= Character Personal Potential Watch Dog ============
[Statedef 20900]
type = A
physics = N
anim = 9741
ctrl = 0

;--------------- Pos fix -----------------------
[State 20900,pos fix]
type = posset
trigger1 = !time
x = Floor(-(GameWidth / 3.42) * facing);		GameWidth will change with stagezoom
y = -Floor(GameHeight*0.45 - 50 * Const(size.proj.doscale))

[State 20900, copy Parent var19]
type = varset
trigger1 = var(19) != Parent,var(19)
var(19) = Parent,var(19)

[State 20900, copy Parent var21]
type = varset
trigger1 = var(21) != Parent,var(21)
var(21) = Parent,var(21)

;--------------- Vars --------------------------
;#var(5)  Phase of this helper
;#var(6)  Counter
;#var(7)  Counter
;var(13) Double Jump var
;var(19) same as parent DBFCI var
;var(21) same as parent DBFCI var

;fvar(1) P1 X
;fvar(2) P2 X
;fvar(3) Y

;var(20) Personal Potential Flag
;var(11) Action required counter
;----------- END Vars ------------------------


[State 20900, Record Action]
type = varadd
triggerall = !(Parent,var(21) & 8)
triggerall = Parent,MoveType = A
triggerall = Parent,StateNo = 1000 || Parent,StateNo = 1050
triggerall = NumHelper(1005)
trigger1 = Helper(1005),MoveContact
trigger1 = Helper(1005),var(4) = 1
var(11) = 1


[State 20900, INFO Blast Box 20400]
type = varset
triggerall = var(11) >= 3
triggerall = !(Parent,var(21) & 8)
trigger1 = !var(20)
var(20) = 1

[State 20900, Clear flag after Parent set flag]
type = varset
triggerall = var(20)
trigger1 = (Parent,var(21) & 8)
var(20) = 0

[State 20900, Clear Counter after Parent set flag]
type = varset
triggerall = var(11) >= 3
trigger1 = (Parent,var(21) & 8)
var(11) = 0

[State 20900, End]
type = DestroySelf
trigger1 = RoundState != [2,3]
removeexplods = 1
recursive = 1

[State 20900, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | var(20)=%d | var(11)=%d"
params = var(5), var(6), var(20),var(11)
ignorehitpause = 1

[State 20900, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1