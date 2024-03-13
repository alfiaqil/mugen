;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x) * Const(size.xscale)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x) * Const(size.xscale)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, Snd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
abspan = 0

;<Walk AI>=============================
[Statedef 21]
type = S
physics = N
sprpriority = 0
velset =0,0
ctrl = 0
facep2 = 1

[State 21, Init Pos fix]
type = posset
trigger1 = !time
y = 0

;--------- Var INIT --------------
[State 21, Random walk if no other intention at start]
type = Varset
triggerall = var(14) >= 0
trigger1 = !time
var(14) = 1                 ;1=Random Move, 2=forced forward, 3=forced backward 11 = stop

[State 21, Input from command file]
type = varset
trigger1 = !time
trigger1 = var(14) < 0
var(14) = Abs(var(14))

[State 21, INIT Move Var]
type = Varset
trigger1 = !time && var(14)=1
var(13)= 0

[State 21, add random Move Var]
type= Varset
trigger1= var(14)=1 && var(13) < 1
var(13) = 40 + random%41

[State 21, consume Move var]
type = Varadd
trigger1 = var(14) = 1
trigger1 = var(13) > 0
var(13) = -1

;---------- Change Direction at condition --------------
[State 21, At the Point to move random]
type = Varset
triggerAll = var(14) != 1 && time
trigger1 = var(59) = 0
trigger1 = var(14) != 11
trigger1 = (P2Bodydist x = [Const720p(580),Const720p(880)])
trigger1 = Random < 20
trigger1 = var(6) := 1
var(14) = 1

[State 21, Conditions for Move Forward]
type = varset
triggerall = var(14) != 2
trigger1 = var(59) = 0
trigger1 = BackEdgeBodyDist <= Const720p(80)
;Go out of cornor
trigger2 = var(59) = 0
trigger2 = NumTarget
trigger2 = Target,Pos x - Pos x > Const720p(20)
;Help out friends
trigger3 = var(59) = 0
trigger3 = P2StateType !=A && P2MoveType != H && (P2bodydist x > Const720p(800) && BackEdgeBodyDist <= Const720p(220))
trigger3 = Random < 100
;Too far go near
trigger4 = (var(59) = [2,5]) || (var(59) = 5300 && var(59) != 5301)
trigger4 = P2Bodydist x > Const720p(32)
;Have Task need to go near
trigger5 = var(59) = 13
trigger5 = !NumTarget && P2MoveType != H
trigger5 = (P2Bodydist x > Const720p(200)) || (BackEdgeBodyDist <= Const720p(120))
;keep near distance
trigger6 = var(59) = 14
trigger6 = !NumTarget && P2MoveType != H
trigger6 = (P2Bodydist x > Const720p(440)) || (BackEdgeBodyDist <= Const720p(120))
;keep middle distance
trigger7 = var(59) = 15
trigger7 = !NumTarget && P2MoveType != H
trigger7 = (P2Bodydist x > Const720p(700)) || (BackEdgeBodyDist <= Const720p(120))
;keep far distance
trigger8 = (var(59) = [2,5]) || var(59) = 981
trigger8 = (P2Bodydist x > Const720p(40))
;keep 0 Distance!
trigger9 = var(59) = 19 && NumHelper(30000)
trigger9 = ((Helper(30000),Pos x - Pos x) * facing) > (20 * Const(Size.xScale))
;Go to support character's position
trigger10 = var(59) = 5301
trigger10 = (P2Bodydist x > Const720p(420))
; keep dist for pre-dizzy
trigger11 = var(59) = 16
trigger11 = (P2Bodydist x > Const720p(560))
;keep pressure distance
var(14) = 2

[State 21, Conditions for Move Backward]
type = varset
triggerall = var(14) != 3
trigger1 = var(59) = 0
trigger1 = !NumTarget && BackEdgeBodyDist > Const720p(320)
trigger1 = P2StateNo = 5120
trigger1 = random < 400
; Enemynear getting up with invensiblity
trigger2 = var(59) = 0
trigger2 = NumEnemy && !NumTarget && BackEdgeBodyDist > Const720p(220)
trigger2 = (Enemynear,facing != facing) && Enemynear,vel x > (1.8 * (Const(Velocity.walk.fwd.x) * Const(Size.xScale)))
trigger2 = P2Bodydist x < Const720p(700)
trigger2 = Random < 120
; Enemy approaching
trigger3 = (var(59) = [2,5]) || var(59) = 5300 || NumTarget
trigger3 = P2Bodydist x < 0
;have AI task and overshoot
trigger4 = var(59) = 0
trigger4 = !NumTarget && P2MoveType != H
trigger4 = P2BodyDist x < Const720p(350)
trigger4 = Random < 140
; Random walk to close
trigger5 = var(59) = 13
trigger5 = !(BackEdgeBodyDist <= Const720p(120))
trigger5 = !NumTarget && P2MoveType != H
trigger5 = P2Bodydist x < Const720p(110)
;keep near distance
trigger6 = var(59) = 14
trigger6 = !(BackEdgeBodyDist <= Const720p(120))
trigger6 = !NumTarget && P2MoveType != H
trigger6 = P2Bodydist x < Const720p(380)
;keep middle distance
trigger7 = var(59) = 15
trigger7 = !(BackEdgeBodyDist <= Const720p(120))
trigger7 = !NumTarget && P2MoveType != H
trigger7 = P2Bodydist x < Const720p(550)
;keep far distance
trigger8 = var(14) = 11
trigger8 = var(6) > 500
trigger8 = Random < 50
trigger8 = var(6) := 1
;Sit for too long
trigger9 = (var(59) = [2,5]) || var(59) = 981
trigger9 = (P2Bodydist x < Const720p(-32))
;keep 0 Distance!
trigger10 = var(59) = 19 && NumHelper(30000)
trigger10 = ((Helper(30000),Pos x - Pos x) * facing) < (-180 * Const(Size.xScale))
;Go to support character's position
trigger11 = var(59) = 5301
trigger11 = (P2Bodydist x < Const720p(340)) && BackEdgeBodyDist > Const720p(360)
; keep dist for pre-dizzy
trigger12 = var(59) = 16
trigger12 = !(BackEdgeBodyDist <= Const720p(120))
trigger12 = P2Bodydist x < Const720p(340)
;keep Pressure distance
var(14) = 3

[State 21, Conditions for force Stay all the time]
type = varset
triggerall = var(14) != 11
trigger1 = (var(59) = [2,5]) || var(59) = 5300
trigger1 = P2Bodydist x = [0,Const720p(32)]
trigger2 = var(59) = 0
trigger2 = var(14) = 1 && var(6) > 180
trigger2 = P2Bodydist x > Const720p(600)
trigger2 = Random < 50
trigger3 = var(59) = 19 && NumHelper(30000)
trigger3 = ((Helper(30000),Pos x - Pos x) * facing) = [(-80 * Const(Size.xScale)), (0 * Const(Size.xScale))]
trigger3 = Random < 40
;Go to support character's position
var(14) = 11


;---------- Apply to animation and vel -----------
[State 21, Move Forward]
type = VelSet
trigger1 = var(14) = 2
trigger2 = Var(14) = 1 && Var(13) >= 30
x = const(velocity.walk.fwd.x)*const(size.xscale)


[State 21, Move Backward]
type = VelSet
trigger1 = var(14) = 3
trigger2 = Var(14) = 1 && Var(13) < 30
x = const(velocity.walk.back.x)*const(size.xscale)

[State 21, Stay]
type = VelSet
triggerall = vel x
trigger1= var(14)= 11
trigger2= (Anim = [10,12])
x = 0


[State 21, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 21, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 21, Stay]
type = ChangeAnim
triggerall = vel x = 0
trigger1 = !(Anim = 14 || Anim = 0) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0 + 14 * (P2Bodydist x > Const720p(200))

[State 21, Snd]
type = PlaySnd
trigger1 = Anim != 14
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
abspan = 0

[State 21, Change State Type to C]
type = StateTypeSet
triggerall = StateType != C
trigger1 = Anim = 14
statetype = C

[State 21, Change State Type to S]
type = StateTypeSet
triggerall = StateType != S
trigger1 = Anim != 14
statetype = S

[State 21, Exit to 0 General]
type = SelfState
trigger1 = P2Dist x < 0 || P2Bodydist X <= -Const720p(40)
trigger2 = InGuardDist
trigger3 = roundstate != 2
trigger4 = (BackEdgeBodyDist <= Const720p(40))
trigger4 = Vel x <= 0
trigger4 = Random < 80
value = 0 + 11*(Anim = 14)
ctrl = 1


[State 21, dead]
type = changestate
trigger1 = !alive
value = 5050

[State 21, Exit-IF-Human]
type = ChangeState
trigger1 = !AILevel
value = 0
ctrl = 1

;------------ AI Jump Start -------------------
[Statedef 39]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

; var(10) 0=neutral jump 1=forward 2=backward
; var(9)  3=Superjump 2=small jump 1 or 0 = normal jump

[State 39, 1]
type = VarSet
triggerall = var(10) >= 0
trigger1 = Time = 0
var(10) = 0


[State 39, Final Value]
type = varset
trigger1 = AnimTime = 0
var(10) = Abs(var(10))

[State 39, Final Value]
type = varset
trigger1 = AnimTime = 0
var(9) = Abs(var(9))

[State 39, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(var(10)=0, const(velocity.jump.neu.x), ifelse(var(10)=1, const(velocity.jump.fwd.x) * IFElse(var(9)=3,1.2,1), const(velocity.jump.back.x) * IFElse(var(9)=3,1.2,1))) * IFElse(var(9)=3,1.3,1) * Const(size.xscale)
y = const(velocity.jump.y) * IFElse(var(9)=3,1.15,IFElse(var(9)=2,0.7,1)) * Const(size.yscale)

[State 40, Dust]
type = Explod
trigger1 = Animtime = 0
anim = 7017
ID = 7017
space = stage
pos = 0 * facing * Const(size.xscale), 0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;supermovetime = 65535
;pausemovetime = 65535
vel = IFElse(sysvar(1)>=1,6,IFElse(sysvar(1)<=-1,-6,0)) * facing * Const(Size.xScale), -8 * Const(Size.yScale)
accel = IFElse(sysvar(1)>=1,-0.25,IFElse(sysvar(1)<=-1,0.25,0)) * facing * Const(Size.xScale), 0.35 * Const(Size.yScale)
scale = 0.5 * Const(size.xscale), 0.5 * Const(size.yscale)
angle = Random%360
trans = add
alpha = 192,256
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 39, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;----------- AI AirJump Start -----------------------------
[Statedef 44]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 44, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 44, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

; var(10) 0=neutral jump 1=forward 2=backward 3 or more will force into 0
; var(9)  always 1

[State 44, 1]
type = VarSet
triggerall = var(10) >= 0
trigger1 = Time = 0
var(10) = 0


[State 44, Final Value]
type = varset
trigger1 = time = 2
var(10) = Abs(var(10))

[State 44, Final Value]
type = varset
trigger1 = time = 2
var(9) = 1


[State 44, 4]
type = VelSet
trigger1 = time = 2
x = ifelse(var(10)=0, const(velocity.jump.neu.x), ifelse(var(10)=1, const(velocity.jump.fwd.x) * IFElse(var(9)=3,1.2,1), const(velocity.jump.back.x) * IFElse(var(9)=3,1.2,1))) * IFElse(var(9)=3,1.3,1) * Const(size.xscale)
y = const(velocity.jump.y) * IFElse(var(9)=3,1.15,IFElse(var(9)=2,0.7,1)) * Const(size.yscale)

[State 44, Explod Airdash]
type = Explod
triggerAll = !NumExplod(7014)
trigger1 = time = 0
anim = 7014
ID = 7014
space = stage
pos = 0 * facing * Const(size.xscale),-160 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = 90
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,128
;remappal = 6415, 0
ignorehitpause = 1

[State 44, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = N

;-------- FX
[State 50, SND FX]
type = PlaySnd
triggerall = (PrevStateNo = [39,40]) && var(9) = 3
trigger1 = time = 0
value = 0,110
volumescale = 100
channel = 1
;abspan = 0

[State 50, Explod Airdash]
type = Explod
triggerall = (PrevStateNo = [39,40]) && var(9) = 3
trigger1 = time = 0
anim = 7014
ID = 7014
space = stage
pos = 0 * facing * Const(size.xscale),-160 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
;vel = -9.12 * facing , Parent,vel y - 7
;accel = 0 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 1.2 * Const(size.xscale),1.2 * Const(size.yscale)
angle = IFElse(sysvar(1) = 0,90,IFElse(Sysvar(1) = 1,45,135))
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,128
;remappal = 6415, 0
ignorehitpause = 1

[State 50, Explod Air wind]
type = Explod
triggerall = (PrevStateNo = [39,40]) && var(9) = 3
trigger1 = time = 0
anim = 7520
ID = 7520
space = stage
pos = 0 * facing * Const(size.xscale),-100 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = -facing
removetime = -2
vel = IFElse(sysvar(1)=0,0,IFElse(sysvar(1)=1,-0.6,0.6)) * facing * Const(size.xscale), 0.6 * Const(size.yscale)
accel = IFElse(sysvar(1)=0,0,IFElse(sysvar(1)=1,-0.6,0.6)) * facing * Const(size.xscale),0.6 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.8 * Const(size.xscale),0.8 * Const(size.yscale)
angle = IFElse(sysvar(1) = 0,90,IFElse(Sysvar(1) = 1,45,135))
sprpriority = 3
ownpal = 1
;trans = add
;alpha = 256,0
;remappal = 6415, 0
ignorehitpause = 1

[State 50, AfterImage]
type = AfterImage
triggerall = (PrevStateNo = [39,40]) && var(9) = 3
trigger1 = time = 0
time = 2
length = 11			;Buffer size  Length -2 images will in buffer
;Main color
palcolor = 256			;256 color 0 no color
palinvertall = 0
palbright = 0,0,0
palcontrast = 60,90,140	;palbright * (palcontrast/256)
palpostbright = 50,50,50
;following color changes, for 2nd image and later
paladd = 0,0,0
palmul = 0.6,0.6,0.6		; 1 to 0
timegap = 1			;Every Displayed Image will last timegap ticks
framegap = 5			;between 1st to 2nd image there will be how many skipped images. Max is buffer -1
trans = add


;-------- End FX

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
triggerall = !(PrevStateNo = [400,999]) && PrevStateNo != 1100
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
triggerall = !(PrevStateNo = [400,999]) && PrevStateNo != 1100
trigger1 = Vel y > Const720p(-8) * Const(Size.yScale)
trigger1 = SelfAnimExist(anim + 3)
trigger1 = anim >= 41 && anim <= 43
persistent = 0
value = Anim + 3

[State 50, Tweek fwd x for DBFCI]
type = veladd
triggerall = !(PrevStateNo = [400,999])
triggerall = vel x < (const(velocity.jump.fwd.x) * Const(size.xscale))
trigger1 = AILevel = 0 && command = "holdfwd"
x = 0.6 * Const(size.xscale)

[State 50, Tweek back x for DBFCI]
type = veladd
triggerall = !(PrevStateNo = [400,999])
triggerall = vel x > (const(velocity.jump.back.x) * Const(size.xscale))
trigger1 = AILevel = 0 && command = "holdback"
x = -0.4 * Const(size.xscale)

[State 50, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)



[State 50, Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 52




;--------------- Run forward ------------------
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
Ctrl = IFElse(AILevel,0,1)

[State 100, 1]
type = VelSet
trigger1 = Anim = 100 && AnimElemTime(2) >= 0
x = Const(velocity.run.fwd.x) * Const(Size.xscale) * IFElse(NumHelper(7110) && !NumHelper(7111),1.5,1)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 100, Snd-Voice]
type = PlaySnd
trigger1 = Anim = 100
trigger1 = AnimElem = 1
trigger1 = Random < 700
value = 4,100 + (Random < 500)
volumescale = 100
channel = 0
;abspan = 0


[State 100, Snd-Steps]
type = PlaySnd
triggerall = !(NumHelper(7110) && !NumHelper(7111))
trigger1 = AnimElem = 3 || AnimElem = 7
value = 0,20
volumescale = 100
channel = 1
;abspan = 0

[State 100, Run-Dust]
type = Explod
trigger1 = anim = 100
trigger1 = AnimElemTime(2) = 0
anim = 7011
ID = 7011
space = stage
pos =  40 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = facing
removetime = -2
vel = facing * Vel x / 4.0, 0
supermovetime = 65535
pausemovetime = 65535
scale = 0.8 * Const(size.xscale),0.8 * Const(size.yscale)
sprpriority = 2
trans = add
alpha = 256,128
shadow = 1
ownpal = 1

[State 100, Run-Dust Smaill]
type = Explod
triggerall = !(NumHelper(7110) && !NumHelper(7111))
trigger1 = AnimElemTime(2) = 1 || AnimElemTime(6) = 1
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

[State 100, Run-Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7012)
trigger1 = AnimElemTime(2) = [2,3]
ID = 7012
scale = (1.0 + ((AnimElemTime(2)-1) / 5.0)) * Const(size.xscale),(1.0 - ((AnimElemTime(2)-1) / 3.0)) * Const(size.yscale)
trans = add
alpha = 256 - (AnimElemTime(2)-1)*64, 0 + (AnimElemTime(2)-1)*64

[State 105, Run-Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7016)
trigger1 = AnimElemTime(6) = [2,3]
ID = 7016
scale = (1.0 + ((AnimElemTime(6)-1) / 5.0)) * Const(size.xscale),(1.0 - ((AnimElemTime(6)-1) / 3.0)) * Const(size.yscale)
trans = add
alpha = 256 - (AnimElemTime(6)-1)*64, 0 + (AnimElemTime(6)-1)*64

;----------- Personal Potential ----
[State 100, Teleport Mask]
type = helper
triggerall = (var(21) & 8)
triggerall = !NumHelper(7110)
trigger1 = Anim = 100
trigger1 = (AnimElemTime(2) = [0,1]) || AnimElemTime(6) = 0 
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 12; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1


[State 100, Teleport Mask out]
type = helper
triggerall = (var(21) & 8)
triggerall = !NumHelper(7111)
trigger1 = Anim = 100
trigger1 = AnimElemTime(4) = 0 || AnimElemTime(8) = 0
trigger1 = var(6) := 1
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

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State NotHitby]
type = NotHitBy
trigger1 = NumHelper(7110)
trigger1 = var(10) := 16
trigger2 = NumHelper(7111)
trigger2 = Helper(7111),Time < 3
trigger2 = var(10) := 16
time = 1
value = SCA
ignorehitpause = 1


;------------ Behavious -------
[State 100, Human Stop]
type = ChangeState
triggerall = time > 4
trigger1 = AILevel = 0
trigger1 = command != "holdfwd"
value = 101

[State 100, AI Stop]
type = ChangeState
triggerall = time > 4
triggerall = AILevel
triggerall = var(10) != 16
trigger1 = P2Dist x < 0 || (InGuardDist && var(10) != 16)
trigger2 = (P2Bodydist x < 32 && var(10) != 16)
trigger2 = Random < (400) * (AIlevel ** 2 / 64.0)
trigger2 = var(57) := 2010001; too close
trigger3 = var(59) = 0
trigger3 = Enemynear,P2Bodydist x > 0 && var(10) != 16
trigger3 = (P2Bodydist x = [600,600]) && (P2Dist y = [-320,10])
trigger3 = P2MoveType = I || var(4) < 3
trigger3 = Random < (220 + 300 * (P2MoveType = A || Enemynear,NumProj)) * (AIlevel ** 2 / 64.0)
trigger3 = var(57) := 2010003; Enemy ready dont closing in
trigger4 = var(59) = [13,16]
trigger4 = P2Bodydist x < (220 + 440*(var(59)=14) + 800*(var(59)=15) + 300*(var(59)=16))
trigger4 = var(57) := 2010003; Stop at poistion
trigger5 = var(59) = 19 && NumHelper(30000)
trigger5 = ((Helper(30000),Pos x - Pos x) * facing) = [(-180 * Const(Size.xScale)), (40 * Const(Size.xScale))]
;Stop at Support character
trigger6 = (Enemynear,Pos x - Pos x) * facing = [320,480]
trigger6 = (Enemynear,StateNo = [5120,5299]) || (Enemynear,StateNo = 1115110 && Enemynear,time > 14)
trigger6 = Random < 300
trigger7 = var(59) = 5301
trigger7 = P2Bodydist x < 620
;Stop at jump point for dizzy
value = 101

[State 100, Clear Invincible]
type = varset
trigger1 = var(10)
var(10) = 0


[Statedef 101];-----------------Run slide
type    = S
physics = S
anim = 101
sprpriority = 1
ctrl = 1

[State 101, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 101, Snd-Steps]
type = PlaySnd
trigger1 = time = 0
value = 0,102
volumescale = 100
channel = 1
;abspan = 0

[State 101, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; --------------- Hop backwards
[Statedef 105]
type    = S
physics = S
ctrl = 0
anim = 105
sprpriority = 0

[State 105, Snd-Voice]
type = PlaySnd
trigger1 = time = 1
value = 4,105 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 105, NotHitby]
type = NotHitby
trigger1 = Anim = 105
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
value = SCA,AP,AT,AA
time = 1

[State 105, Run-Dust]
type = Explod
trigger1 = time = 1 
anim = 7010
ID = 7010
space = stage
pos =  0 * facing * Const(size.xscale),0 * Const(size.yscale)
bindID = ID
bindtime = 1
facing = -facing
removetime = 8
supermovetime = 65535
pausemovetime = 65535
scale = 1.0 * Const(size.xscale),1.0 * Const(size.yscale)
sprpriority = 1
trans = add
alpha = 256,128
shadow = 1
ownpal = 1

[State 105, Run-Dust]
type = ModifyExplod
trigger1 = NumExplod(7010)
trigger1 = time = [4,8]
ID = 7010
scale = 1.0 * Const(size.xscale),(1.0 - ((time-3) / 10.0)) * Const(size.yscale)
trans = add
alpha = 256 - (time-3)*32 ,0 + (time-3)*32

[State 105, 1]
type = VelSet
trigger1 = Anim = 105
trigger1 = AnimElemTime(2) = 0
x = const(velocity.run.back.x) * Const(Size.xScale)
y = const(velocity.run.back.y) * Const(Size.yScale)

[State 105, 2]
type = StateTypeSet
trigger1 = Anim = 105
trigger1 = AnimElemTime(2) = 0
StateType = A
Physics = N

[State 105, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)

[State 105, 3]
type = ChangeState
triggerall = StateType = A
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; Hop backwards (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 106, Snd-Steps]
type = PlaySnd
trigger1 = time = 0
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 106, Stop-Dust]
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
shadow = 1
sprpriority = 2
trans = add
alpha = 256,128
ownpal = 1

[State 106, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7015)
trigger1 = time = [8,15]
ID = 7015
trans = add
alpha = 256 - (time-7)*32, 0 + (time-7)*32

[State 106, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------- Air Dash ------------
[Statedef 110]
type    = A
physics = N
MoveType = I
ctrl = 0
sprpriority = 0
velset = 0,0
Anim = 110

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State NoPush]
type = PlayerPush
trigger1 = 1
value = 0


[State 110, SND Voice]
type = PlaySnd
trigger1 = time = 1
value = 4, 110 + (Random%2)
volumescale = 100
channel = 0
;abspan = 0

[State 110, Teleport Mask]
type = helper
triggerall = !NumHelper(7110)
trigger1 = time = 3
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

[State 110, DoubleJump]
type = varadd
triggerall = var(1) >= 10000
trigger1 = time = 2 && !var(15)
var(15) = 1

[State 110, var]
type = varset
trigger1 = !time
var(10) = 0

[State 110, var]
type = varset
triggerall = var(1) >= 10000
triggerall = !time
trigger1 = AILevel = 0
trigger1 = Command = "dashback"
var(10) = 1

[State 110, Teleport in]
type = PosAdd
trigger1 = time = 15
x = IFElse(var(10)=1,-450,450) * Const(Size.xScale)

[State 110, Telport out]
type = ChangeState
trigger1 = time >= 15
value = 111

[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 52


;------- Air Dash out
[Statedef 111]
type    = A
physics = N
MoveType = A
ctrl = 0
sprpriority = 0
velset = 0,0
Anim = 110
facep2 = 1

[State NotHitby]
type = NotHitBy
trigger1 = time < 4
value = SCA,AA,AP,AT
time = 1

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

[State 111, GiveControl]
type = CtrlSet
trigger1 = !Ctrl
trigger1 = time >= 3
value = 1

[State 111, GiveControl]
type = StateTypeSet
trigger1 = MoveType != I
trigger1 = Ctrl
movetype = I

[State 111, Anim]
type = ChangeAnim
trigger1 = Anim = 110
trigger1 = !AnimTime
value = 41
Elem = 5

[State 111, Gravity]
type = veladd
triggerall = StateType = A
trigger1 = Anim = 41
trigger2 = time >= 3
y = Const(Movement.yaccel) * Const(Size.yScale)

[State Land]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 52


;---------------------------------------------------------------------------
; Lose (time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, Camera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 170, Voice]
type = playSnd
trigger1 = Time = 30
value = 4, 170 + Random%2
channel = 0
volumescale = 100
;abspan = 0

;==========< PREINTRO >==========
[Statedef 190]
type = S
ctrl = 0
velset = 0, 0

[State 190, Intro vs MISAKA Mikoto]
type = ChangeState
triggerall = numenemy
triggerall = !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)
trigger1 = Enemy,Name = "MISAKA Mikoto" || Enemy,Name = "Mikoto Misaka" || Enemy,Name = "Misaka"
trigger2 = Enemy,Name = "MISAKA_Mikoto" || Enemy,Name = "Mikoto_Misaka" || Enemy,Name = "Mikoto"
value = 505

[State 190, Intro vs Kuroyukihime]
type = ChangeState
triggerall = numenemy
triggerall = !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)
trigger1 = Enemy,Name = "Kuroyukihime" || Enemy,Name = "Kuroyuki hime" || Enemy,Name = "Kuroyukihime_K"
trigger2 = Enemy,Name = "Kuroyuki_hime" || Enemy,Name = "Bride_Kuroyukihime_K"
value = 506

[State 190, Intro vs SHIBA Miyuki]
type = ChangeState
triggerall = numenemy
triggerall = !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)
trigger1 = Enemy,Name = "SHIBA Miyuki" || Enemy,Name = "Miyuki SHIBA" || Enemy,Name = "Miyuki"
trigger2 = Enemy,Name = "SHIBA_Miyuki" || Enemy,Name = "Miyuki_SHIBA"
value = 507

[State 190, Intro vs SHIBA Tatsuya]
type = ChangeState
triggerall = numenemy
triggerall = !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)
trigger1 = Enemy,Name = "SHIBA Tatsuya" || Enemy,name = "Tatsuya SHIBA"
trigger2 = Enemy,Name = "SHIBA_Tatsuya" || Enemy,name = "Tatsuya_SHIBA"
trigger3 = Enemy,Name = "Tatsuya_Shiba By Ryon"
value = 508

[State 190, Intro Simul Mikoto and Kuroko]
type = ChangeState
triggerall = TeamMode = Simul
trigger1 = Partner,Name = "MISAKA Mikoto" && Partner,authorname = "BeterHans"
trigger2 = Partner,Name = "MISAKA Mikoto" && Partner,StateNo = 511
value = 511


[State 190, Turns Match Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 518


[State 190, intro]
type = changestate
trigger1 = time > 1
value = 501




;==========<Taunt - 1>=============
[Statedef 195]
Type = S
Physics = S
MoveType = I
velset = 0, 0
facep2 = 1
ctrl = 0
anim = 195

[State 195, Taunt 2]
type = ChangeState
triggerall = AILevel = 0
trigger1 = !time && (Command = "holddown")
value = 196

[State 195, Anime]
type = ChangeState
triggerall = AILevel
trigger1 = !time && Random < 500
value = 196

[State 195, SND Voice start]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 4,190
volumescale = 100
channel = 0
;abspan = 0

[State 195, Ctrl]
type = CtrlSet
trigger1 = time > 35
value = 1

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;==========<Taunt - 2>=============
[Statedef 196]
Type = S
Physics = S
MoveType = I
velset = 0, 0
facep2 = 1
ctrl = 0
anim = 196

[State 196, SND Voice start]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 4,186
volumescale = 100
channel = 0
;abspan = 0
persistent = 0

[State 196, Anim]
type = ChangeAnim
trigger1 = Anim = 196 && time > 50
trigger1 = !(Command = "holddown" || Command = "holdstart")
value = 197

[State 196, End]
type = ChangeState
trigger1 = Anim = 197
trigger1 = !AnimTime
value = 0
ctrl = 1





;==========< INTRO 1 >==========
[Statedef 501]
type = S
anim = 501
sprpriority = -1

[State 501, Say 1st if P1]
type = varset
trigger1 = time = 0
trigger1 = !(var(19) & 32)
trigger1 = facing = 1
var(19) = var(19) + 32

[State 501, Say 1st if P1 release]
type = varset
trigger1 = time > 160
trigger1 = (var(19) & 32)
var(19) = var(19) - 32

[State 501, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 501, Hold-while-other-side-speak]
type = ChangeAnim
triggerall = time < 480
trigger1 = Anim = 501
trigger1 = AnimElemTime(3) = -1
trigger1 = (Enemynear,var(19) & 32) && (Enemynear,var(19) & 128) 
value = 501
Elem = 2

[State 501, snd voice]
type = playsnd
triggerall = anim = 501
trigger1 = AnimElemTime(5) = 0
value = 4, 190 + Random%3
channel = 0
abspan = 0
persistent = 0

[State 501, get ready]
type = ChangeAnim
trigger1 = anim != 0 && !AnimTime
value = 0

[State 501, End]
type = changestate
triggerall = time > 160
trigger1 = anim = 0 && time > 1200
trigger2 = Anim = 0 && !NumHelper(20220)
value = 0






;==========< INTRO VS MISAKA Mikoto >==========
[Statedef 505]
type = S
anim = 506
sprpriority = -1

[State 505, Say 1st]
type = varset
trigger1 = time = 0
trigger1 = !(var(19) & 32)
var(19) = var(19) + 32

[State 505, Say 1st release]
type = varset
trigger1 = time > 200
trigger1 = (var(19) & 32)
var(19) = var(19) - 32

[State 505, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 505, snd voice]
type = playsnd
triggerall = anim = 506
trigger1 = AnimElemTime(3) = 0
value = 4, 195
channel = 0
abspan = 0
persistent = 0

[State 505, Hold Anime]
type = ChangeAnim
trigger1 = time < 380
trigger1 = anim = 506
trigger1 = AnimElemTime(4) = -1
value = 506
Elem = 1

[State 505, get ready]
type = ChangeAnim
trigger1 = anim != 0 && !AnimTime
value = 0

[State 505, Aura Helper]
type = helper
triggerall = NumHelper(7109) < 2
trigger1 = time = 12 || time = 24
helpertype = normal
stateno = 7109
ID = 7109
name = "Back Aura"
postype = P1
pos = 0 * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 380; Time out and kill aura
supermovetime = 65535
Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 505, Explod eye]
type = Explod
trigger1 = Anim = 506
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
anim = 6506
ID = 6506
space = stage
pos = 14 * facing * Const(size.xscale), (-224 + 1*(AnimElemNo(0) = 2)) * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0



[State 505, End]
type = changestate
triggerall = time > 200
trigger1 = anim = 0 && time > 1200
trigger2 = Anim = 0 && !NumHelper(20220)
value = 0


;==========< INTRO VS Kuroyukihime >==========
[Statedef 506]
type = S
anim = 507
sprpriority = -1

[State 506, Say 1st]
type = varset
trigger1 = time = 0
trigger1 = !(var(19) & 32)
var(19) = var(19) + 32

[State 506, Say 1st if P1 release]
type = varset
trigger1 = time > 175
trigger1 = (var(19) & 32)
var(19) = var(19) - 32

[State 506, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 506, Hold-while-speak]
type = ChangeAnim
triggerall = (var(19) & 32)
trigger1 = Anim = 507
trigger1 = AnimElemTime(4) = -1
value = 507
Elem = 3

[State 506, snd voice]
type = playsnd
triggerall = anim = 507
trigger1 = AnimElemTime(2) = 1
value = 4, 196
channel = 0
abspan = 0
persistent = 0

[State 506, get ready]
type = ChangeAnim
trigger1 = anim != 0 && !AnimTime
value = 0

[State 506, End]
type = changestate
triggerall = time > 160
trigger1 = anim = 0 && time > 1200
trigger2 = Anim = 0 && !NumHelper(20220)
value = 0







;==========< INTRO VS SHIBA Miyuki >==========
[Statedef 507]
type = S
anim = 507
sprpriority = -1


[State 507, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 507, Hold-while-other-side-speak]
type = ChangeAnim
triggerall = time < 480
triggerall = Anim = 507
triggerall = AnimElemTime(2) = 0
trigger1 = (Enemynear,var(19) & 32) && (Enemynear,var(19) & 128)
trigger2 = time < 228
value = 507
Elem = 1

[State 507, Hold-while-speak]
type = ChangeAnim
trigger1 = Anim = 507
trigger1 = AnimElemTime(4) = 0
trigger1 = time < 480
value = 507
Elem = 3

[State 507, snd voice]
type = playsnd
triggerall = anim = 507
trigger1 = AnimElemTime(2) = 1
value = 4, 197
channel = 0
persistent = 0

[State 507, get ready]
type = ChangeAnim
trigger1 = anim != 0 && !AnimTime
value = 0

[State 507, End]
type = changestate
triggerall = time > 160
trigger1 = anim = 0 && time > 1200
trigger2 = Anim = 0 && !NumHelper(20220)
value = 0


;==========< INTRO VS SHIBA Tatsuya >==========
[Statedef 508]
type = S
anim = 508
sprpriority = -1


[State 508, intro]
type = assertspecial
trigger1 = 1
flag = intro

;[State 501, Say 1st]
;type = varset
;trigger1 = time = 0
;trigger1 = !(var(19) & 32)
;var(19) = var(19) + 32

;[State 501, Say 1st if P1 release]
;type = varset
;trigger1 = time > 160
;trigger1 = (var(19) & 32)
;var(19) = var(19) - 32

[State 508, Hold-while-other-side-speak]
type = ChangeAnim
triggerall = time < 240
trigger1 = Anim = 508
trigger1 = AnimElemTime(2) = -1 
value = 508
Elem = 1

[State 508, Hold-while-speak]
type = ChangeAnim
trigger1 = Anim = 508
trigger1 = AnimElemTime(4) = 0
trigger1 = time < 475
value = 508
Elem = 3

[State 508, snd voice]
type = playsnd
triggerall = anim = 508
trigger1 = AnimElemTime(2) = 1
value = 4, 198
channel = 0
persistent = 0

[State 508, get ready]
type = ChangeAnim
trigger1 = anim != 0 && !AnimTime
value = 0

[State 508, End]
type = changestate
triggerall = time > 160
trigger1 = anim = 0 && time > 1200
trigger2 = Anim = 0 && !NumHelper(20220)
value = 0




;==========< INTRO - Simual with Mikoto >==========
[Statedef 511]
type = S
physics = N
anim = 800
sprpriority = -2

[State 505, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 511, Invisible]
type = AssertSpecial
trigger1 = time < 140
flag = invisible
flag2 = noshadow

[State 511, NoPlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 511, NoHit]
type = NotHitBy
trigger1 = 1
Value = SCA,AA,AP,AT

[State 511, Remember place]
type = helper
triggerall = !NumHelper(7999)
trigger1 = time < 10
trigger2 = Partner,StateNo = 511
helpertype = normal
stateno = 7999
ID = 7999
name = "INTRO_CAM"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
;size.proj.doscale = StateNo; IF not this state Kill Aura
;size.shadowoffset = 7; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
;ownpal = 1
;persistent = 1

[State 511, ScreenBound]
type = ScreenBound
trigger1 = NumHelper(7999)
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 511, BindToMikoto]
type = PosSet
trigger1 = NumHelper(7999)
trigger1 = time < 10
trigger1 = Partner,StateNo = 511
x = Partner,Pos x - facing*(120 * Const(Size.xScale))
y = Partner,Pos y

[State 511, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 140
trigger2 = Partner,NumHelper(7111)
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

[State 511, SND Teleport]
type = PlaySnd
trigger1 = NumHelper(7111)
value = 5,7530
volumescale = 100
channel = 5
;abspan = 0
persistent = 0

[State 511, Move_Anim]
type = ChangeAnim
trigger1 = Anim = 800
trigger1 = !NumHelper(7111) && NumHelper(7999)
trigger1 = time = 200
value = 105

[State 105, Snd-Voice]
type = PlaySnd
trigger1 = Anim = 105
trigger1 = AnimElemTime(1) = 1
value = 4,105 + Random%2
volumescale = 100
channel = 0
;abspan = 0

[State 511, Move_Vel]
type = VelSet
trigger1 = Anim = 105 && NumHelper(7999)
trigger1 = AnimElemTime(2) = 0
x = ((Helper(7999),Pos x - Pos x) / 16.0) * facing
y = Const(velocity.run.back.y) * Const(Size.yScale)

[State 511, 2]
type = StateTypeSet
trigger1 = Anim = 105
trigger1 = AnimElemTime(2) = 0
StateType = A
Physics = N

[State 105, Gravity]
type = veladd
trigger1 = StateType = A
y = Const(Movement.yaccel) * Const(Size.yScale)


[State 511, Move_Stop]
type = ChangeAnim
trigger1 = Anim = 105
trigger1 = time = 220
value = 106

[State 511, 2]
type = StateTypeSet
trigger1 = Anim = 106
trigger1 = StateType = A
StateType = S
Physics = S

[State 511, Move_Vel]
type = VelSet
trigger1 = Anim = 106 && NumHelper(7999)
trigger1 = AnimElemTime(1) = 0
x = 0
y = 0

[State 511, Move_Stop]
type = PosSet
trigger1 = Anim = 106 && NumHelper(7999)
trigger1 = AnimElemTime(1) = 0
x = Helper(7999),Pos x
y = 0

[State 511, Idel]
type = ChangeAnim
trigger1 = Anim = 106 && !AnimTime
value = 0


[State 106, Snd-Steps]
type = PlaySnd
trigger1 = Anim = 106
trigger1 = AnimElemTime(1) = 0
value = 0,52
volumescale = 100
channel = 1
;abspan = 0

[State 106, Stop-Dust]
type = Explod
trigger1 = Anim = 106
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
shadow = 1
sprpriority = 2
trans = add
alpha = 256,128
ownpal = 1

[State 106, Dust grow]
type = ModifyExplod
trigger1 = NumExplod(7015) && Anim = 106
trigger1 = AnimElemTime(1) = [8,15]
ID = 7015
trans = add
alpha = 256 - (AnimElemTime(1)-7)*32, 0 + (AnimElemTime(1)-7)*32


[State 511, End]
type = changestate
triggerall = time > 240
trigger1 = anim = 0 && time > 1200
trigger2 = Anim = 0 && !NumHelper(20220)
value = 0

;====================<TURNS INTRO>====================
[StateDef 518]
type = S
velSet = 0,0
ctrl = 0

[State 518, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State AssertSpecia]
type = AssertSpecial
trigger1 = time < 40
flag = invisible

[State NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 518, AnimFix]
type = ChangeAnim
trigger1 = AnimElemTime(2) = -1
value = 501
Elem = 1

[State 518, Teleport Mask]
type = helper
triggerall = !NumHelper(7111)
trigger1 = time = 40
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

[State 7110, SND Teleport]
type = PlaySnd
trigger1 = NumHelper(7111)
trigger1 = Helper(7111),time = 0
value = 5,7530
volumescale = 100
channel = 5
;abspan = 0


[State 518, End]
type = ChangeState
triggerall = NumHelper(7110) = 0
trigger1 = time > 80
value = 501


;==========< WIN POSE DECIDER >==========
[Statedef 180]
type = S

[State 180, Quote Normal]
type = victoryquote
trigger1 = !time
value = 1 + Random%4

[State 180, Quote VS Mikoto]
type = victoryquote
triggerall = !time
trigger1 = Enemynear(0),name = "MISAKA Mikoto" || Enemynear(1),name = "MISAKA Mikoto"
value = 10 + Random%2

[State 180, WIN by Accelerator]
type = SelfState
trigger1 = Prevstateno = 1140351
value = Prevstateno

;-------- Team win -----------
[State 180, WIN With Mikoto]
type = changestate
trigger1 = !time
trigger1 = PlayerIDExist(var(34))
trigger1 = PlayerID(var(34)),name = "MISAKA Mikoto"
value = 521

;------- Individual ----------
[State 180, WIN VS Mikoto]
type = changestate
trigger1 = !time
trigger1 = Enemynear(0),name = "MISAKA Mikoto" || Enemynear(1),name = "MISAKA Mikoto"
value = 183


[State 180, win-Random]
type = changestate
trigger1 = !time
value = 181

;==========< WIN 1 >==========
[Statedef 181]
type = S
anim = 181 + Random%2
ctrl = 0

[State 181, win]
type = assertspecial
trigger1 = time < 200
flag = roundnotover

[State 181, Snd]
type = playsnd
trigger1 = AnimElemTime(4) = 3
value = 4, 180 + Random%6
volumescale = 100
channel = 0



;==========< WIN VS Mikoto>==========
[Statedef 183]
type = S
moveType = I
physics = S
sprpriority = 1
ctrl = 0
anim = 0
velset = 0,0

[State 183, Mikoto ID]
type = varset
trigger1 = !time
trigger1 = Enemynear(1),name = "MISAKA Mikoto"
var(10) = Enemynear(1),ID

[State 183, Mikoto ID]
type = varset
trigger1 = !time
trigger1 = Enemynear(0),name = "MISAKA Mikoto"
var(10) = Enemynear(0),ID

[State 183, win]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 183, Teleport Mask]
type = helper
trigger1 = !NumHelper(7110)
trigger1 = Anim = 0
trigger1 = var(6) > 10
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 18; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State 183, Move]
type = PosSet
triggerall = pos x != Floor(PlayerID(var(10)),Pos x - (200 * Const(Size.xScale) * facing))
trigger1 = NumHelper(7110) && PlayerIDExist(var(10))
trigger1 = Helper(7110),time >= 17
trigger2 = Anim >= 183 && Anim < 186
x = Floor(PlayerID(var(10)),Pos x - (200 * Const(Size.xScale) * facing))

[State 183, Anim]
type = ChangeAnim
trigger1 = NumHelper(7110) && PlayerIDExist(var(10))
trigger1 = Helper(7110),time = 18
trigger1 = var(6) := 1
value = 183

[State 3000, Teleport Mask out]
type = helper
trigger1 = Anim = 183
trigger1 = AnimElemTime(1) = 0
trigger1 = var(6) = 1
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 8; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 183, Snd]
type = playsnd
trigger1 = Anim = 183
trigger1 = var(6) = 30
value = 4, 187
volumescale = 100
channel = 0

[State 183, Anim]
type = ChangeAnim
trigger1 = Anim = 183
trigger1 = var(6) >= 160
value = 184

[State 183, Anim]
type = ChangeAnim
trigger1 = Anim = 184
trigger1 = AnimTime = 0
trigger1 = var(6) := 1
value = 185

[State 183, Aura Helper]
type = helper
triggerall = NumHelper(7109) < 2
trigger1 = (Anim = [183,185])
trigger1 = (AnimElemTime(1) = 12 || AnimElemTime(1) = 24)
helpertype = normal
stateno = 7109
ID = 7109
name = "Back Aura"
postype = P1
pos = 0 * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 310; Time out and kill aura
supermovetime = 65535
Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 183, Explod eye]
type = Explod
trigger1 = Anim = 185
anim = 6506
ID = 6506
space = stage
pos = 14 * facing * Const(size.xscale), (-224 + 1*(AnimElemNo(0) = 2)) * Const(size.yscale)
bindID = ID
bindtime = -1
facing = facing
removetime = 1
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
supermovetime = 65535
pausemovetime = 65535
scale = 0.4 * Const(size.xscale), 0.4 * Const(size.yscale)
angle = 0
sprpriority = 2
ownpal = 1
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0


[State 183, Anim]
type = ChangeAnim
trigger1 = Anim = 185
trigger1 = var(6) >= 140
value = 186

[State 183, Snd]
type = playsnd
trigger1 = Anim = 185
trigger1 = var(6) = 30
value = 4, 186
volumescale = 100
channel = 0

[State 183, Snd]
type = playsnd
trigger1 = Anim = 186
trigger1 = AnimElemTime(2) = 0
value = 4, 188
volumescale = 100
channel = 0

[State 183, Final Vel]
type = VelSet
trigger1 = Anim = 186
trigger1 = AnimElemTime(5) > 0
x =  0.2 * Const(Size.xScale)
y = -0.2 * Const(Size.yScale)

[State 183, Counter]
type = varadd
trigger1 = 1
var(6) = 1



;==========< WIN With Mikoto>==========
[Statedef 521]
type = S
moveType = I
physics = S
sprpriority = 1
ctrl = 0
anim = 0
velset = 0,0


[State 521, win]
type = assertspecial
trigger1 = !(anim = 4 && var(6) > 60)
flag = roundnotover

[State 521, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 521, Teleport Mask]
type = helper
trigger1 = !NumHelper(7110)
trigger1 = Anim = 0
trigger1 = var(6) > 10
helpertype = normal
stateno = 7110
ID = 7110
name = "TelePort Mask Into"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 18; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State Invisiable if masked]
type = AssertSpecial
trigger1 = NumHelper(7110)
flag = invisible
flag2 = noshadow

[State 521, Move]
type = PosSet
triggerall = pos x != Floor(PlayerID(var(34)),Pos x - (200 * Const(Size.xScale) * facing))
trigger1 = NumHelper(7110) && PlayerIDExist(var(34))
trigger1 = Helper(7110),time >= 17
trigger2 = Anim >= 521 && Anim < 186
x = Floor(PlayerID(var(34)),Pos x + (80 * Const(Size.xScale) * facing))

[State 521, Anim]
type = ChangeAnim
trigger1 = NumHelper(7110) && PlayerIDExist(var(34))
trigger1 = Helper(7110),time = 18
trigger1 = var(6) := 1
value = 4

[State 3000, Teleport Mask out]
type = helper
trigger1 = Anim = 4
trigger1 = AnimElemTime(1) = 0
trigger1 = var(6) = 1
helpertype = normal
stateno = 7111
ID = 7111
name = "TelePort Mask Out"
postype = P1
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = StateNo; IF not this state Kill Aura
size.shadowoffset = 8; Time out and kill aura
;supermovetime = 65535
;Pausemovetime = 65535
ownpal = 1
persistent = 1

[State 521, Snd]
type = playsnd
trigger1 = Anim = 4
trigger1 = var(6) = 60
value = 4, 190
volumescale = 100
channel = 0

[State 521, Control]
type = CtrlSet
trigger1 = Ctrl = 0
trigger1 = anim = 4 && var(6) > 60
value = 1



[State 521, Counter]
type = varadd
trigger1 = 1
var(6) = 1



;--------------- Recover on Ground Custom version -----------
; Air get-hit (fall recovery on ground);
[Statedef 5201]
type    = C
movetype= H
physics = C
anim = 5200
velset = 0,0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20) * Const(Size.yScale)

[State 5201, Move]
type = VelSet
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
x = 0.8 * Const(Velocity.run.back.x) * Const(Size.xScale)

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State Voice]
type = playSnd
triggerall = Alive
triggerall = time = 1
trigger1 = var(6) := 1
value = 4, 5210 + Random%3
channel = 0
volumescale = 100
;abspan = 0
ignorehitpause = 1



[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = [0,16]
time = 1
add = 256 - 16*time, 256 - 16*time, 256 - 16*time

[State 5201, 6]
type = Explod
trigger1 = Time = 0
trigger2 = AnimElemTime(6) = 0
anim = F60
postype = none
pos = pos x + camerapos x, (pos y) - floor(vel y)
facing = facing
sprpriority = -10

[State 5201, End]
Type = SelfState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;============ Chip KO ==============
[Statedef 5130]
type = U
physics = C
movetype= I
sprpriority = 0
ctrl = 0

[State 5130, Anim]
type = ChangeAnim
trigger1 = !time
value = 5130
elem = IFElse(StateType = C,2,1)

[State 5130, Chip KO snd]
type = playsnd
trigger1 = !Alive && !(var(18) & 128)
trigger1 = !time
trigger1 = var(18) := var(18) + 128
value = 4,5130
volumescale = 100
;channel = 0
;abspan = 0
ignorehitpause = 1

[State 5130]
type = ChangeState
trigger1 = AnimTime = 0
value = 5150
ctrl = 1
