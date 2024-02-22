;Symbiote Coffin
[Statedef 3000]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3000
juggle = 4
sprpriority = 2
poweradd = -1000

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 2
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
ontop = 1
sprpriority = 5
supermovetime = 40

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = animelem = 2
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,6
volume = 100

[State 0, Explod]
type = Explod
trigger1 = animelem =3
anim = 197
pos = -20,-120
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
scale = .8,.8
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0

[State 0, 1]
type = Helper
trigger1 = AnimElem = 12
helpertype = normal
name = "Coffin"
ID = 3005
pos = 0,0
postype = p1
ownpal = 1
stateno = 3005
persistent = 0

[State 0, 1]
type = ChangeState
trigger1 = p2stateno = 3010
trigger1 = p2movetype = H
trigger1 = time = 115
value = 3001

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3002
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Symbiote Coffin connected
[Statedef 3001]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3001
juggle = 4
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time = 40
anim = 8222
pos = 0,-75
postype = p2  ;p2,front,back,left,right
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = S5,7
volume = 255

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 40
time = 10
freq = 60
ampl = -4
phase = 90
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 40
anim = 3007
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
scale = 1.5,1.5
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = S8000,10
volume = 100


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Symbiote Coffin missed
[Statedef 3002]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3002
juggle = 4
sprpriority = 2

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;coffin helper
[Statedef 3005]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 3005
juggle = 4
sprpriority = 4
poeradd = -1000

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3008
id = 3008
pos = -1,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
scale = 1,1
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 0

[state a]
type = posset
trigger1 = time = 0
x = enemy,pos x

[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 1
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S8000,9
volume = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S0,6
volume = 100



[State 210, 2]
type = HitDef
trigger1 = root,stateno = 3000
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HT
damage = 20
hitflag = M-
priority = 1, Miss
pausetime = 0,0
sparkno = 3
sparkxy = -10,-70
hitsound   = s5,7
guardsound = 6,0
ground.type = High
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = 0,-11.5
down.velocity = 0, -11.5
air.velocity = 0,-5.5
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
;p1stateno = 3006
p2stateno = 3010

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 40
trigger1 = movehit = 1
time = 1
id = -1
pos = 0,0
;ignorehitpause =
;persistent =



[State 0, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3010
trigger1 = time >= 40
value = 3006
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause =
;persistent =

;---------------------------------------------------------------

;coffin helper hit
[Statedef 3006]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 3006
juggle = 4
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,1
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 60
anim = 3009
;id = 3009
pos = -1,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
scale = 1,1
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3008
;ignorehitpause =
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8000,11
volume = 100

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time < 59
value = -2
ID = -1
kill = 1
absolute = 1
;ignorehitpause =
;persistent =

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 59
value = -110
ID = -1
kill = 1
absolute = 1
;ignorehitpause =
;persistent =

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time < 59
scale = 1+(-.005*time),1+(-.005*time)

[State 0, TargetBind]
type = TargetBind
;trigger1 = enemy,anim = 3011
trigger1 = time = 0
time = 1
id = -1
pos = 0,0
;ignorehitpause =
;persistent =

[State 0, TargetState]
type = TargetState
trigger1 = root,stateno = 3001
trigger1 = root,animelem = 1
value = 3011
ID = -1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause =
;persistent =

;p2 state 1
[Statedef 3010]
type    = S
movetype= H
physics = N
juggle  = 15
ctrl = 0
sprpriority = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3010

[State 0, ChangeState]
type = ChangeState
trigger1 = enemy,stateno != [3000,3001]
value = 0
ctrl = 0
;anim =
;ignorehitpause =
;persistent =



;p2 state 2
[Statedef 3011]
type    = S
movetype= H
physics = N
juggle  = 15
ctrl = 0
sprpriority = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3011

[State 0, VelSet]
type = VelSet
trigger1 = time = 40
x = 0
y = -6
;ignorehitpause =
;persistent =


[State 1025,5]
type = selfstate
trigger1 = time > 40
;trigger1 = Life <= 0
;trigger2 = HitCount = 1
value = 5030
ctrl = 1


;---------------------------------------------------------

;Varnage
[Statedef 3200]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 0
juggle = 4
sprpriority = 2
poweradd = -2000

[State 3030, 1]
type = PlaySnd
trigger1 = time = 0
value = 802, 0
volume = 255



[State 3000, 2]
type = SuperPause
trigger1 = animelem = 1
time = 135
movetime = 135
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
ontop = 1
sprpriority = 5
supermovetime = 40

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = time=0
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 3200
pos = 100,-240
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,6
accel = 0,0
random = 0,0
removetime = 45
supermovetime = 45
pausemovetime = 0
scale = 1,1
ontop = 1
sprpriority = 5
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 46
anim = 3201
pos = 100,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 22
supermovetime = 22
pausemovetime = 0
scale = 1,1
ontop = 1
sprpriority = 5
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, Grab Sound]
type = PlaySnd
trigger1 =  time = 111
value = 5, 10

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 65
value = 3202
;elem = 1
;ignorehitpause =
;persistent =



[State 0, 1]
type = ChangeState
trigger1 = time = 135
value = 3203
ctrl = 1
;anim =

;Varnage 2
[Statedef 3203]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3203
juggle = 4
sprpriority = 2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 1
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A      ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 19
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = S      ;A,C,S,N
;ignorehitpause =
;persistent =

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 9 || AnimElem = 13 || AnimElem = 16 || AnimElem = 22
value = 0, ifelse(random<499,1,2)

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 9 || AnimElem = 13 || AnimElem = 16 || AnimElem = 22
value = 2,  ifelse(random<499,2,3)
channel = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 7 || AnimElem = 10 || AnimElem = 14 || AnimElem = 17 || AnimElem = 23
attr = S, HA
animtype  = Hard
damage    = 55,5
guardflag = MA
pausetime = 0,50
sparkno = s8222
sparkxy = 0,-55
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -2, -2
air.velocity = -2, -2
yaccel = 0.6

[State 1000, 7];caindo devagar
type=velset
trigger1=time>5 && statetype=A
y=.5 * (pos y<0)

[State 0, VelSet]
type = VelSet
trigger1 = time >= 1
trigger1 = time <= 20
x = 7
y = -1.2
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
trigger1 = time <= 50
x = 5
y = 0
;ignorehitpause =
;persistent =

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3205
ctrl = 1

;Varnage Finish
[Statedef 3205]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3204
juggle = 4
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S8000,18
volume = 255

[State 210, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
animtype  = back
damage    = 85,10
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = 0,-55
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -10, -4
air.velocity = -10, -3
yaccel = 0.6
fall = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 3205
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 35
pausemovetime = 0
scale = 1.25,1.25
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------

;The Madness 1
[Statedef 3300]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3300
juggle = 4
sprpriority = 2
poweradd = -3000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 128
movetime = 128
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
ontop = 1
sprpriority = 5
supermovetime = 40

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = time=0
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 2000, a]
type = NotHitBy
trigger1 = time > 15
value = SCA
time = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S8000,9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 35
value = S2,5

[State 1040, 8]
type = EnvShake
trigger1 = time = 35
freq = 160
time = 50

[State 0, 1]
type = ChangeState
trigger1 = time = 128
value = 3301
ctrl = 1
;anim =

;The Madness 2
[Statedef 3301]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3301
juggle = 4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,2
volume = 100

[State 210, 2]
type = HitDef
trigger1 = animelem = 4 ||animelem = 5 || animelem = 6
attr = S, HA
animtype  = back
damage    = 23,10
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = -50,-70
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = 0, 0
air.velocity = 0, 0
yaccel = 0.6


[State 0, 1]
type = ChangeState
trigger1 = movecontact >0
trigger1 = animtime = 0
value = 3302
ctrl = 1

[State 0, 1]
type = ChangeState
trigger1 = movecontact =0
trigger1 = animtime = 0
value = 3310
ctrl = 1
;------------------------------------------------------------

;The Madness 3
[Statedef 3302]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3303
juggle = 4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = S2,4
volume = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 12
value = S2,4
volume = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 16
value = S2,4
volume = 100

[State 210, 2]
type = HitDef
trigger1 = animelem = 2 ||animelem = 3 || animelem = 4|| animelem = 5
trigger2 = animelem = 6||animelem = 7 || animelem = 8|| animelem = 9
attr = S, HA
animtype  = back
damage    = 18,8
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = -55,-75
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = 0, 0
air.velocity = 0, 0
yaccel = 0.6


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3303
ctrl = 1

;The Madness 4
[Statedef 3303]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3302
juggle = 4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,2
volume = 100

[State 210, 2]
type = HitDef
trigger1 = animelem = 2 ||animelem = 3 || animelem = 4|| animelem = 5
attr = S, HA
animtype  = back
damage    = 23,10
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = -55,-95
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = 0, 0
air.velocity = 0, 0
yaccel = 0.6


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3304
ctrl = 1

;The Madness 5
[Statedef 3304]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3304
juggle = 4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1


[State 210, 2]
type = HitDef
trigger1 = animelem = 3||animelem = 4 || animelem = 5|| animelem = 6
attr = S, HA
animtype  = back
damage    = 23,10
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = -55,-80
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = 0, 0
air.velocity = 0, 0
yaccel = 0.6




[State 3000];super fundo helper
type = helper
stateno = 3305
trigger1 = animelem =8
pos = 0,0
postype = p1
ID=8500
ownpal = 1
name = "acid"
sprpriority = 3
supermovetime = 80


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 1
;-----------------------------------------------------------

;Spit
[Statedef 3305]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3305
juggle = 4
sprpriority = 3

[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 1
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S8000,14
volume = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S8000,14
volume = 100

[State 210, 2]
type = HitDef
trigger1 = animelem = 1||animelem = 2 || animelem = 3|| animelem = 4
attr = S, HA
animtype  = back
damage    = 20,10
guardflag = MA
pausetime = 0,3
sparkno = -1
sparkxy = 0,-55
guard.sparkno = -1
hitsound = S8000,15
guardsound = S8000,15
ground.type = low
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -2, 0
air.velocity = -2, 0
yaccel = 0.6
sprpriority = 3
palfx.time = 40
palfx.add = 0,100,50
palfx.mul = 20,120,24
palfx.sinadd = 85,110,55,100
Palfx.color = 0
palfx.invertall = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 8020
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 30,50
scale = 1,1
sprpriority = 5
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 8020
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 40,50
scale = 1,1
sprpriority = 5
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 8020
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 50,50
scale = 1,1
sprpriority = 5
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 8020
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 60,60
scale = 1,1
sprpriority = 5
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 8020
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 70,70
scale = 1,1
sprpriority = 5
ontop = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1

;Madness Final Hit
[Statedef 3310]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3310
juggle = 4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8000,16
volume = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8000,17
volume = 100

[State 210, 2]
type = HitDef
trigger1 = animelem = 2 ||animelem = 3 || animelem = 4|| animelem = 5
attr = S, HA
animtype  = back
damage    = 30,10
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = -65,-75
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -4, -.5
air.velocity = -4, -.5
yaccel = 0.6


[State 210, 2]
type = HitDef
trigger1 = animelem = 6||animelem = 7 || animelem = 8|| animelem = 9
attr = S, HA
animtype  = back
damage    = 32,8
guardflag = MA
pausetime = 0,10
sparkno = s8222
sparkxy = -65,-75
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -1, -1
air.velocity = -1, -1
yaccel = 0.6
fall = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3320
ctrl = 1

;Detransform
[Statedef 3320]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3320
juggle = 4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =

;Venom Frenzy
[Statedef 3400]
type = A
movetype = A
physics = A
velset = 0,0
ctrl = 0
anim = 3400
juggle = 4
sprpriority = 2
poweradd = -1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,14
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,14
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,14
volume = 255

[State 1000, 7];caindo devagar
type=velset
trigger1=time>5 && statetype=A
y=.2 * (pos y<-10)


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 2
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
ontop = 1
sprpriority = 5
supermovetime = 40

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = animelem = 2
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 0, 1]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "swirl"
ID = 3401
pos = 0,0
postype = p1
ownpal = 1
stateno = 3401
persistent = 0
size.xscale = .9
size.yscale = .9



[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0
;anim =
;ignorehitpause = 0
;persistent = 1

;Swirl
[Statedef 3401]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3401
juggle = 4
sprpriority = 3

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 10
;facing = 0
pos = 0,30
;ignorehitpause =
;persistent =


[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 1
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10 || time = 20 || time = 30
value = S2,6
volume = 255

[State 210, 2]
type = HitDef
trigger1 = time < 75
trigger1 = timemod = 7,0
attr = A, HP
animtype  = back
damage    = 24,7
guardflag = MA
pausetime = 0,3
sparkno = s8222
sparkxy = -55,-75
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -2, 0
air.velocity = -2, 0
yaccel = 0.6
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time < 75
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 75
scale = 1+(-.005*time),1+(-.005*time)
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 124
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno != 3400
ignorehitpause = 1

;Web impaler
[Statedef 3500]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3500
juggle = 4
sprpriority = 5
poweradd = -1000

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
anim = -1
sound = S8889,0
pos = 10,-70


[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = animelem = 2
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80


[State 1020,2]
type = Projectile
trigger1 = NumProjID(3505) = 0
trigger1 = AnimElem = 4
projanim = 3502
projhitanim = -1
projremovetime = 32
;projcancelanim = 1002
projid = 3505
getpower = 120
offset = 150,-68
postype = p1
velocity = 0,0
remvelocity = 0,0
accel = 0,0
attr = S, SP
hitflag = MAP
guardflag = LAM
animtype = Light
damage = 65, 15
priority = 6
pausetime = 0,0
sparkxy = 999,999
hitsound = S6,4
guardsound = S6,0
ground.type = High
;air.type = High
guard.slidetime = 14
guard.hittime = 14
guard.ctrltime = 12
ground.velocity = 0
guard.velocity = -7
airguard.velocity = -7
;airguard.ctrltime = ...
sprpriority = 6
p2stateno = 3510


[State 0, 1]
type = ChangeState
trigger1 = p2stateno = 3510
trigger1 = p2movetype = H
trigger1 = animtime = 0
value = 3501

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Web impaler 2
[Statedef 3501]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3501
juggle = 4
sprpriority = 5

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =1 || animelem =2 || animelem =3
value = 0,6
volume = 0

[State 210, 2]
type = HitDef
trigger1 = enemy, stateno = [3510, 3511]
trigger1 = p2movetype = H
trigger1 = timemod = 8,0
attr = S, HA
animtype  = Back
damage    = 52
guardflag = MA
pausetime = 0,20
sparkno = s8222
sparkxy = -33,-80
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -1.5, -4
air.velocity = -1.5, -4
yaccel = 0.6
fall = 1
sprpriority = 5
p2stateno = 3511

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;p2 state
[Statedef 3510]
type    = U
movetype= H
physics = N
juggle  = 15
ctrl = 0

 [State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3510


[State 1025,1]
type = VelAdd
trigger1 = Vel X < 0
;trigger1 = Pos Y <=0
x = 0.2

[State 1025,1]
type = VelAdd
trigger1 = Vel X > 0
;trigger1 = Pos Y <=0
x = -0.2



[State 1025,2]
type = Gravity
trigger1 = StateNo = 3510
trigger1 = Pos Y < 0

[State 1025,3]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1025,4]
type = VelSet
trigger1 = time = 21
trigger2 = Pos Y >= 0
y = 0

[State 1025,4]
type = VelSet
triggerall = Pos Y >=0
trigger1 = Vel X > -2.5
trigger1 = Vel X < 2.5
x = 0

[State 1025,5]
type = selfstate
trigger1 = Time >= 100
trigger1 = Life <= 0
trigger2 = HitCount > 6
value = 5000
ctrl = 0

[State 1025,6]
type = selfstate
trigger1 = Time >= 100
trigger1 = Life > 0
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

[State 1025,6]
type = selfstate
trigger1 = Time >= 100
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1
;---------------------------------------------------------

;p2 state
[Statedef 3511]
type    = U
movetype= H
physics = N
juggle  = 15
ctrl = 0

 [State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3511


[State 1025,1]
type = VelAdd
trigger1 = Vel X < 0
;trigger1 = Pos Y <=0
x = 0.2

[State 1025,1]
type = VelAdd
trigger1 = Vel X > 0
;trigger1 = Pos Y <=0
x = -0.2



[State 1025,2]
type = Gravity
trigger1 = StateNo = 3511
trigger1 = Pos Y < 0

[State 1025,3]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1025,4]
type = VelSet
trigger1 = time = 21
trigger2 = Pos Y >= 0
y = 0

[State 1025,4]
type = VelSet
triggerall = Pos Y >=0
trigger1 = Vel X > -2.5
trigger1 = Vel X < 2.5
x = 0

[State 1025,5]
type = selfstate
trigger1 = Time >= 30
trigger1 = Life <= 0
trigger2 = HitCount > 6
value = 5050
ctrl = 0

[State 1025,6]
type = selfstate
trigger1 = Time >= 30
trigger1 = Life > 0
trigger1 = Pos Y >= 0
value = 5050
ctrl = 1

[State 1025,6]
type = selfstate
trigger1 = Time >= 30
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1
;---------------------------------------------------------
