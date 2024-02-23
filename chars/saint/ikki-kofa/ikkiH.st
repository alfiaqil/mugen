;===========================================================================
;Light Hô yoku ten shô
;===========================================================================
;Hô yoku ten shô
[StateDef 3000]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000
;===============================
;SND
;===============================
 [State  3000 , Cri de phénix ]
type = PlaySnd
trigger1 = animelem =1
value = 190

[State  3000 , Hô yoku ten shô]
type = PlaySnd
trigger1 = animelem =1
value = 4100,0
channel = 0

[State  3000 , son flam]
type = PlaySnd
triggerall  = anim= 3000
trigger1 = animelem =13
;loop = 1
value = S3,3
;===============================
;paramétre spétial
;===============================




[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 30
movetime = 0
darken = 0

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
anim = 17000
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17010
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



;===============================
;EXPLOD
;===============================
[State 3000, petit explosion de magma ]
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
;===============================
[State 3000,explosion demagma 2]
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

;===============================
[State 3000,tunell de feux]
type = Explod
trigger1 = animelem= 13
anim = 8080
ID = 4002
pos = 90,0
postype = p1
sprpriority = 5
supermove = 1
removetime =200
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermovetime = 140
removeongethit = 1
;===============================
 ;HIT ATTAQUE
;===============================
;(porogectil°°°
[State 3000, 1]
type = Projectile
triggerall=anim=3000
trigger1 =AnimElem = 13
projID = 8010
projanim = 8004
projhits = 20
projhitanim =-1
projmisstime = 5
projpriority = 1
projremove = 1
projremovetime = 120
projedgebound =120
attr = S, HP
guardflag = MA
guard.cornerpush =0
guard.velocity = -2
guard.hittime = 3
guard.slidetime = 5
guard.pausetime =3,3
guard.damage =0
hitflag = MAFDP
animtype = hard
damage   = 10,0
postype = p1
pos =50,-50
offset =160,-35
velocity =0,0
pausetime = 3,9
supermovetime = 140
hitsound   = s4,0
guardsound = s4,0
sparkno =-1
guard.sparkno =-1
sparkxy = 0,0
ground.type = Low
ground.cornerpush.veloff = 0
ground.slidetime =0
ground.hittime  = 1
ground.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;air.animtype = Back
air.velocity = -10,0
;air.juggle =0
air.fall = 1
down.velocity = -4,-3.5
down.hittime =15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall=1
;===============================
;(paramaitre punche fury)
[State 3000,punche ]
type = HitDef
triggerall = Anim = 3000
;trigger1 =Anim = 3000
trigger1 = AnimElem = 13
attr =S, HP
damage =1, 0
animtype = hard
sprpriority = 2
guardflag = MA
hitflag = MAF
;priority = , Hit ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 5,5
guard.pausetime =5,2
supermovetime = 140
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10, -76 ;Y-offset for the spark rel. to p1
hitsound   = s2,2
guardsound = s1,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 10
air.hittime = 12
ground.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.velocity =0
air.type = High
air.velocity = 0
;===============================
;(fin)
[State 3000 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;Strong Hô yoku ten shô
;===========================================================================
;Hô yoku ten shô
[StateDef 3002]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3002
poweradd = -2000










[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 30
movetime = 0
darken = 0

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
pos = 15,-45
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17110
pos = 15,-45
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














;===============================
;SND
;===============================
[State 3003, Snd]
type = PlaySnd
Trigger1=animelem= 3
value = 4100,6

;===============================
;paramétre spétial
;===============================




;===============================
;SND
;===============================
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
trigger2 =AnimElem=5
trigger3 =AnimElem=7
trigger4 =AnimElem=12
trigger5 =AnimElem= 18
value = S0,1

[State 3002, PlaySnd]
type = PlaySnd
trigger1=AnimElem=20
value = S0,2

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S4000,2

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S4300,2

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=19
value = S100,1



[State 3000 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3003
ctrl = 0
;==================================================================
;SUIT °°°°Strong Hô yoku ten shô state 3003
;==================================================================
;Hô yoku ten shô
[StateDef 3003]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3007
poweradd = 0
supermovetime = 700

[State 3003, Tux]
type = PosAdd
trigger1 = Time = 0
x = 14
y = 2





;===============================

[State 3003,prépa phonix]
type = Explod
trigger1 = AnimElem = 43
pos =0,0
anim = 8022
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

[State 3003,prépa phonix]
type = Explod
trigger1 = AnimElem = 45
pos = 15,-100
anim = 8021
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700


;===============================

;===============================
[State 3003, inpacte]
type = Explod
trigger1 =ProjContact4208=1;=4206 ;8010
anim =8119
ID = 8119
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;===============================
 ;HIT ATTAQUE
;===============================

;===============================
[State 3003, VENT ]
type = Projectile
;Trigger1= anim=3008
Trigger1=animelem= 12
projanim = 8036
projhits = 25
projID = 8010
projscale =  1.5,1.5
;projanim = 8004
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound =120
;projmisstime =9
projpriority =10
;projremove = 1
;projremovetime = 100
postype = front ;right ;left  right
offset =-320,-210
velocity =0,0
attr = S, HP
damage   = 5
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,200
hitsound   = s4,0
guardsound = s4,0
sparkno =-1
guard.sparkno =-1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime  = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
air.fall = 1
down.velocity = -4,-3.5
down.hittime =15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall=1
supermovetime = 700
;===============================
[State 3003, PHENIX]
type = Projectile
Trigger1=animelem=52
projanim = 4208
projID =4208
projhits = 1
projhitanim =-1
postype = back
offset = 0,-75
sparkno = S30002
sparkxy = 80,80
guard.sparkno = s30040
velocity = 5,0
attr = S, HP
damage    = 200
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = S1500,0
guardsound = S1500,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700
;===============================
;(fin)
[State 3003, Tux]
type = PosAdd
trigger1 = AnimTime = 0
x = -14
y = -2

[State 3003]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;Light AIRE Hô yoku ten shô
;===========================================================================
[Statedef 3007]
type = S
movetype = A
physics = S
anim = 3007
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0
supermovetime = 700
;===============================
;SND
;===============================
[State 3007, Snd]
type = PlaySnd
Trigger1=animelem= 1
value = 4100,1
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3007, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = 3000
Time = 70
movetime = 70
darken = 20

[State 3007, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3007, NoHit]
type = NotHitBy
trigger1 = 1
value = SC
;===============================
;EXPLOD
;===============================
[State 3007, cosmo] ;DESACTIV2
type = explod
trigger1 = animelem = 1
id = 42031
anim = 8032
pos = 0, 0
postype = p1
bindtime = -1
removetime = 10
sprpriority = -2
supermovetime = 700
;===============================

[State 3007,prépa phonix]
type = Explod
trigger1 = AnimElem = 43
pos =0,0
anim = 8022
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

[State 3007,prépa phonix]
type = Explod
trigger1 = AnimElem = 45
pos = 15,-100
anim = 8021
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

;===============================
[State 3007, foudre]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X < 0
pos = 0,-100
anim = 8034
ID = 8022
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =300
supermovetime = 700
;===============================
[State 3007, foudre asard ]
type = Explod
trigger1 = ProjContact =1 ;Anim=3008 ;AnimElem=1,28
trigger1= Time
trigger1 = Time%5=0
;trigger1 = Pos X < 0
pos =-200,0
random =320,240
anim = 8034
ID = 8022
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
;persistent = 0
;removeongethit = 1
;supermove = 1
removetime = 50
supermovetime = 700
;===============================
[State 3007, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 3
trigger1 = Pos X < 0
pos = -350,-2
anim = 8032
ID =8022
postype = front
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700

[State 3007, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 3
trigger1 = Pos X  > 0
pos = 0,0
anim = 8032
ID = 8022
postype = back
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =350
supermovetime = 700
;===============================
[State 3007, font de flamme droit]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 320,0
anim = 8031
ID =8022
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 350
 supermovetime = 700

[State 3007, font de flamme gauche]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -320,0
anim =8030
ID = 8022
postype = right
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700
;===============================
[State 3007, mure de flamme gauche ]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X   < 0
pos =-350,230
anim = 8033
ID = 8022
postype = front
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =350
;ontop =1
supermovetime = 700

[State 3007, mure de flamme droit]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X  > 0
pos =-150,230
anim = 8033
ID = 8022
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
;ontop =1
supermovetime = 700
;===============================
[State 3007, Eclair]
type = Explod
trigger1 = time = 170
pos = 40,-80
anim = 4022
sprpriority = 5
removeongethit = 1
supermove = 1
supermovetime = 700
;===============================
[State 3007, inpacte]
type = Explod
trigger1 =ProjContact4206=1;=4206 ;8010
anim =8119
ID = 8119
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


;===============================
 ;HIT ATTAQUE
;===============================




;===============================
[State 3007, VENT ]
type = Projectile
;Trigger1= anim=3008
Trigger1=animelem= 12
projanim = 8036
projhits = 25
projID = 8010
projscale =  1.5,1.5
;projanim = 8004
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound =120
;projmisstime =9
projpriority =10
;projremove = 1
;projremovetime = 100
postype = front ;right ;left  right
offset =-320,-210
velocity =0,0
attr = S, HP
damage   = 5
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,200
hitsound   = s4,0
guardsound = s4,0
sparkno =-1
guard.sparkno =-1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime  = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
air.fall = 1
down.velocity = -4,-3.5
down.hittime =15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall=1
supermovetime = 700
;===============================
[State 3007, PHENIX]
type = Projectile
Trigger1=animelem=52
projanim = 4206
projID =4206
projhits = 1
projhitanim =-1
offset = 0,-40
sparkno = S30002
sparkxy = -10,80
guard.sparkno = s30040
velocity = 5,2
attr = S, HP
damage    = 200
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = S1500,0
guardsound = S1500,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700
;===============================
;(fin)
[State 3007]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;===========================================================================
;Strong AIRE Hô yoku ten shô
;===========================================================================

;AIRE Hô yoku ten shô PREPARATION
[StateDef 3008]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3003
poweradd = -1500

;===============================
;paramétre spétial
;===============================

;SuperPause
[State 3008, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = 3000
Time = 270
movetime = 270
darken = 5


;éffait rouge
[State 3038, 1]
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
[State 3008, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=1
trigger2 =AnimElem=4
trigger3 =AnimElem=6
trigger4 =AnimElem=11
trigger5 =AnimElem= 17
value = S0,1

[State 3008, PlaySnd]
type = PlaySnd
trigger1=AnimElem=20
value = S0,2

[State 3008, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S4000,2

[State 3008, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S4300,2

;===============================
;EXPLOD
;===============================
;fon de feux
[State 3008 fontde feux  ]
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
removeongethit = -1
supermove = 1
removetime = 198
 supermovetime = 700

[State 3008 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3009
ctrl = 0
;==================================================================
;SUIT °°°°Strong AIR Hô yoku ten shô state 3009
;==================================================================
[Statedef 3009]
type = S
movetype = A
physics = S
anim = 3008
velset = 0,0
poweradd = -1500
juggle = 0
ctrl = 0
 supermovetime = 700
;===============================
;SND
;===============================
[State 3009, Snd]
type = PlaySnd
Trigger1=animelem= 1
value = 4100,3
channel = 0

[State 3009, Snd]
type = PlaySnd
Trigger1= AnimElem = 64
value = 4100,5
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3008=9, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = 3000
Time = 70
movetime = 70
darken = 20

[State 3009, NoHit]
type = NotHitBy
trigger1 = 1
value = SC

[State 3008, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0
;===============================
;EXPLOD
;===============================
[State 3009, cosmo] ;pas mi
type = explod
trigger1 = animelem = 1
id = 42031
anim = 42031
pos = 0, 0
postype = p1
bindtime = -1
removetime = 10
sprpriority = -2
supermovetime = 700
;===============================
[State 3009,prépa phonix]
type = Explod
trigger1 = AnimElem = 75
pos =0,0
anim = 8022
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

[State 3009,prépa phonix]
type = Explod
trigger1 = AnimElem = 79
pos = 15,-100
anim = 8021
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

;===============================
[State 3009, tron asard ]
type = Explod
trigger1 = Time
trigger1 = Time%40=0
pos =-350,-30
random =220,240
anim =  8026
ID = 8022
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime =200
supermove
pausemove
supermovetime = 700
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3009, branche asard ]
type = Explod
trigger1 = Time
trigger1 = Time%30=0
pos =-350,-30
random =220,240
anim =  8027
ID =8022
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime =200
supermove
pausemove
supermovetime = 700
scale = 1,1
sprpriority =0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3009, sol ]
type = Explod
trigger1 = Time
trigger1 = Time%20=0
pos =-10,160
random =190,0
anim = 8050
ID = 8022
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
removetime =200
supermove
pausemove
supermovetime = 700
scale = 1,1
sprpriority =0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3009, roché asard petit ]
type = Explod
trigger1 = Time
trigger1 = Time%50=0
pos =-350,-30
random =220,240
anim =  8020
ID = 8022
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime =200
supermove
pausemove
supermovetime = 700
scale = 0.5,0.5
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3009, roché asard ]
type = Explod
trigger1 = Time
trigger1 = Time%40=0
pos =-350,-30
random =220,240
anim =  8020
ID =8022
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime =200
supermove
pausemove
supermovetime = 700
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3009, foudre asard ]
type = Explod
trigger1= Time
trigger1 = Time%20=0
;trigger1 = Pos X < 0
pos =-200,0
random =320,240
anim = 8034
ID = 8022
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
;persistent = 0
;removeongethit = 1
;supermove = 1
removetime = 130
supermovetime = 700
;===============================
[State 3009, foudre 1]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X < 0
pos = 0,-100
anim = 8034
ID = 8022
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
supermovetime = 700
;===============================
[State 3009, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 3
trigger1 = Pos X < 0
pos = -350,-2
anim = 8032
ID = 8022
postype = front
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
supermovetime = 700

[State 3009, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 3
trigger1 = Pos X  > 0
pos = 0,0
anim = 8032
ID = 8022
postype = back
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
supermovetime = 700
;===============================
[State 3009, fon de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 320,0
anim = 8031
ID = 8022
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = -1
 supermovetime = 700
;===============================
[State 3009,fon de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -320,0
anim =8030
ID = 8022
postype = right
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
supermovetime = 700
;===============================
[State 3009, mur de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X   < 0
pos =-350,230
anim = 8033
ID = 8022
postype = front
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
;ontop =1
supermovetime = 700
;===============================
[State 3009, mur de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X  > 0
pos =-150,230
anim = 8033
ID = 8022
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
;ontop =1
supermovetime = 700

;===============================
[State 3009, inpacte]
type = Explod
trigger1 =ProjContact4206=1;=4206 ;8010
anim =8119
ID = 8119
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
 ;HIT ATTAQUE
;===============================


;===============================
;bat
[State 3009, VENT ]
type = Projectile
 ;Trigger1= anim=3008
Trigger1=animelem= 12
projanim = 8036
projhits = 25
projID = 8010
projscale = 1.5,1.5
;projanim = 8004
projmisstime = 9
projremove = 1
projremovetime =250
projedgebound =250
;projmisstime =9
projpriority =10
;projremove = 1
;projremovetime = 700
postype = front ;right ;left  right
offset =-320,-210
velocity =0,0
attr = S, HP
damage   = 12
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,150
hitsound   = s4,0
guardsound = s4,0
sparkno =-1
guard.sparkno =-1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime  = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
air.fall = 1
down.velocity = -4,-3.5
down.hittime =15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall=1
supermovetime = 700
;===============================
[State 3009,PHENIX]
type = Projectile
Trigger1=animelem= 83
projanim = 4206
projhits = 1
projhitanim = 6000
projID = 4206
offset = 0,-60
sparkno =s8119
sparkxy = 80,80
guard.sparkno =s8119
velocity = 5,2
attr = S, HP
damage    = 200
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = S1500,0
guardsound =S1500,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700

;===============================
;(fin)
[State 3009]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



;===========================================================================
;gen ma ken
;===========================================================================
;(préparation)
[Statedef 3030]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -1000
juggle = 0
ctrl = 0
supermovetime = 700
;===============================
;SND
;===============================
[State 3030,0Snd]
type = PlaySnd
Trigger1=animelem= 1
value =3030,0
channel = 0
;===============================
;paramétre spétial
;===============================











[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 30
movetime = 0
darken = 0

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
anim = 17000
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17010
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










;===============================
;paramétre posture et vitesse
;===============================
;(déplasmen ver l'avent)
[State 3030, VelAdd]
type = VelAdd
trigger1 = AnimElem=5
x =5
y = 0
;ignorehitpause =
;persistent =








;===============================
[State 3030, petit explosion de magma ]
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
;===============================
 [State 3000,explosion demagma 2]
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

;===============================
[State 3030 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3031
ctrl =1
;============================================
;ChangeState
;===============================
;(STATE D'ATTAQUE)
;===============================
[Statedef 3031]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0
supermovetime = 700
;===============================
;paramétre posture et vitesse
;===============================
[State 3031]
type = VarSet
triggerall = stateno = 3031
trigger1 = time = 0
value = 0
v = 48

;(déplasmen ver l avent)
[State 3030, VelAdd]
 type = VelAdd
trigger1 = AnimElem=1
x =40
y = 0
;ignorehitpause =
;persistent =

;===============================
;EXPLOD
;===============================

;===============================
;(Si P1 est du côté droite)
[State  3031, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos =  320,-0
postype = front
anim = 8040
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;(Si P1 est du côté gauche)
[State  3031, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8039
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
;Si P1 est du côté droite
[State  3031, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3031, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8015
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
 ;HIT ATTAQUE
;================================
[State 3031, 3]
type = hitdef
triggerall=anim=3031
trigger1 =  AnimElem = 1
attr = S, SP
;projhitanim = -1
postype = p1
hitflag=HLF
damage = 0
animtype =hard
guardflag = HLM
pausetime = 0,130 
sparkno = S30002
sparkxy = 0, -85
guard.sparkno = S30040
hitsound   = S4000,1
guard.pausetime =1, 130
mindist = -100 ,-1
maxdist = -100,-1
;guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = ifelse((P2Life > 200), 700, 50)
ground.velocity = 0
air.velocity = -0,0
p2facing =1
givepower = -30000
id = 3031
;================================
[State 3031 , transition si il est touchez]
type = ChangeState
trigger1 = MoveContact =1
trigger1 = p2stateno = [5000,5300]
;trigger1 = Time = 10
value = 3032
ctrl =0

[State 3031 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3033
ctrl =0
;=======================================
;ChangeState de 3031a 3032
;=======================================
;(si p2 est en fall)
[Statedef 3032]
type = S
movetype = A
physics = S
anim = 3032
velset = 0,0
juggle = 0
ctrl = 0

;===============================
;SND
;===============================
[State 3032, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim =3032
trigger1= Time
trigger1= Time%80=0
value = 35,0

[State 3032, provoc Snd]
type = PlaySnd
trigger1 =  AnimElem = 6
value = 36,1
channel = 0
;===============================
;paramétre spétial
;===============================
;(traverser P2)
[State 3032, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0
;trigger1 = p2stateno = [5000,5017]
;loop %80=0
;Time%80=0

[State 3032, NoHit]
type = NotHitBy
trigger1 = anim = 3032
value = SCA

;(trainé rouge)
[State 3032, 2]
type = BGPalfx
trigger1 =AnimElem =25
ignorehitpause = 1
time = 50
mul = 128,128,128
add = 128,128,128
invertall = 1

;(arnaké la bar liv)
[State 3032, Hurt]
type = TargetLifeAdd
triggerall = P2Life > 200
trigger1 =AnimElem =25
value = -200
ID = 3031

[State 3032, Tux1]
type = TargetLifeAdd
triggerall = P2Life <= 200
trigger1 = AnimElem = 5
value = -200
ID = 3031

[State 3032, Tux2]
type = TargetState
triggerall = P2Life <= 200
trigger1 = AnimElem = 5
value = 5030
ID = 3031
;===============================
;EXPLOD
;===============================

;===============================
;divert las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
;trigger1 = Pos X  > 0
pos =220,-12
anim = 8101
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
removetime = 150
;ontop =1
supermovetime = 700


[State 3032, arc électrique]
type = Explod
trigger1 =AnimElem =25
anim = 8063
ID =8063
pos = 30,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime =20
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
;===============================
[State 3032 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1

;===========================================================================
;(alternative state p2 touché)
;===========================================================================
;(si p2  en gard   plus utille)
[Statedef 3033]
type = S
movetype = A
physics = S
anim = 3033
velset = 0,0
juggle = 0
ctrl = 0
;===============================
;paramétre spétial
;===============================
[State 3033, NoHit]
type = NotHitBy
trigger1 = anim = 3032
value = SCA

;traverser P2
[State 3033, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0
trigger1 = p2stateno = [5000,5017]
;;;loop %80=0
;;;Time%80=0
;===============================
[State 3033 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1
;===========================================================================
;===========================================================================
;Hôvo GenMaKen 4 - Big Hand (by Tux)
;===========================================================================
[Statedef 3046]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -1000
juggle = 0
ctrl = 0
supermovetime = 700

[State 3046, 0]
type = PlaySnd
Trigger1 = animelem = 1
value = 3030,1
channel = 0

[State 3046, 1]
type = NotHitBy
trigger1 = anim = 3030
value = SCA

[State 3046, 2]
type = SuperPause
trigger1 = Time = 0
time = 95
anim = -1
darken = 100
supermove = 1
movetime = 95

[State 3046, 3]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
color = 1
PalBright = 0,0,0
PalContrast = 255,128,64
PalAdd = 0,0,0
PalMul = 1,1,1
length = 25
Trans = Add1

[State 3046, 4]
type = VelAdd
trigger1 = AnimElem = 5
x =5
y = 0

[State 3046, 5]
type = Explod
triggerall= anim = 3030
trigger1 = animelem = 1
anim = 7003
id = 7003
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 3046, 6]
type = Explod
trigger1 = animelem = 1
anim = 8025
pos = -187,65
postype = right
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
removetime = 280
pausemove
scale = 1.3, 1.3
sprpriority =-2
ownpal = 1
removeongethit = 1
supermovetime = 140

[State 3046, 7]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
supermovetime = 140

[State 3046, 8]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
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
supermovetime = 140

[State 3046, 9]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
supermovetime = 700

[State 3046, 10]
type = ChangeState
trigger1 = animtime = 0
value = 3047
ctrl = 1

;============================================
[Statedef 3047]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0
supermovetime = 700

[State 3047, 0]
type = VarSet
triggerall = stateno = 3047
trigger1 = time = 0
value = 0
v = 48

[State 3047, 1]
type = VelAdd
trigger1 = AnimElem = 1
x = 40
y = 0

[State 3047, 2]
type = Explod
triggerall = anim = 3031
trigger1 = animelem = 1
anim = 7004
id = 7004
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 3047, 3]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = 320,-0
postype = front
anim = 8040
scale = 1,1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

[State 3047, 4]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = -1,-0
postype = back
anim = 8039
scale = 1,1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

[State 3047, 5]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = 320,-0
postype = front
anim = 8016
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

[State 3047, 6]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = -1,-0
postype = back
anim = 8015
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

[State 3047, 7]
type = HitDef
triggerall= anim = 3031
trigger1 = AnimElem = 1
attr = S, SP
hitflag = HLF
damage = 0
animtype = hard
guardflag = -1
pausetime = 0,130
sparkno = S30002
guard.sparkno = S30040
sparkxy = 0, -100
hitsound = S4000,1
guard.pausetime = 1, 130
mindist = -50 ,0
maxdist = -50,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 299
ground.velocity = 0
air.velocity = -0,0
p2facing = 1
givepower = -30000
id = 3047

[State 3047, 8]
type = ChangeState
trigger1 = MoveContact = 1
trigger1 = p2stateno = [5000,5300]
value = 3049
ctrl = 0

[State 3047, 9]
type = ChangeState
trigger1 = animtime = 0
value = 3033
ctrl = 0

;============================================
[Statedef 3049]
type = S
movetype = A
physics = S
anim = 3034
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3049, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3034
trigger1= Time
trigger1= Time%80=0
value = 35,0

[State 3049, 0]
type = Explod
trigger1 = animelem = 1
anim = 7005
id = 7005
pos = 0,0
postype = p1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 3049, 1]
type = Explod
trigger1 = AnimElem = 1
trigger1 != p2name != "cassios"
pos = 220,-25
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150
supermovetime = 700

[State 3049, 2]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name = "cassios"
pos = 220,-80
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150
;ontop =1
supermovetime = 700

[State 3049, 3]
type = ChangeState
trigger1 = animtime = 0
value = 3050
ctrl = 0

;============================================
[Statedef 3050]
type = S
movetype = A
physics = S
anim = 3035
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3050, 0]
type = TargetState
trigger1 = Time = 0
value = 3051
ID = 3047

[State 3050, 1.1]
type = AssertSpecial
trigger1 = Time < 200
flag = invisible
flag2 = noBG
flag3 = noFG

[State 3050, 1.2]
type = AssertSpecial
trigger1 = Time < 200
flag = nobardisplay

[State 3050, 2]
type = Turn
trigger1 = Time = 0

[State 3050, 3]
type = PlaySnd
trigger1 = Time = 0
value = 3,5

[State 3050, 3.1]
type = Explod
trigger1 = Time = 0
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.0,1.0
ownpal = 1

[State 3050, 3.2]
type = Explod
trigger1 = Time = 8
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.1,1.1
ownpal = 1

[State 3050, 3.3]
type = Explod
trigger1 = Time = 16
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.2,1.2
ownpal = 1

[State 3050, 3.4]
type = Explod
trigger1 = Time = 24
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.3,1.3
ownpal = 1

[State 3050, 3.5]
type = Explod
trigger1 = Time = 32
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.4,1.4
ownpal = 1

[State 3050, 3.5]
type = Explod
trigger1 = Time = 40
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.5,1.5
ownpal = 1

[State 3050, 3.6]
type = Explod
trigger1 = Time = 48
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.6,1.6
ownpal = 1

[State 3050, 4]
type = Projectile
trigger1 = Time = 56
ProjID = 4056
projanim = 4056
projremove = 0
projremovetime = 60
velocity = -2,0
projsprpriority = 5
postype = p2
offset = 150,-50
id = 3050
attr = S,HP
guardflag = -1
animtype = up
pausetime = 0,10
sparkno = S30002
guard.sparkno = S30040
sparkxy = 50,-80
hitsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,-5
kill = 1
fall = 1
envshake.time = 10
envshake.freq = 5
envshake.ampl = 20
p2stateno = 3052

[State 3050, 5]
type = EnvColor
trigger1 = Time = 90
value = 255,255,255
under = 0
time = 4

[State 3050, 6]
type = Explod
trigger1 = Time = 94
anim = 2100
ID = 2100
postype = back
pos = 0,0
bindtime = -1
removetime = 34
ownpal = 1

[State 3050, 7]
type = Turn
trigger1 = Time = 200

[State 3050, 8]
type = PosSet
trigger1 = Time = 200
x = ifelse((Facing = 1), (enemy,Pos X - 250), (enemy,Pos X + 250))

[State 3050, 9]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, 10]
type = ChangeState
trigger1 = Time = 300
value = 3060
ctrl = 0

;============================================
[Statedef 3060]
type = S
movetype = I
physics = S
anim = 20
velset = 0,0
juggle = 0
ctrl = 0

[State 3060, 0]
type = PlaySnd
triggerall = Anim = 20
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = S100,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3060, 1]
type = VelSet
trigger1 = P2BodyDist X > 5
x = const(velocity.walk.fwd.x)

[State 3060, 2]
type = VelSet
trigger1 = P2BodyDist X <= 5
x = 0

[State 3060, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3060, 4]
type = ChangeState
trigger1 = P2BodyDist X <= 5
value = 3061
ctrl = 0

;============================================
[Statedef 3061]
type = S
movetype = A
physics = S
anim = 3046
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = 5

[State 3061, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 181,0
channel = 0

[State 3061, 2]
type = HitDef
trigger1 = AnimElem = 29
id = 3061
attr = S, HA
hitflag = HLF
animtype = hard
guardflag = -1
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,0
fall = 1

[State 3061, 3]
type = TargetLifeAdd
trigger1 = MoveHit = 1
value = -100000
kill = 1
ID = 3061

[State 3061, 4]
type = ChangeState
trigger1 = Time = 280
value = 0
ctrl = 1

;============================================
[Statedef 3051]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 3051, 0]
type = AssertSpecial
trigger1 = Time = [0, 56]
flag = invisible

[State 3051, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120

[State 3051, 2]
type = PosSet
trigger1 = Time = 0
x = 0

[State 3051, 3]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

;============================================
[Statedef 3052]
type = S
movetype = H
physics = N
velset = 0,0

[State 3052, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 3052, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3052, 2]
type = ChangeState
trigger1 = HitShakeOVer
value = 3053

;============================================
[Statedef 3053]
type = A
movetype = H
physics = N
ctrl = 0

[State 3053, 0]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 3053, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 3053, 2]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 3054

;============================================
[Statedef 3054]
type = A
movetype = H
physics = N

[state 3054, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 3054, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 3054, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 25
value = 3055

;============================================
[Statedef 3055]
type = L
movetype = H
physics = N

[State 3055, 0]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 3055, 1]
type = FallEnvShake
trigger1 = Time = 0

[State 3055, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[state 3055, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 5100

[State 3055, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3055, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3055, 6]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 3055, 7]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 3055, 8]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 3055, 9]
type = PosFreeze
trigger1 = 1

[State 3055, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 3056

;============================================
[Statedef 3056]
type = L
movetype = H
physics = N

[state 3056, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5160

[State 3056, 1]
type = HitFallVel
trigger1 = Time = 0

[State 3056, 2]
type = PosSet
trigger1 = Time = 0
y = 20

[State 3056, 3]
type = VelAdd
trigger1 = 1
y = .4

[State 3056, 4]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3057

[Statedef 3057]
type = L
movetype = H
physics = N

[State 3057, 0]
type = FallEnvShake
trigger1 = Time = 0

[State 3057, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5170

[State 3057, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3057, 3]
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 3057, 4]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 3057, 5]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 3057, 6]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3057, 7]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 3057, 8]
type = VelMul
trigger1 = 1
x = 0.85

[State 3057, 9]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110
persistent = 0

[State 3057, 10]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110,5119]
value = 3058

[Statedef 3058]
type = L
movetype = H
physics = N
sprpriority = -3

[state 3058, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5110

[State 3058, 1]
type = VelMul
trigger1 = 1
x = 0.85

[State 3058, 2]
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 3058, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3058, 4]
type = ChangeState
trigger1 = Time = 40
value = 3059

[Statedef 3059]
type = S
movetype = I
physics = N

[State 3059, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5000

[State 3059, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

;===========================================================================
;===========================================================================
;Hôvo gen ma ken  2 vision de l'enfer
;===========================================================================
[Statedef 3034]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0
supermovetime = 700









[State 1700, 3]
type = PlaySnd
trigger1 = time = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg

[State 210, Hyper bg Explod]
type = Explod
trigger1 = !time
removetime = 109
id =6090
anim = 16090
pos = 0,0
postype = Left
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
scale = .5,.5

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

;[State 863, 1]
;type = SuperPause
;trigger1 = AnimElem = 1
;anim = -1
;time = 30
;movetime = 0
;darken = 0

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
anim = 17200
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17210
pos = 0,-70
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1




;===============================
;SND
;===============================
;voix
[State 3034,0Snd]
type = PlaySnd
Trigger1=animelem= 1
value = 4000,0
channel = 0
;===============================
;paramétre spétial
;===============================

;===============================
;paramétre posture et vitesse
;===============================
 ;déplasmen ver l avent
[State 3034, VelAdd]
 type = VelAdd
trigger1 = AnimElem=5
x =5
y = 0
;ignorehitpause =
;persistent =
;===============================
;EXPLOD
;===============================

;===============================
;(PETIT EXPLOSION)
[State 3034, petit explosion de magma ]
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
;===============================
;(grande explosion)
[State 3034,explosion demagma 2]
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
;===============================

;===============================
[State 3034 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3035
ctrl =1
;============================================
;ChangeState
;===============================
;State attaque
;===============================
[Statedef 3035]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0
supermovetime = 700
;===============================
;paramétre posture et vitesse
;===============================
[State 3035]
type = VarSet
triggerall = stateno = 3035
trigger1 = time = 0
value = 0
v = 48
;===============================
;(déplasmen ver l'avent)
[State 3035, VelAdd]
 type = VelAdd
trigger1 = AnimElem=1
x =40
y = 0
;ignorehitpause =
;persistent =

;===============================
;EXPLOD
;===============================

;===============================
;(Si P1 est du côté droite)
[State  3035, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8040
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;(Si P1 est du côté gauche)
[State  3035, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8039
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
;(Si P1 est du côté droite)
[State  3035, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
;(Si P1 est du côté gauche)
[State  3035, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8015
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
 ;HIT ATTAQUE
;===============================
[State 3035, 3]
type = hitdef
triggerall=anim=3031
trigger1 =  AnimElem = 1
attr = S, SP
;projhitanim = -1
postype = p1
hitflag=HLF
damage = 0
animtype =hard
guardflag = -1
pausetime = 0,130
sparkno = S30002
sparkxy = 0, -85
guard.sparkno = S30040
hitsound   = S4000,1
guard.pausetime =1, 130
mindist = -50 ,0
maxdist = -50,0
;guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 299
ground.velocity = 0
air.velocity = -0,0
p2facing =1
givepower = -30000
;===============================
[State 3035 , transition si il est touchez]
type = ChangeState
trigger1 = MoveContact =1
trigger1 = p2stateno = [5000,5300]
;trigger1 = Time = 10
value = 3036
ctrl =0
;===============================
[State 3035 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3033
ctrl =0
;======================================
  ;ChangeState TRANSITION
;======================================
[Statedef 3036]
type = S
movetype = A
physics = S
anim = 3034
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3036, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3034
trigger1= Time
trigger1= Time%80=0
value = 35,0

;===============================
;EXPLOD
;===============================

;===============================

;divert las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
;trigger1 = Pos X  > 0
pos =220,-10
anim = 8101
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
removetime = 150
;ontop =1
supermovetime = 700

[State 3036 , allez ver illusion]
type = ChangeState
trigger1 = animtime = 0
value =3037
ctrl =0

;===========================================================================
;ILUSION
;===========================================================================
;(ilusion)
[Statedef 3037]
type = S
movetype = A
physics = S
anim = 3035
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8
;===============================
;SND
;===============================
[State  3037 , son flam]
type = PlaySnd
triggerall  = anim= 3035
;trigger1 = animelem =1
trigger1 = Time
trigger1 = Time%20=0
;loop = 1
value = S3,3

[State 3037,cri de téreur1 entré ]
type = PlaySnd
trigger1 = Time = 0
value = 3036,2

[State 3037, Voice]
type = PlaySnd
trigger1 = Time = 60
value = 182,1
channel = 0

[State 3037, cri de téreur 2 cri]
type = PlaySnd
trigger1 = Time
trigger1 = Time%300=0
value = 3036,0

[State 3037,cri de téreur3 ame]
type = PlaySnd
trigger1 = Time
trigger1 = Time%250=0
value = 3036,3

[State 3037, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim =3035
trigger1 = p2stateno = [5000,5300]
;trigger1 = MoveContact = 1
trigger1= Time
trigger1= Time%80=0
value = 35,0
;===============================
;paramétre spétial
;===============================
;(traverser P2)
[State 3037, PushOff]
type = PlayerPush
trigger1 = anim = 3035
value = 0

[State 3037, NoHit]
type = NotHitBy
trigger1 = anim = 3035
value = SCA

;[State 3037, TargetLifeAdd]
;type = TargetLifeAdd
;trigger1 = AnimElem=6
;affectteam = E          ;B,E,F
;value = -500
;ignorehitpause =
;persistent =
;===============================
;EXPLOD
;===============================
[State 3037, la mort]
type = Explod
;trigger1= Time
trigger1= Time%50=0
anim =8010
ID = 8010
pos = -150,180
postype = back ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
accel = 0,0
random = 80,130
removetime = 700
scale = 1,1
sprpriority = 10
removeongethit = 1
;ignorehitpause =
;persistent
;===============================
[State 3037, visage]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = -40,-30
anim =8066;8068
ID = 4208
scale = 2,2
postype = p2
sprpriority = 11
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 700
 supermovetime = 700
;==========================
;explod (flame)
;==========================
[State 3037,prem,p flamme au sol gauche ]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X  < 0
pos =-330,230
anim = 8033
ID = 4209
postype = front
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
;ontop =1
supermovetime = 700
;=================================
[State 3037,prem,p flamme au sol droit]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X  > 0
pos =-150,230
anim = 8033
ID = 4209
postype = back
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
;ontop =1
supermovetime = 700
;================================
[State 3037,ar,p flamme au sol gauche ]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X  < 0
pos =-330,180
anim = 8033
ID = 4209
postype = front
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
;ontop =1
supermovetime = 700
;=================================
[State 3037,ar,p flamme au sol droit fon]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X  > 0
pos =-150,180
anim = 8033
ID = 4209
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
;ontop =1
supermovetime = 700
;================================
;sol
;=================================
[State 3037, sol]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = 0,-30
anim =8069
ID = 4208
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
supermovetime = 700
;================================
;sol de magma santre
;=================================
[State 3037, sol de magma santre]
type = Explod
trigger1 = Time =  1
;trigger1 = Pos X > 0
pos = 100,-40
anim =8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
supermovetime = 700
;=================================
[State 3037, sol de magma]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = -300,-40
anim =8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
supermovetime = 700
;=================================
[State 3037, sol de magma ]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = -100,-40
anim =8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
supermovetime = 700
;================================
;JIN
;=================================

;==============================
;NUAGE
;==============================
[State 3037, nuage droit]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X > 0
pos = 330,0
anim = 8082
ID = 4208
postype = left
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700
 supermovetime = 700
;===============================
[State 3037, nuage gauche]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X < 0
pos = -320,0
anim =8081
ID = 4208
postype = right
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700
;==============================
;victim
;==============================
[State 3037,l'homme accroupi]
type = Explod
trigger1 = Anim =  3035
pos =290,250
anim = 8084
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700
;==============================
[State 3037, la femme accroupi]
type = Explod
trigger1 = Anim =  3035
pos =41,250
anim = 8085
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700
;==============================
[State 3037,l'homme prostré]
type = Explod
trigger1 = Anim =  3035
pos =190,280
anim = 8086
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700
;==============================
[State 3037, la femme qui tend le bra]
type = Explod
trigger1 = Anim =  3035
pos =150,280
anim = 8060
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority =8
ignorehitpause =4
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700
;==============================
;les asayant
;==============================
[State 3037, l'homme qui sort du sol]
type = Explod
trigger1 = Anim =  3035
TIME=50
pos =-15,0
anim = 8087
ID = 4208
postype = p2 ;p2,front,back,left,right
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700
;==============================
[State 3037, la femme qui sort du sol]
type = Explod
trigger1 = Anim =  3035
TIME=50
pos =30,0
anim =  8089
ID = 4208
postype = p2 ;p2,front,back,left,right
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =700
supermovetime = 700

;==============================
;les helper (chargé)
;==============================
[State 3037, squelette qui sort du sol]
type = Helper
trigger1 =time=130 ;AnimElem = 1
;time=80
ID = 8062
pos = 70,0
postype = p2
stateno = 8062
helpertype = normal
name = "mort1"
ownpal = 1
supermovetime =  700
;==============================
[State 3037, l' asayant qui transperce]
type = Helper
trigger1 =time=205 ;AnimElem = 1
trigger1 !=p2name!= "cassios"
;time=80
ID = 8061
pos = 0,-5
postype = p2
stateno = 8061
helpertype = normal
name = "zonbi"
ownpal = 1
supermovetime =  700

;==============================
[State 3037, squelette a l'épé]
type = Helper
trigger1 =time=330 ;AnimElem = 1
;time=80
ID =  8102
pos = -50,-5
postype = p2
stateno = 8102
helpertype = normal
name = "mort a l'épé"
ownpal = 1
supermovetime =  700
;==============================
[State 3037, la mort ]
type = Helper
trigger1 =time=300 ;AnimElem = 1
trigger1 !=p2name!= "cassios"
;time=80
ID =  8019
pos = -300,-5
postype = p2;p2,front,back,left,right
stateno = 8019
helpertype = normal
name = "voleur d'ame"
ownpal = 1
supermovetime =  700


;==============================
;fin du StateDef
;==============================

[State 3037, TuxPos]
type = PosAdd
trigger1 = animtime = 0
x = 50

[State 3037 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3048
ctrl =0
;===========================================================================
;fin
[Statedef 3048]
type = S
movetype = A
physics = S
anim = 3048
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3048, Tux]
type = Turn
trigger1 = Time = 0

;LifeAddp2
[State 3048, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 200
value = -1000000
kill = 1

[State 3048 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1
;===========================================================================
;===========================================================================
;les Helper
;===========================================================================
;===========================================================================
;==============================
; squelette qui sort du sol
;==============================
[StateDef 8062]
type = A
movetype = A
physics = S
juggle = 0
anim =8062
ctrl = 0
sprpriority = 5

[State 8062 , 1]
type = HitDef
trigger1 = AnimElem =2
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 1,100
sparkno = -1
guard.sparkno = -1
sparkxy = 0, -76 ;Y-offset for the spark rel. to p1
hitsound   = s1,4
guardsound = s1,0
ground.type = High
ground.slidetime =0
ground.hittime  =100
ground.velocity = 0,0
;airguard.velocity = -1.9,10
;air.type = High
;air.velocity = -1.4,-3
;air.hittime = 12
;down.bounce = 1
supermovetime =  82
sprpriority = 5
 numhits = 0
;==============================
; destruktion du helper squelette qui sort du sol
;==============================
[State 8062]
type = DestroySelf
trigger1 = AnimTime = 0
;===========================================================================
; l' asayant qui transperce
;==============================
;air ataque
[StateDef 8061]
type = A
movetype = A
physics = S
juggle = 0
anim =8061
ctrl = 0
sprpriority =0

[State 8061, insulte]
type = PlaySnd
trigger1 = anim =8061
trigger1 =  AnimElem =2
value = 3036,1

[State 8061, insulte]
type = PlaySnd
trigger1 =  AnimElem =6
trigger2 =  AnimElem =7
time= 150
value = 1,3



[State 8061, BRAT ]
type = Explod
;trigger1 = Anim=3036
trigger1 = AnimElem =1
trigger1 !=p2name!= "cassios"
anim = 8065
ID =  8065
pos = 0,-5
postype = p2 ;p2,front,back,left,right
;facing = 1
;vfacing = 1
bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
removetime =-2
;supermove
;pausemove
scale = 1,1
sprpriority = 8
removeongethit = 1
;ignorehitpause =
;persistent =

;==============================
; destruktion du helper l' asayant qui transperce
;==============================
[State 8061]
type = DestroySelf
trigger1 = AnimTime = 0
;===========================================================================
; squelette a l'épé
;======================
[StateDef 8102]
type = A
movetype = A
physics = S
juggle = 0
anim =8102
ctrl = 0
sprpriority = 8

;hite def de l'attaque
[State 8102 , 1]
type = HitDef
;trigger1 = Anim=8061
trigger1 = Anim=8102
attr = S, HA
damage =0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 1,100
sparkno = -1
guard.sparkno = -1
sparkxy = 0, -100 ;Y-offset for the spark rel. to p1
hitsound   = s1,4
guardsound = s1,0
ground.type = High
ground.slidetime =0
ground.hittime  =100
ground.velocity = 0,0
;airguard.velocity = -1.9,10
;air.type = High
;air.velocity = -1.4,-3
;air.hittime = 12
;down.bounce = 1
supermovetime =  82
 numhits = 0
;==============================
; destruktion du helper squelette a l'épé
;==============================
[State 8102]
type = DestroySelf
trigger1 = AnimTime = 0
;===========================================================================
; la mort
;======================
[StateDef 8019]
type = A
movetype = A
physics = S
juggle = 0
anim =8019
ctrl = 0
sprpriority = 8

[State 8108 , VelAdd]
type = VelAdd
trigger1 = anim =8019
x = 1
y = 0



[State 8019 , 1]
type = HitDef
;trigger1 = Anim=8061
trigger1 = Anim=8019
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 1,100
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -76 ;Y-offset for the spark rel. to p1
hitsound   = 0,5
guardsound = s1,0
ground.type = High
ground.slidetime =0
ground.hittime  =100
ground.velocity = 0,0
;airguard.velocity = -1.9,10
;air.type = High
;air.velocity = -1.4,-3
;air.hittime = 12
;down.bounce = 1
supermovetime =  82
sprpriority = 8
 numhits = 0
;==========================================================
;la mort  parti(hit state)
;=================================
[State 8018, la mortparti2]
type = Helper
trigger1 = MoveContact =1
trigger1 !=p2name!= "cassios"
;time=80
ID = 8018
pos = 0,-30
postype = p2
stateno = 8018
helpertype = normal
name = "zonbi"
ownpal = 1
supermovetime =  700


[State 8018, la mortparti2]
type = Helper
trigger1 = MoveContact =1
trigger1 =p2name= "cassios"
;time=80
ID = 8018
pos = 0,-90
postype = p2
stateno = 8018
helpertype = normal
name = "zonbi"
ownpal = 1
supermovetime =  700
;=================================================
; destruktion du helper la mort
;=================================================
[State 8018]
type = DestroySelf
trigger1 = MoveContact =1
;==============================
;hit state) la mort
;==============================
[StateDef 8018]
type = A
movetype = A
physics = S
juggle = 0
anim =8018
ctrl = 0
sprpriority = 8


[State 0, PlaySnd]
type = PlaySnd
 trigger1 = Time
trigger1 = Time%8=0
value = S1,7

[State 8018 , 1]
type = HitDef
;triggerall = AnimElem != 18
trigger1 = Anim=8018
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
;pos = -100,-5
;postype = p2
;mindist =-60,-30
;maxdist = -60,-30
priority = 3, Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 1,100
sparkno = -1
guard.sparkno = -1
sparkxy = -50, -40 ;Y-offset for the spark rel. to p1
hitsound   = 0,5
guardsound = s1,0
ground.type = High
ground.slidetime =0
ground.hittime  =100
ground.velocity = 0,0
;airguard.velocity = -1.9,10
;air.type = High
;air.velocity = -1.4,-3
;air.hittime = 12
;down.bounce = 1
supermovetime =  82
sprpriority = 0
numhits = 0
fall = 0

[State 8018 , 1]
type = HitDef
triggerall = AnimElem = 18
trigger1 = Anim=8018
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
;pos = -100,-5
;postype = p2
;mindist =-60,-30
;maxdist = -60,-30
priority = 3, Dodge ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 1,100
sparkno = -1
guard.sparkno = -1
sparkxy = -50, -40 ;Y-offset for the spark rel. to p1
hitsound   = 0,5
guardsound = s1,0
ground.type = High
ground.slidetime =0
ground.hittime  =100
ground.velocity = 0,0
;airguard.velocity = -1.9,10
;air.type = High
;air.velocity = -1.4,-3
;air.hittime = 12
;down.bounce = 1
supermovetime =  82
sprpriority = 0
numhits = 0
fall = 1
fall.recover = 0

;========================================================
; destruktion du helper la mort qui punit (hit state) fin
;========================================================
[State 8018]
type = DestroySelf
trigger1 = AnimTime = 0

 ;===========================================================================
;Hôvo gen ma ken  3 brule en enfer
;===========================================================================
[Statedef 3038]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0
supermovetime = 700
















[State 1700, 3]
type = PlaySnd
trigger1 = time = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17000,0



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg

[State 210, Hyper bg Explod]
type = Explod
trigger1 = !time
removetime = 109
id =6090
anim = 16090
pos = 0,0
postype = Left
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
scale = .5,.5

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

;[State 863, 1]
;type = SuperPause
;trigger1 = AnimElem = 1
;anim = -1
;time = 30
;movetime = 0
;darken = 0

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
anim = 17200
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17210
pos = 0,-70
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1







;===============================
;SND
;===============================
;voix
[State 3038,0Snd]
type = PlaySnd
Trigger1=animelem= 1
value = 4000,0
channel = 0
;===============================
;paramétre posture et vitesse
;===============================

;===============================
;paramétre posture et vitesse
;===============================
;(déplasmen ver l avent)
[State 3038, VelAdd]
 type = VelAdd
trigger1 = AnimElem=5
x =5
y = 0
;ignorehitpause =
;persistent =
;==============================
;Explod
;==============================

;==============================
;PETIT EXPLOSION
[State 3038, petit explosion de magma ]
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
removeongethit = 1
;ignorehitpause =
;persistent =
 supermovetime = 140
;==============================
;grande explosion
[State 3038,explosion demagma 2]
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
removeongethit = 1
;ignorehitpause =
;persistent =
 supermovetime = 140
;==============================

;==============================
[State 3038, 11]
type = ChangeState
trigger1 = animtime = 0
value =3039
ctrl =1
;==============================
;ChangeState
;==============================
;===========================================================================
;HIT ATTAQUE
;===========================================================================
[Statedef 3039]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0
supermovetime = 700
;===============================
;paramétre spétial
;===============================
[State 3039]
type = VarSet
triggerall = stateno = 3039
trigger1 = time = 0
value = 0
v = 48
;===============================
;paramétre posture et vitesse
;===============================
;déplasmen ver l avent
[State 3039, VelAdd]
 type = VelAdd
trigger1 = AnimElem=1
x =60
y = 0
;ignorehitpause =
;persistent =
;===============================
;EXPLOD
;===============================

;===============================
;Si P1 est du côté droite
[State  3039, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3043  ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8040
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3039, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3043  ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8039
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
;Si P1 est du côté droite
[State  3039, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno =3043  ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3039, électic cérvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3043 ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8015
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
 ;HIT ATTAQUE chop
;===============================
[State 3039,3]
type = hitdef
triggerall=anim=3031
trigger1 =  AnimElem = 1
attr = S, SP
;projhitanim = -1
postype = p1
hitflag=HLF
damage = 0
animtype =hard
;guardflag = HLM
pausetime = 0,130
sparkno = S30002
sparkxy = 0, -85
guard.sparkno = S30040
hitsound   = S4000,1
guard.pausetime =1, 130
mindist = -50
maxdist = -50
;guardsound = 6,0
;ground.type = High
ground.slidetime = 0
ground.hittime  = 350
ground.velocity = 0
air.velocity = -0,0
p2facing =1
givepower = -30000
p2stateno = 3043 ;&&time >50
;===============================
 ;ChangeState si p2 touché
[State 4001 , 3]
type = ChangeState
;trigger1 = MoveContact =1
trigger1 = p2stateno = 3043
trigger1 =time=15
;trigger1 = AnimTime = 0
value = 3040
ctrl = 0
;===============================
 ;ChangeState si p2 manqué
[State 3035 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3033
ctrl =0

;[State 4001 , 3]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 3040
;ctrl = 0
;===============================
 ;ChangeState 3040
;===============================
;TRANSITION
;===============================
[Statedef 3040]
type = S
movetype = A
physics = S
anim = 3034
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3040, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3034
trigger1= Time
trigger1= Time%80=0
value = 35,0

 ;[State 3039, VelAdd]
; type = VelAdd
;trigger1 = AnimElem=1
;x =60
;y = 0
;ignorehitpause =
;persistent =
;===============================
;EXPLOD
;===============================

;===============================
;divert las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
;trigger1 = Pos X  > 0
pos =220,-10
anim = 8101
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
removetime = 150
;ontop =1
supermovetime = 700

;===============================
[State 3040 , allez ver illusion]
type = ChangeState
trigger1 = animtime = 0
value =3041
ctrl =1
;===============================
;ChangeState 3041
;===============================
;ILLUSION
;===============================
[Statedef 3041]
type = S
movetype = A
phsyics = N
anim = 1990
velset = 0,0
ctrl = 0
;===============================
;SND
;===============================
[State 3041, insulte]
type = PlaySnd
trigger1 = Time = 0
value = 180,0
channel = 0

[State 3041, Tux1]
type = PlaySnd
triggerall = anim= 1990
trigger1 = Time % 90 = 0
value = 3,3
channel = 6

[State 3041, Tux2]
type = StopSnd
trigger1 = Time = 500
channel = 6
;===============================
;paramétre spétial
;===============================
[State -2, Invisible]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3041, Tux]
type = Turn
trigger1 = Time = 0
;===============================
;EXPLOD
;===============================
 [State 3041 font ]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = -40,-30
anim =8066;8068
ID = 4208
scale = 2,2
postype = p2
sprpriority = 11
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
 supermovetime = 700
 ;=====================
;arbre au pabdu]
[State 3030, arbre au pabdu] ]
type = Explod
trigger1 =  Time =  1
trigger1 = Pos X   < 0
pos =-330,-25
anim = 8114
ID = 4209
postype = front
sprpriority =-5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =500
;ontop =1
supermovetime = 700
;==================================
;(arbre au pandu)
[State 3030, arbre au pabdu]
type = Explod
trigger1 = Time =  1
trigger1 = Pos X  > 0
pos =-10,-25
anim = 8114
ID = 4209
facing = 1
;vfacing = -1
postype = back
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
;ontop =1
supermovetime = 700
;==================================
[State 3037, nuage droit]
type = Explod
trigger1 = Anim =  1990
trigger1 = Pos X > 0
pos = 330,0
anim = 8082
ID = 4208
postype = left
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, nuage gauche]
type = Explod
trigger1 = Anim =  1990
trigger1 = Pos X < 0
pos = -320,0
anim =8081
ID = 4208
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime =500
supermovetime = 700
;==================================
[state 3041, explod]
type = Explod
triggerall = NumExplod(19000) = 0
triggerall = stateno = 3041
trigger1 = time = 0
anim = 19000
id = 19000
pos = 0,0
postype = LEFT
sprpriority = 1
removetime = 57
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1
;==================================
;Cadavre
[State 3041, image]
type = Explod
trigger1 = Time = 30
anim =4003
pos = -30,0
postype = p2
facing = -1
sprpriority = 2
supermove = 1
removetime =-2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

;Cadavre
[State 3041, image]
type = Explod
trigger1 = Time = 40
anim = 4006
pos = -30,0
postype = p2
facing = -1
sprpriority = 2
supermove = 1
removetime =400
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

;Cadavre fin
[State 3041, image]
type = Explod
trigger1 = Time =440
anim =4007
pos = -30,0
postype = p2
facing = -1
sprpriority = 2
supermove = 1
removetime =-2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
;===================================
[State 3041, flamme au sol gauche premié plan]
type = Explod
trigger1 = Time =  30
trigger1 = Pos X  < 0
pos =-330,230
anim = 8033
ID = 4209
postype = front
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 450
;ontop =1
supermovetime = 500
;==================================
[State 3041, flamme au sol droitpremié plan]
type = Explod
trigger1 =   Time =  30
trigger1 = Pos X  > 0
pos =-150,230
anim = 8033
ID = 4209
postype = back
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 450
;ontop =1
supermovetime = 700
;====================================
[State 3041,arp flamme au sol gauche fon]
type = Explod
trigger1 =   Time =  30
trigger1 = Pos X  < 0
pos =-330,180
anim = 8033
ID = 4209
postype = front
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 450
;ontop =1
supermovetime = 700
;==================================
[State 3041,arp flamme au sol droit fon]
type = Explod
trigger1 =   Time =  30
trigger1 = Pos X  > 0
pos =-150,180
anim = 8033
ID = 4209
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 450
;ontop =1
supermovetime = 700
;==================================
 ;sol crane
;==================================
[State 3041, so l]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = -100,30
anim =8113
ID = 4208
postype = p2
;scale = 2,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
supermovetime = 700

[State 3041, sol 2]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = -50,30
anim =8113
ID = 4208
postype = p2
;scale = 2,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
supermovetime = 700
;==================================
;solmagma  droit
;==================================
[State 3037, sol droit]
type = Explod
trigger1 = Time =  1
;trigger1 = Pos X > 0
pos = 100,-30
anim =8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, sol santre]
type = Explod
trigger1 = Time =  1
;trigger1 = Pos X > 0
pos = -100,-30
anim =8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, sol gauche]
type = Explod
trigger1 = Time =  1
;trigger1 = Pos X > 0
pos = -300,-30
anim =8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
supermovetime = 700
;==================================
[State 3000, petit explosion de magma ]
type = Explod
trigger1 =time = 1
anim =8038
ID = 8038
pos = 0,0
postype = p2  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
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
removeongethit = 1
;ignorehitpause =
;persistent =
 supermovetime = 140
;==================================
[State 3000,explosion demagma 2]
type = Explod
trigger1 = time = 1
anim =8100
ID = 8100
pos = 0,0
postype = p2  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
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
removeongethit = 1
;ignorehitpause =
;persistent =
 supermovetime = 140
;==================================
;cadavre  explod
;==================================
 [State 3037, cadavre enpalé1]
type = Explod
trigger1 = time = 1
;trigger1 = AnimElem = 1
;trigger1 = Pos X > 0
pos = 280,250
anim =8112
ID = 8112
postype = left ;p2,front,back,left,right
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =500
supermovetime = 700

[State 3041 , 2]
type = ChangeState
trigger1 =time = 500
value = 0
ctrl = 1
;==================================
[State 3037, cadavre enpalé2]
type = Explod
trigger1 = time = 1
;trigger1 = AnimElem = 1
;trigger1 = Pos X > 0
pos = 150,250
anim =8117
ID = 8117
postype = left ;p2,front,back,left,right
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =500
supermovetime = 700

[State 3041 , 2]
type = ChangeState
trigger1 =time = 500
value = 0
ctrl = 1
;==================================
[State 3037, avant bra]
type = Explod
trigger1 = time = 1
;trigger1 = AnimElem = 1
;trigger1 = Pos X > 0
pos = 45,250
anim =8118
ID = 8117
postype = left ;p2,front,back,left,right
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =500
supermovetime = 700

[State 3041 , 2]
type = ChangeState
trigger1 =time = 500
value = 0
ctrl = 1
;===========================================================================
;P2 inpact lasserre
;===========================================================================
[statedef 3043]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0

[state 3043, 0]
type = changeanim2
trigger1 = time = 0
value = 4098

;[state 3043, 1]
;type = velset
;trigger1 =  AnimElem=1
;x = 0
;y = 0

[state 3043, 8]
type = changestate
trigger1 = time = 245
value = 3044
ctrl = 0
;===========================================================================
;P2 BRULE
;===========================================================================
[statedef 3044]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0

[state 3044, 3]
type = changeanim2
trigger1 = time = 0
value = 4099


[State -2, Invisible]
type = AssertSpecial
trigger1 = 1
flag = invisible

;[state 3044, 1]
type = velset
;trigger1 = time = 0
;x = 0
;y = 0

;[state 3044, 2]
;type = hitby
;trigger1 = 1
;value = sca
;time = 1
;

[state 3044 , 4]
type = changestate
trigger1 = time = 500
value = 3045
ctrl = 0
;===========================================================================
;P2 fin
;===========================================================================
;p2 fin
[statedef 3045]
type = S
movetype = I
physics = s
velset = 0,0
ctrl = 0

[State 0, LifeSet]
type = LifeSet
trigger1 =time = 0
value = -100000

[state 3045 , 4]
type = SelfState
trigger1 = time = 0
value = 5000
;===========================================================================