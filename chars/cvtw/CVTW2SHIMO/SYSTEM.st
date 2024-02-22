;==============================================================
;==================================CVTW2/SYSTEM==========MEMO==
;==============================================================
[StateDef 9889, INTRO 1]
type = S
physics = S
anim = 190
sprPriority = 3

[State 190, PowerAdd]
type = NULL;PowerSet
triggerall = Roundno = 1
trigger1 = time = 0
value = 1000

[State 9889, PosSet]
type = posset
trigger1 = !time
y = 0

[State 9889, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = 9889
flag = nomusic

[State 9889, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = 9889
flag = timerfreeze

[State 9889, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = 9889
flag = intro

[State 9889, ChangeState]
type = changestate
trigger1 = !animtime
value = 0
;==============================================================
;==================================CVTW2/SYSTEM==========MEMO==
;==============================================================
[StateDef 9890, INTRO 2]
type = S
physics = S
anim = 190
sprPriority = 3

[State 190, PowerAdd]
type = NULL;PowerSet
triggerall = Roundno = 1
trigger1 = time = 0
value = 1000

[State 9890, PosSet]
type = posset
trigger1 = !time
y = 0

[State 9890, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = 9890
flag = nomusic

[State 9890, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = 9890
flag = timerfreeze

[State 9890, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = 9890
flag = intro

[State 9890, ChangeState]
type = changestate
trigger1 = !animtime
value = 0
;==============================================================
;==================================CVTW2/SYSTEM==========MEMO==
;==============================================================
[StateDef 181, WIN 1]
type = S
physics = S
anim = 180
ctrl = 0

[State 181,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag = nowalk

[State 181, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, 17
channel = 0
;==============================================================
;==================================CVTW2/SYSTEM==========MEMO==
;==============================================================
[StateDef 182, WIN 2]
type = S
physics = S
anim = 180
ctrl = 0

[State 181,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag = nowalk

[State 181, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, 17
channel = 0
;==============================================================
;==================================CVTW2/SYSTEM==========MEMO==
;==============================================================
[StateDef 195, TAUNT]
type = S
physics = S
ctrl = 0
			[STATE 400, SOUND F.X.]
TYPE = PLAYSND
TRIGGER1 = ANIMELEM = 2
VALUE = 60,4
CHANNEL = 4

[State 195, PosSet]
type = posset
trigger1 = !time
y = 0

[State 195, ChangeAnim]
type = changeanim
trigger1 = !time
value = 195

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

[State -2, SYS VAR JUMP]
TYPE = VARSET
TRIGGER1 = STATETYPE = S || STATETYPE = C
sysvar(0) = 0
IGNOREHITPAUSE = 1

[State -2, Remember the last Position (X)]
type = VarSet
triggerall = RoundState < 2
trigger1 = stateno = [0, 21] ;Enable after Intro
fvar(3) = Pos X
[State -2, Set the actual Position when match begins]
type = PosSet
trigger1 = RoundState = 2
trigger1 = fvar(3) != 0
trigger1 = prevstateno != [191, 192] 
x = fvar(3)
[State -2, Reset PlaceHolder Var]
type = VarSet
trigger1 = RoundState = 2
fvar(3) = 0
[State -2, Pre-walking state]
type = ChangeState
;triggerall = !var(59)
trigger1 = prevstateno = [9889, 9890] ;Enable after Intro
trigger2 = RoundNo != 1              ;Enable If Round Number is > 1
trigger2 = RoundState = 1           ;RoundState < 2 and
trigger2 = stateno = 0              ;Current state is 0
value = 21
ctrl = 0
			[State -2, NoAirGuard]
type = AssertSpecial
trigger1 = 1
trigger2 = RoundState = 2
flag = noairguard

			[State -2, Camera Winner]
type = ScreenBound
triggerall = (Life <= 0) || (!Alive) || (Lose)
trigger1 = (StateNo = 5150) && (RoundState = 4)
value = 0
MoveCamera = 0,0
IgnoreHitPause = 1

			[State -2, Lv3 Super Finish Detection]
type = VarSet
triggerAll = !(Enemy, Alive)
trigger1 = StateNo = [3000,3399]
trigger2 = StateNo = [3500,3599]
var(11) = 1
ignoreHitPause = 1

			[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

			[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

			[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

			[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = (StateNo != [1231,1233]) || (StateNo = [1231,1233]) && AnimElemTime(5) < 0 || (StateNo = [1231,1233]) && AnimElemTime(6) >= 0 && AnimElemTime(11) < 0 || (StateNo = [1231,1233]) && AnimElemTime(12) >= 0
;triggerAll = (StateNo != 1233) || (StateNo = 1233 && AnimElemTime(5) < 0) || (StateNo = 1233 && AnimElemTime(6) >= 0 && AnimElemTime(11) < 0) || (StateNo = 1233 && AnimElemTime(12) >= 0)
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8009 || var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8001 || var(33) = 88013 || var(33) = 8018 || var(33) = 88015
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State -2, Hit Sparks, Opponent Behind)]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = (StateNo = [1231,1233]) && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0 || (StateNo = [1231,1233]) && AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
;triggerAll = (StateNo = 1233 && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0) || (StateNo = 1233 && AnimElemTime(11) >= 0 && AnimElemTime(12) < 0)
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8009 || var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8001 || var(33) = 88013 || var(33) = 8018
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x >= 0, 0, ifElse(P2Dist x >= var(35), ceil(P2Dist x), var(35))), var(36)
facing = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

			[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

			[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1
			[State -2, Counter FX]
type = helper
trigger1 = movehit = 1 && var(30) = hitpausetime
trigger1 = numenemy && var(9)
trigger1 = !(hitdefattr = SCA, AT) && (enemynear, movereversed != 1)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ceil(ifelse(p2dist x < 0, 0, ifelse(p2dist x < var(35), ceil(p2dist x), var(35))) * const(size.xscale)), ceil(var(36) * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
			[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100, 5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall=stateno = [3000,3999]
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.95, 0.90**enemynear, gethitvar(hitcount)))
ignorehitpause= 1
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall=stateno != [3000,3999]
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.93, 0.85**enemynear, gethitvar(hitcount)))
ignorehitpause= 1
[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

			[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
trigger2 = MoveContact = 1 && NumTarget(1232)
trigger2 = !(Target, HitShakeOver) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1
			[State -2, P2 Safe Fall]
type = NULL;TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -48 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1
			[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1
[State -2, Sealed by Chizuru's Reigi no Ishizue]
type = PalFX
trigger1 = NumProjID(131035)
trigger1 = GameTime % 2 = 1
time = 1
add = 0,0,92
sinAdd = 0,0,0,0
color = 0
invertAll = 0
color = 256
ignoreHitPause = 1
			[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "Capcom Vs The World 2 Ryu" 
;params = AILevel 
ignoreHitPause = 1

			[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy MEMO"
ignoreHitPause = 1

[State -2, Reset]
type = Null
triggerall = RoundState = 0
trigger1 = e|| (var(30) := 0)
			[STATE -2, STOP SOUND ON GET HIT]
TYPE = STOPSND
TRIGGER1 = MOVETYPE = H
CHANNEL = 4
IGNOREHITPAUSE = 1
			[STATE -2, STOP AI WALK]
TYPE = ASSERTSPECIAL
TRIGGER1 = AILEVEL
FLAG = NOWALK
IGNOREHITPAUSE = 1
			[STATE -2, STOP AI JUMP/CROUCH]
TYPE = CHANGESTATE
TRIGGERALL = AILEVEL
TRIGGER1 = STATENO = 40
TRIGGER2 = STATENO = 10
VALUE = 0
IGNOREHITPAUSE = 1
;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(57) = GameTime
ignoreHitPause = 1

[State -3, NoAirGuard]
type = AssertSpecial
trigger1 = 1
trigger2 = RoundState = 2
flag = noairguard

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = (StateNo != [1000,1030])
var(18) = 0

[State -3, Projectile Flag Off]
type = null;VarSet
trigger1 = 1
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag On]
type = null;VarSet
triggerAll = var(20) <= 0
triggerAll = NumHelper(1005)
trigger1 = Helper(1005), StateNo = 1005
trigger2 = Helper(1005), StateNo = 1035
var(39) = 1
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = varset
triggerall = var(18)
trigger1 = (StateNo != [1000,1030])
trigger1 = StateNo != 1050 && StateNo != 1080
trigger1 = (StateNo != [3000,3050])
trigger2 = (StateNo = [1000,1030]) && AnimElemTime(4) < 0
trigger3 = (StateNo = 1050 || StateNo = 1080) && AnimElemTime(4) < 0
trigger4 = (StateNo = [3000,3050]) && AnimElemTime(17) < 1
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(1005)
trigger1 = !NumHelper(1055)
trigger1 = !NumHelper(3005)
trigger1 = !NumHelper(3055)
var(39) = 0
ignoreHitPause = 1


[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.78

[State -3, Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3000 && Time = 45
trigger2 = StateNo = 3050 && Time = 45
trigger3 = StateNo = 3100 && Time = 44
trigger4 = StateNo = 2900 && Time = 1
trigger5 = StateNo = 2901 && Time = 1
trigger6 = (StateNo = [700,750]) && Time = 1
time = 2
timeGap = 1
length = 21
framegap = 6
palcolor = 0
palinvertall = 0
palbright = 80, 70, 40
palcontrast = 55, 95, 255
trans = none

[State -3, Remove Super AfterImage]
type = afterimage
trigger1 = (stateno=[0,40])
trigger2 = stateno = 1201
trigger3 = stateno = 3102
time = 1
length = 1
framegap = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 
trigger1 = StateNo = [100,107]
;trigger2 = StateNo = 50 
;trigger2 = (var(3) = 2 || var(3) = 3) && vel y < -1
time = 2
timeGap = 1
frameGap = 6
length = 20
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = StateNo = [700,715]
trigger3 = StateNo = [100,107]
trigger4 = (StateNo = [3000,4999])
trigger5 = stateno = 2900
time = 2

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State 0, Width]
type = Width
triggerall = numenemy
trigger1 = facing != enemynear, facing
trigger1 = movetype != H
edge = 7,0
ignorehitpause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 30)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 56)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000,(Random % 3) + 10 * (var(40) = 1)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,(Random % 3) + 10 * (var(40) = 1)
channel = 0
ignoreHitPause = 1

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) ;|| MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 4) && var(25)
time = 2
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1
persistent = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000,4999])
trigger1 = var(23) := StateNo
trigger2 = (StateNo = [3000,3050])
trigger2 = var(23) := 3000
trigger3 = (StateNo = [3100,3150])
trigger3 = var(23) := 3100
trigger4 = (StateNo = [3200,3299])
trigger4 = var(23) := 3200
trigger5 = StateNo = 3300
trigger5 = var(23) := 3300
trigger6 = StateNo = 3400
trigger6 = var(23) := 3400
trigger7 = (StateNo = [3500,3599])
trigger7 = var(23) := 3500
trigger8 = (StateNo = [3700,3799])
trigger8 = var(23) := 3700
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, DRAMATIC KO HELPER]
type = helper
triggerall = teammode = single || teammode = turns
triggerall = enemy, teammode = single || enemy, teammode = turns
triggerall = roundstate = 3 && !numhelper(9944)
triggerAll = WinKO
trigger1 = MoveHit = 1 && (StateNo = [1000,3999])
trigger1 = var(23) := StateNo
trigger2 = (StateNo = [1000,3999])
helpertype = Normal
id = 9944
pos = 0,0
postype = p1
name = "DRAMATIC KO HELPER"
stateno = 9944
ignorehitpause = 1
supermovetime = 9999999999
pausemovetime = 9999999999

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = RoundState = 3
triggerall = RoundState != 2
trigger1 = winko
trigger2 = loseko
flag = nobardisplay
flag = nowalk
ignorehitpause = 1
;==============================================================
;==================================CVTW2/SYSTEM==========MEMO==
;==============================================================