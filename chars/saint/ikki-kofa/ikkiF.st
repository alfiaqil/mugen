
;===========================================================
;===========================================================
;SAINT FINSH
;===========================================================
;===========================================================
^^^^^^^^^^^^
;===========================================================
 ;(Esmeralda Dream)
;===========================================================

[Statedef 4400]
type = S
movetype = A
physics = S
anim = 5300
poweradd = -3000
juggle = 5
ctrl = 0

[State 4400]
type = assertspecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = nobardisplay

[State 4400]
type = assertspecial
trigger1 = 1
flag = nomusic

[State 4400 , pause]
type = SuperPause
trigger1 = Time = 0
time = 1220
anim = -1
darken = 0
supermove = 1
movetime = 1220

[State 4400, NoHit]
type = NotHitBy
trigger1 =anim =5300
value = SCA

[State 4400, 1]
type = PlaySnd
trigger1 = time = 0
value = 4400,1
channel = 0

[State 4400, esméralda]
type = Explod
trigger1 =time = 180
;trigger1 = Pos X > 0
pos = - 40,-180
anim = 8122
ID = 4208
postype = p1 ;left p2,front,back,left,right
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 270
supermovetime = 270

[State 4400, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1160
;trigger1 = AnimTime = 0
trigger1 = Anim = 5300
value = 196
;elem = 5
;ignorehitpause =
;persistent =


[State 4400, EXPLOSion consmos ]
type = Explod
;triggerall = NumExplod(8108) = 0
trigger1 =  Anim=196;Elem=1
trigger1 =AnimElem=1
anim =8108
;id = 8108
pos = 0,10
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
supermove = -2
removeongethit = 1
supermovetime = 760

 [State 4400, 1]
type = PlaySnd
trigger1 =  Anim=196;Elem=1
trigger1 =AnimElem=1
value = 2000,2

[State 4400, 1]
type = EnvShake
;triggerall = power >= 3000
trigger1 =AnimElem=1
time = 50
freq = 60

[State 4400 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 4401
ctrl = 1
;===========================================================
;preparation
;===========================================================
;Hô yoku ten shô
[StateDef 4401]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3002
poweradd = -1500

;===============================
;paramétre spétial
;===============================

;SuperPause
[State 4401, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = 3000
Time = 270
movetime = 270
darken = 5


;éffait rouge
[State 4401, 1]
type = AfterImage
trigger1 =Time = 0
time = 214
FrameGap = 1
color = 1
PalBright =   0,  0,  0
PalContrast = 255,128,64
PalAdd  =   0,  0,  0
PalMul  =  1,1,1
length = 25
Trans = Add1
;===============================
;SND
;===============================
[State 4401, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 4100,4
channel = 0

[State 4401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
trigger2 =AnimElem=5
trigger3 =AnimElem=7
trigger4 =AnimElem=12
trigger5 =AnimElem= 18
value = S0,1

[State 4401, PlaySnd]
type = PlaySnd
trigger1=AnimElem=20
value = S0,2

[State 4401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S4000,2

[State 4401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S4300,2

[State 4401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=19
value = S100,1

;===============================
;EXPLOD
;===============================
;fon de feux
[State 4401 fontde feux  ]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim =8136
ID = 8136
scale = 2,2
postype = left
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 198
 supermovetime = 700

[State 4401 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 4402
ctrl = 0
;===========================================================

[Statedef 4402]
type = S
movetype = A
physics = S
anim = 3036
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0
supermovetime = 700

 [State 4402 , Cri de phénix ]
type = PlaySnd
trigger1 = animelem =1
value = 190

;déplasmen ver l avent
[State 4402, VelAdd]
 type = VelAdd
trigger1 = AnimElem=5
x =5
y = 0
;ignorehitpause =
;persistent =




[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP



[State 3000,ºÚÉ«µ×É«]
type = Envcolor
trigger1 = animelem = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 30
under = 1
supermove = 1

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17100
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17110
pos = 0,-70
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




;PETIT EXPLOSION
[State 4402, petit explosion de magma ]
type = Explod
trigger1 = animelem= 1
anim =8038
ID = 8038
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
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140


;grande explosion
[State 4402,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8100
ID = 8100
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
 supermovetime = 140





[State 4402, 11]
type = ChangeState
trigger1 = animtime = 0
value =4403
ctrl =1
;===========================================================
;hit attaque
;===========================================================
[Statedef 4403]
type = S
movetype = A
physics = S
anim = 3037
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0
supermovetime = 700

[State 4403, NoHit]
type = NotHitBy
trigger1 = anim = 3037
value = SCA

;déplasmen ver l avent
[State 4403, VelAdd]
 type = VelAdd
trigger1 = AnimElem=1
x =40
y = 0
;ignorehitpause =
;persistent =

[State 4403, 3]
type = hitdef
;triggerall=anim=3037
trigger1 =  Anim=3037;Elem = 1
attr = S, SP
;projhitanim = -1
postype = p1
hitflag=HLF
damage = 8
animtype =hard
guardflag = -1:HLM
pausetime = 0,230
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = s3,1
guard.pausetime =1, 130
mindist = -100 ,-1
maxdist = -100,-1
;guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 700
ground.velocity = 0
air.velocity = -0,0
p2facing =1
givepower = 0
fall=1
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
supermovetime = 140


[State 4403, transition si il est touchez]
type = ChangeState
trigger1 = animtime = 0
;trigger1 = MoveContact =1
;trigger1 = p2stateno = [5000,5300]
;trigger1 = Time = 10
value = 4404
ctrl =0

;===========================================================
;FIN DE L ATAQUE
;===========================================================
[Statedef 4404]
type = S
movetype = A
physics = S
anim = 4403
velset = 0,0
juggle = 0
ctrl = 0


[State  4404 , explosion ]
type = PlaySnd
trigger1 = P2StateNo =5000
trigger1 = time=35
value = 190,2

[State  4404, Cri de phénix ]
type = PlaySnd
trigger1 = P2StateNo =5000
trigger1 = time=15
value = 190

[State 4404 , 3]
type = EnvShake
trigger1 = P2StateNo =5000
trigger1 = Time =35
time = 50

  ; traverser P2
[State 4404, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0

[State 4404, TargetVelAdd]
type = TargetVelAdd
trigger1 = P2StateNo =5000
trigger1=animelem= 1 ;Time
trigger1= Time%80=0
x = -1
y = -1
ID = -1

[State 4404, TargetVelAdd]
type = TargetVelAdd
trigger1 = P2StateNo =5000
trigger1 =Time =35
x = 1
y = 1
ID = -1

 ;arnaké la bar liv
[State 4404, Hurt]
type = TargetLifeAdd
trigger1 = P2StateNo =5000
trigger1 =Time =35
value =-350



[State 4404, explosion  ]
type = Explod
;trigger1 = MoveContact =1
trigger1 = P2StateNo =5000;[5000,5999]
trigger1 = time=35
pos =-30,-55
anim = 8121
ID = 4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -2
;ontop =1
supermovetime = 700

[State 4404, phénix de fin  ]
type = Explod
trigger1 = P2StateNo =5000
trigger1 = time=15
;trigger1 = Pos X  > 0
pos =-100,-55
anim = 8120
ID = 4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 20
;ontop =1
supermovetime = 700

[State 4404, Tux]
type = Turn
trigger1 = AnimElem = 5

[State 4404, Voice]
type = PlaySnd
trigger1 = AnimTime = 0
value = 199,0
channel = 0

[State 4404 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value =0
ctrl =1

;===================================================================
;===================================================================
 ;Ultime Phoenix
;===================================================================
;===================================================================
[Statedef 4050, Ultime Phoenix]
type = S
movetype = I
physics = S
anim = 4000
poweradd = -3000
velset = 0
ctrl = 0

[State 4050, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 8
channel = 0

[State 4050, Tux1]
type = PlaySnd
trigger1 = (Time != 0) && (Time % 45 = 0)
value = 3, 3

;bg flamme
[state 4050, explod]
type = Explod
triggerall = NumExplod(2101) = 0
triggerall = stateno = 2100
trigger1 = time = 0
anim = 2101
id = 2101
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 60
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;sign
[State 4050, 0]
type = Explod
triggerall = NumExplod(2102) = 0
triggerall = stateno = 2100
trigger1 = Time = 0
anim = 2102
id = 2102
pos = 0,0
postype = p1
sprpriority = -3
removetime = 50
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1


;7ème sens
[state 4050, 7sens]
type = explod
triggerall = NumExplod(2104) = 0
triggerall = stateno = 2100
trigger1 = time = 0
anim = 2104
id = 2104
pos = 0,0
postype = left
sprpriority = -2
supermove = 1
removetime = 210
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

;cosmo standing remove
[State 4050,2]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 4050, 0]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic
persistent = 1

[State 4050 , 3]
type = EnvShake
trigger1 = Time = 0
time = 400

[State 4050 , 7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,2

[State 4050, Tux2]
type = EnvColor
trigger1 = AnimElem = 8
value = 255,255,255
under = 0
time = 5

[State 4050 , 12.1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4054
ctrl = 0

;===========================================================
[Statedef 4054]
type = S
movetype = A
physics = S
anim = 8125
velset = 0,0
juggle = 0
ctrl = 0

[State 4054 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 4055
ctrl = 0
;===========================================================
[Statedef 4055]
type = S
movetype = A
physics = S
anim = 8126
velset = 0,0
juggle = 0
ctrl = 0

[State 4050, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 3,3

[State 4050, Tux2]
type = PlaySnd
trigger1 = Time = 0
value = 4100,2

[State 4055, Explod]
type = Explod
trigger1 = Time =9
anim = 8131
ID =8131
pos = 0,-35
postype =back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =

[State 4055, foudre asard ]
type = Explod
;trigger1 = ProjContact =1 ;Anim=3008 ;AnimElem=1,28
trigger1= Time=1
pos =80,-200
random =5000,0
anim = 8034
ID = 8050
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = 1
;persistent = 0
;removeongethit = 1
;supermove = 1
removetime = 130
supermovetime = 700

[State 4055, sol ]
type = Explod
;trigger1 = ProjContact =1 ;Anim=3008 ;AnimElem=1,28
;trigger1 = Time
trigger1 = Time=1
pos =80,70
random =200,0
anim = 8050
ID =8050
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
removetime =700
supermove
pausemove
supermovetime = 700
scale = 1,1
sprpriority =0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =

[State 4055, Projectile]
type = Projectile
trigger1 = AnimElem=1
ProjID = 8129
projanim = 8129
projhitanim = -1
;projremanim =
;projcancelanim =
projscale = 1,1
projremove =0
projremovetime = 100
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 100
projpriority = 1
projsprpriority = 3
projedgebound = 100
projstagebound = 100
projheightbound = -240
offset = 0,-50
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 7000
pausemovetime = 7000
; HitDef
attr = S,NA;SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = -1         ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 0,0
pausetime = 0,115
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.hittime=150
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 1
;=============================
;sitouchez
[State 4055 , 11]
type = ChangeState
trigger1 =time=100;AnimTime = 0
trigger1 = p2stateno = [5000,5300]
;trigger1 = ProjContact=1
value =4056
ctrl =0
;=============================
;si  manqué
[State 4055 , 11]
type = ChangeState
trigger1 =time=100;AnimTime = 0
;trigger1 = p2stateno = [5000,5300]
;trigger1 = ProjContact=0
value =0
ctrl =1
;===========================================================
;===========================================================
;===========================================================
;P2 STATE1
[Statedef 4082]
type = S
movetype = I
physics = s
ctrl =0
;anim = 4082

[state 4082, 0]
type = changeanim2
trigger1 = time = 0
value = 4082

;[State 0, VelSet]
;type = VelSet
;trigger1 = AnimElem=1
;x = 0
;y = -10
;ignorehitpause =
;persistent =



 [State 4082 , 11]
type = ChangeState
trigger1 =Time =150
value = 4081
ctrl =0
;===========================================================
;P2 STATE 2 décolage
[Statedef 4081]
type = S
movetype = I
physics = s
ctrl =0
;anim = 4081

[state 4082, 0]
type = changeanim2
trigger1 = time = 0
value = 4081

     


[State 4082, VelSet]
type = VelSet
trigger1 =  AnimElem=1
x = 0
y = -10
;ignorehitpause =
;persistent =


 [State 4082 , 11]
type = ChangeState
trigger1 =Time =100
value = 4083;5030
ctrl =0

;[State 4403 , 11]
;type = ChangeState
;;trigger1 =AnimTime = 0
;value =0
;ctrl =1

 ;===========================================================
;P2 STATE 3 dans les étoille
[Statedef 4083]
type = S
movetype = I
physics = s
;anim = 4083

[state 4083, 0]
type = changeanim2
trigger1 = time = 0
value =4083

[State 4083, PosSet]
type = PosSet
trigger1 = AnimElem=1
x = 0
y = 8
;ignorehitpause =
;persistent =


[State 4083, VelSet]
type = VelSet
trigger1 = AnimElem=1
x = 0
y = -1
;ignorehitpause =
;persistent =



 [State 4083, palfx]
type = PalFX
trigger1 = time = 1
time = 250
add = 255,157,32
sinadd = 40,40,40,3

 [State 4083 , 11]
type = ChangeState
trigger1 =Time =300
value =4084;5030 ;5100
ctrl =0

;===========================================================
 ;p2 chut
[Statedef 4084]
type = S
movetype = I
physics = s
ctrl =0

[state 4084, 0]
type = changeanim2
trigger1 = time = 0
value =821

;vel feux
[State 4084, Vel]
type = VelSet
trigger1 = Anim =821
trigger1 = AnimElem =1
X = 0
Y = 7

[State 4084, LifeSet]
type = LifeSet
trigger1 = Time = 42
value =  -0

[State 4084 , 11]
type = ChangeState
trigger1 = Pos Y >= 0
value =5030;5150;5030; 5100;5030
ctrl =0
;===========================================================

;===========================================================
 ;foncé
[Statedef 4056]
type = S
movetype = A
physics = S
anim = 8127
velset = 0,0
juggle = 0
ctrl = 0

[State 4050, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 3,3

[State 4050, Tux2]
type = PlaySnd
trigger1 = Time = 30
value = 4100,2

[State 4056, afterimage]
type = AfterImage
trigger1 = AnimElem=2
time = 30
palbright = 50,50,50
palcontrast = 255,128,64
PalMul = 1,1,1
palpostbright = 0,0,0
PalAdd = 0, 0, 0
trans = Add1

[State 4056, PlayerPush]
type = PlayerPush
trigger1 =AnimElem=2
value = 0
;ignorehitpause =
;persistent =

[State 4056, PlaySnd]
type = PlaySnd
trigger1 = MoveContact=1
value = S1,6
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 4056, voix]
type = PlaySnd
trigger1 = time=0
value = 36,0
channel = 0

[State 4056, fxf]
type = PlaySnd
trigger1 = time=0
value = S2000,1
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 4056, VelSet]
type = VelSet
trigger1 = AnimElem=2
x = 70
y = 0
;ignorehitpause =
;persistent =

[State 4056, 2]
type = HitDef
trigger1 = AnimElem =2
;trigger2 = AnimElem = 3
;trigger3 = AnimElem = 4
hitflag = MAF        ;HLAFD+-
attr = S,ST
animtype  = Medium
damage    = 0
guardflag = MA
pausetime =0,12
mindist = -1 ,-1
maxdist = -1,-1
snap =15,0
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,0
;hitsound   = s1,2
;uardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity =0,0
p2stateno =4082

[State 4056 , 11]
type = ChangeState
 trigger1 = MoveContact =1
trigger1 = p2stateno = [4082,4083]
;trigger1 = p2bodydist X <= 0
;trigger1 = MoveContact=1

vel= x=-70
;triggerall =
value =4057
ctrl =0

[State 4056 , 11]
type = ChangeState
trigger1 =AnimTime = 0
value =0
ctrl =1

;===========================================================
 ;décolage
[Statedef 4057]
type = S
movetype = A
physics = S
sprpriority = -2
anim = 8128
velset = 0,0
juggle = 0
ctrl = 0

[State 4050, Tux1]
type = PlaySnd
trigger1 = (Time != 0) && (Time % 45 = 0)
value = 3,3

[State 4050, Tux2]
type = PlaySnd
trigger1 = Time = (Time != 0) && (Time % 60 = 0)
value = 4100,2
channel = 4

[State 4050, Tux3]
type = PlaySnd
trigger1 = Time = ((Time % 60 = 0) + 90)
value = 4100,2
channel = 5

 [State 4057, BindToTarget]
type = BindToTarget
triggerall = P2Name != "cassios"
trigger1 =1
time = 1
ID = -1
pos =1,0,Foot

 [State 4057, BindToTarget]
type = BindToTarget
triggerall = P2Name = "cassios"
trigger1 =1
time = 1
ID = -1
pos = -10,-20,Foot

[State 4057, PlaySnd]
type = PlaySnd
trigger1 =time=150
value = S2,7
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 4057,fxfd]
type = PlaySnd
trigger1 =time=150
value = S4300,2
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


;Bg effect flache de lumier
[State 4057, 2]
type = BGPalfx
;trigger1 = time=10
trigger1 = AnimElem =3
ignorehitpause = 1
time = 20
mul =  255,255,255
add =  255,255,255
invertall =-1

[State 4057, PlayerPush]
type = PlayerPush
trigger1 =AnimElem=2
value = 0
;ignorehitpause =
;persistent =

[State 4057, afterimage]
type = AfterImage
trigger1 = AnimElem=3
time = 30
palbright = 50,50,50
palcontrast = 255,128,64
PalMul = 1,1,1
palpostbright = 0,0,0
PalAdd = 0, 0, 0
trans = Add1

;brat
[State 4057, Explod]
type = Explod
trigger1 = AnimElem=2
anim =8130
ID =8130
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
;removetime = 200
supermove
pausemove
scale = 1,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =

 [State 4057, pousier]
type = Explod
;triggerall = NumExplod(2002) = 0
trigger1 =  AnimElem=4;Elem=1
anim =8137
id = 2002
pos = 0,10
postype = p1
sprpriority = 2
;removetime = 1
bindtime = 1
ownpal = 1
supermove = -2
removeongethit = 1
supermovetime = 700

[State 4057, foudre asard ]
type = Explod
;trigger1 = ProjContact =1 ;Anim=3008 ;AnimElem=1,28
trigger1= Time=25=0
pos =80,-200
random =5000,0
anim = 8034
ID = 8050
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = 1
;persistent = 0
;removeongethit = 1
;supermove = 1
removetime = 130
supermovetime = 700

[State 4057, sol ]
type = Explod
;trigger1 = ProjContact =1 ;Anim=3008 ;AnimElem=1,28
;trigger1 = Time
trigger1 = Time%25=0
pos =80,300
random =200,0
anim = 8050
ID = 8050
postype = left ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
removetime =80
supermove
pausemove
supermovetime = 700
scale = 1,1
sprpriority =0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =


[State 4057, PosAdd]
type = PosAdd
trigger1 = AnimElem=1
x = 70;34
y = 0
;ignorehitpause =
;persistent =

[State 4057, VelSet]
type = VelSet
trigger1 = time=150
x = 0
y = -10
;ignorehitpause =
;persistent =

[State 4057 , 11]
type = ChangeState
trigger1 =AnimTime = 0
value =4058;5030
ctrl =1
;===========================================================
 ;spesce state
[Statedef 4058]
type =A
movetype =I
physics = S
sprpriority = -1
anim = 8132
velset = 0,0
juggle = 0
ctrl = 0

[State 4058, voix]
type = PlaySnd
trigger1 = Time = 30
value = 36,2
channel = 0

[State 4058, PosSet]
type = PosSet
triggerall = P2Name != "cassios"
trigger1 = AnimElem=1
x = 0
y = 8

[State 4058, PosSet]
type = PosSet
triggerall = P2Name = "cassios"
trigger1 = AnimElem=1
x = -8
y = 8

[State 4058, VelSet]
type = VelSet
trigger1 = AnimElem=1
x = 0
y = -1
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=15
value = S3,4
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, StopSnd]
type = StopSnd
trigger1 =Time = 300
channel = -1
;ignorehitpause =
;persistent =


[State 4058 comet]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,90
anim =8135
ID = 8135
scale = 1,1
postype = p1
sprpriority = 6
ignorehitpause = 3
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 300
 supermovetime = 700

;fon de feux
[State 4058 fontde feux  ]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim =8136
ID = 8136
scale = 2,2
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 300
 supermovetime = 700

 ;rey1
[State 4058 rey1]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim =8134
ID = 8134
scale = 2,2
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 300
supermovetime = 700

;rey2
[State 4058 rey2]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim =8134
ID = 8134
scale = 2,2
postype = left
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 300
 supermovetime = 700

[State 4058, palfx]
type = PalFX
trigger1 = time = 1
time = 250
add = 255,157,32
sinadd = 40,40,40,3

[State 4058 font ]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,50
anim =8133
ID = 8133
scale = 1,1
postype = left
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 300
 supermovetime = 700
 

[State 4058 , 11]
type = ChangeState
trigger1 =Time = 300
;fall=1
value =4059;5030 ; 5100
ctrl =1
;===========================================================
 ;chut
[Statedef 4059]
type =A
movetype =A
physics = N
anim = 8138
velset = 0,0
juggle = 0
ctrl = 0

;vel feux
[State 4059, Vel]
type = VelSet
trigger1 = Anim = 8138
trigger1 = AnimElem =1
X = 0
Y = 7

[State 4059, win fon]
type = Explod
trigger1 = Pos Y >=4
anim = 31000
pos = -320,0
postype = right
sprpriority = -3
supermove = 1
removetime = 80
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.3, 1.3
supermovetime = 40

[State 4059, Voice]
type = PlaySnd
trigger1 = Pos Y >= 4
value = 5000,1
channel = 0

;[State 4059, saintfinish]
;type = Explod
;trigger1 = time=25
;anim = 8151
;pos = -320,0
;postype = right
;sprpriority = 1
;supermove = 1
;removetime = 280
;ignorehitpause = 0
;ownpal = 1
;bindtime = -1
;persistent = 0
;scale = 1.3, 1.3
;supermovetime = 140


[State 4059 , 11]
type = ChangeState
trigger1 = Pos Y >=4
value =4040; 5100
ctrl =0
;===========================================================
;au sol
[Statedef 4040]
type    = A
movetype= A
physics = N
velset = 0,0
anim=8139
ctrl = 0

;chok roché
[State 4040, Explod]
type = Explod
trigger1 =AnimElem =1
anim =8142
ID = 8142
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

[State 4040, Tux]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,0

[State 4040, EnvShake]
type = EnvShake
trigger1 = AnimElem =1
time =50
;freq = 60
;ampl = -4
;phase = 90
;ignorehitpause =
;persistent =

[State 4040,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4040 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value =4041
ctrl =0
;===========================================================
;soné
[Statedef 4041]
type    = A
movetype= A
physics = N
velset = 0,0
anim=8140
ctrl = 0

[State 4041,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4041 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================
;===================================================================
 ;Phoenix no Ken by Tux
;===================================================================
;===================================================================
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -3000
velset = 0
ctrl = 0

[State 3100, 1]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
sound = -1
darken = 1
movetime = 120

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3100, 3]
type = Explod
trigger1 = AnimElem = 1
ID = 20000
anim = 20000
postype = back
sprpriority = -5
removetime = 120
supermovetime = 120
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, 4]
type = Explod
trigger1 = AnimElem = 1
ID = 7000
anim = 7000
postype = p1
pos = 50,0
sprpriority = -4
removetime = 120
supermovetime = 120
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, 5]
type = VelSet
trigger1 = AnimElem = 2
x = 60

[State 3100, 6]
type = AfterImage
trigger1 = AnimElem = 2
time = 10
FrameGap = 1
length = 20
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3100, 7]
type = HitDef
triggerall = P2StateType = S
trigger1 = AnimElem = 3
id = 3100
attr = S, HA
damage = 0
guardflag = -1
priority = 4
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = S3100,3
animtype = Hard
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5,0
p1stateno = 3101
p2stateno = 3102

[State 3100, 8]
type = VelSet
triggerall = !MoveHit
trigger1 = AnimElem = 4
x = 0

[State 3100, 9]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================
[Statedef 3101]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3101

[State 3101, 1]
type = TargetBind
triggerall = (P2Name = "hyoga") || (P2Name = "Hyoga de Cisne")
trigger1 = Time = 0
pos = 27,0
id = 3100

[State 3101, 2]
type = TargetBind
triggerall = P2Name = "guilty"
trigger1 = Time = 0
pos = 7,0
id = 3100

[State 3101, 3]
type = EnvColor
trigger1 = Time = 0
value = 255,0,0
under = 0
time = 7

[State 3101, 4]
type = PlaySnd
trigger1 = Time = 42
value = 3100,1
channel = 0

[State 3101, 5]
type = ChangeState
trigger1 = Time = 280
value = 3103
ctrl = 0

;===================================================================
[Statedef 3102]
type    = S
movetype= H
physics = S
ctrl = 0

[State 3102, 1]
type = ChangeAnim
trigger1 = (Name = "hyoga") || (Name = "Hyoga de Cisne")
value = 5000

[State 3102, 2]
type = ChangeAnim
trigger1 = Name = "guilty"
value = 5006

[State 3102, 3]
type = ChangeState
trigger1 = Time = 280
value = 3104
ctrl = 0

;===================================================================
[Statedef 3103]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 3102

[State 3103, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3100,3

[State 3103, 2]
type = TargetLifeAdd
trigger1 = Time = 0
value = -1000000000
kill = 1
id = 3100

[State 3103, 3]
type = Explod
triggerall = (P2Name = "hyoga") || (P2Name = "Hyoga de Cisne")
trigger1 = Time = 0
ID = 8106
anim = 8106
pos = -20,-90
postype = p2
sprpriority = 5
supermovetime = 8
removetime = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = 0.5,0.5

[State 3103, 4]
type = Explod
triggerall = P2Name = "guilty"
trigger1 = Time = 0
ID = 8106
anim = 8106
pos = -25,-100
postype = p2
sprpriority = 5
supermovetime = 8
removetime = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = 0.5,0.5

[State 3103, 5]
type = Explod
trigger1 = Time = 0
ID = 1500
anim = 1500
pos = 37,0
postype = p1
sprpriority = -1
supermovetime = -1
removetime = -1
ignorehitpause = 1
ownpal = 0
bindtime = 1
persistent = 1

[State 3103, 6]
type = Explod
trigger1 = Time = 6
ID = 1501
anim = 1501
pos = -45,0
postype = p1
sprpriority = -1
supermovetime = -1
removetime = -1
ignorehitpause = 1
ownpal = 0
bindtime = 1
persistent = 1

[State 3103, 7]
type = TargetDrop
trigger1 = AnimTime = 0
keepone = 0
id = 3100

[State 3103, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3106
ctrl = 0

;============================================
[Statedef 3104]
type = A
movetype = H
physics = N
ctrl = 0
velset = -10,0.35

[State 3104, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5070

[State 3104, 2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3104, 3]
type = ChangeState
trigger1 = Time = 10
value = 3105
ctrl = 0

;============================================
[Statedef 3105]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3105, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5080

[State 3105, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3105, 3]
type = ScreenBound
trigger1 = 1
value = 0

[State 3105, 4]
type = PlaySnd
trigger1 = Time = 0
value = F7,2

[State 3105, 5] 
type = AssertSpecial
trigger1 = Time >= 395
flag = invisible

[State 3105, 6]
type = PosSet
trigger1 = Time = 400
y = 250

[State 3105, 7]
type = SelfState
trigger1 = Time = 400
value = 5150
ctrl = 0

;============================================
[Statedef 3106]
type = A
movetype = I
physics = A
ctrl = 0
velset = 0,0

[State 3106, 1]
type = AfterImage
trigger1 = Time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3106, 2]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x) * 1.5
y = const(velocity.run.back.y)

[State 3106, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -1
value = 3107
ctrl = 0

;============================================
[Statedef 3107]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 47
velset = 0,0

[State 3107, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3107, 2]
type = PlaySnd
trigger1 = AnimElem= 1
value = S100,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3107, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 3107, 4]
type = ChangeState
trigger1 = Time = 7
value = 3108
ctrl = 0

;============================================
[Statedef 3108]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3103
velset = 0,0

[State 3108, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3108, 2.1]
type = Explod
trigger1 = Time = 30
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 0.5,0.5

[State 3108, 2.2]
type = Explod
trigger1 = Time = 40
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 0.6,0.6

[State 3108, 2.3]
type = Explod
trigger1 = Time = 50
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 0.7,0.7

[State 3108, 2.4]
type = Explod
trigger1 = Time = 60
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 0.8,0.8

[State 3108, 2.5]
type = Explod
trigger1 = Time = 70
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 0.9,0.9

[State 3108, 2.6]
type = Explod
trigger1 = Time = 80
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1,1

[State 3108, 2.7]
type = Explod
trigger1 = Time = 90
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.1,1.1

[State 3108, 2.8]
type = Explod
trigger1 = Time = 100
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.2,1.2

[State 3108, 2.9]
type = Explod
trigger1 = Time = 110
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.3,1.3

[State 3108, 2.10]
type = Explod
trigger1 = Time = 120
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.4,1.4

[State 3108, 2.11]
type = Explod
trigger1 = Time = 130
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.5,1.5

[State 3108, 2.12]
type = Explod
trigger1 = Time = 140
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.6,1.6

[State 3108, 2.13]
type = Explod
trigger1 = Time = 150
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.7,1.7

[State 3108, 2.14]
type = Explod
trigger1 = Time = 160
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.8,1.8

[State 3108, 2.15]
type = Explod
trigger1 = Time = 170
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 1.9,1.9

[State 3108, 2.16]
type = Explod
trigger1 = Time = 180
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2,2

[State 3108, 2.17]
type = Explod
trigger1 = Time = 190
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.1,2.1

[State 3108, 2.18]
type = Explod
trigger1 = Time = 200
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.2,2.2

[State 3108, 2.19]
type = Explod
trigger1 = Time = 210
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.3,2.3

[State 3108, 2.20]
type = Explod
trigger1 = Time = 220
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.4,2.4

[State 3108, 2.21]
type = Explod
trigger1 = Time = 230
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.5,2.5

[State 3108, 2.22]
type = Explod
trigger1 = Time = 240
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.6,2.6

[State 3108, 2.22]
type = Explod
trigger1 = Time = 250
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.7,2.7

[State 3108, 2.22]
type = Explod
trigger1 = Time = 260
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.8,2.8

[State 3108, 2.23]
type = Explod
trigger1 = Time = 270
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 2.9,2.9

[State 3108, 2.24]
type = Explod
trigger1 = Time = 280
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3,3

[State 3108, 2.25]
type = Explod
trigger1 = Time = 290
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.1,3.1

[State 3108, 2.26]
type = Explod
trigger1 = Time = 300
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.2,3.2

[State 3108, 2.27]
type = Explod
trigger1 = Time = 310
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.3,3.3

[State 3108, 2.28]
type = Explod
trigger1 = Time = 320
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.4,3.4

[State 3108, 2.29]
type = Explod
trigger1 = Time = 330
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.5,3.5

[State 3108, 2.30]
type = Explod
trigger1 = Time = 340
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.6,3.6

[State 3108, 2.31]
type = Explod
trigger1 = Time = 350
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.7,3.7

[State 3108, 2.32]
type = Explod
trigger1 = Time = 360
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.8,3.8

[State 3108, 2.33]
type = Explod
trigger1 = Time = 370
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = 10
scale = 3.9,3.9

[State 3108, 2.34]
type = Explod
trigger1 = Time = 380
anim = 1502
ID = 1502
postype = p2
pos = 0,0
bindtime = -1
removetime = -1
scale = 4,4

[State 3108, 3]
type = ChangeAnim
trigger1 = Time = 125
value = 181

[State 3108, 4]
type = PlaySnd
trigger1 = Time = 125
value = 3100,2
channel = 0

[State 3108, 5]
type = AllPalFX
trigger1 = Time = 380
time = 5
add = 0,0,0
sinadd = -255,-255,-255,10

[State 3108, 6]
type = BGPalFX
trigger1 = Time = 380
time = 5
add = 0,0,0
sinadd = -255,-255,-255,10

[State 3108, 7]
type = AllPalFX
trigger1 = Time = 385
time = 1000
add = -255,-255,-255

[State 3108, 8]
type = BGPalFX
trigger1 = Time = 385
time = 1000
add = -255,-255,-255

[State 3108, 9] 
type = AssertSpecial
trigger1 = Time >= 385
flag = NoBarDisplay

[State 3108, 10]
type = Explod
trigger1 = Time = 400
ID = 2200
anim = 2200
pos = 0,0
postype = back
sprpriority = 5
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
ontop = 1

[State 3108, 11]
type = ChangeState
trigger1 = Time = 400
value = 0
ctrl = 1

;===================================================================
;===================================================================
 ;RENAISANSE
;===================================================================
;===================================================================
;----------------------------------------------------------------

;state of Renaissance
[Statedef 4301]
type = S
movetype = A
physics = S
anim = 4301
poweradd = -1000
juggle = 5
velset = 0
ctrl = 0

[State 4301, Tux1]
type = VarSet
trigger1 = Time = 0
v = 58
value = RoundNo

[State 4301, Tux2]
type = VarSet
trigger1 = Time = 0
v = 48
value = 0

[State 4301, NoHit]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 100

[State 4301, Tux3]
type = SuperPause
trigger1 = Time = 100
time = 170
anim = -1
sound = -1
darken = 1
movetime = 170

[State 4301, Tux4]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,2

;[State 4058, palfx]
;type = PalFX
;trigger1 =  AnimElem = 30
;time = 250
;add = 255,157,32
;sinadd = 40,40,40,3

[State 4301, light]
type = Explod
trigger1 = MoveContact = 1
ID = 4310
anim = 4310
pos = 0,0
postype = p1
sprpriority = 4
supermovetime = 40
removetime = 40
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

;armure explod
[State 4301, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4300,1

[State 4301, phoenix fire]
type = Explod
trigger1 = AnimElem = 18
anim = 4305
pos = 0,0
postype = p1
sprpriority = -3
supermovetime = 80
removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

;renaissance
[State 4301, 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 4300,2

[State 4301 , 3]
type = LifeAdd
trigger1 = AnimElem = 18
value = 500

;[State 4301, Phoenix]
;type = Explod
;trigger1 = AnimElem = 29
;anim = 4306
;pos = 0,0
;postype = p1
;sprpriority = -3
;supermove = 1
;removetime = 260
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0

  [State 0, VelSet]
type = VelSet
trigger1 = AnimElem =6
x = -17
;y = -1

[State 4301, VelSet]
type = VelSet
trigger1 = AnimElem =17
x = 0
;y = -1

[State 4301, explosion]
type = Explod
trigger1 = AnimElem = 32
anim = 8144
pos = 0,0
postype = p1
sprpriority = -3
supermovetime = -1
removetime =-2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 4301, VelSet]
type = VelSet
trigger1 = AnimElem =35
x = 1
y = -1

[State 4301 , 7]
type = ChangeState
trigger1 = Time = 270
value = 4302
ctrl =0
;----------------------------------------------------------------
;8135
;new state of Renaissance
[Statedef 4302]
type = S
movetype = A
physics = S
anim = 4302
poweradd = 250
juggle = 5
;velset = 0,0
ctrl = 0

[State 4301, Tux1]
type = SuperPause
trigger1 = Time = 0
time = 130
anim = -1
sound = S190,0
darken = 1
movetime = 130

 [State 3000, atmosphere Flamme]
type = Explod
trigger1 = animelem = 1
anim = 4107
pos = -320,0
postype = right
sprpriority = 9998
supermovetime = 130
removetime = 130
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.3, 1.3

[State 3000, phoenix cosmo gauche]
type = Explod
trigger1 = animelem= 1
anim = 8032 ;4105
ID = 4105
pos = 0,0
;vel=1,-1
postype = left
sprpriority = -1
supermovetime = 130
removetime = 130
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = Time = 8
x = 0
y = 0

[State 4301, 2]
type = PlaySnd
trigger1 = Time = 30
value = 4300,5
channel = 0

 [State 4302 , 7]
type = ChangeState
trigger1 = Time = 130
value =4303
ctrl = 0
;---------------------------------------------------------------

[Statedef 4303]
type = S
movetype = A
physics = S
anim = 4304
poweradd = 250
juggle = 5
;velset = 0,0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = Time = 8
x = 0
y = 0

 [State 4303 , 7]
type = ChangeState
trigger1 = Time = 20
value =50
ctrl = 1

