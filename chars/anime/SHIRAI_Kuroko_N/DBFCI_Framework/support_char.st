;=========== Touma Move - 01 ===============
[Statedef 30160]
type = S
movetype= A
physics = S
sprpriority = 2
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = Anim = 30160
trigger1 = AnimElemTime(1) < 4
value = SCA,AA,AP,AT
time = 1

[State HitOverRide]; Hurt
type = HitOverride
triggerall = var(6) >= 4
trigger1 = Anim = 30160
trigger2 = Anim = [30170,30171]
trigger2 = AnimElemTime(15) >= 0
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State HitOverRide]; Hit
type = HitOverride
trigger1 = Anim = [30170,30171]
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(15) < 0
trigger2 = Anim = 30160
trigger2 = AnimElemTime(1) >= 4
attr = SCA,AA,AP,AT
stateno = 30162
slot = 6
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30160, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
y = 0


[State 30160, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30160

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 4

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State 30160,fade in]
type = trans
trigger1 = Anim = 30160
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30160,fade in speed]
type = velset
trigger1 = Anim = 30160
x = 30 * Const(size.xscale)

[State 30160, SND Voice start]
type = PlaySnd
triggerall = Anim = 30160
trigger1 = AnimElemTime(1) = 5
value = 30000 + var(31)*100, 203
volumescale = 100
channel = 0
;abspan = 0

[State 30160,action]
type = ChangeAnim
trigger1 = Anim = 30160 && AnimTime = 0
value = IFElse(facing = 1,30171,30170)

[State 30160,Sliding]
type = velset
trigger1 = Anim = [30170,30171]
trigger1 = AnimElemTime(14) < 0
x = -0.5 * Const(Size.xScale)

[State 30160,action stop]
type = ChangeState
trigger1 = (Anim = [30170,30171]) && AnimTime = 0
trigger2 = Anim != (30170,20171)
trigger2 = PrevStateNo = 30160 && !time
value = 30169

[State 30160, Explod WhiteBall]
type = Explod
triggerall = !NumExplod(30110)
trigger1 = (Anim = [30170,30171]) 
trigger1 = AnimElemTime(1) = 0
anim = 30110
ID = 30110
space = stage
pos = 100 * facing * Const(size.xscale), -300 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30160, Explod Wind]
type = Explod
triggerall = !NumExplod(7520)
trigger1 = (Anim = [30170,30171]) 
trigger1 = AnimElemTime(1) = 0
anim = 7520
ID = 7520
space = stage
pos = 90 * facing * Const(size.xscale), -300 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = -facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale),0.5 * Const(size.yscale)
angle = 45
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30160, Clear Explods]
type = RemoveExplod
trigger1 = (Anim = [30170,30171]) 
trigger1 = AnimElemTime(15) >= 0

[State 30160, ReversalDef]
type = ReversalDef
triggerall = !(MoveContact || MoveReversed)
trigger1 = (Anim = [30170,30171])
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(15) < 0
reversal.attr = SCA,AA,AP,AT
pausetime = 0,0
sparkno = -1
;hitsound = S2,30
p1stateno = 30162
p2stateno = 30168
ID = 30168
Fall.Envshake.Ampl = ID * 2;ID x 2

[State 30160, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;------------- IF Hit Touma ----------
[Statedef 30162]
type = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
time = 1
value = SCA,AA,AP,AT

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = Anim = [30170,30171]
trigger1 = AnimElemTime(15) >= 0
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State HitOverRide]; Hit
type = HitOverride
trigger1 = Anim = [30170,30171]
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(15) < 0
attr = SCA,AA,AP,AT
stateno = 30162
slot = 6
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30162,action]
type = ChangeAnim
trigger1 = !time
value = IFElse(facing = 1,30171,30170)

[State 30162, SND Voice start]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 30000 + var(31)*100, 204 + Random%2
volumescale = 100
channel = 0
;abspan = 0


[State 30162, Explod WhiteBall]
type = Explod
triggerall = !NumExplod(30110)
trigger1 = (Anim = [30170,30171]) 
trigger1 = AnimElemTime(1) = 0
anim = 30110
ID = 30110
space = stage
pos = 100 * facing * Const(size.xscale), -300 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30162, Explod Wind]
type = Explod
triggerall = !NumExplod(7520)
trigger1 = (Anim = [30170,30171]) 
trigger1 = AnimElemTime(1) = 0
anim = 7520
ID = 7520
space = stage
pos = 90 * facing * Const(size.xscale), -300 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = -facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.5 * Const(size.xscale),0.5 * Const(size.yscale)
angle = 45
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30162, Clear Explods]
type = RemoveExplod
trigger1 = (Anim = [30170,30171]) 
trigger1 = AnimElemTime(15) >= 0



[State 30162, ReversalDef]
type = ReversalDef
triggerall = !(MoveContact || MoveReversed)
trigger1 = (Anim = [30170,30171])
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(15) < 0
reversal.attr = SCA,AA,AP,AT
pausetime = 0,0
sparkno = -1
;hitsound = S2,30
p1stateno = 30162
p2stateno = 30168
ID = 30168
Fall.Envshake.Ampl = ID * 2;ID x 2

[State 30162, Helper Imagine Breaker Attack]
type = helper
triggerall = !NumHelper(30165)
trigger1 = time = 0
helpertype = normal
stateno = 30165
ID = 30165
name = "Imagine Breaker Attack"
postype = P1
pos = 90 * Const(Size.xScale), -300 * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1


[State 30162,action stop]
type = ChangeState
trigger1 = (Anim = [30170,30171]) && AnimTime = 0
value = 30169

;------------- Fade away -------------
[Statedef 30169]
type = A
movetype= U
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 30169, Clear Explods]
type = RemoveExplod
trigger1 = !time

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30169, SND Voice hurt]
type = PlaySnd
triggerall = MoveType = H
trigger1 = !time
value = 30000 + var(31)*100, IFElse(Random < 500,5004,5000 + Random%5)
volumescale = 100
channel = 0
;abspan = 0

[State 30169,action stop]
type = ChangeAnim
trigger1 = !time
value = 30168

[State 30169, Leave Statge]
type = velset
trigger1 = Anim = 30168
x = -24 * Const(Size.xScale)
y = -6 * Const(Size.yScale)

[State 30169,fade out]
type = trans
trigger1 = Anim = 30168
trigger1 = AnimElemtime(1) = [4,16]
trans = add
alpha = 256 - 20*(AnimElemTime(1)-4) ,10 + 20*(AnimElemTime(1)-4)


[State 30169,End]
type = DestroySelf
trigger1 = Anim = 30168 && AnimTime = 0
removeexplods = 1
recursive = 1

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
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
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1



;---------- IF Hit Target -------------------
[Statedef 30168]
type = U
movetype= H
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0

;--------- Character -------------
[State 30168,action freeze]
type = ChangeAnim
triggerall = !IsHelper
trigger1 = time = [0,40]
value = Anim
Elem = AnimElemNo(0)

[State 30168, Kill Cheater]
type = Lifeadd
triggerall = !IsHelper
trigger1 = time > 40
value = -Ceil(LifeMax * 0.3)
persistent = 0

[State 30168, Self]
type = SelfState
triggerall = !IsHelper
trigger1 = time > 40
value = 5030



;--------- Helper -----------
[State 30168, NotHitby]
type = NotHitBy
triggerall  = IsHelper
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 30168, Destory]
type = DestroySelf
triggerall = IsHelper
trigger1 = !AnimTime
trigger2 = time > 60
removeexplods = 1
recursive = 1


;------------- Touma Imagine Breaker Attack Projetile----------
[Statedef 30165]
type = A
movetype= A
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 30165, AtackBox Anim]
type = ChangeAnim
trigger1 = !PrevStateNo && !time
value = 30165
elem = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
time = 1
value = SCA, AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30165, SND FX Imagine Breaker]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 2,30
volumescale = 100
channel = 2
;abspan = 0

[State 30165, SND FX hit]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 2,12
volumescale = 100
channel = 1
;abspan = 0

[State 30165, EnvShake]
type = EnvShake
trigger1 = !time
time = 20
freq = 80
ampl = 18
phase = 90
ignorehitpause = 1

[State 30165, Explod Imagine Breaker Core]
type = Explod
trigger1 = !NumExplod(30111)
trigger1 = Anim = 30165
trigger1 = AnimElemTime(1) = 0
anim = 30111
ID = 30111
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 4 * Const(size.yscale)
angle = 60
sprpriority = 3
ownpal = 1
;remappal = 7000,5
ignorehitpause = 0

[State 30165, Explod Imagine Breaker blast grow]
type = ModifyExplod
trigger1 = NumExplod(30111)
trigger1 = var(6) = [4,9]
ID = 30111
scale = (4 - 0.78*(var(6)-3)) * Const(size.xscale), (4 - 0.78*(var(6)-3)) * Const(size.yscale)

[State 30165, Explod Imagine Breaker blast]
type = Explod
trigger1 = !NumExplod(30112)
trigger1 = Anim = 30165
trigger1 = AnimElemTime(1) = 0
anim = 30112
ID = 30112
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 60
sprpriority = 3
ownpal = 1
;remappal = 7000,5
ignorehitpause = 0

[State 30165, Explod Imagine Breaker blast grow]
type = ModifyExplod
trigger1 = NumExplod(30112)
trigger1 = var(6) = [4,9]
ID = 30112
scale = (1 + 0.5*(var(6)-3)) * Const(size.xscale), (1 + 0.5*(var(6)-3)) * Const(size.yscale)

[State 30165, Explod Imagine Breaker blast grow]
type = ModifyExplod
trigger1 = NumExplod(30112)
trigger1 = var(6) = [10,14]
ID = 30112
scale = (4 + 0.8*(var(6)-9)) * Const(size.xscale), (4 + 0.8*(var(6)-9)) * Const(size.yscale)
trans = add
alpha = 256 - 51*(var(6)-9),256

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30165, HitDef]
type = HitDef
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 30165
trigger1 = AnimElem = 2
attr = A,SP
hitFlag = MAFD
guardFlag = 
priority = 8, Hit
damage = 120,120
getPower = 180,180
givePower = 0,0
pauseTime = 0,20
guard.pauseTime = 0,20
animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -32 * Const(size.xscale), -20 * Const(size.yscale)
air.velocity = -32 * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -34 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
;hitSound = S2,20
;guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7454)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(P2Bodydist x) + 0 * (var(55) := Floor(P2Bodydist x)), 0 * (var(56) := Floor(P2Dist y + Enemynear,Const(Size.mid.pos.y)))
;envShake.time = 10
;envShake.ampl = 16
;envShake.freq = 90
p1sprpriority = 0
ID = StateNo

[State 30165, Hit Pause]
type = Pause
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
time = 12
persistent = 0
ignorehitpause = 1

[State 30165, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 1
name = "Helper Hit Sparks"
postype = P1
pos = var(55) , var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = 0 ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1




[State 30165, Destory]
type = DestroySelf
trigger1 = !AnimTime
removeexplods = 1
recursive = 1

[State 30165, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1

[State 30165, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;=========== Touma Move - 02 ===============
[Statedef 30170]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0

[State 30170, Posfix]
type = posadd
trigger1 = !PrevStateNo && !time
x = IFElse(P2Bodydist x < 650,P2Bodydist x,650) - (340 * Const(Size.xScale))
y = -100 * Const(Size.yScale)

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)


[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable



[State 30170, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30172

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 4

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))


[State 30170,fade in]
type = trans
trigger1 = Anim = 30172
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30170,fade in speed]
type = veladd
trigger1 = Anim = 30172
trigger1 = AnimElemTime(1) = 0
x = 22 * Const(size.xscale)
y = -18 * Const(size.xscale)

[State 30170,fade in speed]
type = velset
trigger1 = Anim = 30172
trigger1 = AnimElemTime(1) > 0 && AnimElemTime(3) < 0
x = 22 * Const(size.xscale)

[State 30170, SND Voice start]
type = PlaySnd
triggerall = Anim = 30172
trigger1 = AnimElemTime(2) = 1
value = 30000 + var(31)*100, 201
volumescale = 100
channel = 0
;abspan = 0

[State 30170, SND Voice Imagine Breaker]
type = PlaySnd
trigger1 = MoveHit && NumTarget(30170)
trigger1 = Target(30170), time = 1
trigger2 = !time
trigger2 = NumHelper(30174) && PrevStateNo = 30170
value = 30000 + var(31)*100, 205
volumescale = 100
channel = 0
;abspan = 0
ignorehitpause = 1
persistent = 0

[State 30170, vel modify]
type = varset
trigger1 = Anim = 30172
trigger1 = AnimElemTime(3) = 0
var(6) = 1

[State 30170, vel modify]
type = velmul
trigger1 = Anim = 30172
trigger1 = AnimElemTime(3) >= 0 && var(6) < 5
x = 0.76
y = 0.05

[State 30170, vel modify]
type = velset
trigger1 = Anim = 30172
trigger1 = AnimElemTime(3) >= 0 && (var(6) = [5,13])
x = 2 * Const(Size.xScale)
y = 1 * Const(Size.yScale)

[State 30170, NotHitBy]
type = NotHitby
trigger1 = Anim = 30172
trigger1 = AnimElemtime(1) = [0,3]
value = SCA,AA,AP,AT
time = 1

[State 30170, Explod Fist wind]
type = Explod
trigger1 = !NumExplod(30113)
trigger1 = Anim = 30172
trigger1 = AnimElemTime(3) = 0
anim = 30113
ID = 30113
space = stage
pos = 180 * facing * Const(size.xscale), -104 * Const(size.yscale)
bindID = ID
bindtime = 2
facing = facing
removetime = -2
vel = 2 * facing * Const(size.xscale) , 3 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 2 * Const(size.yscale)
angle = -50
sprpriority = 3
trans = add
alpha = 140,256
ownpal = 1
;remappal = 7000,5
ignorehitpause = 0

[State 30170, Explod Fist wind]
type = ModifyExplod
trigger1 = NumExplod(30113)
trigger1 = Anim = 30172
trigger1 = AnimElemTime(3) = [3,8]
ID = 30113
scale = (4 - 0.4*(AnimElemTime(3)-2)) * Const(size.xscale), 2 * Const(size.yscale)
trans = add
alpha = 140,256

[State 30170, Gravty]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(size.yScale)


[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1


;-------------- Facing Right ---------------
[State 30170, HitDef]; Imagine Breaker Hit
type = HitDef
triggerall = Facing = 1
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 30172
trigger1 = AnimElem = 3 || AnimElem = 4
attr = A,HP
hitFlag = MAF
guardFlag = H
priority = 8, Hit
damage = 110,11
getPower = 180,180
givePower = 0,0
pauseTime = 28,28
guard.pauseTime = 28,28
animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 28
ground.slideTime = 28
guard.hitTime = 28
air.hitTime = 28
ground.velocity = -38 * Const(size.xscale), -24 * Const(size.yscale)
air.velocity = -38 * Const(size.xscale), IFElse(P2StateType = L,0,-24) * Const(size.yscale)
guard.velocity = -40 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(170)), 0 * (var(56) := Floor(-100))
envShake.time = 24
envShake.ampl = 22
envShake.freq = 90
p1sprpriority = 2
ID = 30170

[State 30162, Helper Imagine Breaker Flash]
type = helper
triggerall = !NumHelper(30174)
triggerAll = MoveHit && NumTarget(30170)
trigger1 = Target(30170),time = 0
helpertype = normal
stateno = 30174
ID = 30174
name = "Imagine Breaker Flash"
postype = P1
pos = 170 * Const(Size.xScale), -100 * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1

[State 30170, NotHitBy]
type = NotHitby
triggerall = Facing = 1
trigger1 = Anim = 30172
trigger1 = AnimElemtime(3) >= 0
value = SCA,AA,AP,AT
time = 1



;------------- Facing Left -------------------------
[State 30170, ReversalDef]
type = ReversalDef
triggerall = Facing = -1 && var(6) >= 4
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 30172
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
reversal.attr = SCA,AA,AP
pausetime = 8,8
sparkno = -1
;hitsound = S2,30
p1stateno = 30170
p2stateno = 30168
ID = 30168
Fall.Envshake.Ampl = ID * 2;ID x 2

[State 30162, Helper Imagine Breaker Flash]
type = helper
triggerall = !NumHelper(30174)
trigger1 = NumTarget
trigger1 = Target,StateNo = 30168 && Target,time = 0
helpertype = normal
stateno = 30174
ID = 30174
name = "Imagine Breaker Flash"
postype = P1
pos = 90 * Const(Size.xScale), -260 * Const(Size.yScale)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1

[State 30162, Imapct Pause]
type = Pause
trigger1 = NumHelper(30174)
time = 1
;endcmdbuftime = 1
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 30170, HitDef]; Normal Hit
type = HitDef
triggerall = Facing = -1
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 30172
trigger1 = AnimElem = 3 || AnimElem = 4
attr = A,SA
hitFlag = MAF
guardFlag = H
priority = 8, Hit
damage = 50,6
getPower = 180,180
givePower = 0,0
pauseTime = 26,26
guard.pauseTime = 26,26
animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 26
ground.slideTime = 26
guard.hitTime = 26
air.hitTime = 26
ground.velocity = -12 * Const(size.xscale), -24 * Const(size.yscale)
air.velocity = -12 * Const(size.xscale), IFElse(P2StateType = L,0,-24) * Const(size.yscale)
guard.velocity = -20 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(170)), 0 * (var(56) := Floor(-100))
envShake.time = 16
envShake.ampl = 16
envShake.freq = 90
p1sprpriority = 2
ID = 30171


;------------- Common for Both Direction -----------
[State 30170, Hit Sparks]
type = helper
triggerall = NumTarget(30170) || NumTarget(30171)
trigger1 = NumTarget(30170)
trigger1 = Target(30170),time = 0
trigger2 = NumTarget(30171)
trigger2 = Target(30171),time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 1
name = "Heavy Hit Sparks"
postype = P1
pos = var(55), var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
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
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1


[State 30170, Land]
type = ChangeState
trigger1 = time
trigger1 = vel y > 0 && pos y >= 0
value = 30171

[State 3017007, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1


;------- Land --------------
[Statedef 30171]
type = C
movetype= I
physics = C
velset = 0,0
sprpriority = 0
ctrl = 0
anim = 30173

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable


[State 30171, Fix pos]
type = posset
trigger1 = !time
y = 0

[State 30171, Go away]
type = ChangeState
trigger1 = AnimTime = 0
value = 30169




;------------- Touma Imagine Breaker Just flash----------
[Statedef 30174]
type = A
movetype= A
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0
anim = 9741

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 30174, SND FX Imagine Breaker]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 2,30
volumescale = 100
channel = 2
;abspan = 0


[State 30174, Explod Imagine Breaker Core]
type = Explod
trigger1 = !NumExplod(30111)
trigger1 = AnimElemTime(1) = 0
anim = 30111
ID = 30111
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 4 * Const(size.xscale), 4 * Const(size.yscale)
angle = 50
sprpriority = 3
ownpal = 1
;remappal = 7000,5
ignorehitpause = 0

[State 30174, Explod Imagine Breaker blast grow]
type = ModifyExplod
trigger1 = NumExplod(30111)
trigger1 = var(6) = [4,9]
ID = 30111
scale = (4 - 0.78*(var(6)-3)) * Const(size.xscale), (4 - 0.78*(var(6)-3)) * Const(size.yscale)

[State 30174, Explod Imagine Breaker blast]
type = Explod
trigger1 = !NumExplod(30112)
trigger1 = AnimElemTime(1) = 0
anim = 30112
ID = 30112
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1 * Const(size.xscale), 1 * Const(size.yscale)
angle = 60
sprpriority = 3
ownpal = 1
;remappal = 7000,5
ignorehitpause = 0

[State 30174, Explod Imagine Breaker blast grow]
type = ModifyExplod
trigger1 = NumExplod(30112)
trigger1 = var(6) = [4,9]
ID = 30112
scale = (1 + 0.5*(var(6)-3)) * Const(size.xscale), (1 + 0.5*(var(6)-3)) * Const(size.yscale)

[State 30174, Explod Imagine Breaker blast grow]
type = ModifyExplod
trigger1 = NumExplod(30112)
trigger1 = var(6) = [10,14]
ID = 30112
scale = (4 + 0.8*(var(6)-9)) * Const(size.xscale), (4 + 0.8*(var(6)-9)) * Const(size.yscale)
trans = add
alpha = 256 - 51*(var(6)-9),256


[State 30174, Destory]
type = DestroySelf
trigger1 = var(6) > 14
removeexplods = 1
recursive = 1

[State 30174, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1

[State 30174, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0





;=========== Mikoto Move - 01 ===============
[Statedef 30260]
type = S
movetype= A
physics = S
sprpriority = 0
ctrl = 0

[State Luck]
type = varset
trigger1 = !PrevStateNo && !time
var(0) = Random < 500


[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30260, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = -Floor(Abs(GameWidth / 2)) * facing
y = 0

[State 30260, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = (30203 + 10000*var(0))


[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 36

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "MISAKA Mikoto"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "MISAKA Mikoto"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "MISAKA Mikoto"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)


[State 30260,fade in]
type = trans
trigger1 = Anim = (30203 + 10000*var(0))
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30260,fade in speed]
type = velset
trigger1 = Anim = (30203 + 10000*var(0))
x = Const(Velocity.run.fwd.x) * Const(size.xscale)

[State 30260, SND Voice start]
type = PlaySnd
;triggerall = root,Name != "MISAKA Mikoto"
triggerall = Anim = (30204 + 10000*var(0))
trigger1 = AnimElemTime(4) = -1
value = 30000 + var(31)*100, 60 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30260,action get down]
type = ChangeAnim
trigger1 = Anim = (30203 + 10000*var(0))
trigger1 = Abs(Pos x) < Abs(GameWidth / 3.0)
value = (30204 + 10000*var(0))

[State 30260,ATK]
type = ChangeAnim
trigger1 = Anim = (30204 + 10000*var(0))
trigger1 = AnimTime = 0
value = (30262 + 10000*var(0))

[State 30260, SND FX]
type = PlaySnd
trigger1 = Anim = (30262 + 10000*var(0))
trigger1 = AnimElemTime(2) = 1
value = 5, 3001
volumescale = 100
channel = 1
;abspan = 0

[State 30260, Hand Electric-for-extend]
type = Explod
trigger1 = Anim = (30262 + 10000*var(0))
trigger1 = AnimElemTime(2) = 1
anim = 30229
ID = 30229
space = stage
pos = -34 * facing * Const(size.xscale),-190 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 60
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.4 * Const(size.xscale),0.8 * Const(size.yscale)
angle = 200
sprpriority = 2
ownpal = 1
remappal = IFElse(root,name = "MISAKA Mikoto",6007,30220),0


[State 30260, SND-FX]
type = PlaySnd
trigger1 = Anim = (30262 + 10000*var(0))
trigger1 = AnimElemTime(4) = 0
value = 1,5
volumescale = 100
channel = 1
;abspan = 0

[State 30260, Projectile Helper - Stand]
type = helper
trigger1 = Anim = (30262 + 10000*var(0))
trigger1 = AnimElemTime(2) = 0
helpertype = normal
stateno = 30265
ID = 30265
name = "Flying Steel Type II"
postype = P1
pos = 0 * Const(Size.xScale), -300 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = 30265 + Random%2; Anim to draw
size.head.pos = IFElse(NumEnemy > 1,Enemynear(1),ID,Enemynear(0),ID),1 ; Target ID and Self ID
size.mid.pos = 0,0
ownpal = 1
;supermovetime = 65535
;pausemovetime = 65535



[State 30260, End]
type = ChangeState
trigger1 = Anim = (30262 + 10000*var(0)) && AnimTime = 0
value = 30269


[State 30260, Destory]
type = DestroySelf
trigger1 = Anim = (30262 + 10000*var(0)) && AnimTime = 0
trigger2 = time > 500
removeexplods = 1
recursive = 1

[State 30260, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d | Test=%d"
params = var(5), var(6), var(31),(root,var(1)%10000 / 100)
ignorehitpause = 1

[State 30260, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;------------- Mikoto Fade away -------------
[Statedef 30269]
type = A
movetype= U
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 30269, Clear Explods]
type = RemoveExplod
trigger1 = !time

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30269, SND Voice hurt]
type = PlaySnd
triggerall = MoveType = H
trigger1 = !time
value = 30000 + var(31)*100, 5000 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 30269,action stop]
type = ChangeAnim
trigger1 = !time
value = (30268 + 10000*var(0)) + MoveType = H

[State 30269, Leave Statge]
type = veladd
trigger1 = !time
x = -24 * Const(Size.xScale)
y = -6 * Const(Size.yScale)

[State 30269,fade out]
type = trans
trigger1 = AnimElemtime(1) = [4,16]
trans = add
alpha = 256 - 20*(AnimElemTime(1)-4) ,10 + 20*(AnimElemTime(1)-4)


[State 30269,End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
;recursive = 1

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
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
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1



;=========== flying steel Type II ==========
;--------- Steel bar ------------
[StateDef 30265]
type = A
physics = N
movetype= A
sprpriority = -2
ctrl = 0


[State Durableness-01]
type = varadd
trigger1 = !time
var(2) = -1

[State Durableness-02]
type = varset
trigger1 = !PrevStateNo && !time
var(2) = 3

[State Safe noloop]
type = NotHitBy
trigger1 = !var(2)
time = 1
value = SCA,AA,AP,AT

[State Hitby]
type = HitBy
trigger1 = var(2)
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1

;----------- Vars ----------------------------
[State 30265, var]; Botton Y if horizontal
type = varset
trigger1 = !PrevStateNo && !time
var(41) = Floor(-30 * Const(Size.yScale))

[State 30265, var]; Botton Y if vertial
type = varset
trigger1 = !PrevStateNo && !time
var(42) = Floor(-274 * Const(Size.yScale))

[State 30265, var]; Dynamic Botton
type = varset
trigger1 = 1
var(43) = Floor((var(41) - Abs(Sin(var(9) * (Pi/180.0))) * (var(41) - var(42))))


[State 30265, Target ID]
type = varset
trigger1 = !PrevStateNo && !time
trigger1 = PlayerIDExist(Const(size.head.pos.x))
var(3) = Const(size.head.pos.x)

;----- Anim ----------
[State 30265, TGT Dist x]
type = varset
trigger1 = var(3)
fvar(1) = (PlayerID(var(3)),Pos x - Pos x) * facing

[State 30265, TGT Dist y]
type = varset
trigger1 = var(3)
fvar(2) = (PlayerID(var(3)),Pos y + IFElse(PlayerID(var(3)),StateType = L || PlayerID(var(3)),StateType = C,0,PlayerID(var(3)),Const(Size.mid.pos.y))) - Pos y

[State 30265, AngleVar]
type = varset
triggerall = var(3)
triggerall = var(5) = 0
trigger1 = fvar(1) != 0
var(9) = -Floor(Atan(fvar(2) / fvar(1)) * (180.0/Pi))

[State 30265, AngleVar]
type = varset
triggerall = var(5) = 0
trigger1 = fvar(1) = 0
var(9) = IFElse(var(1) >=0 ,90,-90)


[State 30265, Angle]
type = AngleDraw
trigger1 = 1
value = var(9)
scale = 1 * Const(Size.xScale), 1 * Const(Size.yScale)
ignorehitpause = 1

[State 30265, Anim]
type = ChangeAnim
trigger1 = !PrevStateNo
trigger1 = !time
value = Const(size.proj.doscale)

;-------- Phase control ------------
[State 30265, Phase 1]; Go
type = varset
triggerall = var(5) = 0
trigger1 = Parent,Anim = (30262 + 10000*Parent,var(0))
trigger1 = Parent,AnimElemTime(4) = 1
trigger1 = var(6) := 1
var(5) = 1

[State 30265, Phase 10]; Fall
type = varset
triggerall = var(5) = 0
trigger1 = Parent,StateNo != 30260
trigger1 = var(6) := 1
var(5) = 10

[State 30265, Phase 2]; Hit Ground
type = varset
triggerall = var(5) = 1 || var(5) = 10
trigger1 = Vel y > 0 && Pos y >= var(43)
trigger1 = var(6) := 1
var(5) = 2

[State 30265, Phase 3]; fade out
type = varset
triggerall = var(5) = 2
trigger1 = var(6) > 40
trigger1 = var(6) := 1
var(5) = 3

;-------- Phase action -------------
;----------- 0 --------------------
[State 30265, fade in]
type = Trans
trigger1 = var(5) = 0
trigger1 = var(6) = [0,7]
trans = add
alpha = 0 + var(6) * 36 , 256 - var(6) * 36

[State 30265, fade in]
type = Trans
trigger1 = var(5) = 0
trigger1 = var(6) >= 8
trans = add
alpha = 256,0

[State 30265, fade in]
type = Trans
trigger1 = var(5) = 1
trigger1 = var(6) = 1
trans = add
alpha = 256,0

[State 30265, Hand Electric]
type = Explod
trigger1 = var(5) = 0
trigger1 = var(6) = 1
anim = 30229
ID = 30229
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;supermovetime = 65535
;pausemovetime = 65535
scale = 3.6 * Const(size.xscale),1.8 * Const(size.yscale)
angle = var(9)
sprpriority = -1
ownpal = 1
remappal = IFElse(root,name = "MISAKA Mikoto",6007,30220),0
ignorehitpause = 0

[State 30265, Hand Electric]
type = ModifyExplod
trigger1 = var(5) = [0,1]
ID = 30229
angle = var(9)

[State 30265, vel up]
type = veladd
trigger1 = var(5) = 0
trigger1 = var(6) = 1
y = - 2 * Const(Size.yScale) * Const(size.head.pos.y)


;----------- 1 --------------------
[State 30265, Random Number]
type = varset
trigger1 = !var(51)
var(51) = Random%2
persistent = 0

[State 30265, vel to TGT]
type = veladd
triggerall = StateType = A
trigger1 = var(5) = 1 && var(6) = (1 + 4*var(51))
x = fvar(1) / 18.0
y = fvar(2) / 18.0

;----------- 10 ------------------
[State 30265, Gravity]
type = veladd
trigger1 = var(5) = 10
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(size.yScale)

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1
[State 30265, HitDef]
type = HitDef
triggerall = time > 10
trigger1 = var(5) = 10 && (vel y > (1 * Const(Size.yScale)))
affectteam = B
attr = A,HP
hitFlag = MAFD
guardFlag = H
priority = 5, Hit
damage = 110,30
getPower = 0,0
givePower = 0,0
pauseTime = 0,10
guard.pauseTime = 0,10
animType = hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -6 * Const(size.xscale), -38  * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), -38 * Const(size.yscale)
guard.velocity = -44 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S5,980
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(P2Bodydist x) + 0 * (var(55) := Floor(P2Bodydist x)), Floor(P2dist y - 160) + 0 * (var(56) := Floor(P2dist y - 160))
nochainID = StateNo
;envShake.time = 32
;envShake.ampl = 40
;envShake.freq = 40
;envShake.phase = -90
p1sprpriority = -2
ID = StateNo



;---------- 2 --------------------
[State 30265, vel stop]
type = velset
trigger1 = var(5) = 2 && var(6) = 1
x = 0
y = 0

[State 30265, vel stop]
type = posset
trigger1 = var(5) = 2 && var(6) = 1
y = var(43)

[State 30265, no atack]
type = ChangeAnim
trigger1 = var(5) = 2 && var(6) = 1
value = Anim
elem = 2

;---------- 3 ---------------
[State 6400, fade out]
type = Trans
trigger1 = var(5) = 3
trigger1 = var(6) = [0,28]
trans = add
alpha = 256 - var(6) * 9 , 0 + var(6) * 9



[State 30265, HitDef]
type = HitDef
triggerall = time > 10
trigger1 = var(5) = 1 && var(6) >= 4
attr = A,HP
hitFlag = MAFD
guardFlag = H
priority = 5, Hit
damage = 110,30
getPower = 0,0
givePower = 0,0
pauseTime = 0,10
guard.pauseTime = 0,10
animType = hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -6 * Const(size.xscale), -38  * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), -38 * Const(size.yscale)
guard.velocity = -44 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S5,980
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(P2Bodydist x) + 0 * (var(55) := Floor(P2Bodydist x)), Floor(P2dist y - 160) + 0 * (var(56) := Floor(P2dist y - 160))
nochainID = StateNo
;envShake.time = 32
;envShake.ampl = 40
;envShake.freq = 40
;envShake.phase = -90
p1sprpriority = -2
ID = StateNo


;-------- Phase action end ---------

[State 30265, SND FX-Hit]
type = PlaySnd
trigger1 = MoveContact = 1
trigger2 = var(5) = 2
trigger2 = var(6) = 1
value = 5,2903
volumescale = 100
;channel = 0
;abspan = 0
IgnoreHitpause = 1
persistent = 0

[State 30265, SND FX-Hit]
type = PlaySnd
trigger1 = MoveContact = 1
trigger2 = var(5) = 2
trigger2 = var(6) = 1
value = 5,2904
volumescale = 100
;channel = 0
;abspan = 0
IgnoreHitpause = 1
persistent = 0

[State 30265, Shake-Hit]
type = EnvShake
trigger1 = MoveContact = 1
trigger2 = var(5) = 2
trigger2 = var(6) = 1
time = 32
ampl = 40
freq = 40
phase = -90
IgnoreHitpause = 1


[State 30265, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimElemTime(4) > 0
MoveType = I

[State 30265, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State 30265, Hit Sparks]
type = helper
triggerall = NumTarget
trigger1 = MoveContact = 1 || MoveContact = 5
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 1
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
trigger1 = Target,Time = 1
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
triggerall = time > 600 || (var(5) = 3 && var(6) >= 29)	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999



[State 30265, End]
type = DestroySelf
trigger1 = (var(5) = 3 && var(6) >= 29)
trigger2 = screenpos x != [-440*Const(size.xscale), (ScreenWidth / CameraZoom) + 440.0 * Const(size.xscale)]
removeexplods = 1
recursive = 1

[State 30265, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d | var(1)=%d var(2)=%d var(9)=%d"
params = var(5), var(6), var(31),var(1),var(2),var(9)
ignorehitpause = 1

[State 30265, Debug]
type = appendtoclipboard
trigger1 = 1
text="\n Pos y = %d var(43)= %d | Test = %d" 
params= pos y , var(43) , fvar(1) / fvar(2)
ignorehitpause = 1

[State 30265, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;=========== Mikoto Move - 02 ===============
[Statedef 30270]
type = A
movetype= A
physics = N
sprpriority = 0
ctrl = 0

[State Luck]
type = varset
trigger1 = !PrevStateNo && !time
var(0) = Random < 500

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
trigger2 = Anim = 30270
trigger2 = AnimTime = [-4,0]
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4 && !(Anim = 30270 && (AnimTime = [-4,0]))
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30270, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = -Floor(Abs(GameWidth / 2)) * facing
y = -20 * Const(Size.yScale)

[State 30270, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = (30270 + 10000*var(0))


[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 36

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "MISAKA Mikoto"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "MISAKA Mikoto"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "MISAKA Mikoto"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)


[State 30270,fade in]
type = trans
trigger1 = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64


[State 30270, SND Voice start]
type = PlaySnd
;triggerall = root,Name != "MISAKA Mikoto"
triggerall = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(3) = -1
value = 30000 + var(31)*100, 201 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30270, Vel Start]
type = velset
triggerall = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(1) = 1
x = 1.4 * const(velocity.jump.fwd.x) * Const(size.xScale)
y = const(velocity.jump.y) * Const(size.yScale)

[State 410, Extend-ver-vel]
type = velset
trigger1 = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(3) = 1
x = -8 * Const(Size.xScale)
y = -22 * Const(Size.yScale)


[State 30270, SND FX]
type = PlaySnd
trigger1 = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(2) = 1
value = 5, 3001
volumescale = 100
channel = 1
;abspan = 0

[State 30270, Hand Electric-for-extend]
type = Explod
trigger1 = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(2) = 0
anim = 30229
ID = 30229
space = stage
pos = -20 * facing * Const(size.xscale),-310 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 12
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.2 * Const(size.xscale),0.8 * Const(size.yscale)
angle = 45
sprpriority = 1
ownpal = 1
remappal = IFElse(root,name = "MISAKA Mikoto",6007,30220),0



[State 30270, Projectile Helper - Stand]
type = helper
triggerall = !NumHelper(StateNo + 5)
trigger1 = Anim = (30270 + 10000*var(0))
trigger1 = AnimElemTime(3) = 0
helpertype = normal
stateno = StateNo + 5
ID = StateNo + 5
name = "AHT-Projectile"
postype = P1
pos = P2Dist x, -Pos Y
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
ownpal = 1

[State 30270, Gravity]
type = veladd
trigger1 = StateType = A
trigger1 = time
y = Const(Movement.yaccel) * Const(Size.yScale)



[State 30270,fade out]
type = trans
trigger1 = Anim = (30270 + 10000*var(0))
trigger1 = AnimTime = [-4,-1]
trans = add
alpha = 256 - 60*(AnimTime+5) ,10 + 60*(AnimTime+5)


[State 30270, Destory]
type = DestroySelf
trigger1 = Anim = (30270 + 10000*var(0)) && AnimTime = 0
trigger2 = time > 500
removeexplods = 1
recursive = 1

[State 30270, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1

[State 30270, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;---------------------- Air hard atk extend projectile type II ----------
[Statedef 30275]
type = A
moveType = A
physics = N
sprpriority = 2
ctrl = 0

[State 30275, Type]
type = varset
trigger1 = !time
var(10) = Parent,var(10)

[State 30275, Anim]
type = ChangeAnim
trigger1 = PrevStateNo != 5000 && !time
value = 30231

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Durableness-01]
type = varadd
trigger1 = !time
var(2) = -1

[State Durableness-02]
type = varset
trigger1 = !PrevStateNo && !time
var(2) = 3

[State Safe noloop]
type = NotHitBy
trigger1 = !var(2)
time = 1
value = SCA,AA,AP,AT

[State Hitby]
type = HitBy
trigger1 = var(2)
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1

[State 30275, Scale]
type = AngleDraw
trigger1 = Anim = 30231
value = 0
Scale = 3.2 * Const(Size.xScale), 2.6* Const(Size.yScale)

[State 30275, SND-FX]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 5,1000
volumescale = 100
channel = 2
;abspan = 0

[State 30275, Head Light Dot]
type = Explod
trigger1 = !NumExplod(30239)
trigger1 = time = 0
anim = 30239
ID = 30239
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 12
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.6 * Const(size.xscale), 1.6 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
remappal = IFElse(root,name = "MISAKA Mikoto",6007,30220),0
ignorehitpause = 0

[State 30275, Head Light Ring]
type = Explod
trigger1 = !NumExplod(6054)
trigger1 = AnimElemTime(2) = 0
anim = 7436
ID = 6054
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.25 * Const(size.xscale), 0.05 * Const(size.yscale)
angle = 0
sprpriority = -2
ownpal = 1
remappal = 7000,2
ignorehitpause = 0

[State 30275, Modify Head Light Ring]
type = ModifyExplod
trigger1 = NumExplod(6054)
trigger1 = (AnimElemTime(2) = [1,12])
ID = 6054
scale = (0.25 + (AnimElemTime(2)/12.0)) * Const(size.xscale), (0.05 + (AnimElemTime(2)/70.0)) * Const(size.yscale)

[State 30275, Light bar]
type = Explod
trigger1 = !NumExplod(30224)
trigger1 = var(6) = 0
anim = 30224
ID = 30224
space = stage
pos = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 24
;supermovetime = 65535
;pausemovetime = 65535
scale = 8.0 * Const(size.xscale), 8.0 * Const(size.yscale)
angle = 270
sprpriority = 1
ownpal = 1
remappal = IFElse(root,name = "MISAKA Mikoto",6007,30227),0
ignorehitpause = 0

[State 30275, Modify light bar]
type = ModifyExplod
trigger1 = NumExplod(30232)
trigger1 = (var(6) = [5,11])
ID = 30232
Scale = (8.0 - 1*(var(6)-4)) * Const(Size.xScale), 8.0* Const(Size.yScale)

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30275, HitDef]
type = HitDef
triggerall = time
triggerall = !(MoveContact || MoveReversed)
trigger1 = AnimElem = 1 || AnimElem = 3
attr = A,SP
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = 110,10
getPower = 50,10
givePower = 0,0
pauseTime = 0,0
guard.pauseTime = 0,0
animType = back
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 16
ground.velocity = -2 * Const(size.xscale), 48  * Const(size.yscale)
air.velocity = -2 * Const(size.xscale), 48 * Const(size.yscale)
guard.velocity = -46 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,25
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7454)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0) + 0 * (var(55) := Floor(0)), Floor(P2dist y - 220) + 0 * (var(56) := Floor(P2dist y - 220))
envShake.time = 10
envShake.ampl = 16
envShake.freq = 90
p1sprpriority = 2
ID = StateNo
NoChainID = StateNo

[State 30275, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimElemTime(6) > 0
MoveType = I


[State 30275, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 1
name = "Mid Long Hit Sparks"
postype = P1
pos = var(55) * Const(size.xscale), var(56) * Const(size.yscale)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 30275, HitPause]
type = Pause
trigger1 = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
time = 12
endcmdbuftime = 12
movetime = 0
pausebg = 0


[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget(StateNo)
triggerall = Target(StateNo),HitFall
triggerall = Target(StateNo),Alive && Target(StateNo),StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
trigger1 = Target,Time = 1
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
triggerall = AnimTime = 0	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999


[State 30275, End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 0
recursive = 1


[State 30275, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1

[State 30275, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 0



;=========== Accelerator Move - 01 ===============
;----------- Last Order part -----------------
[Statedef 30360]
type = A
movetype= I
physics = N
sprpriority = -1
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4 && !(Anim = 30360 && (AnimTime = [-4,0]))
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30360, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
y = -280 * Const(Size.yScale)

[State 30360, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30360

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 12

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State 30360,fade in]
type = trans
trigger1 = Anim = 30360
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64


[State 30360, Vel Start]
type = velset
triggerall = Anim = 30360
trigger1 = AnimElemTime(1) = 0
x = 8 * Const(size.xScale)
y = -9 * Const(size.yScale)


[State 30360, Gravity]
type = veladd
trigger1 = StateType = A
trigger1 = time
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 30360, Land]
type = ChangeState
trigger1 = Anim = 30360
trigger1 = vel y > 0 && pos y >= 0
value = 30361


[State 30360, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1

[State 30360, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0

;------------- Last Order on Ground -------------------
[Statedef 30361]
type = S
movetype= I
physics = S
sprpriority = -1
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1


[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1


[State Hitby]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = Anim = 30361
attr = SCA,AA,AP,AT
stateno = 30362
slot = 7
time = 1
ignorehitpause = 1

[State 30361, vel fix]
type = velset
trigger1 = !time && !(PrevStateNo = [5000,5030])
y = 0

[State 30361, pos fix]
type = posset
trigger1 = !time && !(PrevStateNo = [5000,5030])
y = 0

[State 30361, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !(PrevStateNo = [5000,5030])
value = 30361

[State 30361, Land-Dust]
type = Explod
trigger1 = !time && !(PrevStateNo = [5000,5030])
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


[State 30361, SND FX Land]
type = PlaySnd
trigger1 = !time && !(PrevStateNo = [5000,5030])
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 30361, Voice]
type = PlaySnd
trigger1 = Anim = 30361
trigger1 = AnimElemTime(3) = 1
value = 30300,600 + Random%3
volumescale = 100
channel = 0
;abspan = 0


[State 30361, Leave Turn]
type = Turn
trigger1 = Anim = 30361 && time > 230
trigger1 = !AnimTime

[State 30361, Leave Jump ready]
type = ChangeAnim
trigger1 = Anim = 30361 && time > 230
trigger1 = !AnimTime
value = 30361
elem = 1

[State 30361, Leave State]
type = ChangeState
trigger1 = Anim = 30361 && time > 230
trigger1 = AnimElemTime(3) = 0
value = 30369


;------------- Last Order on Ground get hit -------------------
[Statedef 30362]
type = S
movetype= A
physics = S
sprpriority = -1
ctrl = 0
velset = 0,0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30362, Anim]
type = ChangeAnim
trigger1 = !time
value = 30362

[State 30362, Voice hurt]
type = PlaySnd
trigger1 = !time
value = 30300,5500 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 30362, Impact Helper]
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

[State 30362, SuperChargePause]
type = SuperPause
trigger1 = time = 0
time = 20
anim = -1
;sound = s7,1050
p2defmul = 1
darken = 0
movetime = 20

[State 30362, Helper - Accelerator]
type = helper
triggerall = !NumHelper(30365)
trigger1 = time = 10
stateno = 30365
ID = 30365
helpertype = Normal
keyctrl = 0
name = "Accelerator - ATK01"
postype = P1
pos = 0 * Const(size.xscale),0 * Const(size.xscale)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = Enemynear,ID
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 30362,fade out]
type = trans
trigger1 = time = [71,80]
trans = add
alpha = 256 - 25*(time - 70) ,0 + 25*(time - 70)


[State 30362, Destory]
type = DestroySelf
trigger1 = time > 80




;=========== Last Order - Leave ===============
[Statedef 30369]
type = A
movetype= U
physics = N
sprpriority = 0
ctrl = 0
velset = 0,0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30369, Anim]
type = ChangeAnim
trigger1 = !time
value = IFElse(MoveType = H,30362,30363)

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30361, Voice hurt]
type = PlaySnd
trigger1 = !time && MoveType = H
value = 30300,5500 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 30369, vel init]
type = veladd
trigger1 = !time
trigger1 = AnimElemTime(1) = 0
x = IFElse(Anim = 30363,16,-16) * Const(Size.xScale)
y = -8 * Const(Size.yScale)

[State 30369,fade out]
type = trans
trigger1 = AnimTime = [-4,-1]
trans = add
alpha = 256 - 60*(AnimTime+5) ,10 + 60*(AnimTime+5)


[State 30369, Destory]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = time > 500
removeexplods = 1
recursive = 1






;=========== Accelerator - ATK01 ===============
[Statedef 30365]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30365, Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
trigger2 = var(6) < 29
trigger2 = Anim = 30366
trigger2 = AnimElemTime(3) = -1
value = 30366
Elem = 1

[State 30365, Anim ATK]
type = ChangeAnim
triggerall = Anim = 30366
triggerall = AnimElemTime(3) < 0
trigger1 = MoveContact && NumTarget(StateNo)
trigger1 = var(6) = 29
value = 30366
Elem = 3

[State 30365, Voice ATK]
type = PlaySnd
trigger1 = time = 5 && !PrevStateNo
value = 30300, 200 + Random%4
volumescale = 100
channel = 0
;abspan = 0

[State 30365, Posfix]
type = Posset
trigger1= !time && !PrevStateNo
trigger1 = PlayerIDExist(Const(size.proj.doscale))
x = PlayerID(Const(size.proj.doscale)),Pos x - (300 * Const(Size.xScale)) * facing
y = PlayerID(Const(size.proj.doscale)),Pos y - (200 * Const(Size.xScale))

[State 30365, vel init]
type = veladd
trigger1= !time && !PrevStateNo
x = 6 * Const(Size.xScale)
y = 4 * Const(Size.yScale)

[State 30365, vel stop]
type = velset
trigger1 = P2Bodydist x <= (50 * Const(Size.xScale))
trigger2 = P2Dist y < (60 * Const(Size.xScale))
trigger3 = MoveContact = 1
x = 0
y = 0

[State 30365, Explod WING Front]
type = Explod
trigger1 = Anim = 30366
trigger1 = var(6) = 4
anim = 30323
ID = 30323
space = stage
pos = 20 * facing * Const(size.xscale),-240 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 6 * Const(size.xscale),2 * Const(size.yscale)
angle = 60
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State 30365, Explod WING Back]
type = Explod
trigger1 = Anim = 30366
trigger1 = var(6) = 4
anim = 30323
ID = 30323
space = stage
pos = -20 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 6 * Const(size.xscale),2 * Const(size.yscale)
angle = 150
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State 30365, Explod WING grow]
type = ModifyExplod
triggerall = NumExplod(30323)
trigger1 = Anim = 30366
trigger1 = var(6) = [4,12]
ID = 30323
scale = (1 + 0.7*(var(6) - 3)) * Const(size.xscale), (0.5 + 0.2*(var(6) - 3)) * Const(size.yscale)

[State 30365, Explod WING fade]
type = ModifyExplod
triggerall = NumExplod(30323)
trigger1 = Anim = 30366
trigger1 = var(6) = [15,18]
ID = 30323
trans = add
alpha = 256 - 64*(var(6)-14),64*(var(6)-14)

[State 30365, Explod Black Shock]
type = Explod
trigger1 = Anim = 30366
trigger1 = var(6) = 7
anim = 30325
ID = 30325
space = stage
pos = 0 * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 20
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.8 * Const(size.xscale),0.8 * Const(size.yscale)
angle = 15
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State 30365, Explod black shock]
type = ModifyExplod
triggerall = NumExplod(30325)
trigger1 = Anim = 30366
trigger1 = var(6) = [8,28]
ID = 30325
scale = (0.8 + 0.18*(var(6) - 7)) * Const(size.xscale),(0.8 + 0.18*(var(6) - 7)) * Const(size.yscale)


[State 30365, Explod WING Front 02]
type = Explod
trigger1 = Anim = 30366
trigger1 = var(6) = 12
anim = 30324
ID = 30324
space = stage
pos = 20 * facing * Const(size.xscale),-240 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 5 * Const(size.xscale),2 * Const(size.yscale)
angle = 60
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State 30365, Explod WING back 02]
type = Explod
trigger1 = Anim = 30366
trigger1 = var(6) = 12
anim = 30324
ID = 130324
space = stage
pos = -20 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 5 * Const(size.xscale),2 * Const(size.yscale)
angle = 150
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State 30365, Explod WING f swing forward]
type = ModifyExplod
triggerall = NumExplod(30324)
trigger1 = Anim = 30366
trigger1 = var(6) = [25,33]
ID = 30324
angle = Floor(60 - 5*(var(6)-24))

[State 30365, Explod WING b swing forward]
type = ModifyExplod
triggerall = NumExplod(130324)
trigger1 = Anim = 30366
trigger1 = var(6) = [27,35]
ID = 130324
angle = Floor(150 - 10*(var(6)-26))

[State 30365, Explod WING f swing back]
type = ModifyExplod
triggerall = NumExplod(30324)
trigger1 = Anim = 30366
trigger1 = var(6) = [54,58]
ID = 30324
angle = Floor(15 + 25*(var(6)-53))

[State 30365, Explod WING b swing back]
type = ModifyExplod
triggerall = NumExplod(130324)
trigger1 = Anim = 30366
trigger1 = var(6) = [52,57]
ID = 130324
angle = Floor(60 + 25*(var(6)-51))

[State 30365, Explod WING b remove]
type = RemoveExplod
triggerall = NumExplod(130324)
trigger1 = Anim = 30366
trigger1 = AnimElemTime(8) = 0
ID = 130324

[State 30365, Explod ATK Inner]
type = Explod
triggerall = !NumExplod(30327)
trigger1 = Anim = 30366
trigger1 = AnimElemTime(8) = 0
anim = 30327
ID = 30327
space = stage
pos = 40 * facing * Const(size.xscale),-250 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 2 * Const(size.xscale),2 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 0
ignorehitpause = 0

[State 30365, Explod ATK out 1]
type = Explod
trigger1 = Anim = 30366
trigger1 = AnimElemTime(9) = 0
anim = 30326
ID = 30326
space = stage
pos = 40 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 2 * Const(size.xscale),2 * Const(size.yscale)
angle = 0
sprpriority = 4
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 0
ignorehitpause = 0

[State 30365, Explod ATK out 2]
type = Explod
trigger1 = Anim = 30366
trigger1 = AnimElemTime(10) = 0
anim = 30326
ID = 30327
space = stage
pos = 40 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 2.2 * Const(size.xscale),2.2 * Const(size.yscale)
angle = 0
sprpriority = 5
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 0
ignorehitpause = 0

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30365, HitDef Up hit]
type = HitDef
triggerall = !(MoveContact || MoveReversed)
triggerall = var(6) >= 12
trigger1 = Anim = 30366
trigger1 = AnimElem = 2
attr = A,HP
hitFlag = MAFD
guardFlag = 
priority = 6, Hit
damage = 90,10
getPower = 30,10
givePower = 0,0
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Up
ground.type = High
air.type = Low
ground.hitTime = 32
ground.slideTime = 32
guard.hitTime = 32
air.hitTime = 32
ground.velocity = -2 * Const(size.xscale), -34  * Const(size.yscale)
air.velocity = -2 * Const(size.xscale), -34 * Const(size.yscale)
guard.velocity = -2 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) / 1.3 * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 36
forceStand = 0
hitSound = S2,20
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2BodyDist x))), Floor(0 * (var(56) := Floor(P2Dist y + Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale))))
envShake.time = 52
envShake.ampl = 12
envShake.freq = 60
envShake.phase = 0
p1sprpriority = 1
ID = StateNo

[State 30365, HitDef 3 hits]
type = HitDef
trigger1 = Anim = 30366
trigger1 = AnimElem = 8 || AnimElem = 9 || AnimElem = 10
attr = A,HP
hitFlag = MAFD
guardFlag = 
priority = 6, Hit
damage = 33,10
getPower = 30,10
givePower = 0,0
pauseTime = 0,10
guard.pauseTime = 0,10
animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 16
ground.velocity = -22 * Const(size.xscale), -12  * Const(size.yscale)
air.velocity = -22 * Const(size.xscale), -12 * Const(size.yscale)
guard.velocity = -22 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 24
forceStand = 0
hitSound = S2,21
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2BodyDist x))), Floor(0 * (var(56) := Floor(P2Dist y + Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale))))
envShake.time = 6
envShake.ampl = 12
envShake.freq = 80
envShake.phase = 90
p1sprpriority = 1
ID = StateNo + 1

[State 30365, Last hits]
type = HitDef
trigger1 = Anim = 30366
trigger1 = AnimElem = 11
attr = A,HP
hitFlag = MAFD
guardFlag = 
priority = 6, Hit
damage = 33,10
getPower = 30,10
givePower = 0,0
pauseTime = 24,24
guard.pauseTime = 24,24
animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 28
ground.slideTime = 28
guard.hitTime = 28
air.hitTime = 28
ground.velocity = -32 * Const(size.xscale), -28  * Const(size.yscale)
air.velocity = -32 * Const(size.xscale), -28 * Const(size.yscale)
guard.velocity = -28 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 24
forceStand = 0
hitSound = S2,21
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7454)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = Floor(0 * (var(55) := Floor(P2BodyDist x))), Floor(0 * (var(56) := Floor(P2Dist y + Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale))))
envShake.time = 22
envShake.ampl = 30
envShake.freq = 90
envShake.phase = 90
p1sprpriority = 1
ID = StateNo + 2

[State 30365, SND FX-Hit]
type = PlaySnd
trigger1 = Anim = 30366
trigger1 = AnimElemTime(8) = 0
value = 5,980
volumescale = 100
;channel = 0
abspan = 0
ignorehitpause = 1
persistent = 0

[State 30365, SND FX-Hit]
type = PlaySnd
trigger1 = MoveContact
trigger1 = NumTarget(StateNo + 1)
trigger1 = Target(StateNo + 2),time = 0
value = 5,980
volumescale = 100
;channel = 0
abspan = 0
ignorehitpause = 1
persistent = 0


[State 30365, SND FX-Hit]
type = PlaySnd
trigger1 = Anim = 30366
trigger1 = AnimElemTime(8) = 0
value = 7,5000
volumescale = 100
;channel = 0
abspan = 0
ignorehitpause = 1
persistent = 0

[State 30365, SND FX-Hit]
type = PlaySnd
trigger1 = MoveContact
trigger1 = NumTarget(StateNo + 1)
trigger1 = Target(StateNo + 2),time = 0
value = 7,5000
volumescale = 100
;channel = 0
abspan = 0
ignorehitpause = 1
persistent = 0

[State 30365, SND FX-Hit]
type = PlaySnd
trigger1 = Anim = 30366
trigger1 = AnimElemTime(8) = 0
value = 5,30300
volumescale = 100
;channel = 0
abspan = 0
ignorehitpause = 1
persistent = 0


[State 30365, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 1
name = "Helper Hit Sparks"
postype = P1
pos = var(55) , var(56)
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


[State 30365, fade in]
type = trans
trigger1 = !PrevStateNo
trigger1 = Time = [0,3]
trans = add
alpha = 1 + 85*time, 255 - 85*time

[State 30365, Leave]
type = ChangeState
trigger1 = Anim = 30366 && !AnimTime
trigger2 = time > 125
value = 30368

[State 30365, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1

[State 30365, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0

;-------------- Accelerator Leave Without crutch ----------
[Statedef 30368]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State counter reset]
type = varset
trigger1 = !time && PrevStateNo = 30365
var(6) = 0

[State Clear Explod]
type = RemoveExplod
trigger1 = !time


[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30368, Anim]
type = ChangeAnim
trigger1 = Anim != 30368
trigger1 = var(6) = 0
value = 30368


[State 30368, vel leave]
type = velset
trigger1 = var(6) = 0
x = -8 * Const(Size.xScale)
y = -26 * Const(Size.yScale)

[State 30368, Explod WING Front 02]
type = Explod
trigger1 = var(6) = 0
anim = 30324
ID = 30324
space = stage
pos = 20 * facing * Const(size.xscale),-240 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 50
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 5 * Const(size.xscale),2 * Const(size.yscale)
angle = 110
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State 30368, Explod WING back 02]
type = Explod
trigger1 = var(6) = 0
anim = 30324
ID = 130324
space = stage
pos = -20 * facing * Const(size.xscale),-220 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 50
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 5 * Const(size.xscale),2 * Const(size.yscale)
angle = 150
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,256
;remappal = 6415, 0
RemoveOnGetHit = 1
ignorehitpause = 0

[State OverRide Enemy 5110]
type = TargetState
triggerall = NumTarget
triggerall = Target,IsHelper = 0
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
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


[State 30368, End-outofscreen]
type = DestroySelf
triggerall = time > 10
trigger1 = ScreenPos x != [-80*Const(size.xscale), (ScreenWidth / CameraZoom) + 80.0 * Const(size.xscale)]
trigger2 = ScreenPos y != [-80*Const(size.yscale), (ScreenHeight / CameraZoom) + 80.0 * Const(size.yscale)]
removeexplods = 1
recursive = 1

[State 30368, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;=========== Accelerator Move - 02 ===============
[Statedef 30370]
type = S
movetype= A
physics = S
sprpriority = -1
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 2
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 2
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 30379
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30370, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = Floor(Parent,Pos x - 50 * Const(Size.xScale) * Facing)
y = 0 * Const(Size.yScale)

[State 30370, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30311

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 12

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State 30370,fade in]
type = trans
trigger1 = Anim = 30311
trigger1 = AnimElemTime(1) = [0,2]
trans = add
alpha = 1 + 85*(AnimElemTime(1)+1) ,255 - 85*(AnimElemTime(1)+1)


[State 30370, Vel Start]
type = velset
trigger1 = Anim = 30311
x = 20 * Const(size.xScale)
y = 0 * Const(size.yScale)

[State 30370, Play ATK Anim]
type = ChangeAnim
trigger1 = Anim = 30311
trigger1 = AnimTime = 0
value = 30370

[State 30370, ATK Distance]
type = AttackDist
trigger1 = MoveType = A && Anim = 30370
value = Floor((1400) * Const(Size.xScale))

[State 30370, SND Voice start]
type = PlaySnd
triggerall = Anim = 30370
trigger1 = AnimElemTime(1) = 1
value = 30000 + var(31)*100, 210 + Random%4
volumescale = 100
channel = 0
;abspan = 0

[State 30370, Projectile Helper]
type = helper
triggerall = Anim = 30370
trigger1 = AnimElemTime(3) = 0
helpertype = normal
stateno = StateNo + 5
ID = StateNo + 5
name = "Earth Cracks Attack"
postype = P1
pos = 20 * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30370, Leave]
type = ChangeState
trigger1 = Anim = 30370
trigger1 = AnimTime = 0
value = 30379


[State 30370, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1


[State 30370, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0


;------------- Accelerator Leave With crutch ------------
[Statedef 30379]
type = A
movetype= U
physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 30379, Type]
type = StateTypeSet
trigger1 = MoveType != H
MoveType = I

[State 30379, Reset Counter]
type = varset
trigger1 = !time
var(6) = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30379, Anim]
type = ChangeAnim
trigger1 = !time
value = IFElse(MoveType = H,30355,30371)

[State 30379, Hurt Voice]
type = PlaySnd
trigger1 = Anim = 30355
trigger1 = AnimElemTime(1) = 0
value = 30000 + var(31)*100, IFElse(Random < 400,5005,5000 + Random%6)
volumescale = 100
channel = 0
;abspan = 0

[State 30379, Vel INIT]
type = veladd
trigger1 = AnimElemTime(1) = 0
x = -8 * Const(Size.xScale)
y = -26 * Const(Size.yScale)

[State 30379, End-outofscreen]
type = DestroySelf
triggerall = time > 10
trigger1 = ScreenPos x != [-80*Const(size.xscale), (ScreenWidth / CameraZoom) + 80.0 * Const(size.xscale)]
trigger2 = ScreenPos y != [-80*Const(size.yscale), (ScreenHeight / CameraZoom) + 80.0 * Const(size.yscale)]
removeexplods = 1
recursive = 1


[State 30379, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1


[State 30379, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;------------- Earth Cracks Attack Projectile ------------
[Statedef 30375]
type = C
movetype= A
physics = N
sprpriority = 0
ctrl = 0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Safe noloop]
type = NotHitBy
trigger1 = (PrevStateNo = [5000,5039])
time = 1
value = SCA,AA,AP,AT

[State Hitby]
type = HitBy
trigger1 = !(PrevStateNo = [5000,5039])
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1


[State 30375, Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30375

[State 30375, Vel INIT]
type = velset
trigger1 = Anim = 30375
trigger1 = AnimElemTime(1) = 0
x = 100 * Const(Size.xScale)

[State 30375, Vel Stop]
type = velset
trigger1 = Anim = 30375
trigger1 = AnimElemTime(2) = 0
x = 0 * Const(Size.xScale)

[State 30375, SND FX]
type = PlaySnd
trigger1 = Anim = 30375
trigger1 = AnimElemTime(1) = 0
value = 5,980
volumescale = 100
channel = 1
;abspan = 0
;ignorehitpause = 1
;persistent = 0

[State 30375, SND FX]
type = PlaySnd
trigger1 = Anim = 30375
trigger1 = AnimElemTime(1) = 0
value = 5,30301
volumescale = 100
channel = 1
;abspan = 0
;ignorehitpause = 1
;persistent = 0

[State 30375, Floor Cracks]
type = Explod
triggerall = NumExplod(30321) < 4
triggerall = Anim = 30375
triggerall = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger1 = AnimElemTime(1)%3 = 0
anim = 30321
ID = 30321
space = stage
pos = 140 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = 0
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30375, Floor Cracks remove]
type = ModifyExplod
triggerall = NumExplod(30321)
triggerall = Anim = 30375
trigger1 = AnimTime = [-8,-1]
ID = 30321
trans = add
alpha = 256 - 32*(AnimTime+9), 0 + 32*(AnimTime+9)


[State 30375, Rock Up]
type = Explod
triggerall = NumExplod(30321) <= 4 && NumExplod(30322) < 4
triggerall = Anim = 30375
triggerall = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger1 = AnimElemTime(1)%3 = 0
anim = 30322
ID = 30322
space = stage
pos = 140 * facing * Const(size.xscale), -20 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
vel = 0 * facing , -40 * Const(Size.yScale)
accel = 0 * facing * Const(size.xscale), 3 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30375, Rock Up remove]
type = ModifyExplod
triggerall = NumExplod(30322)
triggerall = Anim = 30375
trigger1 = AnimTime = [-8,-1]
ID = 30322
trans = add
alpha = 256 - 32*(AnimTime+9), 0 + 32*(AnimTime+9)

[State 30375, Black smoke]
type = Explod
triggerall = NumExplod(30321) <= 4 && NumExplod(30328) < 4
triggerall = Anim = 30375
triggerall = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger1 = AnimElemTime(1)%3 = 0
anim = 30328
ID = 30328
space = stage
pos = 140 * facing * Const(size.xscale), -20 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = 0 * facing , -40 * Const(Size.yScale)
;accel = 0 * facing * Const(size.xscale), 3 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3.6 * Const(size.xscale),(1.2 + 0.8 * NumExplod(30328)) * Const(size.yscale)
angle = 0
sprpriority = -1
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30375, EnvShake]
type = EnvShake
trigger1 = Anim = 30375
trigger1 = AnimElemTime(1) = 0
time = 34
freq = 60
ampl = 16
phase = -90
ignorehitpause = 0

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30375, HitDef]
type = HitDef
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 30375
trigger1 = AnimElem = 1
attr = C,SP
hitFlag = MAFD
guardFlag = M
priority = 6, Hit
damage = 49,10
getPower = 180,180
givePower = 0,0
pauseTime = 12,18
guard.pauseTime = 12,18
animType = Back
ground.type = High
air.type = Low
ground.hitTime = 26
ground.slideTime = 26
guard.hitTime = 26
air.hitTime = 26
ground.velocity = -6 * Const(size.xscale), -48 * Const(size.yscale)
air.velocity = -6 * Const(size.xscale), -48 * Const(size.yscale)
guard.velocity = -50 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 1
hitSound = S2,12
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(0)), 0 * (var(56) := Floor(P2Dist y + Enemynear,Const(Size.mid.pos.y)))
;envShake.time = 10
;envShake.ampl = 16
;envShake.freq = 90
p1sprpriority = 0
ID = StateNo
NoChainID = StateNo

[State 30375, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 1
name = "Helper Hit Sparks"
postype = P1
pos = var(55) , var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1



[State 30375, End ATK]
type = ChangeAnim
trigger1 = Anim = 30375
trigger1 = AnimTime = 0
value = 9741

[State 30375, End ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = Anim = 9741
MoveType = I

;---------- Target Bounce -------------
[State 30375, Top Bounce 1]
type = TargetState
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = [5030,5060]
trigger1 = Target(30375),vel y < 0 && Target(30375),Pos y <= -440 * Const(Size.yScale)
value = 130376

[State 30375, Top Bounce 1 Dust]
type = Explod
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 130376
trigger1 = Target(30375),vel y < 0 && Target(30375), time = 0
anim = 7015
ID = 7015
space = stage
pos =  Target(30375),Pos X - Pos x, (Target(30375), Pos Y - Pos Y) + Target(30375),Const(Size.mid.pos.y) * Target(30375),Const(Size.yScale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
angle = 180
trans = add
alpha = 256,128
sprpriority = 2
ownpal = 1

[State 30375, Top Bounce 1]
type = EnvShake
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 130376
trigger1 = Target(30375),vel y < 0 && Target(30375), time = 0
time = 6
freq = 100
ampl = 10
phase = 90

[State 30375, Top Bounce 1]
type = PlaySnd
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 130376
trigger1 = Target(30375),vel y < 0 && Target(30375), time = 0
value = 0, 5101
volumescale = 100
;channel = 0
abspan = Floor(Target(30375),Pos x * Const(Size.xScale))
persistent = 1

[State 30375, Top Bounce 1]
type = TargetVelSet
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 130376
trigger1 = Target(30375),vel y < 0 && Target(30375), time = 0
y = 30 * Const(Size.yScale)



[State 30375, Down Bounce 1]
type = TargetState
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 130376
trigger1 = Target(30375),vel y > 0 && Target(30375),Pos y >= 0 + Const720p(100)
trigger1 = var(7) := var(7) + 1
value = 5030

[State 30375, Down Bounce 1 Dust]
type = Explod
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 5030
trigger1 = Target(30375),vel y > 0 && Target(30375), time = 0
anim = 7015
ID = 7015
space = stage
pos =  Target(30375),Pos X - Pos x, (Target(30375), Pos Y - Pos Y) - Const720p(120)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
angle = 0
trans = add
alpha = 256,128
sprpriority = 2
ownpal = 1

[State 30375, Down Bounce 1]
type = EnvShake
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 5030
trigger1 = Target(30375),vel y > 0 && Target(30375), time = 0
time = 6
freq = 100
ampl = 10
phase = -90

[State 30375, Down Bounce 1]
type = PlaySnd
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 5030
trigger1 = Target(30375),vel y > 0 && Target(30375), time = 0
value = 0, 5101
volumescale = 100
;channel = 0
abspan = Floor(Target(30375),Pos x * Const(Size.xScale))
persistent = 1

[State 30375, Down Bounce 1]
type = TargetVelSet
trigger1 = NumTarget(30375)
trigger1 = Target(30375),StateNo = 5030
trigger1 = Target(30375),vel y > 0 && Target(30375), time = 0
y = -52 * Const(Size.yScale)


;---------- End Target Bounce ---------


[State 30375, End]
type = DestroySelf
triggerall = (time > 60 || AnimTime >= 0)
trigger1 = !NumTarget && var(7) = 0
trigger2 = NumTarget
trigger2 = var(7) >= 2
removeexplods = 1
recursive = 1

[State 30375, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "var(5)=%d | counter=%d | SelfID=%d"
params = var(5), var(6), var(31)
ignorehitpause = 1


[State 30375, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;----------- Accelerator Target Hit Bounce Down --------------
[Statedef 130376]
type    = A
movetype= H
physics = N

[State 130376, 1] ;Change anim
type = ChangeAnim2
triggerall = time < 5
trigger1 = Anim != 130376
value = 130376
Elem = 1

[State 130376, Pos Fix]
type = posadd
trigger1 = Anim = 130376 && AnimElemTime(1) = 0
y = Floor(Const(Size.mid.pos.y) * Const(Size.yScale))

[State 130376, 1] ;Change anim
type = ChangeAnim
triggerall = time = 5
trigger1 = Anim != 5050
value = 5050

[State 130376, Pos Fix]
type = posadd
trigger1 = Anim = 5050 && AnimElemTime(1) = 0
y = -Floor(Const(Size.mid.pos.y) * Const(Size.yScale))

[State 130376, AngleDraw]
type = AngleDraw
trigger1 = Anim = 130376
value = 90

[State 130376, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 130376, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const720p(210)
value = 5100 ;Downed get-hit (hit ground from fall)




;Accelerator-WIN
[Statedef 30318]
type = S
anim = 30318
ctrl = 0

[State 30318]
type = assertspecial
trigger1 = time < 180
flag = roundnotover





;=========== Uiharu Move - 01 ===============
[Statedef 30460]
type = S
movetype= I
physics = S
sprpriority = 0
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
triggerall = Anim = 30460
trigger1 = AnimElemTime(1) < 3
trigger2 = AnimElemTime(11) >= 0
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
triggerall = Anim = 30460
trigger1 = AnimElemTime(1) >= 3 && AnimElemTime(11) < 0
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
triggerall = Anim = 30460
trigger1 = AnimElemTime(1) >= 3 && AnimElemTime(11) < 0
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30460, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
y = 0

[State 30460, Pos Fix]
type = posadd
trigger1 = !time && !PrevStateNo
x = 140 * Const(Size.xScale)

[State 30460, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30460

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 6

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))


[State 30460,fade in]
type = trans
trigger1 = Anim = 30460
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+AnimElemTime(1)*64,192-AnimElemTime(1)*64

[State 30460,fade out]
type = trans
trigger1 = Anim = 30460
trigger1 = AnimTime = [-13,0]
trans = add
alpha = Abs(AnimTime)*18, 256 - Abs(AnimTime)*18


[State 30460, SND Voice start]
type = PlaySnd
triggerall = Anim = 30460
trigger1 = AnimElemTime(1) = 5
value = 30000 + var(31)*100, (610 + Random%3)
volumescale = 100
channel = 0
;abspan = 0

[State 30460, SND FX]
type = PlaySnd
triggerall = Anim = 30460
trigger1 = AnimElemTime(1) = 8
value = 30000 + var(31)*100, 613
volumescale = 100
channel = 1
;abspan = 0

[State 30460, Sniper Sight]
type = helper
triggerall = !NumHelper(StateNo + 5)
triggerall = Anim = 30460
trigger1 = AnimElemTime(3) = 1
stateno = StateNo + 5
ID = StateNo + 5
helpertype = normal
keyctrl = 0
name = "Sniper Sight"
postype = P1
pos = 0 * Const(size.xscale), 0 * Const(size.yscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = 1
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 0

[State 30460, End]
type = ChangeState
triggerall = Anim = 30460
trigger1 = AnimTime = 0
value = 30461

[State 30460, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;=========== Uiharu Move - 01 - Mini Game ===============
[Statedef 30461]
type = A
movetype= I
physics = N
sprpriority = 0
anim = 9741
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30461, var6reset]
type = varset
trigger1 = PrevStateNo = 30460
trigger1 = !time
var(6) = 1

;--------------- Pos fix -----------------------
[State 30461, Turn]
type = Turn
trigger1 = !time
trigger1 = NumHelper(20300)
trigger1 = facing != Helper(20300),facing


[State 30461,pos fix]
type = posset
trigger1 = NumHelper(20300)
x = Ceil(Helper(20300),Pos x) - (9000 * Const(Size.xScale) * facing)
y = Ceil(Helper(20300),Pos y) + 20

[State 30461, Target ID]
type = varset
trigger1 = var(32) != Parent,var(32)
var(32) = Parent,var(32)

[State 30461, P1 Base X]
type = varset
trigger1 = NumHelper(20300) && !time
fvar(1) = Helper(20300),fvar(1)

[State 30461, P2 Base X]
type = varset
trigger1 = NumHelper(20300) && !time
fvar(2) = Helper(20300),fvar(2)

[State 30461, comm Base Y]
type = varset
trigger1 = NumHelper(20300) && !time
fvar(3) = Helper(20300),fvar(3)

;--------------- Phase -----------------
; var(5) = 0 Cool Down
; var(7) games played every game last 20s = 1200

[State 30461, Clear Explod]
type = RemoveExplod
trigger1 = var(5) = 0 && var(6) = 1

[State 30461, Cooldown to Game Counter]
type = varadd
trigger1 = var(5) = 0 && var(6) = 2
var(50) = 1

[State 30461, Cooldown to Game 123]
type = varset
triggerall = var(5) = 0 && var(6) >= 60
trigger1 = PlayerIDExist(var(32))
trigger1 = PlayerID(var(32)),Ctrl || PlayerID(var(32)),StateNo < 5000 || PlayerID(var(32)),MoveType = A
trigger1 = var(6):= 1
var(5) = 1 + Random%3

[State 30461, Success Game 1]
type = varset
triggerall = var(5) = 1
trigger1 = var(6) > 1
trigger1 = !NumHelper(30465)
trigger1 = PlayerIDExist(var(32))
trigger1 = PlayerID(var(32)),StateType = L
trigger1 = var(6):= 1
var(5) = 5

[State 30461, Success Game 2]
type = varset
triggerall = var(5) = 2
trigger1 = var(6) > 360
trigger1 = !NumHelper(30465)
trigger1 = PlayerIDExist(var(32))
trigger1 = PlayerID(var(32)),MoveType = H
trigger1 = var(6):= 1
var(5) = 5

[State 30461, Success Game 3]
type = varset
triggerall = var(5) = 3
trigger1 = var(6) > 240
trigger1 = !NumHelper(30465)
trigger1 = var(6):= 1
var(5) = 5

[State 30461, After shoot go back cool down]
type = varset
triggerall = var(5) = 5
trigger1 = var(6) > 16
trigger1 = !NumHelper(30465)
trigger1 = var(6):= 1
var(5) = 0

[State 30461, Timeout or Interrupted]
type = varset
triggerall = var(5) = [1,3]
trigger1 = var(6) > 1200
trigger1 = var(6):= 1
trigger2 = Parent,MoveType = H
trigger2 = !(Parent,StateNo = [120,159])
trigger2 = var(6):= 1
var(5) = 9

[State 30461, Timeout or Interrupted]
type = varset
triggerall = var(5) = 0
trigger1 = var(6)
trigger1 = var(50) >= 4
trigger1 = var(6):= 1
var(5) = 10

[State 30461, Roundover]
type = varset
triggerall = !(var(5) = [9,10])
trigger1 = RoundState != 2
trigger1 = var(6):= 1
var(5) = 10

;-------------- Phase 1~3 ---------------
[State 30461, Clear Explod]
type = RemoveExplod
trigger1 = (var(5) = [1,3]) && var(6) = 1

[State 30461, PlaySND]
type = PlaySnd
trigger1 = (var(5) = [1,3]) && var(6) = 1
value = 30400, 600 + (var(5) - 1)
volumescale = 100
channel = 0
;abspan = 0

[State 30461, TaskBox]
type = Explod
triggerall = !NumExplod(30426)
trigger1 = (var(5) = [1,3]) && var(6) = 1
anim = 30426 + (var(5) - 1)
ID = 30426
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 14 ,fvar(2) - 14),fvar(3) + 160
removetime = -1
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 30461, Sub Char talbox]
type = Explod
triggerall = !NumExplod(20303)
trigger1 = (var(5) = [1,3]) && var(6) = 1
anim = 20303
ID = 20303
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = -1
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 30461, Sub Char Text]
type = Explod
triggerall = !NumExplod(30440)
trigger1 = (var(5) = [1,3]) && var(6) = 1
anim = 30440 + (var(5) - 1)
ID = 30440
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = -1
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1


;-------------- Phase 5 ---------------
[State 30461, Clear Explod]
type = RemoveExplod
trigger1 = (var(5) = 5) && var(6) = 1
ID = 30440

[State 30461, Random var]
type = varset
trigger1 = (var(5) = 5) && var(6) = 1
var(55) = Random

[State 30461, PlaySND]
type = PlaySnd
trigger1 = var(5) = 5 && var(6) = 1
value = 30400, 620 + var(55)%2
volumescale = 100
channel = 0
;abspan = 0

[State 30461, Sub Char talbox]
type = Explod
triggerall = !NumExplod(20303)
trigger1 = var(5) = 5 && var(6) = 1
anim = 20303
ID = 20303
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = -1
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 30461, Sub Char Text]
type = Explod
triggerall = !NumExplod(30440)
trigger1 = var(5) = 5 && var(6) = 1
anim = 30443 + var(55)%2
ID = 30443
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = -1
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 30461, TaskBox flash]
type = Explod
triggerall = !NumExplod(30425)
trigger1 = var(5) = 5 && var(6) = 1
anim = 30425
ID = 30425
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 14 ,fvar(2) - 14),fvar(3) + 160
removetime = 60
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 30461, Sniper Sight]
type = helper
triggerall = !NumHelper(30465)
trigger1 = var(5) = 5 && var(6) = 16
stateno = 30465
ID = 30465
helpertype = normal
keyctrl = 0
name = "Sniper Sight"
postype = P1
pos = 0 * Const(size.xscale), 0 * Const(size.yscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = 1
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 0



;-------------- Phase 9 ---------------
[State 30461, Clear Explod]
type = RemoveExplod
trigger1 = var(5) = 9 && var(6) = 1

[State 30461, PlaySND]
type = PlaySnd
trigger1 = var(5) = 9 && var(6) = 1
value = 30400, 630 + Random%3
volumescale = 100
channel = 0
;abspan = 0


[State 30461, End]
type = DestroySelf
trigger1 = var(5) = 9 && var(6) >= 10
trigger2 = var(5) = 10 && var(6) >= 10
removeexplods = 1
recursive = 1

[State 30461, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30461, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;------------- Uiharu Run away Hit -------------
[Statedef 30469]
type = S
movetype= U
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 30469, SND Voice hurt]
type = PlaySnd
triggerall = MoveType = H
trigger1 = !time
value = 30000 + var(31)*100, 5000 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30469,Turn]
type = Turn
triggerall = MoveType = H
trigger1 = !time

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30469,Action]
type = ChangeAnim
trigger1 = !time
value = 30469

[State 30469, No Hit anymore]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT


[State 30469, Leave Statge]
type = velset
trigger1 = Anim = 30469
trigger1 = !time
x = 6 * Const(Size.xScale)

[State 30469,fade out]
type = trans
trigger1 = Anim = 30469
trigger1 = AnimTime = [-6,0]
trans = add
alpha = Abs(AnimTime)*42, 256 - Abs(AnimTime)*42

[State 30469, Parent Life Add Stop]
type = ParentVarSet
trigger1 = (Parent,var(21) & 16)
var(21) = Parent,var(21) - 16

[State 30169,End]
type = DestroySelf
trigger1 = Anim = 30469 && AnimTime = 0
removeexplods = 1
recursive = 1



;------------- Uiharu Sniper ATK -------------
[Statedef 30465]
type = A
movetype= A
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 30465, Turn]
type = Turn
trigger1 = facing = Enemynear,facing


[State 30465, ATK Distance]
type = AttackDist
trigger1 = MoveType = A
value = Floor((300) * Const(Size.xScale))

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State No Push]
type = PlayerPush
trigger1 = 1
value = 0

[State NotHitby]
type = NotHitby
trigger1 = 1
value = SCA,AA,AP,AT

[State 30465, PlayAnim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30465

[State 30465, Fix y on Enemy]
type = PosSet
triggerall = !NumTarget(StateNo)
trigger1 = Anim = 30465
trigger1 = AnimElemTime(4) < 0
y = Ceil(Enemynear, Pos y + (Enemynear,StateType = A || Enemynear,StateType = S) * (Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale)) + (Enemynear,StateType = C) * (Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yScale) / 2))


[State 30465, Fix X on Enemy]
type = PosSet
triggerall = !NumTarget(StateNo)
trigger1 = Anim = 30465
trigger1 = AnimElemTime(4) < 0
x = Ceil(Enemynear, Pos x) + (4 * Enemynear,facing)

[State 30465, Sniper rifle sight 1]
type = Explod
triggerall = !NumExplod(30420)
triggerall = Anim = 30465
trigger1 = AnimElemTime(1) = 0
anim = 30420
ID = 30420
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
trans = add
alpha = 0,256
angle = 0
sprpriority = 6
ownpal = 1
;remappal = 7000,2
ignorehitpause = 0

[State 30465, Sniper rifle sight 2]
type = Explod
triggerall = !NumExplod(30421)
triggerall = Anim = 30465
trigger1 = AnimElemTime(1) = 0
anim = 30421
ID = 30421
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -1
vel = 0 * facing * Const(size.xscale) , 0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
angle = 0
sprpriority = 7
ownpal = 1
;remappal = 7000,2
ignorehitpause = 0

[State 30465, Sniper rifle sight Grow 1]
type = ModifyExplod
triggerall = NumExplod(30420)
triggerall = Anim = 30465
trigger1 = AnimElemTime(1) = [1,19]
ID = 30420
scale = (3 - 2*(AnimElemTime(1) /19.0)) * Const(size.xscale), (3 - 2*(AnimElemTime(1) /19.0)) * Const(size.yscale)
trans = add
alpha = 9 + (13 * AnimElemTime(1)), 247 - (13 * AnimElemTime(1))

[State 30465, Sniper rifle sight Grow 2]
type = ModifyExplod
triggerall = NumExplod(30421)
triggerall = Anim = 30465
trigger1 = AnimElemTime(1) = [1,19]
ID = 30421
scale = (3 - 2*(AnimElemTime(1) /19.0)) * Const(size.xscale), (3 - 2*(AnimElemTime(1) /19.0)) * Const(size.yscale)

[State 30465, ATK Anim]
type = ChangeAnim
triggerall = Anim = 30465 && AnimElemTime(2) < 0
triggerall = AnimElemTime(1) >= 20
trigger1 = Parent,Anim = 30460 && Parent,AnimElemTime(9) = 0
trigger2 = Parent,StateNo = 30461 && Parent,var(5) = 5
trigger2 = Enemynear,Ctrl || Enemynear,StateType != L || (Enemynear,Anim = 5120 && Enemynear,AnimTime > -26)
value = 30465
elem = 2

[State 30465, snd hit]
type = PlaySnd
trigger1 = Anim = 30465
trigger1 = AnimElemTime(3) = 0
value = 2,11
volumescale = 80
channel = 5
ignorehitpause = 1

[State 30465, snd hit]
type = PlaySnd
trigger1 = Anim = 30465
trigger1 = AnimElemTime(3) = 0
value = 5, 980
channel = 6
ignorehitpause = 1

[State 30465, snd hit]
type = PlaySnd
trigger1 = Anim = 30465
trigger1 = AnimElemTime(3) = 0
value = 5, 980
channel = 7
ignorehitpause = 1

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30465, HitDef]
type = HitDef
triggerall = !(MoveContact || MoveReversed)
trigger1 = Anim = 30465
trigger1 = AnimElem = 3
attr = A,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 120,10
getPower = 0,0
givePower = 0,0
pauseTime = 30,30
guard.pauseTime = 32,32
animType = Up
air.type = Low
ground.hitTime = 32
ground.slideTime = 32
guard.hitTime = 32
air.hitTime = 32
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
hitSound = S2,11
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7459)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := 0), 0 * (var(56) := 0)
envShake.time = 26
envShake.ampl = 8
envShake.freq = 90
p1sprpriority = 0
ID = StateNo
NoChainID = StateNo

[State 30465, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = Anim = 30465
trigger1 = AnimElemTime(4) >= 0
MoveType = I

[State 30465, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Snipper Hit Sparks"
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
triggerall = Anim = 30465 && AnimTime = 0	;Same as End
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),Hitfall
trigger1 = Target(StateNo),StateNo < 5120
var(57) = 1

[State Extend]
type = ChangeState
trigger1 = var(57)
value = 19999

[State 30465,End]
type = DestroySelf
trigger1 = Anim = 30465 && AnimTime = 0
removeexplods = 1
recursive = 1

[State 30465, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30465, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1





;=========== Uiharu Move - 02 ===============
[Statedef 30470]
type = S
movetype= I
physics = S
sprpriority = -1
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
triggerall = Anim = 30470
trigger1 = var(6) < 6
trigger2 = var(6) >304
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
triggerall = Anim = 30470
trigger1 = var(6) >= 6 && var(6) <= 304
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = Anim = 30470
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30470, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
y = 0

[State 30470, Pos Fix 1]
type = posadd
trigger1 = !time && !PrevStateNo
x = Floor(300 * Const(Size.xScale))

[State 30470, Pos Fix 2]
type = posadd
trigger1 = !time && !PrevStateNo
trigger1 = FrontEdgeBodyDist < (120 * Const(Size.xScale))
x = FrontEdgeBodyDist - Floor(120 * Const(Size.xScale))

[State 30470, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30470

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 6

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))


[State 30470,fade in]
type = trans
trigger1 = Anim = 30470
trigger1 = var(6) = [0,5]
trans = add
alpha = 4 + var(6)*42 , 252 - var(6)*42

[State 30470,fade out]
type = trans
trigger1 = Anim = 30470
trigger1 = var(6) = [305,340]
trans = add
alpha = 252 - 7*(var(6)-304), 4 + 7*(var(6)-304)


[State 30470, SND Voice start]
type = PlaySnd
triggerall = Anim = 30470
trigger1 = var(6) = 6
value = 30000 + var(31)*100, (700 + Random%4)
volumescale = 100
channel = 0
;abspan = 0


[State 30470, BG Flowers]
type = helper
triggerall = !NumHelper(30474)
triggerall = Anim = 30470
trigger1 = var(6) = 1
stateno = 30474
ID = 30474
helpertype = normal
keyctrl = 0
name = "BG Flowers"
postype = P1
pos = 0 * Const(size.xscale), Const(Size.head.pos.y) * Const(size.yscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = 1
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 0

[State 30470, Parent Life Add Stop]
type = ParentVarSet
triggerall = (Parent,var(21) & 16)
trigger1 = !NumHelper(30474)
trigger2 = Abs(ParentDist X) > (250 * Const(Size.xScale))
trigger3 = !(ParentDist Y = [-(250 * Const(Size.xScale)), (40 * Const(Size.xScale))])
var(21) = Parent,var(21) - 16

[State 30470, Parent Life Add Start]
type = ParentVarSet
triggerall = !(Parent,var(21) & 16)
triggerall = NumHelper(30474)
trigger1 = Abs(ParentDist X) < (250 * Const(Size.xScale))
trigger1 = (ParentDist Y = [-(250 * Const(Size.xScale)), (40 * Const(Size.xScale))])
var(21) = Parent,var(21) + 16

[State 30470, End]
type = DestroySelf
triggerall = Anim = 30470
trigger1 = var(6) >= 340
removeexplods = 1
recursive = 1

[State 30470, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | ParentDist=%d"
params = var(5), var(6),var(7),PrevStateNo ,ParentDist Y
ignorehitpause = 1

[State 30470, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0


;=========== Uiharu Move - 02 BG Flower ===============
;280 ticks

[Statedef 30474]
type = A
movetype= I
physics = N
sprpriority = -6
anim = 9741
ctrl = 0

[State 30474, BG]
type = Explod
triggerall = !NumExplod(30437)
trigger1 = var(6) = 0
anim = 30437
ID = 30437
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 12 * Const(size.xscale),6 * Const(size.yscale)
trans = add
alpha = 128,128
angle = 0
sprpriority = -7
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, BG fade in]
type = ModifyExplod
triggerall = NumExplod(30437)
trigger1 = var(6) = [0,9]
ID = 30437
trans = add
alpha = 2 + 14 * var(6), 254 - 14 * var(6)


;--------- Layer 3 Flowers -------------
[State 30474, Flower Layer 3]
type = Explod
trigger1 = var(6) = 10
anim = 30432
ID = 330432
space = stage
pos = 80 * facing * Const(size.xscale), 60 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -3
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 3 spark]
type = Explod
trigger1 = var(6) = 15
anim = 30439
ID = 330439
space = stage
pos = 80 * facing * Const(size.xscale), 60 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.3 * Const(size.xscale),1.3 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -2
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 3]
type = Explod
trigger1 = var(6) = 10
anim = 30432
ID = 330432
space = stage
pos = -120 * facing * Const(size.xscale), 20 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -3
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 3 spark]
type = Explod
trigger1 = var(6) = 15
anim = 30439
ID = 330439
space = stage
pos = -120 * facing * Const(size.xscale), 20 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.3 * Const(size.xscale),1.3 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -2
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 3]
type = Explod
trigger1 = var(6) = 10
anim = 30434
ID = 330432
space = stage
pos = -70 * facing * Const(size.xscale), -30 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -3
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 3 spark]
type = Explod
trigger1 = var(6) = 15
anim = 30439
ID = 330439
space = stage
pos = -70 * facing * Const(size.xscale), -30 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.3 * Const(size.xscale),1.3 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -2
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 3 Grow]
type = ModifyExplod
triggerall = NumExplod(330432)
trigger1 = var(6) = [11,15]
ID = 330432
scale = 0.7 + 0.7*((var(6) - 10) / 5.0) * Const(size.xscale),0.7 + 0.7*((var(6) - 10) / 5.0) * Const(size.yscale)

[State 30474, Flower Layer 3 Spark Grow]
type = ModifyExplod
triggerall = NumExplod(330439)
trigger1 = var(6) = [20,25]
ID = 330439
trans = add
alpha = 256 - (51 * (var(6) - 20)), (51 * (var(6) - 20))




;--------- Layer 4 Flowers -------------
[State 30474, Flower Layer 4]
type = Explod
trigger1 = var(6) = 20
anim = 30436
ID = 430436
space = stage
pos = -60 * facing * Const(size.xscale), 100 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 4 spark]
type = Explod
trigger1 = var(6) = 25
anim = 30439
ID = 430439
space = stage
pos = -60 * facing * Const(size.xscale), 100 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.3 * Const(size.xscale),1.3 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -3
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 4]
type = Explod
trigger1 = var(6) = 20
anim = 30434
ID = 430436
space = stage
pos = 60 * facing * Const(size.xscale), -20 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 4 spark]
type = Explod
trigger1 = var(6) = 25
anim = 30439
ID = 430439
space = stage
pos = 60 * facing * Const(size.xscale), -20 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 1.3 * Const(size.xscale),1.3 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -3
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0


[State 30474, Flower Layer 4 Grow]
type = ModifyExplod
triggerall = NumExplod(430436)
trigger1 = var(6) = [21,25]
ID = 430436
scale = 0.7 + 0.7*((var(6) - 20) / 5.0) * Const(size.xscale),0.7 + 0.7*((var(6) - 20) / 5.0) * Const(size.yscale)

[State 30474, Flower Layer 4 Spark Grow]
type = ModifyExplod
triggerall = NumExplod(430439)
trigger1 = var(6) = [25,30]
ID = 430439
trans = add
alpha = 256 - (51 * (var(6) - 25)), (51 * (var(6) - 25))



;--------- Layer 5 Flowers -------------
[State 30474, Flower Layer 5]
type = Explod
trigger1 = var(6) = 30
anim = 30432
ID = 530432
space = stage
pos = 20 * facing * Const(size.xscale), -80 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.4 * Const(size.xscale),0.4 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -5
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5 spark]
type = Explod
trigger1 = var(6) = 35
anim = 30439
ID = 530439
space = stage
pos = 20 * facing * Const(size.xscale), -80 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5]
type = Explod
trigger1 = var(6) = 30
anim = 30436
ID = 530432
space = stage
pos = -180 * facing * Const(size.xscale), -10 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.4 * Const(size.xscale),0.4 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -5
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5 spark]
type = Explod
trigger1 = var(6) = 35
anim = 30439
ID = 530439
space = stage
pos = -180 * facing * Const(size.xscale), -10 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5]
type = Explod
trigger1 = var(6) = 30
anim = 30436
ID = 530432
space = stage
pos = 160 * facing * Const(size.xscale), 10 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.4 * Const(size.xscale),0.4 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -5
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5 spark]
type = Explod
trigger1 = var(6) = 35
anim = 30439
ID = 530439
space = stage
pos = 160 * facing * Const(size.xscale), 10 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5]
type = Explod
trigger1 = var(6) = 30
anim = 30434
ID = 530432
space = stage
pos = -160 * facing * Const(size.xscale), 100 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.4 * Const(size.xscale),0.4 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -5
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5 spark]
type = Explod
trigger1 = var(6) = 35
anim = 30439
ID = 530439
space = stage
pos = -160 * facing * Const(size.xscale), 100 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5]
type = Explod
trigger1 = var(6) = 30
anim = 30434
ID = 530432
space = stage
pos = 140 * facing * Const(size.xscale), 80 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 280
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.4 * Const(size.xscale),0.4 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = 0
sprpriority = -5
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0

[State 30474, Flower Layer 5 spark]
type = Explod
trigger1 = var(6) = 35
anim = 30439
ID = 530439
space = stage
pos = 140 * facing * Const(size.xscale), 80 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
removeongethit = 0
;vel = var(55) * facing * Const(size.xscale) / 3.0 ,var(56) * Const(size.yscale) / 3.0
;accel = -var(55) * facing * Const(size.xscale) / 64.0 ,-var(56) * Const(size.yscale) / 64.0
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.7 * Const(size.xscale),0.7 * Const(size.yscale)
;trans = add
;alpha = 128,128
angle = Random%360
sprpriority = -4
ownpal = 1
;remappal = 7451 + Random%4, 0
ignorehitpause = 0


[State 30474, Flower Layer 5 Grow]
type = ModifyExplod
triggerall = NumExplod(530432)
trigger1 = var(6) = [31,35]
ID = 530432
scale = 0.5 + 0.5*((var(6) - 30) / 5.0) * Const(size.xscale),0.5 + 0.5*((var(6) - 30) / 5.0) * Const(size.yscale)

[State 30474, Flower Layer 5 Spark Grow]
type = ModifyExplod
triggerall = NumExplod(530439)
trigger1 = var(6) = [35,40]
ID = 530439
trans = add
alpha = 256 - (51 * (var(6) - 35)), (51 * (var(6) - 35))

;---------- Roll Flowers ---------------
[State 30474, Flower Layer 3 Roll]
type = ModifyExplod
triggerall = NumExplod(330432)
trigger1 = var(6) = [36,180]
ID = 330432
scale = 1.4 * Const(size.xscale), 1.4 * Const(size.yscale)
angle = 2* (var(6) - 35)

[State 30474, Flower Layer 4 Roll]
type = ModifyExplod
triggerall = NumExplod(430436)
trigger1 = var(6) = [36,180]
ID = 430436
scale = 1.4 * Const(size.xscale), 1.4 * Const(size.yscale)
angle = -2* (var(6) - 35)

[State 30474, Flower Layer 5 Roll]
type = ModifyExplod
triggerall = NumExplod(530432)
trigger1 = var(6) = [36,180]
ID = 530432
scale = 1.0 * Const(size.xscale), 1.0 * Const(size.yscale)
angle = 2* (var(6) - 35)

;---------- Flowers Fade Out -------------
[State 30474, Flower Layer 3 Roll]
type = ModifyExplod
triggerall = NumExplod(330432)
trigger1 = var(6) = [181,280]
ID = 330432
scale = (1.4 + 1.4*((var(6) - 180) / 100.0)) * Const(size.xscale), (1.4 + 1.4*((var(6) - 180) / 100.0)) * Const(size.yscale)
trans = add
alpha = 256 - Floor(2.56 * (var(6) - 180)), Floor(2.56 * (var(6) - 180))
angle = 2 * (var(6) - 35)

[State 30474, Flower Layer 4 Roll]
type = ModifyExplod
triggerall = NumExplod(430436)
trigger1 = var(6) = [181,280]
ID = 430436
scale = 1.4 * Const(size.xscale), 1.4 * Const(size.yscale)
trans = add
alpha = 256 - Floor(2.56 * (var(6) - 180)), Floor(2.56 * (var(6) - 180))
angle = -2 * (var(6) - 35)

[State 30474, Flower Layer 5 Roll]
type = ModifyExplod
triggerall = NumExplod(530432)
trigger1 = var(6) = [181,280]
ID = 530432
scale = 1.0 * Const(size.xscale), 1.0 * Const(size.yscale)
trans = add
alpha = 256 - Floor(2.56 * (var(6) - 180)), Floor(2.56 * (var(6) - 180))
angle = 2 * (var(6) - 35)

[State 30474, BG fade in]
type = ModifyExplod
triggerall = NumExplod(30437)
trigger1 = var(6) = [181,280]
ID = 30437
trans = add
alpha = 128 - Floor(1.28 * (var(6) - 180)), 128 + Floor(1.28 * (var(6) - 180))


[State 30474, End]
type = DestroySelf
trigger1 = var(6) >= 280
removeexplods = 1
recursive = 1

[State 30474, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30474, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0





;=========== Kuroko Move - 01 ===============
[Statedef 30560]
type = S
movetype= I
physics = S
sprpriority = 0
ctrl = 0

[State Luck]
type = varset
trigger1 = !PrevStateNo && !time
var(0) = Random < 500


[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)


[State NotHitby]
type = NotHitBy
trigger1 = var(5) = 0
trigger1 = var(6) < 4
trigger2 = var(5) = 1
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(5) = 0
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30560, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = -GameWidth * facing
y = 0

[State 30560, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = (30560 - 20*var(0))

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 36

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "SHIRAI Kuroko"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "SHIRAI Kuroko"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "SHIRAI Kuroko"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)

[State 30560,fade in]
type = trans
trigger1 = Anim = (30560 - 20*var(0))
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30560,fade in speed]
type = velset
trigger1 = Anim = (30560 - 20*var(0))
x = Const(Velocity.run.fwd.x) * Const(size.xscale)

[State 30560, Snd-Steps]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 30560, Run-Dust Smaill]
type = Explod
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(8) = 0
anim = 7010
ID = 7010 + AnimElemNo(0)
space = stage
pos =  -20 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 4
vel = facing * Vel x / 4.0, 0
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
sprpriority = 2
trans = add
alpha = 256,128
shadow = 1
ownpal = 1

[State 30560, Run-Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7014)
trigger1 = AnimElemTime(4) = [2,3]
ID = 7014
scale = (1.0 + ((AnimElemTime(4)-1) / 5.0)) * Const(size.xscale),(1.0 - ((AnimElemTime(4)-1) / 3.0)) * Const(size.yscale)
trans = add
alpha = 256 - (AnimElemTime(4)-1)*64, 0 + (AnimElemTime(4)-1)*64

[State 30560, Run-Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7018)
trigger1 = AnimElemTime(8) = [2,3]
ID = 7018
scale = (1.0 + ((AnimElemTime(8)-1) / 5.0)) * Const(size.xscale),(1.0 - ((AnimElemTime(8)-1) / 3.0)) * Const(size.yscale)
trans = add
alpha = 256 - (AnimElemTime(8)-1)*64, 0 + (AnimElemTime(8)-1)*64


[State 30560, SND Voice start]
type = PlaySnd
triggerall = root,name != "MISAKA Mikoto"
trigger1 = var(6) = 20
value = 30000 + var(31)*100, 60 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30560, SND Voice start]
type = PlaySnd
triggerall = root,name = "MISAKA Mikoto"
trigger1 = var(6) = 20
value = 30000 + var(31)*100, 60 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30560, Phase 2 active]
type = varset
trigger1 = var(5) = 0
trigger1 = ParentDist x < (200 * Const(Size.xScale)) && ParentDist x > (-100 * Const(Size.xScale))
trigger1 = var(6) := 1
var(5) = 1

[State 30560, Freez Anime]
type = ChangeAnim
trigger1 = var(5) = 1
value = Anim
Elem = AnimElemNo(0)

[State 30560, Freez vel]
type = velset
trigger1 = var(5) = 1
x = 0
y = 0

[State 30560, SND Teleport]
type = PlaySnd
trigger1 = var(5) = 1
trigger1 = var(6) = 1
value = 5,7530
volumescale = 100
channel = 5
;abspan = 0

[State 30560, PalFX]
type = PalFX
trigger1 = var(5) = 1
trigger1 = var(6) >= 1
time = 1
add = 64 * var(6),64 * var(6), 64 * var(6)
mul = 256,256,256
color = 256

[State 30560, Trans]
type = Trans
trigger1 = var(5) = 1
trigger1 = var(6) = [5,12]
trans = add
alpha = 256 - 32*(var(6)-4),0 + 32*(var(6)-4)

[State 30560, Explod Teleport]
type = Explod
triggerall = !NumExplod(7530)
trigger1 = var(5) = 1
trigger1 = var(6) = 1
anim = 7530
ID = 7530
space = stage
pos = 40 * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 6
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
angle = 0
sprpriority = 1
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30560, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7530)
trigger1 = var(5) = 1
trigger1 = var(6) = [1,6]
ID = 7530
scale = (4 - (0.6 * var(6))) * Const(size.xscale),(0.3 + (0.28 * var(6))) * Const(size.yscale)
trans = add
alpha = 256,256


[State 30560, End Phase 2]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = var(6) >= 12
value = 30561

[State 30560, End]
type = DestroySelf
trigger1 = var(6) >= 600
trigger2 = FrontEdgeBodyDist < -200 * Const(Size.xScale)
removeexplods = 1
recursive = 1

[State 30560, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30560, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0

;----- Stage 2 ------
[Statedef 30561]
type = S
movetype= A
physics = S
sprpriority = 0
ctrl = 0
velset = 0,0

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30561]
type = posset
trigger1 = !time
trigger1 = var(6) := 1
x = Parent,Pos x - (80 * Const(Size.xScale)) * facing
y = IFElse(Parent,Pos y = 0,Parent,Pos y,Parent,Pos y - 120 * Const(Size.xScale))

[State 30561]
type = StateTypeSet
trigger1 = !time
trigger1 = pos y < 0
statetype = A
physics = N

[State 30561]
type = ChangeAnim
trigger1 = !time
value = IFelse(StateType=A,30562 - 20*var(0),30561- 20*var(0))

[State 30561, SND Grab]
type = PlaySnd
triggerall = Parent,Alive
trigger1 = AnimElemTime(2) = 0
value = 2,14
volumescale = 100
channel = 2
;abspan = 0

[State 30561, EnvShake]
type = EnvShake
triggerall = Parent,Alive
trigger1 = AnimElemTime(2) = 0
time = 12
freq = 120
ampl = 6
phase = -90

[State 30560, SND Teleport]
type = PlaySnd
trigger1 = AnimElemTime(2) = 12
value = 5,7530
volumescale = 100
channel = 5
;abspan = 0

[State 305661, PalFX]
type = PalFX
trigger1 = AnimElemTime(2) >= 12
time = 1
add = 64 * (AnimElemTime(2)-11),64 * (AnimElemTime(2)-11),64 * (AnimElemTime(2)-11)
mul = 256,256,256
color = 256

[State 30561, Trans]
type = Trans
trigger1 = AnimElemTime(2) = [17,24]
trans = add
alpha = 256 - 32*(AnimElemTime(2)-16),0 + 32*(AnimElemTime(2)-16)

[State 30561, Explod Teleport]
type = Explod
triggerall = !NumExplod(7530)
trigger1 = AnimElemTime(2) = 12
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
sprpriority = 1
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30561, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7530)
trigger1 = AnimElemTime(2) = [12,17]
ID = 7530
scale = (4 - (0.6 * (AnimElemTime(2) - 11))) * Const(size.xscale),(0.3 + (0.28 * (AnimElemTime(2) - 11))) * Const(size.yscale)
trans = add
alpha = 256,256

[State 30561, Next]
type = ChangeState
trigger1 = (Parent,StateNo = [30566,30567])
trigger1 = AnimElemTime(2) = 24
value = 30562

[State 30561, End Failed]
type = ChangeState
trigger1 = !(Parent,StateNo = [30566,30567])
trigger1 = AnimElemTime(2) = 24
value = 30569

[State 30561, End]
type = DestroySelf
trigger1 = var(6) >= 600
trigger2 = FrontEdgeBodyDist < -200 * Const(Size.xScale)
removeexplods = 1
recursive = 1

[State 30561, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30561, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




[Statedef 30562]
type = A
movetype= I
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State 30562, NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30562, PosFix]
type = PosSet
trigger1 = !time
x = Enemynear,Pos x - (180*Const(Size.xScale)) * facing * Parent,var(10)
y = Enemynear,Pos y - (360*Const(Size.xScale))

[State 30572, Turn]
type = Turn
trigger1 = !time
trigger1 = P2Dist x < 0

[State 30562, Anim]
type = ChangeAnim
trigger1 = !time
value = 30562 - 20*var(0)
Elem = 3

[State 30562, PalFX]
type = PalFX
trigger1 = time <= 6
time = 1
add = 256 - 42*time,256 - 42*time,256 - 42*time
mul = 256,256,256
color = 256

[State 30562, Explod Teleport]
type = Explod
triggerall = !NumExplod(7531)
trigger1 = time = 0
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

[State 30562, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7531)
trigger1 = time = [0,6]
ID = 7531
scale = (4 - (0.6 * (time - 0))) * Const(size.xscale),(0.3 + (0.28 * (time - 0))) * Const(size.yscale)
trans = add
alpha = 256,256

[State 30562, End]
type = ChangeState
trigger1 = time >= 6
value = 30563


;---- Fade away in air -----
[Statedef 30563]
type = A
movetype= I
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State 30563, NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30563, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

;[State 30563, SND Teleport]
;type = PlaySnd
;trigger1 = Abs(AnimTime) = 10
;value = 5,7530
;volumescale = 100
;channel = 5
;abspan = 0


[State 30563, PalFX]
type = PalFX
trigger1 = Abs(AnimTime) = [6,10]
time = 1
add = 256 - (25 * (Abs(AnimTime) - 5)),256 - (25 * (Abs(AnimTime) - 5)),256 - (25 * (Abs(AnimTime) - 5))
mul = 256,256,256
color = 256

[State 30563, PalFX]
type = PalFX
trigger1 = Abs(AnimTime) < 6
time = 1
add = 256,256,256
mul = 256,256,256
color = 256

[State 30563, Explod Teleport]
type = Explod
triggerall = !NumExplod(7530)
trigger1 = Abs(AnimTime) = 10
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

[State 30563, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7530)
trigger1 = Abs(AnimTime) = [4,10]
ID = 7530
scale = (0.57 * (Abs(AnimTime) - 3)) * Const(size.xscale),(3 - (0.43 * (Abs(AnimTime) - 3))) * Const(size.yscale)
trans = add
alpha = 256,256

[State 30563, Trans]
type = Trans
trigger1 = Abs(AnimTime) = [0,4]
trans = add
alpha = 64*Abs(AnimTime), 256 - 64*Abs(AnimTime)

[State 30563,End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
;recursive = 1


;----- Player State 1 ----
[Statedef 30566]
type = U
movetype= I
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30566]; Freeze
type = ChangeAnim
trigger1 = 1
value = Anim
Elem = AnimElemNo(0)

[State 30566, PalFX]
type = PalFX
trigger1 = time >= 12
time = 1
add = 64 * (time-11),64 * (time-11),64 * (time-11)
mul = 256,256,256
color = 256

[State 30566, Trans]
type = Trans
trigger1 = time = [17,24]
trans = add
alpha = 256 - 32*(time-16),0 + 32*(time-16)

[State 30566, Explod Teleport]
type = Explod
triggerall = !NumExplod(7531)
trigger1 = time = 12
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

[State 30566, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7531)
trigger1 = time = [12,17]
ID = 7531
scale = (4 - (0.6 * (time - 11))) * Const(size.xscale),(0.3 + (0.28 * (time - 11))) * Const(size.yscale)
trans = add
alpha = 256,256

[State 30566, Front or Back]
type = varset
triggerall = time = 23
trigger1 = !AILevel 
var(10) = IFElse(Command = "holdfwd",-1,1)

[State 30566, Front or Back]
type = varset
triggerall = time = 23
trigger1 = AILevel 
var(10) = IFElse(Random<600,-1,1)


[State 30566, End]
type = SelfState
trigger1 = time >= 24
value = 30567

;----- Player State 2 ----
[Statedef 30567]
type = A
movetype= I
physics = N
sprpriority = 1
ctrl = 0
velset = 0,0

[State 30567, NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30567, PosFix]
type = PosSet
trigger1 = !time
x = Enemynear,Pos x - (100*Const(Size.xScale)) * facing * var(10)
y = Enemynear,Pos y - (240*Const(Size.xScale))

[State 30576, Turn]
type = Turn
trigger1 = !time
trigger1 = P2Dist x < 0

[State 30567, Anim]
type = ChangeAnim
trigger1 = 1
value = 41
Elem = 2

[State 30566, PalFX]
type = PalFX
trigger1 = time <= 6
time = 1
add = 256 - 42*time,256 - 42*time,256 - 42*time
mul = 256,256,256
color = 256

[State 30566, Explod Teleport]
type = Explod
triggerall = !NumExplod(7531)
trigger1 = time = 0
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

[State 30566, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7531)
trigger1 = time = [0,6]
ID = 7531
scale = (4 - (0.6 * (time - 0))) * Const(size.xscale),(0.3 + (0.28 * (time - 0))) * Const(size.yscale)
trans = add
alpha = 256,256

[State 30567, End]
type = SelfState
trigger1 = time >= 6
value = 50
ctrl = 1


;------------- Koruko Fade away -------------
[Statedef 30569]
type = A
movetype= U
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 30569, Clear Explods]
type = RemoveExplod
trigger1 = !time

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30569, SND Voice hurt]
type = PlaySnd
triggerall = MoveType = H
trigger1 = !time
value = 30000 + var(31)*100, 5000 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30569,action stop]
type = ChangeAnim
trigger1 = !time
value = ((30000 + var(31)*100 + 68) - 20*var(0)) + MoveType = H

[State 30569, Leave Statge]
type = veladd
trigger1 = !time
x = -16 * Const(Size.xScale)
y = -6 * Const(Size.yScale)

[State 30569,fade out]
type = trans
trigger1 = AnimTime = [-6,0]
trans = add
alpha = Abs(AnimTime)*42, 256 - Abs(AnimTime)*42


[State 30569,End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
;recursive = 1

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
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
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1








;=========== Kuroko Move - 02 ===============
[Statedef 30570]
type = S
movetype= I
physics = S
sprpriority = 0
ctrl = 0

[State Luck]
type = varset
trigger1 = !PrevStateNo && !time
var(0) = Random < 500


[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)


[State NotHitby]
type = NotHitBy
trigger1 = var(5) = 0
trigger1 = var(6) < 4
trigger2 = var(5) = 1
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(5) = 0
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State 30570, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = -(GameWidth / 2) * facing
y = 0

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 30570, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = (30560 - 20*var(0))

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 36

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "SHIRAI Kuroko"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "SHIRAI Kuroko"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "SHIRAI Kuroko"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)


[State 30570,fade in]
type = trans
trigger1 = Anim = (30560 - 20*var(0))
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30570,fade in speed]
type = velset
trigger1 = Anim = (30560 - 20*var(0))
x = Const(Velocity.run.fwd.x) * Const(size.xscale)

[State 30570, Snd-Steps]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 30570, Run-Dust Smaill]
type = Explod
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(8) = 0
anim = 7010
ID = 7010 + AnimElemNo(0)
space = stage
pos =  -20 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = 4
vel = facing * Vel x / 4.0, 0
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
sprpriority = 2
trans = add
alpha = 256,128
shadow = 1
ownpal = 1

[State 30570, Run-Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7014)
trigger1 = AnimElemTime(4) = [2,3]
ID = 7014
scale = (1.0 + ((AnimElemTime(4)-1) / 5.0)) * Const(size.xscale),(1.0 - ((AnimElemTime(4)-1) / 3.0)) * Const(size.yscale)
trans = add
alpha = 256 - (AnimElemTime(4)-1)*64, 0 + (AnimElemTime(4)-1)*64

[State 30570, Run-Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7018)
trigger1 = AnimElemTime(8) = [2,3]
ID = 7018
scale = (1.0 + ((AnimElemTime(8)-1) / 5.0)) * Const(size.xscale),(1.0 - ((AnimElemTime(8)-1) / 3.0)) * Const(size.yscale)
trans = add
alpha = 256 - (AnimElemTime(8)-1)*64, 0 + (AnimElemTime(8)-1)*64


[State 30570, SND Voice start]
type = PlaySnd
triggerall = root,name != "MISAKA Mikoto"
trigger1 = var(6) = 20
value = 30000 + var(31)*100, 60 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30570, SND Voice start]
type = PlaySnd
triggerall = root,name = "MISAKA Mikoto"
trigger1 = var(6) = 20
value = 30000 + var(31)*100, 60 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30570, Phase 2 active]
type = varset
trigger1 = var(5) = 0
trigger1 = ((Enemynear,Pos x - Pos x)*facing) < (480 * Const(Size.xScale)) && ((Enemynear,Pos x - Pos x)*facing) > (-100 * Const(Size.xScale))
trigger1 = var(6) := 1
var(5) = 1

[State 30570, Freez Anime]
type = ChangeAnim
trigger1 = var(5) = 1
value = Anim
Elem = AnimElemNo(0)

[State 30570, Freez vel]
type = velset
trigger1 = var(5) = 1
x = 0
y = 0

[State 30570, SND Teleport]
type = PlaySnd
trigger1 = var(5) = 1
trigger1 = var(6) = 1
value = 5,7530
volumescale = 100
channel = 5
;abspan = 0

[State 30570, PalFX]
type = PalFX
trigger1 = var(5) = 1
trigger1 = var(6) >= 1
time = 1
add = 64 * var(6),64 * var(6), 64 * var(6)
mul = 256,256,256
color = 256

[State 30570, Trans]
type = Trans
trigger1 = var(5) = 1
trigger1 = var(6) = [5,12]
trans = add
alpha = 256 - 32*(var(6)-4),0 + 32*(var(6)-4)

[State 30570, Explod Teleport]
type = Explod
triggerall = !NumExplod(7530)
trigger1 = var(5) = 1
trigger1 = var(6) = 1
anim = 7530
ID = 7530
space = stage
pos = 40 * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 6
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
angle = 0
sprpriority = 1
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30570, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7530)
trigger1 = var(5) = 1
trigger1 = var(6) = [1,6]
ID = 7530
scale = (4 - (0.6 * var(6))) * Const(size.xscale),(0.3 + (0.28 * var(6))) * Const(size.yscale)
trans = add
alpha = 256,256


[State 30570, End Phase 2]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = var(6) >= 12
value = 30571

[State 30570, End]
type = DestroySelf
trigger1 = var(6) >= 600
trigger2 = FrontEdgeBodyDist < -200 * Const(Size.xScale)
removeexplods = 1
recursive = 1

[State 30570, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30570, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



[Statedef 30571]
type = A
movetype= A
physics = N
sprpriority = 0
ctrl = 0

[State 30571, INIT Phase]
type = varset
trigger1 = !time
trigger1 = var(6) := 1
var(5) = 2

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30571, Play Init Anim]
type = ChangeAnim
trigger1 = !time
value = 30570

[State 30571, Vel start]
type = VelSet
trigger1 = Anim = 30570
trigger1 = AnimElemTime(1) = 0
x =  40 * Const(Size.xScale)
y = -20 * Const(Size.yScale)

[State 30571, Vel Stop]
type = VelSet
trigger1 = MoveContact
trigger1 = Anim = 30570
trigger1 = Vel x
x =  0
y =  0

[State 30571, Gravity]
type = veladd
trigger1 = !MoveContact
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30571, HitDef]
type = HitDef
trigger1 = !(MoveContact || MoveReversed)
trigger1 = Anim = 30570
trigger1 = AnimElemTime(1) > 1
attr = A,SP
hitFlag = MAF
guardFlag = M
priority = 5, Hit
damage = 32,0
getPower = 30,10
givePower = 0,0
pauseTime = 4,16
guard.pauseTime = 4,16
animType = light
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 18
ground.velocity = 0 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = 0 * Const(size.xscale), IFElse(P2StateType = L,0,0) * Const(size.yscale)
guard.velocity = -28 * Const(size.xscale)
ground.cornerpush.veloff = -28 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 28; HitPause + Slidetime + waitTime
forceStand = 1
;hitSound = S2,14
guardSound = S2,0
sparkNo = -1;-1 + 0 * (var(53) := 7451)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 148 + 0 * (var(55) := Floor(P2Bodydist x + 20)), -212 + 0 * (var(56) := -200)
;envShake.time = 6
;envShake.ampl = 2
;envShake.freq = 120
;p1sprpriority = 1
ID = StateNo



[State 30571, IF not hit]
type = ChangeState
trigger1 = !AnimTime
value = 30572

[State 30571, End]
type = DestroySelf
trigger1 = var(6) >= 400
removeexplods = 1
recursive = 1

[State 30571, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30571, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;------ 2nd hit -----
[Statedef 30572]
type = A
movetype= A
physics = N
sprpriority = 1
ctrl = 0

[State 30572, Init Var]
type = varset
trigger1 = !time
trigger1 = var(6) := 1
var(5) = 3

[State 30572, PosFix]
type = PosSet
trigger1 = !time
x = Enemynear,Pos x - 180 * Const(Size.xScale) * facing * IFElse(NumTarget(30571) && (Enemynear,StateNo = [5000,5090]),-1,1)
y = Enemynear,Pos y + Floor(Enemynear,Const(Size.mid.pos.y)/2.0) * Enemynear,Const(Size.yScale)

[State 30572, Turn]
type = Turn
trigger1 = !time
trigger1 = ((Enemynear,Pos x - Pos x) * facing) < 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30572, Play Init Anim]
type = ChangeAnim
trigger1 = !time
value = 30572 - 20*var(0)

[State 30572, PalFX]
type = PalFX
trigger1 = var(5) = 3
trigger1 = var(6) = [1,6]
time = 1
add = 256 - 42 * var(6), 256 - 42 * var(6), 256 - 42 * var(6)
mul = 256,256,256
color = 256

[State 30572, Explod Teleport]
type = Explod
triggerall = !NumExplod(7530)
trigger1 = var(5) = 3
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
sprpriority = 1
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 1

[State 30572, Explod Teleport Grow]
type = ModifyExplod
triggerall = NumExplod(7530)
trigger1 = var(5) = 3
trigger1 = var(6) = [1,6]
ID = 7530
scale = (4 - (0.6 * var(6))) * Const(size.xscale),(0.3 + (0.28 * var(6))) * Const(size.yscale)
trans = add
alpha = 256,256

[State 30572, Vel start]
type = VelSet
trigger1 = Anim = 30570
trigger1 = AnimElemTime(1) = 0
x = 4 * Const(Size.xScale)
y = 2 * Const(Size.yScale)

[State 30572, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 30572, SND Voice start]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30000 + var(31)*100, 410 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30572, HitDef]
type = HitDef
trigger1 = !(MoveContact || MoveReversed)
trigger1 = AnimElem = 3
attr = A,SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = 62,0
getPower = 30,10
givePower = 0,0
pauseTime = 18,18
guard.pauseTime = 18,18
animType = light
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -32 * Const(size.xscale), -18 * Const(size.yscale)
air.velocity = -32 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -36 * Const(size.xscale)
ground.cornerpush.veloff = -28 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32; HitPause + Slidetime + waitTime
forceStand = 1
hitSound = S2,13
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7453)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 148 + 0 * (var(55) := 148), -212 + 0 * (var(56) := -212)
envShake.time = 12
envShake.ampl = 10
envShake.freq = 90
p1sprpriority = 1
ID = StateNo

[State 30572, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Hit Sparks"
postype = P1
pos = var(55) * Const(size.xscale), var(56) * Const(size.yscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 30572, reset var]
type = varset
trigger1 = var(5)
trigger1 = MoveContact
var(5) = 0
;Tell Main can attack, 1-3 can't attack

[State 30572, Land]
type = ChangeState
trigger1 = Vel y > 0
trigger1 = Pos y >= 0
value = 30573

[State 30572, End]
type = DestroySelf
trigger1 = var(6) >= 400
removeexplods = 1
recursive = 1

[State 30572, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30572, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0





[Statedef 30573]
type = C
movetype= I
physics = C
sprpriority = 0
ctrl = 0
velset = 0,0


[State 30573, INIT Phase]
type = posset
trigger1 = !time
y = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30573, Play Init Anim]
type = ChangeAnim
trigger1 = !time
value = 30573 - 20*var(0)

[State 30573, Exit]
type = ChangeState
trigger1 = !AnimTime
value = 30569

[State 30573, Snd-Steps]
type = PlaySnd
trigger1 = time = 0
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 30573, Land-Dust]
type = Explod
trigger1 = time = 0 
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

[State 30573, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7015)
trigger1 = time = [8,15]
ID = 7015
trans = add
alpha = 256 - (time-7)*32, 0 + (time-7)*32


[State 30573, End]
type = DestroySelf
trigger1 = var(6) >= 400
removeexplods = 1
recursive = 1

[State 30573, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter1=%d | Counter2=%d | PrevNo=%d | NumTarget=%d"
params = var(5), var(6),var(7),PrevStateNo ,NumTarget
ignorehitpause = 1

[State 30573, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0






;=========== SHOKUHOU Misaki Type - 1 - 06 ===============
[Statedef 30660]
type = S
movetype= I
physics = S
sprpriority = 2
ctrl = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = !PrevStateNo
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
triggerall = !PrevStateNo
trigger1 = var(6) >= 4
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30660, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
y = 0

[State 30660, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
x = Floor(GameWidth / 2) * -facing


[State 30660, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30610

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 10

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State 30660,fade in]
type = trans
trigger1 = Anim = 30610
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

;Running Speed
[State 30660,fade in speed]
type = velset
trigger1 = Anim = 30610
x = 14 * Const(size.xscale)

[State 30660, Change to RUN]
type = ChangeState
trigger1 = var(6) >= 4
value = 30610

[State 30660, Destroy]
type = DestroySelf
triggerall = var(6) > 4
trigger1 = FrontEdgeDist < (-300 * Const(Size.xScale))
trigger2 = BackEdgeDist < (-300 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30660, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), (Enemynear,Pos x - Pos x)*facing, (Parent,Pos x - Pos x)*facing
ignorehitpause = 1


[State 30660, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;=========== SHOKUHOU Misaki Type - 1 - RUNNING ===============
[Statedef 30610]
type = S
movetype= I
physics = S
sprpriority = 2
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable


[State 30610, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30610
trigger1 = AnimElem = 2 || AnimElem = 6
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

;Attack-------------------------------
[State 30610, ATK State]
type = ChangeState
trigger1 = var(5) > ((Parent,Life*1.0 / Parent,LifeMax) * 10) / 5
trigger1 = Anim = 30600 & AnimElemTime(1) = 1
value = 30620

;RUN---------------------------------------------------------
[State 30610, RUN]
type = ChangeAnim
triggerall = Anim != 30610
trigger1 = var(6) > 100
trigger1 = Random < 80
trigger1 = var(6) := 1
value = 30610

;Turn when start run
[State 30610, Turn If hit wall]
type = Turn
;when start run
trigger1 = Anim = 30610 && AnimElemTime(1) = 0
trigger1 = var(12) < 800
trigger1 = var(13) < 0
;run hit wall
trigger2 = Anim = 30610
trigger2 = FrontEdgeBodyDist < 30 * Const(Size.xScale)

;STOP-----------------------------------------------------------
[State 30610, Stand or Taunt]
type = ChangeAnim
triggerall = Anim = 30610
;Stand in front of player
trigger1 = var(6) > 25
trigger1 = var(12) > 0 && (var(13) = [-200,-1])
trigger1 = var(12) > var(13)
trigger1 = BackEdgeDist < (Parent,P2Dist x)
trigger1 = Random < 140
trigger1 = var(6) := 1
trigger1 = var(5) := (var(5) + 1)
;Stand behind of player
trigger2 = var(6) > 25
trigger2 = var(12) > 0 && (var(13) = [20,250])
trigger2 = var(12) > var(13)
trigger2 = BackEdgeDist > (Parent,P2Dist x)
trigger2 = Random < 140
trigger2 = var(6) := 1
trigger2 = var(5) := (var(5) + 1)
;Stand in between
trigger3 = var(6) > 25
trigger3 = (var(12) = [600,800]) && var(13) < 0
trigger3 = var(12) > var(13)
trigger3 = Parent,BackEdgeDist < (Parent,P2Dist x)
trigger3 = Random < 140
trigger3 = var(6) := 1
trigger3 = var(5) := (var(5) + 1)
;too near to enemy
trigger4 = var(6) > 12
trigger4 = (var(12) = [300,600]) && var(13) < 0
trigger4 = Enemynear,facing != facing
trigger4 = Random < 200
trigger4 = var(6) := 1
trigger4 = var(5) := (var(5) + 1)
;at another edge
trigger5 = var(6) > 12
trigger5 = FrontEdgeBodyDist < 80
trigger5 = BackEdgeBodyDist > Abs(var(12))
trigger5 = BackEdgeBodyDist > Abs(var(13))
trigger5 = var(6) := 1
trigger5 = var(5) := (var(5) + 1)
;Stand in front of player
trigger6 = var(6) > 15
trigger6 = var(13) > 0 && var(13) > 0
trigger6 = var(12) > var(13)
trigger6 = BackEdgeDist > GameWidth / 5.0
trigger6 = Random < ((Parent,LifeMax - Parent,Life) / 2.0)
trigger6 = var(6) := 1
trigger6 = var(5) := (var(5) + 1)
;At back
value = IFElse(Random < 300,30600 , (30616 + 3*(Random < 500)))

[State 30610, to stand]
type = ChangeAnim
trigger1 = Anim = 30616 && AnimElemTime(9) >= -1
trigger2 = Anim = 30619 && !AnimTime
value = 30600

;Turn when stopping
[State 30610, Turn If hit wall]
type = Turn
;when stopping
trigger1 = Anim != 30610 && AnimElemTime(1) = 0
trigger1 = var(12) < 0

;-- Stop voice
[State 30660, SND Voice start]
type = PlaySnd
triggerall = Anim != 30610 && Anim != 30600
trigger1 = AnimElemTime(1) = 0
value = 30000 + var(31)*100, IFElse(Parent,name="MISAKA Mikoto" && Random < 100,305 ,300 + Random%5)
volumescale = 100
channel = 0
;abspan = 0

;Running Speed
[State 30610,fade in speed]
type = velset
trigger1 = Anim = 30610
x = 14 * Const(size.xscale)

[State 30610,fade in speed]
type = velset
trigger1 = Anim != 30610
x = 0

[State 30610, Exit WIN or LOSE]
type = ChangeState
triggerall = RoundState >= 3
trigger1 = Anim = 30600 
value = IFElse(Parent,WIN,30618,30617)


[State 30610, Destroy]
type = DestroySelf
triggerall = var(6) > 4
trigger1 = FrontEdgeDist < (-900 * Const(Size.xScale))
trigger2 = BackEdgeDist < (-900 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30610, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d | Test=%d"
params = var(5), var(6), var(12), var(13), ((Parent,Life*1.0 / Parent,LifeMax) * 10) / 5
ignorehitpause = 1


[State 30610, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0






;=========== SHOKUHOU Misaki Exit ===============
[Statedef 30669]
type = U
movetype= U
physics = S
sprpriority = 0
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30669, Hurt Anim]
type = ChangeAnim
trigger1 = Anim != 30650
trigger1 = MoveType = H
value = 30650

[State 30669, Turn if hurt]
type = Turn
trigger1 = Anim = 30650
trigger1 = AnimElemTime(1) = 0
trigger1 = var(12) < 0

[State 30669, NotHit]
type = NotHitBy
trigger1 = Anim = 30650
value = SCA
time = 1
ignorehitpause = 1

[State 30669, No Push]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 30669, No Camera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0, 0
ignorehitpause = 1

[State 30669, Hurt Voice]
type = PlaySnd
triggerall = Anim = 30650
trigger1 = AnimElemTime(1) = 1
value = 30000 + var(31)*100, 5000 + Random%5
volumescale = 100
channel = 0
;abspan = 0

[State 30669, Hurt Speed]
type = velset
trigger1 = MoveType = H
x = GetHitVar(xvel) * Const(Size.xScale) * facing
y = -6 * Const(Size.yScale)

[State 30669, Fade Out]
type = Trans
trigger1 = Anim = 30650
trigger1 = AnimTime = [-7,-1]
trans = add
alpha = Abs(AnimTime) * 32, 256 - Abs(AnimTime) * 32



;-------- Normal end ---
[State 30669, Anim Run]
type = ChangeAnim
trigger1 = !time
trigger1 = MoveType != H
value = 30610

[State 30669, Anim Run turn]
type = Turn
trigger1 = Anim = 30610 && AnimElemTime(1) = 0
trigger1 = var(12) > 0

[State 30669,fade in speed]
type = velset
trigger1 = Anim = 30610
x = 14 * Const(size.xscale)

[State 30669, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30610
trigger1 = AnimElem = 2 || AnimElem = 6
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 30669, Exit WIN or LOSE]
type = ChangeState
triggerall = RoundState >= 3
trigger1 = Anim = 30610 
value = IFElse(Parent,WIN,30618,30617)

[State 30669, Delay]
type = ChangeState
trigger1 = Anim = 30610 && NumTarget
trigger1 = (FrontEdgeBodydist < -50 * Const(Size.xScale)) || (BackEdgeBodydist < -50 * Const(Size.xScale))
value = 30624

[State 30669, Destroy]
type = DestroySelf
trigger1 = Anim = 30650 && !AnimTime
trigger2 = Anim = 30610 && !NumTarget
trigger2 = (FrontEdgeBodydist < -50 * Const(Size.xScale)) || (BackEdgeBodydist < -50 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30669, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), var(12), var(13)
ignorehitpause = 1


[State 30669, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;=========== SHOKUHOU Misaki Type - 1 - ATK ===============
[Statedef 30620]
type = S
movetype= A
physics = S
sprpriority = 2
ctrl = 0
facep2 = 1

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable


[State 30620, Anim]
type = ChangeAnim
trigger1 = !time
value = 30620

[State 30620, Pos fix]
type = PosAdd
trigger1 = Anim = 30620
trigger1 = AnimElemTime(4) = 0
x = 40 * Const(Size.xScale)

[State 30620, Turn]
type = Turn
trigger1 = Anim = 30620
trigger1 = AnimElemTime(10) = 0
trigger1 = (Enemynear,Pos x - Pos x) * facing < 0


[State 30620, Charge-Helper-01]
type = helper
triggerall = !NumHelper(7100)
trigger1 = Anim = 30620
trigger1 = AnimElemTime(2) = 0
helpertype = normal
stateno = 7100
ID = 7100
name = "Charge-Helper-01"
postype = P1
pos = 10 * Const(Size.xScale), Const(Size.mid.pos.y) * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = 2; Give Color 1=Grey 234=RGB 5=Dard Orange 6=Purple
size.shadowoffset = Anim ; Tell helper to exist if not this Anim
supermovetime = 65535
pausemovetime = 65535

[State 30620, SND WindFX]
type = PlaySnd
trigger1 = Anim = 30620
trigger1 = AnimElemTime(3) = 0
value = 30600, 232
volumescale = 100
channel = 1
abspan = 0

[State 30620, SND FX]
type = PlaySnd
trigger1 = Anim = 30620
trigger1 = AnimElemTime(1) = 0
value = 30000 + var(31)*100, 200
volumescale = 100
channel = 1
;abspan = 0

[State 30620, SND FX]
type = PlaySnd
trigger1 = Anim = 30620
trigger1 = AnimElemTime(6) = 0
value = 30000 + var(31)*100, 201
volumescale = 100
channel = 2
;abspan = 0

[State 30620, SND Voice]
type = PlaySnd
trigger1 = Anim = 30620
trigger1 = AnimElemTime(10) = 0
value = 30000 + var(31)*100, 220
volumescale = 100
channel = 0
;abspan = 0

[State 30620, Star]
type = Explod
triggerall = !NumExplod(30660)
trigger1 = Anim = 30620 
trigger1 = AnimElemTime(12) = 1
anim = 30660
ID = 30660
space = stage
pos = 113 * Const(size.xscale)* facing, -287 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 12
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
angle = 0
sprpriority = 3
ownpal = 1
scale = 0.5 * Const(size.xscale), 0.5 * Const(size.yscale)
;trans = add
;alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 1


[State 30620, Grab]
type = hitdef
trigger1 = Anim = 30620 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(22) <= 0
attr = S, HT
hitflag = MAF
priority = 7, Hit
sparkNo = -1 + 0 * (var(53) := -1)
hitsound = s2, 19
p1facing = 0
p2facing = 0
;p1stateno = 800
ground.velocity =  -120 * Const(size.xscale), -28  * Const(size.yscale)
air.velocity = -120 * Const(size.xscale), -28  * Const(size.yscale)
guard.velocity = 0 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0
ID = StateNo
nochainID = StateNo
fall.envshake.phase = Parent,ID
fall.recovertime = ID
fall = 1
fall.recover = 0
envshake.time = 22
envshake.freq = 90
envshake.ampl = 24
envshake.phase = 0

[State 30620, Target State]
type = TargetState
triggerall = NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo != 1130620 && Target(StateNo),Time <= 1
ID = StateNo
value = 1130620

[State 30620, Ducks]
type = helper
triggerAll = !NumHelper(7300)
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),StateNo = 1130620 && Target(StateNo),Time = 14 && Target(StateNo),sysvar(1) != 2
stateno = 7300
ID = 7300
helpertype = normal
keyctrl = 0
name = "Dizzy Ducks"
postype = P1
pos = 0,0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = Target(StateNo),ID
;size.xscale = Const(size.xscale)
;size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 30620, Helper Imagine Breaker Target is Mikoto]
type = helper
triggerall = !NumHelper(30174)
triggerAll = MoveHit && NumTarget(StateNo)
trigger1 = Target(StateNo),sysvar(1) = 2
trigger1 = Target(StateNo),Time = 1 && Target(StateNo),StateNo = 1130620
helpertype = normal
stateno = 30174
ID = 30174
name = "Imagine Breaker Flash"
postype = P1
pos = (Target(StateNo),Pos x - Pos x) * facing, (Target(StateNo),Pos y - Pos y) + Target(StateNo),Const(Size.head.pos.y)
ownpal = 1
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 30620, Target is Mikoto]
type = Pause
trigger1 = Anim = 30620 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(22) <= 0
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo),sysvar(1) = 2
trigger1 = Target(StateNo),Time > 1 && Target(StateNo),StateNo = 1130620
trigger1 = time%3 > 0
time = 1
endcmdbuftime = 1 
movetime = 1
pausebg = 1



[State 30620, End]
type = ChangeState
trigger1 = Anim = 30620
trigger1 = AnimTime = 0
value = 30669

[State 30620, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), var(12), var(13)
ignorehitpause = 1


[State 30620, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0


;=========== SHOKUHOU Misaki Type - 1 - ATK Delay ===============
[Statedef 30624]
type = A
movetype= A
physics = N
sprpriority = 0
ctrl = 0
facep2 = 1
anim = 9741
velset = 0,0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 30624, DropTarget]
type = TargetDrop
triggerall = NumTarget
trigger1 = Target,IsHelper
trigger1 = Target,Time > 600
trigger2 = Target,MoveType != H



[State 30624, Destroy]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = time > 600
removeexplods = 1
recursive = 1


[State 30624, Debug]
type = displaytoclipboard
trigger1 = 1
text = "NumTarget = %d"
params = NumTarget
ignorehitpause = 1




;Target for Misaki Type A 30620 ---------
[Statedef 1130620]
type = U
movetype= H
physics = S
sprpriority = 0
ctrl = 0
velset = 0,0

[State 1130620, SYSVAR]
type = varset
trigger1 = 1
sysvar(1) = 0

[State 1130620, SYSVAR]
type = varset
trigger1 = Name = "MISAKA Mikoto"
sysvar(1) = 2


[State 1130620, Anim-Saft-fallback]
type = ChangeAnim2
trigger1 = !time
value = 5006

[State 1130620, Anim]
type = ChangeAnim
trigger1 = AnimExist(5006)
trigger1 = !time
value = 5006

[State 1130620, vel fix go down]
type = velset
trigger1 = sysvar(1) != 2
trigger1 = Pos y != 0
y = 4

[State 1130620, Posfix on ground]
type = posset
trigger1 = sysvar(1) != 2
trigger1 = Pos y > -10 && Pos y != 0
y = 0

;----- Misaka on Ground
[State 1130620, Release on land misaka]
type = SelfState
triggerall = StateType != A
trigger1 = Pos y = 0
trigger1 = time > 50
trigger1 = sysvar(1) = 2
value = 0
ctrl = 1

[State 1130620, Back IF Misaka]
type = velset
trigger1 = sysvar(1) = 2
trigger1 = Anim != 5750 && pos y = 0
trigger1 = time = 16
x = GetHitvar(xvel) * facing

;----- Misaka in Air
[State 1130620, Back IF Misaka]
type = ChangeAnim2
trigger1 = Pos y != 0
trigger1 = time = 16
trigger1 = sysvar(1) = 2
value = 5750

[State 1130620, State]
type = StateTypeSet
trigger1 = Anim = 5750 && AnimElemTime(1) = 0
statetype = A
movetype = H
physics = N

[State 1130620, Back IF Misaka]
type = velset
trigger1 = Anim = 5750 && AnimElemTime(1) = 0
trigger1 = StateType = A
x = GetHitvar(xvel) * facing
y = GetHitvar(yvel)

[State 1130620, Gravity]
type = veladd
trigger1 = Anim = 5750
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 1130620, Release in air misaka]
type = SelfState
triggerall = StateType = A
trigger1 = Pos y >= 0 && vel y > 0
trigger1 = sysvar(1) = 2
value = 5100






[State 1130620, No Hitfall]
type = HItFallSet
trigger1 = sysvar(1) != 2
trigger1 = !time
value = 0

[State 1130620, LandState]
type = StateTypeSet
trigger1 = Anim = 5300 || time > 36
trigger1 = StateType != S
trigger1 = Pos y = 0
Statetype = S
physics = S

[State 1130620, NoHit]
type = NotHitBy
trigger1 = pos y != 0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1130620, Stand - fallback]
type = ChangeAnim2
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel
triggerall = sysvar(1) = 0
triggerall = Anim != 5300 && !AnimExist(5300)
trigger1 = Anim != 5300
trigger1 = time > 36 && pos y = 0
value = 5300

[State 1130620, Stand]
type = ChangeAnim
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel
triggerall = sysvar(1) = 0
triggerall = Anim != 5300 && AnimExist(5300)
trigger1 = Anim != 5300
trigger1 = time > 36 && pos y = 0
value = 5300

;---------------- Move Control  
[State 1130620, Stand - fallback]
type = ChangeAnim2
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel = 0
triggerall = sysvar(1) = 0
triggerall = Anim != 5300 && !AnimExist(5300)
triggerall = time > 36 && pos y = 0
trigger1 = !(PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdback" || PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdfwd")
value = 5300

[State 1130620, Stand]
type = ChangeAnim
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel = 0
triggerall = sysvar(1) = 0
triggerall = Anim != 5300 && AnimExist(5300)
triggerall = time > 36 && pos y = 0
trigger1 = !(PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdback" || PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdfwd")
value = 5300

[State 1130620, Walk Back - fallback]
type = ChangeAnim2
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel = 0
triggerall = sysvar(1) = 0
triggerall = Vel x >= 0 && !AnimExist(20)
triggerall = time > 36 && pos y = 0
trigger1 = PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdback"
value = 21

[State 1130620, Walk back]
type = ChangeAnim
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel = 0
triggerall = sysvar(1) = 0
triggerall = Vel x >= 0 && AnimExist(20)
triggerall = time > 36 && pos y = 0
trigger1 = PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdback"
value = 21

[State 1130620, Walk FWD - fallback]
type = ChangeAnim2
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel = 0
triggerall = sysvar(1) = 0
triggerall = Vel x <= 0 && !AnimExist(21)
triggerall = time > 36 && pos y = 0
trigger1 = PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdfwd"
value = 20

[State 1130620, Walk FWD]
type = ChangeAnim
triggerall = PlayerIDExist(Floor(GetHitVar(fall.envshake.phase)))
triggerall = PlayerID(Floor(GetHitVar(fall.envshake.phase))),AILevel = 0
triggerall = sysvar(1) = 0
triggerall = Vel x <= 0 && AnimExist(21)
triggerall = time > 36 && pos y = 0
trigger1 = PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdfwd"
value = 20


[State 1130620, Walk speed]
type = velset
trigger1 = sysvar(1) != 2
trigger1 = !(Anim = 20 || Anim = 21)
x = 0

[State 1130620, Walk speed]
type = velset
trigger1 = sysvar(1) != 2
trigger1 = Anim = 20
x = const(velocity.walk.fwd.x) * Const(size.xscale)

[State 1130620, Walk speed]
type = velset
trigger1 = sysvar(1) != 2
trigger1 = Anim = 21
x = const(velocity.walk.back.x) * Const(size.xscale)



[State 1130620, Release]
type = SelfState
trigger1 = sysvar(1) != 2
trigger1 = Time > 600
trigger2 = sysvar(1) != 2
trigger2 = RoundState != 2
value = 0
ctrl = 1

;---------------- End Move Control


[State 1130620, Destroy]
type = DestroySelf
trigger1 = IsHelper
removeexplods = 1
recursive = 1

[State 1130620, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Attacker-Parent ID = %d | Attacker ID = %d | C.FWD=%d | C.BACK=%d"
params = Floor(GetHitVar(fall.envshake.phase)),GetHitVar(fall.recovertime),PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdfwd", PlayerID(Floor(GetHitVar(fall.envshake.phase))),Command = "holdback"
ignorehitpause = 1







;=========== SHOKUHOU Misaki Type - 2 - 06 ===============
[Statedef 30670]
type = S
movetype= I
physics = S
sprpriority = 2
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = !PrevStateNo
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
triggerall = !PrevStateNo
trigger1 = var(6) >= 4
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable

[State 30670, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
y = 0

[State 30670, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
x = Floor(GameWidth / 2) * -facing


[State 30670, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30610

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 10

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State 30670,fade in]
type = trans
trigger1 = Anim = 30610
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

;Running Speed
[State 30670,fade in speed]
type = velset
trigger1 = Anim = 30610
x = 14 * Const(size.xscale)

[State 30670, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30610
trigger1 = AnimElem = 2 || AnimElem = 6
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 30670, Change to ATK-P1]
type = ChangeState
triggerall = var(6) > 4
trigger1 = Abs(Pos x) < Abs(GameWidth/2)/2
trigger2 = var(13) < -100 *Const(Size.xScale)
value = 30671


[State 30670, Destroy]
type = DestroySelf
triggerall = var(6) > 4
trigger1 = FrontEdgeDist < (-300 * Const(Size.xScale))
trigger2 = BackEdgeDist < (-300 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30670, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), var(12), var(13)
ignorehitpause = 1


[State 30670, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;=========== SHOKUHOU Misaki Type - 2 - ATK Phase 1 ===============
[Statedef 30671]
type = S
movetype= I
physics = S
sprpriority = 2
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State UnGuardable from Back]
type = AssertSpecial
trigger1 = Enemynear,P2Dist x < 0
flag = UnGuardable


;----- Phase --------
[State 30671, End]
type = varset
trigger1 = var(5) = 1
trigger1 = !(NumHelper(30402) || NumHelper(30403) || NumHelper(30404))
trigger1 = var(6) := 1
trigger2 =  var(5) = 0
trigger2 = Anim = 30624 && AnimElemTime(6) > 0
trigger2 = !(NumHelper(30402) || NumHelper(30403) || NumHelper(30404))
var(5) = 2

;----- Phase End ----

;---- INIT ATK P1 ---
[State 30671, ATK-P1-Anim1]
type = ChangeAnim
trigger1 = !time && Anim != 30622
value = 30622

[State 30671, ATK-P1-Anim2]
type = ChangeAnim
trigger1 = Anim = 30622 && !AnimTime
value = 30624
Elem = 3

[State 30671, ATK-P1-Anim2-Hold]
type = ChangeAnim
triggerall = Anim = 30624 && var(5) = 0
trigger1 = AnimELemTime(6) > 0 && AnimELemTime(7) < 0
value = 30624
Elem = 6

[State 30671, ATK-P1-Anim2-Skip]
type = ChangeAnim
triggerall = Anim = 30624 && var(5) = 2
trigger1 = AnimELemTime(6) > 0 && AnimELemTime(7) < 0
value = 30624
Elem = 30

[State 30671, Finsh Standby]
type = ChangeAnim
trigger1 = Anim = 30624 && !AnimTime
value = 30600


[State 30671, Exit WIN]
type = ChangeState
triggerall = RoundState >= 3
trigger1 = Anim = 30600 
value = IFElse(Parent,WIN,30618,30617)



[State 30671, Exit Anim]
type = ChangeAnim
triggerall = Anim = 30600 
trigger1 = var(5) = 2
value = 30610

[State 30671, Exit Anim Turn]
type = Turn
trigger1 = var(5) = 2
trigger1 = Anim = 30610
trigger1 = AnimElemTime(1) = 0



;--- Vel ----
[State 30671,fade in speed]
type = velset
trigger1 = Anim = 30610
x = 14 * Const(size.xscale)

[State 30671, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30610
trigger1 = AnimElem = 2 || AnimElem = 6
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 30671, ATK-P1-Voice]
type = PlaySnd
trigger1 = Anim = 30622
trigger1 = AnimElemTime(4) = 0
value = 30000 + var(31)*100, 223
volumescale = 100
channel = 0
;abspan = 0

[State 30671, ATK-P1-Snd]
type = PlaySnd
trigger1 = Anim = 30622
trigger1 = AnimElemTime(5) = 0
value = 30000 + var(31)*100, 211
volumescale = 100
channel = 1
;abspan = 0

[State 30671, ATK-P1-Voice]
type = PlaySnd
trigger1 = Anim = 30624
trigger1 = AnimElemTime(11) = 0
value = 30000 + var(31)*100, 222
volumescale = 100
channel = 0
;abspan = 0

[State 30671, ATK-P1-Snd]
type = PlaySnd
trigger1 = Anim = 30624
trigger1 = AnimElemTime(14) = 0
value = 30000 + var(31)*100, 213
volumescale = 100
channel = 1
;abspan = 0

[State 3063067120, Star]
type = Explod
triggerall = !NumExplod(30660)
trigger1 = Anim = 30622 
trigger1 = AnimElemTime(5) = 0
anim = 30660
ID = 30660
space = stage
pos = 150 * Const(size.xscale)* facing, -287 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 12
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
angle = 0
sprpriority = 3
ownpal = 1
scale = 0.5 * Const(size.xscale), 0.5 * Const(size.yscale)
;trans = add
;alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 1

[State 30671, Create BOY-A]
type = helper
triggerall = !NumHelper(30402)
trigger1 = Anim = 30622
trigger1 = AnimElemTime(3) = 0
stateno = 30402
ID = 30402
helpertype = Normal
keyctrl = 0
name = "BOY-A"
postype = P1
pos = -800 * Const(size.xscale),0 * Const(size.xscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = 30402
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State 30671, Create BOY-B]
type = helper
triggerall = !NumHelper(30403)
trigger1 = Anim = 30622
trigger1 = AnimElemTime(3) = 10
stateno = 30402
ID = 30403
helpertype = Normal
keyctrl = 0
name = "BOY-B"
postype = P1
pos = -400 * Const(size.xscale),0 * Const(size.xscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = 30403
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State 30671, Create BOY-C]
type = helper
triggerall = !NumHelper(30404)
trigger1 = Anim = 30622
trigger1 = AnimElemTime(3) = 15
stateno = 30402
ID = 30404
helpertype = Normal
keyctrl = 0
name = "BOY-C"
postype = P1
pos = -600 * Const(size.xscale),0 * Const(size.xscale)
ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
size.proj.doscale = 30404
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)



[State 30671, Destroy]
type = DestroySelf
triggerall = var(6) > 4
triggerall = var(5) != 1
triggerall = !(NumHelper(30402) || NumHelper(30403) || NumHelper(30404)) || var(5) = 2
trigger1 = FrontEdgeDist < (-300 * Const(Size.xScale))
trigger2 = BackEdgeDist < (-300 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30671, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), (Enemynear,Pos x - Pos x)*facing, (Parent,Pos x - Pos x)*facing
ignorehitpause = 1


[State 30671, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;=========== SHOKUHOU Misaki BOY-A ===============
[Statedef 30402]
type = S
movetype= A
physics = S
sprpriority = -1
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

[State selfvar]
type = varset
trigger1 = !time
var(1) = Const(size.proj.doscale)

;---- Vars Ends ---------

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = !PrevStateNo
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
triggerall = !PrevStateNo
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 30409
slot = 7
time = 1
ignorehitpause = 1

[State 30402, Pos Fix]
type = posset
trigger1 = !time && !PrevStateNo
trigger2 = !(Anim = [30407,30408])
trigger2 = Pos y != 0
y = 0


[State 30402, Play Init RUN]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30406

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 10

[State Apply Pallet]
type = ReMapPal
trigger1 = !time && !PrevStateNo
source = 30402, 1
dest = 30402, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30402, 1
dest = 30402, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State 30402,fade in]
type = trans
trigger1 = Anim = 30406
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

;--------- Phase Control ---------
[State 30402, Stop at Misaki]
type = varset
triggerall = var(1) = 30402
triggerall = Parent,StateNo = [30670,30671]
trigger1 = var(5) = 0 && var(6)
trigger1 = var(13) = [250,280]
trigger1 = var(6) := 1
var(5) = 1

[State 30402, Stop at Misaki]
type = varset
triggerall = var(1) = 30404
triggerall = Parent,StateNo = [30670,30671]
trigger1 = var(5) = 0 && var(6)
trigger1 = var(13) = [-60,-20]
trigger1 = var(6) := 1
var(5) = 1

[State 30402, Stop at Misaki]
type = varset
triggerall = var(1) = 30403
triggerall = Parent,StateNo = [30670,30671]
trigger1 = var(5) = 0 && var(6)
trigger1 = var(13) = [-200,-160]
trigger1 = var(6) := 1
var(5) = 1


[State 30402, RUN from Misaki]
type = varset
trigger1 = var(5) = 1 && var(6)
trigger1 = Parent,Anim = 30622 && Parent,AnimElemTime(6) = 1
trigger1 = var(6) := 1
var(5) = 2

[State 30402, ATK]
type = varset
trigger1 = var(5) = 2 && var(6)
trigger1 = var(12) < 350 * Const(Size.xScale)
trigger1 = var(6) := 1
var(5) = 3

[State 30402, exit]
type = varset
trigger1 = var(5) = 3 && var(6)
trigger1 = !NumTarget(30402)
trigger1 = (Anim = [30407,30408]) && vel y > 0 && pos y >= 0
trigger1 = var(6) := 1
var(5) = 9



;----- ANIM ----
[State 30402, Stop Anim]
type = ChangeAnim
trigger1 = Anim = 30406
trigger1 = var(5) = 1 && var(6) = 1
value = var(1)

[State 30402, RUN for ATK Anim]
type = ChangeAnim
trigger1 = Anim = var(1)
trigger1 = var(5) = 2 && var(6) = 1
value = 30406
Elem = 1 + Random%8

[State 30402, RUN for ATK Anim]
type = ChangeAnim
trigger1 = !(Anim = [30407,30408])
trigger1 = var(5) = 3 && var(6)
value = IFElse(var(1)%2 = 1,30408,30407)

[State 30402, RUN exit]
type = ChangeAnim
trigger1 = var(5) = 9 && Anim != 30406
value = 30406

;------ 
;Running Speed
[State 30402,fade in speed]
type = velset
trigger1 = Anim = 30406 || (Anim = [30407,30408])
x = 16 * Const(size.xscale)

[State 30402,Jump]
type = velset
trigger1 = (Anim = [30407,30408])
trigger1 = AnimElemTime(1) = 0
y = -22 * Const(size.yscale)

[State 50, Gravity]
type = veladd
trigger1 = (Anim = [30407,30408])
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 30402, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30406
trigger1 = AnimElem = 1 || AnimElem = 5
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

;--- Stop ---

[State 30402, Grab]
type = hitdef
trigger1 = (Anim = [30407,30408])
trigger1 = !(MoveContact || MoveReversed)
attr = S, ST
hitflag = MAF
priority = 4, Hit
sparkNo = -1 + 0 * (var(53) := -1)
hitsound = -1;s2, 19
p1facing = 0
p2facing = 0
;p1stateno = 800
ground.velocity =  0 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = 0 * Const(size.xscale), 0  * Const(size.yscale)
guard.velocity = 0 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
p1sprpriority = 0
p2sprpriority = 1
guard.dist = 0
ID = 30402
nochainID = 30402
fall.envshake.phase = Parent,ID
fall.recovertime = ID
fall = 1
fall.recover = 0

[State 30402, Drop Target]
type = TargetDrop
trigger1 = NumTarget(StateNo)
trigger1 = Target(StateNo), IsHelper
trigger1 = !(Target(StateNo),StateNo = [1130402,1130409])
ignorehitpause = 1

[State 30402, Target State]
type = TargetState
trigger1 = NumTarget(StateNo)
trigger1 = !(Target(StateNo),StateNo = [1130402,1130409])
value = 1130402
ignorehitpause = 1

[State 30402, Update_Parent]
type = ParentVarSet
trigger1 = NumTarget(StateNo)
trigger1 = (Target(StateNo),StateNo = [1130402,1130409])
var(5) = 1
persistent = 0

[State 30402, Update_Parent]
type = ParentVarSet
trigger1 = NumTarget(StateNo)
trigger1 = (Target(StateNo),StateNo = [1130402,1130409])
var(6) = 1
persistent = 0

[State 30402, Self State]
type = ChangeState
trigger1 = NumTarget(StateNo)
trigger1 = (Target(StateNo),StateNo = [1130402,1130409])
trigger1 = Pos y >= -10 && vel y > 0
trigger2 = !NumTarget(StateNo)
trigger2 = Enemynear,StateNo = 1130402 || Enemynear,StateNo = 1130403
trigger2 = Pos y >= -10 && vel y > 0
value = 30403
ignorehitpause = 1

[State 30402, Target Bind]
type = TargetBind
trigger1 = NumTarget(StateNo)
trigger1 = (Target(StateNo),StateNo = [1130402,1130409])
ID = StateNo
time = 1
pos = 120,0

[State 30402, Destroy]
type = DestroySelf
triggerall = var(6) > 8 && var(5)
trigger1 = FrontEdgeDist < (-300 * Const(Size.xScale))
;trigger2 = BackEdgeDist < (-300 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30402, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d | P2y=%d | Helper=%d"
params = var(5), var(6), var(12), var(13), P2Dist y, NumHelper(30403)
ignorehitpause = 1


[State 30402, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;=========== SHOKUHOU Misaki BOY- Attack Smoke ===============
[Statedef 30403]
type = S
movetype= A
physics = S
sprpriority = -1
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing


;---- Vars Ends ---------

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = Anim = 9741
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = Anim != 9741
value = SCA,AA,AP
time = 1

[State HitOverRide]; Hurt
type = HitOverride
triggerall = !PrevStateNo
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 30409
slot = 7
time = 1
ignorehitpause = 1

;------- Phase ------
[State 30403, End Beat]
type = varset
trigger1 = var(5) = 4 && var(6) > 180
trigger1 = var(6) := 1
var(5) = 5

[State 30403, End Beat]
type = varset
triggerall = var(5) = 9 && var(6)
trigger1 = NumHelper(30402)
trigger1 = Helper(30402),var(5) = 4 && Helper(30402),var(6) >= 180
trigger1 = var(6) := 1
trigger2 = NumHelper(30403)
trigger2 = Helper(30403),var(5) = 4 && Helper(30403),var(6) >= 180
trigger2 = var(6) := 1
trigger3 = NumHelper(30404)
trigger3 = Helper(30404),var(5) = 4 && Helper(30404),var(6) >= 180
trigger3 = var(6) := 1
var(5) = 5

[State 30403, End Run]
type = varset
trigger1 = var(5) = 5 && var(6) >= 80
trigger1 = var(6) := 1
var(5) = 6

;------- Phase End ------

[State 30403, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30406
trigger1 = AnimElem = 1 || AnimElem = 5
value = 0,20
volumescale = 100
channel = 1
;abspan = 0


[State 30403,fade in speed]
type = velset
trigger1 = Anim = 30406 || (Anim = [30407,30408])
x = 16 * Const(size.xscale)

[State 30403,Jump]
type = velset
trigger1 = (Anim = [30407,30408])
trigger1 = AnimElemTime(1) = 0
y = -22 * Const(size.yscale)

[State 30403, Gravity Reset]
type = velset
trigger1 = !(Anim = [30407,30408])
trigger1 = vel y
y = 0

[State 30403, Gravity]
type = veladd
trigger1 = (Anim = [30407,30408])
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 30403, Init Anim]
type = ChangeAnim
trigger1 = Anim != 9741
trigger1 = Pos y > 0 && Pos y >= 0
value = 9741

[State 30403, Posfix]
type = Posset
trigger1 = Anim = 9741
trigger1 = AnimElemTime(1) <= 1
y = 0

[State 30403, Target Down]
type = TargetState
trigger1 = NumTarget(30402)
trigger1 = Target(30402),StateNo != 1130403
trigger1 = Anim = 9741
trigger1 = var(5) := 4 && var(6):= 1
value = 1130403

[State 30403, Target Bind]
type = PosSet
trigger1 = Anim = 9741
trigger1 = NumTarget(30402)
trigger1 = Target(30402),StateNo = 1130403
trigger1 = Target(30402),Pos x != Pos x
x = Target(30402),Pos x
y = 0

;------------ Beat Up ----------
[State 30403, Snd Voice]
type = PlaySnd
trigger1 = var(5) = 4 && var(6) = 1
value = 30600, 231
volumescale = 100
channel = 0
;abspan = 0

[State 30403, Snd FX]
type = PlaySnd
trigger1 = var(5) = 4 && var(6) = 1
value = 30600, 230
volumescale = 60
channel = 1
;abspan = 0

[State 30403, Snd FX]
type = PlaySnd
trigger1 = var(5) = 4 && var(6) < 160
trigger1 = var(6)%16 = 0
value = 2, 10 + Random%3
volumescale = 70
channel = 2
;abspan = 0

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1
[State 30403, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(5) = 4 && var(6) < 160
trigger1 = var(6)%16 = 0
value = -8 * (NumHelper(30402) + NumHelper(30403) + NumHelper(30404))
ignorehitpause = 1

[State 30403, Combo Add]
type = HitAdd
trigger1 = var(5) = 4 && var(6) < 160
trigger1 = var(6)%16 = 0
value = 1
ignorehitpause = 1

[State 30403, Shake]
type = EnvShake
trigger1 = var(5) = 4 && var(6) < 160
trigger1 = var(6)%16 = 0
time = 10
freq = 100
ampl = -6
phase = 0
ignorehitpause = 1



[State 30403, Dust_base]
type = Explod
trigger1 = !NumExplod(7025)
trigger1 = var(5) = 4 && var(6) < 180
trigger1 = var(6)%32 = 1
anim = 7025
ID = 7025
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 8 * Const(size.xscale), 5 * Const(size.yscale)
angle = 0
sprpriority = 1
ownpal = 1
remappal = 6000,5
ignorehitpause = 0

[State 30403, Dust_base_L]
type = Explod
trigger1 = var(5) = 4 && var(6) < 180
trigger1 = var(6)%48 = 1
anim = 7027
ID = 7027
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;remappal = 6000,2
ignorehitpause = 0

[State 30403, Dust_base_R]
type = Explod
trigger1 = var(5) = 4 && var(6) < 180
trigger1 = var(6)%48 = 1
anim = 7027
ID = 7027
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = -facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;remappal = 6000,2
ignorehitpause = 0

[State 30403, Dust_Trans]
type = Explod
;trigger1 = !NumExplod(7026)
trigger1 = var(5) = 4 && var(6) < 180
trigger1 = var(6)%12 = 6
anim = 7028
ID = 7028
space = stage
pos = (Random%400 - 200) * facing * Const(size.xscale), -(Random%200) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 3 * Const(size.xscale), 3 * Const(size.yscale)
angle = Random%360
sprpriority = 3
ownpal = 1
remappal = 6000,1
ignorehitpause = 0


[State 30403, Dust]
type = Explod
;trigger1 = !NumExplod(7026)
trigger1 = var(5) = 4 && var(6) < 180
trigger1 = var(6)%4 = 1
anim = 7026
ID = 7026
space = stage
pos = (Random%500 - 250) * facing * Const(size.xscale), -(Random%300) * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 4.2 * Const(size.xscale), 4.2 * Const(size.yscale)
angle = Random%360
sprpriority = 3
ownpal = 1
remappal = 6000,1
ignorehitpause = 0


;------------ Beat Up END ----------

;------------ Stand ------------
[State 30403, Stand Anim Pos]
type = Posset
trigger1 = var(1) = 30402
trigger1 = var(5) = 5 && var(6) = 1
x = Enemynear,Pos x - (200 * Const(Size.xScale)) * facing
y = 0

[State 30403, Stand Anim Pos]
type = Posset
trigger1 = var(1) = 30403
trigger1 = var(5) = 5 && var(6) = 1
x = Enemynear,Pos x + (160 * Const(Size.xScale)) * facing
y = 0

[State 30403, Stand Anim Pos]
type = Posset
trigger1 = var(1) = 30404
trigger1 = var(5) = 5 && var(6) = 1
x = Enemynear,Pos x - (80 * Const(Size.xScale)) * facing
y = 0

[State 30403, Turn]
type = Turn
triggerall = var(1) = 30403
trigger1 = var(5) = 5 && var(6) = 1
trigger2 = var(5) = 6 && var(6) = 1

[State 30403, Stand Anim]
type = ChangeAnim
trigger1 = anim != var(1)
trigger1 = var(5) = 5 && var(6) = 1
value = var(1)

;------------ End Stand --------

;------------ Exit Run ----------
[State 30403, Run Anim]
type = ChangeAnim
trigger1 = Anim != 30406
trigger1 = var(5) = 6 && var(6) = 1
value = 30406
Elem = 1 + Random%8


[State 30403, Destroy]
type = DestroySelf
trigger1 = FrontEdgeDist < (-300 * Const(Size.xScale))
;trigger2 = BackEdgeDist < (-300 * Const(Size.xScale))
removeexplods = 1
recursive = 1

[State 30403, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d | P2y=%d | Helper=%d"
params = var(5), var(6), var(12), var(13), P2Dist y, NumHelper(30402)
ignorehitpause = 1


[State 30403, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;=========== SHOKUHOU Misaki BOY-Exit ===============
[Statedef 30409]
type = S
movetype= H
physics = S
sprpriority = -1
velset = 0,0
ctrl = 0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing


;---- Vars Ends ---------

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 30409, Anim]
type = ChangeAnim
trigger1 = 1
value = Anim
Elem = AnimELemNo(0)
ignorehitpause = 1

[State 30409, Trans]
type = Trans
trigger1 = 1
Trans = add
alpha = 256 - Time*16, Time*16

[State 30409, Destroy]
type = DestroySelf
trigger1 = time > 16
removeexplods = 1
recursive = 1

[State 30409, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), var(12), var(13)
ignorehitpause = 1


[State 30409, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;--SHOKUHOU Misaki Type - 2 - WIN
[Statedef 30618]
type = S
movetype= I
physics = S
sprpriority = -1
ctrl = 0
velset = 0,0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State 30618, Anim]
type = ChangeAnim
trigger1 = !time
value = 30618


[State 30618, Destroy]
type = DestroySelf
trigger1 = !(RoundState = [3,4])
removeexplods = 1
recursive = 1

[State 30618, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), var(12), var(13)
ignorehitpause = 1


[State 30618, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;--SHOKUHOU Misaki Type - 2 - LOSE
[Statedef 30617]
type = S
movetype= I
physics = S
sprpriority = -1
ctrl = 0
velset = 0,0

;---- Vars ---------
[State var_Enemy_Dist]
type = varset
trigger1 = 1
var(12) = Floor(Enemynear,Pos x - Pos x)*facing

[State var_Parent_Dist]
type = varset
trigger1 = 1
var(13) = Floor(Parent,Pos x - Pos x)*facing

;---- Vars Ends ---------

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State HitOverRide]; Hurt
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State 30617, Anim]
type = ChangeAnim
trigger1 = !time
value = 30617


[State 30617, Destroy]
type = DestroySelf
trigger1 = !(RoundState = [3,4])
removeexplods = 1
recursive = 1

[State 30617, Debug]
type = displaytoclipboard
trigger1 = 1
text = "State=%d | Counter=%d | E2X=%d | P2X=%d"
params = var(5), var(6), var(12), var(13)
ignorehitpause = 1


[State 30617, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0






;Target for Misaki Boy 30402 ---------
[Statedef 1130402]
type = S
movetype= H
physics = S
sprpriority = 1
ctrl = 0
velset = 0,0

[State 1130402, No hit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1130402, No Push]
type = PlayerPush
trigger1 = 1
value = 0


[State 1130402, Anim-Saft-fallback]
type = ChangeAnim2
trigger1 = !time
value = 5030

[State 1130402, Anim]
type = ChangeAnim
trigger1 = AnimExist(5030)
trigger1 = !time
value = 5030

[State 1130402, vel fix]
type = velset
trigger1 = sysvar(1) != 2
trigger1 = Pos y != 0
y = 4


[State 1130402, Destroy]
type = DestroySelf
trigger1 = IsHelper
removeexplods = 1
recursive = 1

[State 1130402, Safe]
type = SelfState
trigger1 = time > 400
trigger2 = PlayerIDExist(GetHitVar(fall.recovertime)) = 0
value = IFElse(Alive,5120,5150)


;Target for Misaki BOY 30403
[Statedef 1130403]
type = L
movetype= H
physics = S
sprpriority = 1
ctrl = 0
velset = 0,0

[State 1130403, No hit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1130403, No Push]
type = PlayerPush
trigger1 = 1
value = 0


[State 1130403, Anim-Saft-fallback]
type = ChangeAnim2
trigger1 = !time
value = 5110

[State 1130403, Anim]
type = ChangeAnim
trigger1 = AnimExist(5110)
trigger1 = !time
value = 5110

[State 1130403, vel fix]
type = posset
trigger1 = pos y != 0
y = 0


[State 1130403, Destroy]
type = DestroySelf
trigger1 = IsHelper
removeexplods = 1
recursive = 1

[State 1130403, Safe]
type = SelfState
trigger1 = time > 400
trigger2 = PlayerIDExist(GetHitVar(fall.recovertime)) = 0
value = IFElse(Alive,5120,5150)





;Miyuki-Support-01-Floral Lock
[StateDef 30760]
type = S
movetype= A
physics = S
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 36

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "SHIBA Miyuki"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "SHIBA Miyuki"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "SHIBA Miyuki"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State 30760, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = Parent,Pos x + (80 * Const(Size.xScale) * facing)
y = 0

[State 30760, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30760

[State 30760,fade in]
type = trans
trigger1 = Anim = 30760
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64


[State 30760, ATK Distance]
type = AttackDist
trigger1 = MoveType = A
value = Floor(4000 * Const(Size.xScale))

[State 30760, SND Voice]
type = PlaySnd
trigger1 = Anim = 30760
trigger1 = AnimElemTime(8) = 1
value = 30700, IFElse(Random<600,200 + Random%4,210)
volumescale = 100
channel = 0
;abspan = 0

[State 30760, Digi_Rings_Back]
type = Explod
triggerall = !NumExplod(7542)
trigger1 = anim = 30760
trigger1 = AnimElemTime(3) = 1
anim = 7542
ID = 7542
space = stage
pos = 0 * facing * Const(size.xscale), -376 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 22
removeongethit = 1
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.3 * Const(size.xscale), 0.3 * Const(size.yscale)
angle = 120
angle = -5
trans = add
alpha = 192,64
ownpal = 1
sprpriority = 0
ignorehitpause = 0

[State 30760, Digi_Rings_Front]
type = Explod
triggerall = !NumExplod(7543)
trigger1 = anim = 30760
trigger1 = AnimElemTime(3) = 1
anim = 7543
ID = 7543
space = stage
pos = 0 * facing * Const(size.xscale), -376 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 22
removeongethit = 1
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.3 * Const(size.xscale), 0.3 * Const(size.yscale)
angle = 120
angle = -5
trans = add
alpha = 192,64
ownpal = 1
sprpriority = 2
ignorehitpause = 0


[State 30760, Digi_Ring]
type = helper
triggerall = !NumHelper(7542)
trigger1 = anim = 30760
trigger1 = AnimElemTime(9) = 0
helpertype = normal
stateno = 7542
ID = 7542
name = "Digi_Ring"
postype = P1
pos = 80 * Const(size.xscale), -266 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 350,350; Scale
size.shadowoffset = 23; Last how long
size.proj.doscale = -12 * 2; Angle x 2
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30760, Magic Circle]
type = helper
triggerall = !NumHelper(7114)
trigger1 = anim = 30760
trigger1 = AnimElemTime(2) = 1
helpertype = normal
stateno = 7114
ID = 7114
name = "GND Magic Circle"
postype = P1
pos = 0 * Const(size.xscale), 0 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1000,1000; Scale
size.shadowoffset = 50; Last how long
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30760, Projectile Helper]
type = helper
triggerall = !NumHelper(StateNo + 5)
trigger1 = anim = 30760
trigger1 = AnimElemTime(9) = 0
helpertype = normal
stateno = StateNo + 5
ID = StateNo + 5
name = "Floral-Lock-Projectile"
postype = P1
pos = (Enemynear,pos x - Pos x) * facing - (40*Const(Size.xScale)) , -270 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1000,1000; Scale
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 30760
trigger1 = AnimElemTime(12) >= 0
movetype = I


[State 30760, End]
type = ChangeState
trigger1 = Anim = 30760
trigger1 = Animtime >= 0
value = 30769

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H)
ignorehitpause = 1


[State 30760, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;LAND
[Statedef 30762]
type = C
movetype= I
physics = C
velset = 0,0
sprpriority = 0
ctrl = 0
Anim = 30762

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State Hitby]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1


[State 30762, Pos fix]
type = posset
trigger1 = !time
y = 0

[State 30762, Snd-Steps]
type = PlaySnd
trigger1 = time = 0
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 30762, Land-Dust]
type = Explod
trigger1 = time = 0
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

[State 30762, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7015)
trigger1 = time = [8,15]
ID = 7015
trans = add
alpha = 256 - (time-7)*32, 128 + (time-7)*32


[State 30762, End]
type = ChangeState
trigger1 = Animtime >= 0
value = 30769

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H)
ignorehitpause = 1


;Miyuki - fade away or get hit
[Statedef 30769]
type = A
movetype= U
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 30769, Clear Explods]
type = RemoveExplod
trigger1 = !time

[State NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30769, SND Voice hurt]
type = PlaySnd
triggerall = MoveType = H
trigger1 = !time
value = 30000 + var(31)*100, 5000 + Random%6
volumescale = 100
channel = 0
;abspan = 0

[State 30769,action stop]
type = ChangeAnim
trigger1 = !time
value = 30768 + MoveType = H

[State 30769, Leave Statge]
type = veladd
trigger1 = !time
x = -24 * Const(Size.xScale)
y = -6 * Const(Size.yScale)

[State 30769,fade out]
type = trans
trigger1 = AnimElemtime(1) = [9,16]
trans = add
alpha = 256 - 32*(AnimElemTime(1)-9) ,32*(AnimElemTime(1)-9)


[State 30769,End]
type = DestroySelf
trigger1 = AnimTime = 0
removeexplods = 1
;recursive = 1

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H)
ignorehitpause = 1

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
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
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1



;Floral Lock projectile for support
[Statedef 30765]
type = A
moveType = A
physics = N
sprpriority = 2
ctrl = 0

[State 30765, Durableness-01]
type = varadd
trigger1 = !time
var(2) = -1

[State 30765, Durableness-02]
type = varset
trigger1 = !PrevStateNo && !time
var(2) = 2

[State 30765, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 30765, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State 30765, Pos_Fix]
type = PosAdd
trigger1 = !PrevStateNo && !time
trigger1 = FrontEdgeBodyDist < (40 * Const(Size.xScale))
x = FrontEdgeBodyDist - (40 * Const(Size.xScale))

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State UnGuardable from Back]
type = AssertSpecial
triggerall = Enemynear,facing = facing
trigger1 = ((pos x - Enemynear,pos x) * Enemynear,facing) < 0
flag = UnGuardable

[State Safe noloop]
type = NotHitBy
trigger1 = !var(2)
time = 1
value = SCA,AA,AP,AT

[State Hitby]
type = HitBy
trigger1 = var(2)
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1


[State 30765, Anim]
type = ChangeAnim
trigger1 = !(PrevStateNo = [5000,5039]) && !time
value = 7545

[State 30765, Anim]
type = ChangeAnim
trigger1 = (PrevStateNo = [5000,5039]) && !time
trigger1 = var(2) <= 0
value = 7545
Elem = 3

[State 30765, Scale]
type = AngleDraw
trigger1 = AnimElemTime(1) = [0,4]
value = 15
Scale = 1.5 * Const(Size.xScale) * fvar(11) * ((AnimElemTime(1)+1)/4.0), 3 * Const(Size.yScale) * fvar(12) * ((AnimElemTime(1)+1)/4.0)
ignorehitpause = 1

[State 30765, Scale]
type = AngleDraw
trigger1 = AnimElemTime(1) = [5,7]
value = 15
Scale = 1.5 * Const(Size.xScale) * fvar(11) * (1.25-(AnimElemTime(1)-4)*0.08333), 3 * Const(Size.yScale) * fvar(12) * (1.25-(AnimElemTime(1)-4)*0.08333)
ignorehitpause = 1

[State 30765, Scale]
type = AngleDraw
trigger1 = AnimElemTime(1) >= 8 && AnimElemTime(3) < 0
value = 15
Scale = 1.5 * Const(Size.xScale) * fvar(11), 3 * Const(Size.yScale) * fvar(12)
ignorehitpause = 1

[State 30765, Scale]
type = AngleDraw
trigger1 = AnimElemTime(3) >= 0
value = 15
Scale = 2.2 * Const(Size.xScale) * fvar(11), 4.4 * Const(Size.yScale) * fvar(12)
ignorehitpause = 1

[State 30765, Dot_FX_00]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7122
ID = 7122
space = stage
pos = 20 * facing * Const(size.xscale), -40 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  3 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
vel = 4 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -75
sprpriority = 2
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 30765, Dot_FX_00]
type = Explod
trigger1 = AnimElemTime(4) = 4
anim = 7122
ID = 7122
space = stage
pos = -60 * facing * Const(size.xscale), -40 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  3.2 * Const(Size.xScale) * fvar(11), 1.6 * Const(Size.yScale) * fvar(12)
vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -75
sprpriority = 2
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 30765, SND-FX]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = 5,7545
volumescale = 100
channel = 2
;abspan = 0

[State 30765, SND-FX]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 5,7546
volumescale = 100
channel = 5
;abspan = 0

[State Gravity]
type = veladd
trigger1 = StateType = A
trigger1 = AnimElemTime(4) > 0
y = Const(Movement.yaccel) * Const(Size.yScale) * 0.5

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30765, HitDef]
type = HitDef
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(2) = 12
attr = S,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 37,4
getPower = 50,10
givePower = 0,0
pauseTime = 2,18
guard.pauseTime = 2,18
animType = back
ground.type = High
air.type = Low
ground.hitTime = 17
ground.slideTime = 17
guard.hitTime = 17
air.hitTime = 17
ground.velocity = (-28 ) * Const(size.xscale), (0) * Const(size.yscale)
air.velocity = (-8 ) * Const(size.xscale), IFElse(P2StateType = L,0,-20) * Const(size.yscale)
guard.velocity = -32 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 32
forceStand = 0
hitSound = S2,19
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7454)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(P2dist x)), 0 * (var(56) := Floor(-220 + P2Dist y))
envShake.time = 14
envShake.ampl = 12
envShake.freq = 90
p1sprpriority = 2
ID = StateNo

[State 30765, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimElemTime(3) >= 0
MoveType = I

[State 30765, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

;[State Update Parent ComboNo for Dampener]
;type = ParentVarAdd
;triggerall = NumTarget
;triggerall = MoveContact = 1
;trigger1 = Target,time < 2
;var(12) = 1
;persistent = 0
;ignorehitpause = 1

[State 30765, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Hit Sparks"
postype = P1
pos = var(55) , var(56)
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



[State 30765, End]
type = DestroySelf
trigger1 = AnimTime >= 0
removeexplods = 0
recursive = 1


[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H)
ignorehitpause = 1

[State 30765, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1



;Miyuki-Support-02-Frezzing-Zone
[StateDef 30770]
type = S
movetype= A
physics = S
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 36

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "SHIBA Miyuki"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "SHIBA Miyuki"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "SHIBA Miyuki"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

;-------- Air -----
[State 30770, Air]
type = ChangeState
trigger1 = !time && !PrevStateNo
trigger1 = Parent,Pos y < 0 || Parent,StateType = A
value = 30773



[State 30770, Pos fix]
type = PosSet
trigger1 = !time && !PrevStateNo
x = Parent,Pos x + 350 * Const(Size.xScale) * Parent,facing
y = 0


[State 30770, Pos fix]
type = PosSet
trigger1 = !time && !PrevStateNo
trigger1 = ((Enemynear,Pos x - Pos x) * facing ) <= 550 * Const(Size.xScale)
x = Floor(Enemynear,Pos x + 550 * Const(Size.xScale) * Enemynear,facing)
y = 0

[State 30770, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30770

[State 30770,fade in]
type = trans
trigger1 = Anim = 30770
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30770,Jump]
type = velset
trigger1 = Anim = 30770
trigger1 = AnimElemTime(2) = 0
x =  const(velocity.jump.fwd.x) * Const(Size.xScale)
y =  0.98 * Const(Velocity.jump.y) * Const(Size.yScale)

[State 30770, Jump 2nd]
type = Velset
trigger1 = Anim = 30770
trigger1 = AnimElemTime(6) = 0
x = 6 * Const(Size.xScale)
y = 0.75 * Const(Velocity.jump.y) * Const(Size.yScale)

[State 30770,Air]
type = StateTypeSet
trigger1 = StateType != A
trigger1 = Anim = 30770
trigger1 = vel y < 0
statetype = A
physics = N

[State 30265, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = Anim = 30770
y = 0.75 * Const(Movement.yaccel) * Const(size.yScale)

[State 30770, SND Voice]
type = PlaySnd
trigger1 = Anim = 30770
trigger1 = AnimElemTime(5) = 1
value = 30700, IFElse(Random<600,202 + Random%2,211)
volumescale = 100
channel = 0
;abspan = 0

[State 30770, Projectile Helper]
type = helper
triggerall = !NumHelper(StateNo + 5)
trigger1 = anim = StateNo
trigger1 = AnimElemTime(6) = 0
helpertype = normal
stateno = StateNo + 5
ID = StateNo + 5
name = "Freezing-Zone-Projectile"
postype = P1
pos = 60 * Const(Size.xScale), -Pos y
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1000,1000; Scale
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 30770
trigger1 = AnimElemTime(8) >= 0
movetype = I


[State 30770, End_Land] 
type = ChangeState
trigger1 = Anim = 30770
trigger1 = Pos y >= 0 && Vel y > 0
value = 30762

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d | P2X=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H), P2Dist x
ignorehitpause = 1


[State 30770, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0




;Freezing Zone Projectile
[Statedef 30775]
type = C
moveType = A
physics = C
sprpriority = 2
ctrl = 0

[State 30775, Type]
type = varset
trigger1 = !PrevStateNo && !time
var(10) = Parent,var(10)

[State 30775, Durableness-01]
type = varadd
trigger1 = !time
var(2) = -1

[State 30775, Durableness-02]
type = varset
trigger1 = !PrevStateNo && !time
var(2) = 3

[State 30775, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 30775, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State 30775, Pos_Fix]
type = PosSet
trigger1 = !PrevStateNo && !time
y = 20 * Const(Size.yScale)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1


[State Safe noloop]
type = NotHitBy
trigger1 = !var(2)
time = 1
value = SCA,AA,AP,AT

[State Hitby]
type = HitBy
trigger1 = var(2)
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1


[State 30775, Anim]
type = ChangeAnim
trigger1 = !(PrevStateNo = [5000,5039]) && !time
value = 7547

[State 30775, Scale]
type = AngleDraw
trigger1 = AnimElemTime(1) = [0,4]
value = 0
Scale = 1 * Const(Size.xScale) * fvar(11) * (1+(0.03*(AnimElemTime(1)+1))) , 1 * Const(Size.yScale) * fvar(12) * (1+(0.2*(AnimElemTime(1)+1)))
ignorehitpause = 1

[State 30775, Scale]
type = AngleDraw
trigger1 = AnimElemTime(1) >= 5
value = 0
Scale = 1 * Const(Size.xScale) * fvar(11) * 1.15 , 1 * Const(Size.yScale) * fvar(12) * 2
ignorehitpause = 1

[State 1005, SND-FX]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 5,7547
volumescale = 100
channel = 5
;abspan = 0

[State 30775, Dot_FX_00]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 7122
ID = 7122
space = stage
pos = 20 * facing * Const(size.xscale) * fvar(11), -280 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  3 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 90
sprpriority = 2
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 30775, Dot_FX_00]
type = Explod
trigger1 = AnimElemTime(5) = 3
anim = 7122
ID = 7122
space = stage
pos = -20 * facing * Const(size.xscale) * fvar(11), -200 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  3 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
vel = -2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 90
sprpriority = 2
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 30775, Wind_01_F]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 7566
ID = 7566
space = stage
pos = -20 * facing * Const(size.xscale) * fvar(11), -130 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  0.5 * Const(Size.xScale) * fvar(11), 1 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -15
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30775, Wind_02_B]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 7567
ID = 7567
space = stage
pos = 20 * facing * Const(size.xscale) * fvar(11), -200 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  0.6 * Const(Size.xScale) * fvar(11), -1.0 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -35
sprpriority = 1
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30775, Wind_03_B]
type = Explod
trigger1 = AnimElemTime(1) = 6
anim = 7567
ID = 7567
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), -300 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  0.6 * Const(Size.xScale) * fvar(11), -1.0 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -40
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30775, Wind_04_F]
type = Explod
trigger1 = AnimElemTime(1) = 12
anim = 7566
ID = 7566
space = stage
pos = 20 * facing * Const(size.xscale) * fvar(11), -400 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  0.3 * Const(Size.xScale) * fvar(11), 0.6 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -25
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30775, Wind_04_F]
type = Explod
trigger1 = AnimElemTime(1) = 14
anim = 7566
ID = 7566
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), -460 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  0.2 * Const(Size.xScale) * fvar(11), 0.5 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -30
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !var(6)
value = 1
ignorehitpause = 1

[State 30775, HitDef]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimELem = 3
trigger3 = AnimElem = 4 || AnimElem = 5
attr = C,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 33,4
getPower = 40,10
givePower = 0,0
pauseTime = 3,12
guard.pauseTime = 3,12
animType = Up
ground.type = high
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -10 * Const(size.xscale) * fvar(11), -30 * Const(size.yscale) * fvar(12)
air.velocity = -10 * Const(size.xscale) * fvar(11), IFElse(P2StateType = L,0,-30) * Const(size.yscale) * fvar(12)
guard.velocity = -32 * Const(size.xscale) * fvar(11)
ground.cornerpush.veloff = 0 * Const(size.xscale) * fvar(11)
yAccel = Const(Movement.yaccel) * Const(size.yscale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,20
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(P2Bodydist x)), (var(56) := Floor(P2dist y - 280))
envShake.time = 12
envShake.ampl = 12
envShake.freq = 90
p1sprpriority = 2
ID = StateNo


[State 30775, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = AnimElemTime(7) >= 0
MoveType = I

[State 1055, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State 30775, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Hit Sparks"
postype = P1
pos = var(55) , var(56)
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

[State 30775, End]
type = DestroySelf
trigger1 = AnimTime >= 0
removeexplods = 0
recursive = 1


[State 30775, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Counter=%d | Life=%d | PrevStateNo=%d"
params = var(6), var(2), PrevStateNo
ignorehitpause = 1

[State 30775, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1




;Miyuki-Support-03-Gungnir
[StateDef 30773]
type = A
movetype= A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0


[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = time < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = time >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

;-------- Air -----
[State 30773, Pos fix]
type = PosSet
trigger1 = !time && PrevStateNo = 30770
x = Parent,Pos x + 550 * Const(Size.xScale) * Parent,facing
y = Parent,Pos y


[State 30773, Pos fix]
type = PosSet
trigger1 = !time && PrevStateNo = 30770
trigger1 = ((Enemynear,Pos x - Pos x) * facing ) <= 350 * Const(Size.xScale)
x = Floor(Enemynear,Pos x + 350 * Const(Size.xScale) * Enemynear,facing)
y = Parent,Pos y

[State 30773, Play Init Anim]
type = ChangeAnim
trigger1 = !time && PrevStateNo = 30770
value = 30773

[State 30773,fade in]
type = trans
trigger1 = Anim = 30773
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+time*64,192-time*64

[State 30773,Air]
type = StateTypeSet
trigger1 = StateType != A
trigger1 = Anim = 30773
trigger1 = vel y < 0
statetype = A
physics = N

[State 30773, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = Anim = 30773
y = 0.75 * Const(Movement.yaccel) * Const(size.yScale)

[State 30773,Jump]
type = velset
trigger1 = Anim = 30773
trigger1 = AnimElemTime(1) = 0
x =  const(velocity.jump.fwd.x) * Const(Size.xScale)
y =  0.6 * Const(Velocity.jump.y) * Const(Size.yScale)

[State 30773, SND Voice]
type = PlaySnd
trigger1 = Anim = 30773
trigger1 = AnimElemTime(4) = 1
value = 30700, 204 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30773, Wind_FX_01_long]
type = Explod
trigger1 = anim = 30773
trigger1 = AnimElemTime(5) = 0
anim = 7593
ID = 7593
space = stage
pos = 120 * facing * Const(size.xscale),-140 * Const(size.yscale)
bindID = ID
bindtime = 6
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 2.2 * Const(size.xscale), 3 * Const(size.yscale)
angle = -30
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 30773, Wind_FX_02]
type = Explod
trigger1 = anim = 30773
trigger1 = AnimElemTime(5) = 0
anim = 7569
ID = 7569
space = stage
pos = -40 * facing * Const(size.xscale), -180 * Const(size.yscale)
bindID = ID
bindtime = 6
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale = 0.6 * Const(size.xscale), 0.7 * Const(size.yscale)
angle = -25
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && PrevStateNo = 30770
value = 1
ignorehitpause = 1

[State 30773, HitDef]
type = HitDef
trigger1 = !(MoveContact || MoveReversed)
trigger1 = Anim = 30773
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
attr = A,SP
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = 16,3
getPower = 30,10
givePower = 0,0
pauseTime = 10,10
guard.pauseTime = 10,10
animType = hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -16 * Const(size.xscale), 0  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,20) * Const(size.yscale)
guard.velocity = -24 * Const(size.xscale)
ground.cornerpush.veloff = -32 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(Size.yScale)
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 28; HitPause + Slidetime + waitTime
forceStand = 0
hitSound = S2,19
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7452)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = (var(55) := Floor(P2Bodydist x)), (var(56) := -80)
envShake.time = 10
envShake.ampl = 6
envShake.freq = 120
ID = StateNo

[State 30773, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State 30773, Projectile Helper]
type = helper
trigger1 = Anim = 30773
trigger1 = AnimElemTime(5) = 0
helpertype = normal
stateno = StateNo + 5
ID = StateNo + 5
name = "EX-Gungnir-Projectile"
postype = P1
pos = 200 * Const(Size.xScale), -Pos y
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 800,800; Scale
size.proj.doscale = ID; Give Parent ID to Child
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0
ignorehitpause = 1

[State Idel]
type = StateTypeSet
triggerall = MoveType = A
trigger1 = Anim = 30773
trigger1 = AnimElemTime(7) >= 0
movetype = I


[State 30773, End_Land] 
type = ChangeState
trigger1 = Anim = 30773
trigger1 = Pos y >= 0 && Vel y > 0
value = 30762

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d | P2X=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H), P2Dist x
ignorehitpause = 1


[State 30773, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0

;Gungnir EX Support
[Statedef 30778]
type = C
moveType = A
physics = N
sprpriority = 2
ctrl = 0

[State 30778, Type]
type = varset
trigger1 = !PrevStateNo && !time
var(10) = root,var(1) >= 10000

[State 30778, Durableness-01]
type = varadd
trigger1 = !time
var(2) = -1

[State 30778, Durableness-02]
type = varset
trigger1 = !PrevStateNo && !time
var(2) = 4

[State 30778, Scale X]
type = varset
trigger1 = !PrevStateNo && !time
fvar(11) = Const(size.head.pos.x) / 1000.0

[State 30778, Scale Y]
type = varset
trigger1 = !PrevStateNo && !time
fvar(12) = Const(size.head.pos.y) / 1000.0

[State 30778, Pos_Fix]
type = PosSet
trigger1 = !PrevStateNo && !time
y = 0

[State 1305, Pos_Fix]
type = PosAdd
trigger1 = !PrevStateNo && !time
trigger1 = (FrontEdgeBodyDist - 180 * Const(Size.xScale)) < 0
x = FrontEdgeBodyDist - 180 * Const(Size.xScale)

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1


[State Safe noloop]
type = NotHitBy
trigger1 = !var(2)
time = 1
value = SCA,AA,AP,AT

[State Hitby]
type = HitBy
trigger1 = var(2)
time = 1
value = SCA,AA,AP

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = StateNo
slot = 7
time = 1
ignorehitpause = 1

;--------- Phase     ----------
[State 30778, Attack_Start]
type = varset
trigger1 = var(5) = 0 && time >= 12
trigger1 = Enemynear,pos x - Pos x = [-350,350]
trigger1 = Enemynear,Pos y - pos y = [-100,100]
trigger1 = var(6):= 1
var(5) = 1
;--------- Phase END ----------


[State 30778, Anim]
type = ChangeAnim
trigger1 = var(5) = 0
trigger1 = !(PrevStateNo = [5000,5039]) && !time
value = 9741

[State 30778, Anim]
type = ChangeAnim
trigger1 = var(5) = 1
trigger1 = var(6) = 1
value = 7554

[State 30778, Scale]
type = AngleDraw
trigger1 = Anim = 7554
value = 0
Scale = Const(Size.xScale) * fvar(11) * 1.8 , 1 * Const(Size.yScale) * fvar(12) * 1.8
ignorehitpause = 1

[State 1305, Main-Crystall-02]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 0
anim = 7554
ID = 7554
space = stage
pos = -180 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.5 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 0
sprpriority = 1
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-Mid]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 4
anim = 7547
ID = 7547
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.8 * Const(Size.xScale) * fvar(11), 1.8 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 8
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-Mid-Ice]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 8
anim = 7550
ID = 7550
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  2 * Const(Size.xScale) * fvar(11), 2 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 8
sprpriority = 2
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust]
type = ModifyExplod
triggerall = NumExplod(7547)
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = [4,8]
ID = 7547
scale =  2 * Const(Size.xScale) * fvar(11), (AnimElemTime(1)-3) * 0.4 * Const(Size.yScale) * fvar(12)
ignorehitpause = 1


[State 30778, Bust-out]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 0
anim = 7547
ID = 75471
space = stage
pos = -120 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.5 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 12
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-out-Ice]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 4
anim = 7550
ID = 7550
space = stage
pos = -120 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.5 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 12
sprpriority = 2
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-out]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 0
anim = 7547
ID = 75472
space = stage
pos = 120 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1 * Const(Size.xScale) * fvar(11), 1 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -12
sprpriority = 3
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-out-Ice]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 4
anim = 7550
ID = 7550
space = stage
pos = 120 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1.4 * Const(Size.xScale) * fvar(11), 1 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -12
sprpriority = 2
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-l2-Ice]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 6
anim = 7550
ID = 7550
space = stage
pos = 60 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  1 * Const(Size.xScale) * fvar(11), 1.4 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -10
sprpriority = 2
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1

[State 30778, Bust-l2-Ice]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 6
anim = 7550
ID = 7550
space = stage
pos = -160 * facing * Const(size.xscale) * fvar(11), 0 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  0.8 * Const(Size.xScale) * fvar(11), 1 * Const(Size.yScale) * fvar(12)
;vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
;accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = -10
sprpriority = 1
ownpal = 1
;remappal = 7111, 1
ignorehitpause = 1


[State 30778, Bust-out]
type = ModifyExplod
triggerall = NumExplod(75471)
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = [0,4]
ID = 75471
scale =  2 * Const(Size.xScale) * fvar(11), (AnimElemTime(1)+1) * 0.375 * Const(Size.yScale) * fvar(12)
ignorehitpause = 1

[State 30778, Bust-out]
type = ModifyExplod
triggerall = NumExplod(75472)
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = [0,4]
ID = 75472
scale =  1.4 * Const(Size.xScale) * fvar(11), (AnimElemTime(1)+1) * 0.35 * Const(Size.yScale) * fvar(12)
ignorehitpause = 1

[State 30778, Dot_FX_00]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(6) = 4
anim = 7122
ID = 7122
space = stage
pos = 0 * facing * Const(size.xscale) * fvar(11), -280 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  3 * Const(Size.xScale) * fvar(11), 2 * Const(Size.yScale) * fvar(12)
vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 102
sprpriority = 1
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 30778, Dot_FX_00]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(6) = 0
anim = 7122
ID = 7122
space = stage
pos = -160 * facing * Const(size.xscale) * fvar(11), -200 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  2 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
vel = -2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 102
sprpriority = 1
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1

[State 30778, Dot_FX_00]
type = Explod
trigger1 = Anim = 7554
trigger1 = AnimElemTime(6) = 0
anim = 7122
ID = 7122
space = stage
pos = 160 * facing * Const(size.xscale) * fvar(11), -220 * Const(size.yscale) * fvar(12)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
scale =  2 * Const(Size.xScale) * fvar(11), 1.5 * Const(Size.yScale) * fvar(12)
vel = 2 * facing * Const(Size.xScale) * fvar(11), -8 * Const(Size.yScale) * fvar(12)
accel = 0 * facing * Const(Size.xScale) * fvar(11), 0.8 * Const(Size.yScale) * fvar(12)
angle = 80
sprpriority = 1
ownpal = 1
remappal = 7111, 1
ignorehitpause = 1


[State 30778, SND-FX]
type = PlaySnd
trigger1 = Anim = 7554
trigger1 = AnimElemTime(5) = 0
value = 5,7546
volumescale = 100
channel = 5
;abspan = 0

[State 30778, Magic Circle]
type = helper
trigger1 = !(PrevStateNo = [5000,5039]) && !time
helpertype = normal
stateno = 7114
ID = 7114
name = "GND Magic Circle for Gungnir"
postype = P1
pos = 0 * Const(size.xscale), 0 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 2500,2500; Scale
size.shadowoffset = -1; Last how long
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0


[State Dampener Apply to Helper]
type = AttackMulSet
triggerall = IsHelper
trigger1 = !Time && !PrevStateNo
value = 1
ignorehitpause = 1

[State 30778, HitDef]
type = HitDef
trigger1 = Anim = 7554
trigger1 = AnimElemTime(1) = 0 || AnimElemTime(1) = 4
attr = C,SP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = 54,4
getPower = 0,0
givePower = 0,0
pauseTime = 1,14
guard.pauseTime = 1,14
animType = Up
ground.type = high
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 22
ground.velocity = -4 * Const(size.xscale) , -21 * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-21) * Const(size.yscale) 
guard.velocity = -32 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(size.yscale)
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 32
forceStand = 0
hitSound = S2,19
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7454)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(P2dist x)), (var(56) := Floor(P2dist y - IFElse(AnimElemTime(1)>1,280,120)))
envShake.time = 14
envShake.ampl = 14
envShake.freq = 90
ID = StateNo


[State 30778, No ATK]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = Anim = 7554 && AnimElemTime(5) >= 0
MoveType = I

[State 30778, MoveHitVar]
type = ParentVarSet
triggerall = NumTarget
triggerall = MoveContact = 1
trigger1 = Target,time < 2
var(3) = Target,ID
ignorehitpause = 1

[State 30778, Hit Sparks]
type = helper
triggerAll = MoveContact = 1 && NumTarget
trigger1 = Target,time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Helper Hit Sparks"
postype = P1
pos = var(55) , var(56)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1





[State 30778, End]
type = DestroySelf
trigger1 = var(5) = 0
trigger1 = var(6) > IFELse(var(10),600,90)
trigger2 = var(5) = 1
trigger2 = AnimTime >= 0
removeexplods = 0
recursive = 0


[State 30778, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(10)=%d | var(2)=%d | Phase=%d | counter=%d | PStateNo=%d | Test=%d"
params = var(10), var(2), var(5),var(6), PrevStateNo,Enemynear,pos x - Pos x
ignorehitpause = 1

[State 30778, Run Counter]
type = varadd
trigger1 = var(6) < 16777216
var(6) = 1
ignorehitpause = 1





;Tatsuya-Support-01
[StateDef 30860]
type = A
movetype= A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 4

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "SHIBA Tatsuya"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "SHIBA Tatsuya"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "SHIBA Tatsuya"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

;------ Phase ----------
[State 30860, TargetHit]
type = varset
trigger1 = NumTarget(30867)
trigger1 = Target(30867),StateNo = 30867
trigger1 = Target(30867),time = 0
trigger1 = var(6) := 1
var(5) = 1
;------ End Phase ------

[State 30860, init vel]
type = velset
trigger1 = !time && !PrevStateNo
x = 16 * Const(Size.xScale)
y = 24 * Const(Size.yScale)

[State 30860, Pos fix]
type = posset
trigger1 = !time && !PrevStateNo
x = Parent,Pos x
y = -300 * Const(Size.yScale)

[State 30860, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30861

[State 30860,fade in]
type = trans
trigger1 = Anim = 30861
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+(AnimElemTime(1)+1)*64,192-(AnimElemTime(1)+1)*64

[State 30860, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(size.yScale)

[State 30860, LAND]
type = StateTypeSet
trigger1 = Pos y >= 0 && Vel y >= 0
trigger2 = Anim = 30860 || Anim = 30862
StateType = S

[State 30860, LAND]
type = ChangeAnim
trigger1 = Anim = 30861
trigger1 = Pos y >= 0 && Vel y >= 0
value = 30862

[State 30860, Pos fix]
type = velset
trigger1 = vel y
trigger1 = Anim = 30862 || Anim = 30860
trigger1 = AnimElemTime(1) = 0
x = 0
y = 0

[State 30860, Pos fix]
type = posset
trigger1 = pos y
trigger1 = Anim = 30862 || Anim = 30860
trigger1 = AnimElemTime(1) = 0
y = 0

[State 52, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 30862 && AnimElemTime(1) = 0
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 52, Land-Dust]
type = Explod
trigger1 = Anim = 30862 && AnimElemTime(1) = 0
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

[State 30860, Action]
type = ChangeAnim
trigger1 = Anim = 30862
trigger1 = AnimTime >= 0
value = 30860

[State 30860, SND Voice]
type = PlaySnd
trigger1 = Anim = 30860
trigger1 = AnimElemTime(3) = 1
value = 30000 + var(31)*100, 210 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 30860, SND VoiceOverWrite_IF_Miyuki]
type = PlaySnd
trigger1 = Parent,Name = "SHIBA Miyuki"
trigger1 = Anim = 30860
trigger1 = AnimElemTime(3) = 1
trigger1 = Random < 600
value = 30000 + var(31)*100, 230 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 30860, Magic Circle]
type = helper
triggerall = !NumHelper(7114)
trigger1 = Anim = 30860
trigger1 = AnimElemTime(3) = 1
helpertype = normal
stateno = 7114
ID = 7114
name = "GND Magic Circle"
postype = P1
pos = 0 * Const(size.xscale), 0 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1400,1400; Scale
size.shadowoffset = 80; Last how long
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30860, Explod WhiteBall]
type = Explod
triggerall = !NumExplod(30110)
trigger1 = Anim = 30860 && AnimElemTime(3) >= 0
anim = 30110
ID = 30110
space = stage
pos = -16 * facing * Const(size.xscale), -236 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30860, Explod WhiteBall]
type = Explod
triggerall = !NumExplod(30111)
trigger1 = Anim = 30860 && AnimElemTime(3) >= 0
anim = 30110
ID = 30111
space = stage
pos = 58 * facing * Const(size.xscale), -244 * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = -2
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1 * Const(size.xscale),1 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 0

[State 30860, SND Voice]
type = PlaySnd
trigger1 = var(5) = 1
trigger1 = var(6) = 60
value = 30000 + var(31)*100, 68 + Random%2
volumescale = 100
channel = 0
;abspan = 0
persistent = 0

[State 30860, Tatsuya_Locker]
type = helper
triggerall = !NumHelper(7596)
trigger1 = Anim = 30860
trigger1 = NumTarget(30867)
trigger1 = Target(30867),StateNo = 30867 && Target(30867),IsHelper = 0
helpertype = normal
stateno = 7596
ID = 7596
name = "Tatsuya-Locker"
postype = P2
facing = 1
pos = 0 * Const(size.xscale), 0 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1000,1000
size.shadowoffset = -1; Stay for how long
size.proj.doscale = Target(30867),ID; Degrees
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1


[State 30860, Tatsuya_Ring_1]
type = helper
triggerall = !NumHelper(7597)
trigger1 = Anim = 30860 && AnimElemTime(3) = 0
helpertype = normal
stateno = 7597
ID = 7597
name = "Tatsuya-Ring"
postype = P1
facing = 1
pos = -16 * Const(size.xscale), -236 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1000,1000
size.shadowoffset = -1; Stay for how long
size.proj.doscale = 120; Degrees
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1

[State 30860, Tatsuya_Ring_2]
type = helper
triggerall = NumHelper(7597) < 2
trigger1 = Anim = 30860 && AnimElemTime(3) = 0
helpertype = normal
stateno = 7597
ID = 7597
name = "Tatsuya-Ring"
postype = P1
facing = -1
pos = 58 * Const(size.xscale), -244 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 1000,1000
size.shadowoffset = -1; Stay for how long
size.proj.doscale = 140; Degrees
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1

[State 30860, ReversalDef]
type = ReversalDef
trigger1 = Anim = StateNo
trigger1 = AnimElemTime(3) >= 0
reversal.attr = SCA,AA,NP,SP
pausetime = 1,1
sparkno = -1
hitsound = S2,2
;p1stateno = 30162
p2stateno = 30867
ID = 30867
Fall.Envshake.Ampl = ID * 2;ID x 2

[State 30860, TargetDrop]
type = TargetDrop
triggerall = NumTarget(30867)
trigger1 = Target(30867),IsHelper

[State 30860, TargetState]
type = TargetState
triggerall = NumTarget
triggerall = Target,StateNo != 30867
trigger1 = !((Target,StateNo = [5000,5999]) || (Target,StateNo = [7114,7122]) || (Target,StateNo > 10000) )
value = 30867

[State 30860, End]
type = ChangeState
triggerall = Anim = 30860
trigger1 = var(5) = 0
trigger1 = var(6) > 100
trigger2 = var(5) = 1
trigger2 = var(6) > 312
value = 30869

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter=%d | PrevStateNo=%d | Target=%d | locker =%d"
params = var(5), var(6), PrevStateNo, NumTarget, NumHelper(7596)
ignorehitpause = 1


[State 30860, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0





;Tatsuya Target
[Statedef 30867]
type = U
movetype= H
physics = S
velset = 0,0
sprpriority = 0
ctrl = 0

[State 30867, EnvShake]
type = EnvShake
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = !time
time = 24
ampl = 22
freq = 60
phase = 1

;--------- Helper -----------
[State 30867, NotHitby]
type = NotHitBy
triggerall  = IsHelper
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 30867, Destory]
type = DestroySelf
triggerall = IsHelper
trigger1 = AnimTime >= 0
trigger2 = time > 40
removeexplods = 1
recursive = 1

;--------- Character -------------
[State 30867,NoHitfall]
type = HitfallSet
triggerall = !IsHelper
trigger1 = !time
value = 0


[State 30867,action freeze]
type = ChangeAnim
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = time = [0,9]
value = Anim
Elem = AnimElemNo(0)

[State 30867,action shake]
type = ChangeAnim
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = AnimExist(5011)
trigger1 = time = [10,22]
value = 5011

[State 30867,action shake]
type = ChangeAnim2
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = !AnimExist(5011)
trigger1 = time = [10,22]
value = 5011

[State 30867,action slide]
type = ChangeAnim
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = AnimExist(5016)
trigger1 = time = 23
value = 5016

[State 30867,action slide]
type = ChangeAnim2
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = !AnimExist(5016)
trigger1 = time = 23
value = 5016

[State 30867, Slide]
type = PosSet
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = StateType != A
trigger1 = Anim = 5016 && AnimElemTIme(1) = 0
y = 0

[State 30867, Slide]
type = VelAdd
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = StateType != A
trigger1 = Anim = 5016 && AnimElemTIme(1) = 0
x = Const720p(-32)

[State 30867, Slide]
type = VelSet
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = StateType = A
trigger1 = Anim = 5016 && AnimElemTIme(1) = 0
x = Const720p(-2)
y = -Pos y / 18.0

[State 30867, Stand]
type = ChangeAnim
triggerall = Anim != 0
triggerall = !IsHelper
triggerall = AnimExist(0)
trigger1 = Anim = 5016 && AnimElemTime(1) >= 18
trigger2 =!((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
value = 0

[State 30867, Stand]
type = ChangeAnim2
triggerall = Anim != 0
triggerall = !IsHelper
triggerall = !AnimExist(0)
trigger1 = Anim = 5016 && AnimElemTime(1) >= 18
trigger2 =!((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
value = 0

[State 30867, Stand]
type = StateTypeSet
triggerall = StateType = A
trigger1 = Anim = 0 && AnimElemTime(1) <= 1
trigger2 =!((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
StateType = S

[State 30867, Stand]
type = VelSet
trigger1 = Anim = 0 && AnimElemTime(1) <= 1
x = 0
y = 0

[State 30867, Stand]
type = PosSet
trigger1 = Anim = 0 && AnimElemTime(1) <= 1
y = 0



[State 30867,action freeze]
type = PalFX
triggerall = !IsHelper
trigger1 = time = 0
time = IFElse(((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000)),312,30)
add = 128,0,0
mul = 256,192,192
sinadd = 128,0,0,30


[State 30867, Self]
type = SelfState
triggerall = !IsHelper
triggerall = ((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = time > 312
trigger2 = PlayerIDExist(GetHitVar(Fall.Envshake.Ampl)/2) = 0
trigger3 = PlayerIDExist(GetHitVar(Fall.Envshake.Ampl)/2)
trigger3 = PlayerID(GetHitVar(Fall.Envshake.Ampl)/2),MoveType != A
value = IFElse(StateType = A,5030,0)
ctrl = StateType != A

[State 30867, Self]
type = SelfState
triggerall = !IsHelper
triggerall = !((PrevStateNo = [200,4999]) || (PrevStateNo >= 6000))
trigger1 = time > 30
value = IFElse(StateType = A,5030,0)
ctrl = StateType != A

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "PrevStateNo=%d | AttackerID = %d"
params = PrevStateNo, GetHitVar(Fall.Envshake.Ampl)/2
ignorehitpause = 1


;Tatsuya - fade away or get hit
[Statedef 30869]
type = A
movetype= U
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 30869, Clear Explods]
type = RemoveExplod
trigger1 = !time

[State NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State MoveType]
type = StateTypeSet
trigger1 = !time
trigger1 = MoveType != H
MoveType = I

[State 30869, SND Voice hurt]
type = PlaySnd
triggerall = MoveType = H
trigger1 = !time
value = 30000 + var(31)*100, 5000 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 30869,action stop]
type = ChangeAnim
trigger1 = !time
value = StateNo - MoveType != H

[State 30869, Leave Statge]
type = veladd
trigger1 = !time
x = -24 * Const(Size.xScale)
y = -6 * Const(Size.yScale)

[State 30869,fade out]
type = trans
trigger1 = AnimElemtime(1) = [9,16]
trans = add
alpha = 256 - 32*(AnimElemTime(1)-9) ,32*(AnimElemTime(1)-9)

;------ Not leaving var -------
[State 30869, Var Set]
type = varset
trigger1 = MoveType != H
trigger1 = !time && PrevStateNO = 30870
var(5) = 99

[State 30869, Var Clear]
type = varset
triggerall = var(5) = 99
trigger1 = Enemynear,Ctrl || Enemynear,MoveType = A || Enemynear,StateNO < 120
var(5) = 0

[State 30869, Wait]
type = ChangeAnim
triggerall = var(5) = 99
trigger1 = Anim = StateNo || Anim = (StateNo - 1)
trigger1 = AnimTime >= 0
value = 9741

[State 30869,End]
type = DestroySelf
triggerall = var(5) != 99
trigger1 = Anim = StateNo || Anim = (StateNo - 1)
trigger1 = AnimTime >= 0
trigger2 = Anim = 9741
removeexplods = 1
;recursive = 1

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Color=%d | Counter=%d | PrevStateNo=%d | GetHit=%d"
params = var(1), var(6), PrevStateNo, (MoveType=H)
ignorehitpause = 1

[State OverRide Enemy Hitwall]
type = TargetState
triggerall = NumTarget
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
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5110
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State OverRide Enemy 5080]
type = TargetState
triggerall = NumTarget
triggerall = Target,HitFall
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1





;Tatsuya-Support-02
[StateDef 30870]
type = S
movetype= A
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0
facep2 = 1
poweradd = 50

[State Copy Self ID]
type = varset
triggerall = Parent,var(31) != var(31)
trigger1 = !PrevStateNo && !time
var(31) = Parent,var(31)

[State INIT MAX Color]
type = VarSet
trigger1 = !time && !PrevStateNo
var(52) = 4

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name != "SHIBA Tatsuya"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000%var(52) = 0,var(52), root,var(1)%10000%var(52))

[State Apply Pallet if conflict]
type = ReMapPal
triggerall = root,Name != "SHIBA Tatsuya"
trigger1 = !time && !PrevStateNo
trigger1 = root,ID > 56
trigger1 = (Enemynear,var(19) & 128)
trigger1 = Enemynear,var(31) = root,var(31)
trigger1 = Enemynear,var(1)%10000%var(52) = root,var(1)%10000%var(52)
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse((root,var(1)%10000 + (root,ID - 56)) % var(52) = 0,var(52), (root,var(1)%10000 + (root,ID - 56)) % var(52))

[State Apply Pallet]
type = ReMapPal
triggerall = root,Name = "SHIBA Tatsuya"
trigger1 = !time && !PrevStateNo
source = 30000 + var(31)*100, 1
dest = 30000 + var(31)*100, IFElse(root,var(1)%10000 > 24,root,var(1)%10000 - 24, root,var(1)%10000 + 12)

[State No camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State NotHitby]
type = NotHitBy
trigger1 = var(6) < 4
value = SCA,AA,AP,AT
time = 1

[State Hitby]
type = HitBy
trigger1 = var(6) >= 4
value = SCA,AA,AP
time = 1

[State HitOverRide]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = (30000 + var(31)*100) + 69
slot = 7
time = 1
ignorehitpause = 1

[State 30870, PosFix]
type = PosSet
trigger1 = !time && !PrevStateNo
x = Parent,Pos x + (160 * Const(Size.xScale)) * facing
y = 0

[State 30870, PosFix]
type = PosAdd
trigger1 = (Enemynear,Pos x - Pos x) * facing < (80 * Const(Size.xScale))
trigger1 = !time && !PrevStateNo
x = (Enemynear,Pos x - Pos x) * facing - (80 * Const(Size.xScale))


[State 30870, Play Init Anim]
type = ChangeAnim
trigger1 = !time && !PrevStateNo
value = 30870

[State 30870,fade in]
type = trans
trigger1 = Anim = StateNo
trigger1 = AnimElemTime(1) = [0,3]
trans = add
alpha = 64+(AnimElemTime(1)+1)*64,192-(AnimElemTime(1)+1)*64

[State 30860, SND Voice]
type = PlaySnd
trigger1 = Anim = 30870
trigger1 = AnimElemTime(2) = 1
value = 30000 + var(31)*100, 220 + Random%3
volumescale = 100
channel = 0
;abspan = 0

[State 30860, Digi_Ring]
type = helper
trigger1 = !NumHelper(7542)
trigger1 = Anim = 30870
trigger1 = AnimElemTime(2) = 0
helpertype = normal
stateno = 7542
ID = 7542
name = "Digi_Ring"
postype = P1
pos = 120 * Const(size.xscale), -160 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 400,400; Scale
size.shadowoffset = 38; Last how long
size.proj.doscale = -50 * 2; Angle x 2
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30860, Color_Ring]
type = helper
trigger1 = Anim = 30870
trigger1 = AnimElemTime(2) = 1
helpertype = normal
stateno = 7598
ID = 7598
name = "Color_Ring"
postype = P1
pos = 130 * Const(size.xscale), -150 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 300,400; Scale
size.shadowoffset = 44; Last how long
size.proj.doscale = 50 * 2; Angle x 2
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30860, Color_Ring]
type = helper
trigger1 = Anim = 30870
trigger1 = AnimElemTime(2) = 5
helpertype = normal
stateno = 7598
ID = 7598
name = "Color_Ring"
postype = P1
pos = 220 * Const(size.xscale), -190 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 400,500; Scale
size.shadowoffset = 44; Last how long
size.proj.doscale = 50 * 2; Angle x 2
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30860, Color_Ring]
type = helper
trigger1 = Anim = 30870
trigger1 = AnimElemTime(2) = 9
helpertype = normal
stateno = 7598
ID = 7598
name = "Color_Ring"
postype = P1
pos = 260 * Const(size.xscale), -100 * Const(size.yscale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.head.pos = 700,900; Scale
size.shadowoffset = 44; Last how long
size.proj.doscale = 50 * 2; Angle x 2
;supermovetime = 65535
;pausemovetime = 65535
persistent = 0

[State 30870, HitDef]
type = HitDef
trigger1 = !(MoveContact || MoveReversed)
trigger1 = Anim = 30870
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
attr = S,SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0,0
getPower = 40,0
givePower = 0,0
pauseTime = 1,45
guard.pauseTime = 1,20
animType = hard
ground.type = high
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 18
ground.velocity = -8 * Const(size.xscale) , 0  * Const(size.yscale)
air.velocity = -4 * Const(size.xscale), IFElse(P2StateType = L,0,-18) * Const(size.yscale)
guard.velocity = -8 * Const(size.xscale)
ground.cornerpush.veloff = 0 * Const(size.xscale)
yAccel = Const(Movement.yaccel) * Const(size.yscale)
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 32
forceStand = 1
hitSound = S2,19
guardSound = S2,0
sparkNo = -1 + 0 * (var(53) := 7454)
guard.SparkNo = -1 + 0 * (var(54) := 7431)
sparkXY = 0 * (var(55) := Floor(P2Bodydist x)), 0 * (var(56) := Floor(P2dist y - 220))
envShake.time = 20
envShake.ampl = 18
envShake.freq = 90
ID = StateNo
P2StateNo = 1130870
palfx.time = 120
palfx.add = 128,128,128
palfx.mul = 256,256,256
palfx.sinadd = 128,128,128,15

[State 30870, SND FX]
type = PlaySnd
trigger1 = Anim = 30870
trigger1 = AnimElemTime(2) = 1
value = 5,7530
volumescale = 100
channel = 1
;abspan = 0

[State 30870, End]
type = ChangeState
triggerall = Anim = 30870
trigger1 = AnimTime >= 0
value = 30869

[State Debug_Supportor]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | Counter=%d | PrevStateNo=%d | Target=%d | locker =%d"
params = var(5), var(6), PrevStateNo, NumTarget, NumHelper(7596)
ignorehitpause = 1


[State 30870, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 0



;Tatsuya-Support-02-TargetSide
[StateDef 1130870]
type = U
movetype= H
physics = S
;sprpriority = 0
velset = 0,0
ctrl = 0

[State 1130870, IfHelper]
type = ChangeAnim
trigger1 = Ishelper
value = Anim
Elem = AnimElemNo(0)

[State 1130870, Destroy]
type = DestroySelf
trigger1 = Ishelper
trigger1 = time > 20
recursive = 1
removeexplods = 1

[State 1130870, Anim]
type = ChangeAnim
trigger1 = !Ishelper
trigger1 = AnimExist(5012)
trigger1 = !HitShakeOver
value = 5012

[State 1130870, Anim]
type = ChangeAnim2
trigger1 = !Ishelper
trigger1 = !AnimExist(5012)
trigger1 = !HitShakeOver
value = 5012

[State 1130870, NoPush]
type = PlayerPush
trigger1 = Anim != 5750
trigger1 = Anim != 5017
value = 0

[State 1130870, Start Fly]
type = ChangeAnim2
trigger1 = !Ishelper
trigger1 = HitShakeOver
trigger1 = Anim = 5012
value = IFElse(StateType = A,5750,5017)

[State 1130870, Type]
type = StateTypeSet
trigger1 = Anim = 5750
trigger1 = StateType != A
StateType = A
physics = N

[State 1130870, Gravity]
type = VelAdd
trigger1 = Anim = 5750
trigger1 = StateType = A
y = GetHitVar(yaccel)

[State 1130870, 3]
type = HitVelSet
trigger1 = !Ishelper
trigger1 = (Anim = 5750 || Anim = 5017)
trigger1 = AnimElemTime(1) = [0,1]
x = 1
y = 1

[State 1130870, End]
type = SelfState
trigger1 = Anim = 5017
trigger1 = AnimElemTIme(1) > 18
value = 0
ctrl = 1

[State 1130870, End]
type = ChangeState
trigger1 = Anim = 5750
trigger1 = Vel y >0 && Pos y >= 0
value = 1115110
ctrl = 1

[State , Debug]
type = displaytoclipboard
trigger1 = 1
text = "Enemy_ID=%d | PrevState=%d | Test=%d"
params = GetHitVar(Fall.Envshake.Ampl) / 2, PrevStateNO, GetHitVar(yaccel)
ignorehitpause = 1