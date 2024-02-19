;Push Block helper (forwards)
[Statedef 940]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 940

[State 890, Not Get Hit]
type = NotHitBy
Trigger1 = Time >= 0
value = , AA ,AP ,AT
Time = 1

[State 890, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 890, Shove]
type = VelSet
trigger1 = 1
x = 20

[State 890, Done]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------

; Shield Counter S
[Statedef 950]
type = S
movetype = A
Physics = S
anim = 950
velset = 0,0
ctrl = 0
juggle = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,6
volume = 100

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Back
damage    = 65
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = 0,-75
guard.sparkno = s8001
hitsound = s5,5
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14.5, -4
air.velocity = -14.5, -4
yaccel = 0.6
fall = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------

; Shield Counter C
[Statedef 951]
type = C
movetype = A
Physics = C
anim = 951
velset = 0,0
ctrl = 0
juggle = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,6
volume = 100

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, SA
animtype  = Back
damage    = 65
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = 0,-40
guard.sparkno = s8001
hitsound = s5,5
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14.5, -4
air.velocity = -14.5, -4
yaccel = 0.6
fall = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------

; Shield Counter A
[Statedef 952]
type = A
movetype = A
Physics = A
anim = 952
velset = 0,0
ctrl = 0
juggle = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0,6
volume = 100

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Back
damage    = 65
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = 0,-75
guard.sparkno = s8001
hitsound = s5,5
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14.5, -4
air.velocity = -14.5, -4
yaccel = 0.6
fall = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------

; symbiote slug
[Statedef 1000]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1000



[State 0, 1]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "slug"
ID = 1001
pos = 159,-88
postype = p1
ownpal = 1
stateno = 1001


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------

;slug projectile
[Statedef 1001]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1001
juggle = 4

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
value = S0,6
volume = 100

[State 0, 1]
type = VelAdd
trigger1 = time = 1
x = 5
;ignorehitpause = 0
;persistent = 1



[State 1061, 4]
type = HitDef
trigger1 = 1
animtype = Back
attr = S, SP
damage    = 30, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 0,1
sparkno = s8022
sparkxy = 0,0
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit || moveguarded
value = 1002
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

[State 8062:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 1002
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist<-120||backedgedist<-120
;ignorehitpause =
;persistent =

;---------------------------------------------------------------

;slug projectile hit
[Statedef 1002]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1002



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause =
;persistent =
;--------------------------------------------

;symbiote slug air
[Statedef 1005]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1005

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -4
;ignorehitpause =
;persistent =


[State 1000, 7];caindo devagar
type=veladd
trigger1=time < 25
y=.4 * (pos y<-10)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 25
physics = A       ;S,A,C,L



[State 0, 1]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "slug"
ID = 1006
pos = 120,-20
postype = p1
ownpal = 1
stateno = 1006

[State 0, 1]
type = ChangeState
trigger1 = pos y >0
value = 11
ctrl = 1

[State 0, 1]
type = ChangeState
trigger1 = Time = 22
value = 50
ctrl = 1
;------------------------------------------------------------

;slug projectile air
[Statedef 1006]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1006
juggle = 4

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
value = S0,6
volume = 100



[State 0, 1]
type = VelAdd
trigger1 = time = 1
x = 5
y = 5
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = 1
animtype = Back
attr = A, SP
damage    = 30, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 0,1
sparkno = s8022
sparkxy = 0,0
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6

[State 8062:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 1007
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit || moveguarded
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

[State 0, Explod]
type = Explod
trigger1 = Pos y > -1
anim = 1008
ID = 1008
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist<-120||backedgedist<-120||Pos y > 0
;ignorehitpause =
;persistent =

;---------------------------------------------------------------

;slug projectile air hit
[Statedef 1007]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1007



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause =
;persistent =
;--------------------------------------------

;Web ball
[Statedef 1010]
type = S
movetype = A
physics = S
poweradd = 60
ctrl = 0
anim = 1010
velset = 0, 0


[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 6,3


[State -2, shit]
type = Explod
trigger1 = AnimElem = 4
anim = 1012
sprpriority = 10
postype = p1
pos = 100,-85
bindtime = -1
supermove = 1
ownpal = 1
persistent = 0
ignorehitpause = 1
ontop = 1


[State 1020,2]
type = Projectile
trigger1 = NumProjID(1008) = 0
trigger1 = AnimElem = 4
projanim = 1011
projhitanim = 1013
projcancelanim = 1013
projid = 1020
getpower = 120
offset = 100,-85
postype = p1
velocity = 7,0
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
sprpriority = 1
p2stateno = 1015

[State 1020, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;web ball air
[Statedef 1011]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1016

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -4
;ignorehitpause =
;persistent =


[State 1000, 7];caindo devagar
type=veladd
trigger1=time < 42
y=.5 * (pos y<-10)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 42
physics = A       ;S,A,C,L

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,3

[State 1030,3]
type = Projectile
trigger1 = NumProjID(1030) = 0
trigger1 = AnimElem = 3
projanim = 1017
projhitanim = 1018
;projcancelanim = 1002
projremanim = 1019
projid = 1030
getpower = 100
offset = 120,-20
postype = p1
velocity = 6,3.7
remvelocity = 0,0
accel = 0,0
attr = A, SP
hitflag = MAP
guardflag = LAM
animtype = Light
damage = 55,10
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
airguard.velocity = -4
;airguard.ctrltime = ...
sprpriority = 1
p2stateno = 1015


[State 0, 1]
type = ChangeState
trigger1 = pos y >0
value = 11
ctrl = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1
;------------------------------------------------------------

;p2 state
[Statedef 1015]
type    = S
movetype= H
physics = N
juggle  = 15
ctrl = 0

 [State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1015

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
trigger1 = StateNo = 1025
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
trigger1 = Time >= 50
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 1025,6]
type = selfstate
trigger1 = Time >= 50
trigger1 = Life > 0
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

[State 1025,6]
type = selfstate
trigger1 = Time >= 50
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1
;---------------------------------------------------------


;Impact
[Statedef 1020]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1020
juggle = 4
sprpriority = 2
poweradd = 100


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,6



[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 11
animtype = Back
attr = S, SA
damage    = 26, 7
getpower  = 20
givepower = 10
hitflag = MAF
guardflag = MA
pausetime = 2,3
sparkno = s8222
sparkxy = -50,-65
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -8,-2
air.Velocity = -8, -2
air.hittime = 25
yaccel = 0.6
fall = 1



[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Impact air
[Statedef 1021]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1021
juggle = 4
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,6

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -1
;ignorehitpause =
;persistent =


[State 1000, 7];caindo devagar
type=veladd
trigger1=time < 36
y=.1 * (pos y<-10)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 36
physics = A       ;S,A,C,L

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6 || AnimElem = 7
animtype = Back
attr = S, SA
damage    = 26, 7
getpower  = 20
givepower = 10
hitflag = MAF
guardflag = MA
pausetime = 2,3
sparkno = s8222
sparkxy = 0,-45
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -8,-2
air.Velocity = -8, -2
air.hittime = 25
yaccel = 0.6
fall = 1

[State 0, 1]
type = ChangeState
trigger1 = pos y >0
value = 11
ctrl = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Web Throw L
[Statedef 1100]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1100
juggle = 4
sprpriority = 2
poweradd = 50


[State 0, 1]
type = Width
trigger1 = Animelem = 5
player = 110,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Webbing"
ID = 1104
pos = 129,-88
postype = p1
ownpal = 1
stateno = 1104
persistent = 0
bindtime = 2

[State 4000, 3]
type = Projectile
trigger1 = Numhelper(1104)
trigger1 = helper(1104), movehit
trigger1 = helper(1104), Animelemtime(11)< 0
postype  = p2
projAnim = 1139
sparkno = -1
offset = 0,-30
projhitanim = -1
projremovetime = 5
attr = S, SP
animtype = Medium
guardflag = MA
p1stateno = 1140
p2stateno = 1150
p2facing = 1
numhits = 0
kill = 0



[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0


[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1104)
trigger2 = time >= 50
value = 1103
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Web Throw M
[Statedef 1101]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1101
juggle = 4
sprpriority = 2
poweradd = 50

[State 0, 1]
type = Width
trigger1 = Animelem = 5
player = 100,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Webbing"
ID = 1106
pos = 112,-146
postype = p1
ownpal = 1
stateno = 1106
persistent = 0

[State 4000, 3]
type = Projectile
trigger1 = Numhelper(1106)
trigger1 = helper(1106), movehit
trigger1 = helper(1106), Animelemtime(10)< 0
postype  = p2
projAnim = 1139
sparkno = -1
offset = 0,-30
projhitanim = -1
projremovetime = 5
attr = S, SP
animtype = Medium
guardflag = MA
p1stateno = 1141
p2stateno = 1151
p2facing = 1
numhits = 0
kill = 0



[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0




[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1106)
trigger2 = time >= 50
value = 1103
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Web Throw H
[Statedef 1102]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1102
juggle = 4
sprpriority = 2
poweradd = 50

[State 0, 1]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Shadow"
ID = 1108
pos = 15,-188
postype = p1
ownpal = 1
stateno = 1108
persistent = 0

[State 4000, 3]
type = Projectile
trigger1 = Numhelper(1108)
trigger1 = helper(1108), movehit
trigger1 = helper(1108), Animelemtime(11)< 0
postype  = p2
projAnim = 1139
sparkno = -1
offset = 0,-30
projhitanim = -1
projremovetime = 5
attr = S, SP
animtype = Medium
guardflag = MA
p1stateno = 1142
p2stateno = 1152
p2facing = 1
numhits = 0
kill = 0



[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0




[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1108)
trigger2 = time >= 50
value = 1103
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1
;--------------------------------

;web throw failed
[Statedef 1103]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1138

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;Webbing
[Statedef 1104]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 3
anim = 1105




[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(11) < 0
time = 1
;facing = 0
pos = 135+((Animelemno(0)-1)*16),-88
;ignorehitpause = 0
;persistent = 1




[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(11)>=0
x = 8
;y =
;ignorehitpause = 0
;persistent = 1





[State 210, 2]
type = HitDef
trigger1 = AnimElem = 10, < 2
attr = S, SP
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3
p2getp1state = 1



[State 210, 2]
type = HitDef
trigger1 = AnimElem = 11, >= 0
attr = S, SP
animtype  = Hard
damage    = 15
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1105
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(11) >=0
value = 1105
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -220  || time = 55
trigger2 = movehit && Animelemtime(11) <0

[Statedef 1105]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1106
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1

;Webbing
[Statedef 1106]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 1
anim = 1107




[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(10) < 0
time = 1
;facing = 0
pos = 112+((Animelemno(0)-1)*12),-146-((Animelemno(0)-1)*10)
;ignorehitpause = 0
;persistent = 1




[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(10)>=0
x = 6
y = -5
;ignorehitpause = 0
;persistent = 1





[State 210, 2]
type = HitDef
trigger1 = AnimElem = 9, < 2
attr = S, HA
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -3,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -4,-4
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3
;p2stateno = 3018
kill = 0

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1037
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(10) >= 0
value = 1107
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = Screenpos Y <= -200
trigger2 = movehit && Animelemtime(10) <0


[Statedef 1107]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1108
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1

;Webbing
[Statedef 1108]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 1
anim = 1109




[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(11) < 0
time = 1
;facing = 0
pos = 15,-188-((Animelemno(0)-1)*16)
;ignorehitpause = 0
;persistent = 1




[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(11)>=0
y = -8
;y =
;ignorehitpause = 0
;persistent = 1





[State 210, 2]
type = HitDef
trigger1 = AnimElem = 10, < 2
attr = S, HA
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2,-4
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3
;p2stateno = 3018
kill = 0

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1109
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(11) >=0
value = 1109
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = Screenpos Y <= -200
trigger2 = movehit && Animelemtime(11) <0

[Statedef 1109]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1110
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1



;Slam
[Statedef 1140]
type    = S
movetype= A
physics = N
anim = 1130
poweradd = 60
sprpriority = 2






[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 244, -89
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 244, -69
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 240, -51
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 234, -41
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 224, -27
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 6
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = -165, -12
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -159, -8
time = 6


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = -132, 3
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = -120, -7
time = 6


[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1155


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1145

;Slam
[Statedef 1141]
type    = S
movetype= A
physics = N
anim = 1131
poweradd = 60
sprpriority = 2



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 149, -181
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 177, -175
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 216, -155
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 234, -41
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 231, -129
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 7
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 211, -82
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -78, -40
time = 6


[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1155


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1145

;Slam
[Statedef 1142]
type    = S
movetype= A
physics = N
anim = 1132
poweradd = 60
sprpriority = 2



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 18, -231
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30, -240
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 78, -233
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 87, -245
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 100, -230
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 10
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 137, -212
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 159, -189
time = 6


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 160, -160
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 148, -122
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = -103, -53
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = -77, -40
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1155


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1145

;Waste the Creep
[Statedef 1145]
type    = S
movetype= A
physics = N
anim = 1135
poweradd = 60
sprpriority = 2

[State 1030, 1]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1030, 1]
type = VarAdd
trigger1 = command = "x" || command = "y" || command = "z"
v = 0
value = 1


[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 12 || AnimElem = 31
value = 5,6



[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 12 || AnimElem = 31
value = -35
kill = 0


[State 192, 0]
type = GameMakeAnim
trigger1 = Animelem = 12 || AnimElem = 31
pos = floor(P2Dist X),0
value = 62

[State 1486, 3]
type = EnvShake
trigger1 = Animelem = 12 || AnimElem = 31
time = 25
ampl = -3
freq = 90
phase = 90

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -65, -39
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = -80, -50
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -106, -70
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -115, -84
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -130, -128
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 135, -125
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 155, -117
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 217, -85
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 229, -66
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = 237, -49
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = 243, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
pos = 243, 5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
pos = 235, 33
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
pos = 213, -16
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
pos = 210, -7
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 16
pos = 206, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 17
pos = 137, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 18
pos = 123, -19
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 130, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 20
pos = 119, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 21
pos = 125, -29
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 22
pos =171, -54
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 23
pos = 192, -90
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 24
pos = 196, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 25
pos = 31, -127
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 27
pos = -23, -149
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -93, -153
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 29
pos = -192, -91
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 30
pos = -198, -56
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 31
pos = -199, -12
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 32
pos = -177, 25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 33
pos = -168, 44
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 34
pos = -186, -6
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 35
pos = -165, 13
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 36
pos = -182, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 37
pos = -206, -25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 38
pos = -217, -43
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = ifelse(Var(0)>9,1056,1157)


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = ifelse(Var(0)>9,1146,1147)


;Waste the Creep
[Statedef 1146]
type    = S
movetype= A
physics = N
anim = 1136
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 12 || AnimElem = 31
value = 5,6

[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 12 || AnimElem = 31
value = -20
kill = 0


[State 192, 0]
type = GameMakeAnim
trigger1 = Animelem = 12 || AnimElem = 31
pos = floor(P2Dist X),0
value = 62

[State 1486, 3]
type = EnvShake
trigger1 = Animelem = 12 || AnimElem = 31
time = 25
ampl = -3
freq = 90
phase = 90

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -65, -39
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = -80, -50
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -106, -70
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -115, -84
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -130, -128
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 135, -125
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 155, -117
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 217, -85
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 229, -66
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = 237, -49
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = 243, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
pos = 243, 5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
pos = 235, 33
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
pos = 213, -16
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
pos = 210, -7
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 16
pos = 206, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 17
pos = 137, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 18
pos = 123, -19
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 130, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 20
pos = 119, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 21
pos = 125, -29
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 22
pos =171, -54
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 23
pos = 192, -90
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 24
pos = 196, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 25
pos = 31, -127
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 27
pos = -23, -149
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -93, -153
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 29
pos = -192, -91
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 30
pos = -198, -56
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 31
pos = -199, -12
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 32
pos = -177, 25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 33
pos = -168, 44
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 34
pos = -186, -6
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 35
pos = -165, 13
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 36
pos = -182, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 37
pos = -206, -25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 38
pos = -217, -43
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1157


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1147

;Slam
[Statedef 1147]
type    = S
movetype= A
physics = N
anim = 1137
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = 2,1



[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1121
ID = 1121
pos = 0,-55
postype = p2
bindtime = 18
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
velocity = 1,0
facing = -1


[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 3
value = -85


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -183, -70
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 18, -78
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 89, -35
time = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist <= -50
value = 1160




[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist > -50
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Grabbed
[Statedef 1150]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1150

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

;Grabbed
[Statedef 1151]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1151

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

;Grabbed
[Statedef 1152]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1152

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


;Grabbed
[Statedef 1155]
type    = S
movetype= H
physics = N
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1155

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1



;Grabbed
[Statedef 1156]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1156

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 =  time > 2 && enemy, stateno !=1146
value = 5000
ctrl = 1


; Throw (hit by, into air)
[Statedef 1157]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0
sprpriority = 3

[State 6003, 1]
type = PosFreeze
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = 4
persistent = 0

[State 1027, Spark]
type = Explod
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3
persistent = 0



[State 0, 1]
type = PlaySnd
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = F7,0
volume = 255
persistent = 0



[State 0, 1]
type = Turn
trigger1 = !time
;ignorehitpause = 0
;persistent = 1



[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 13
x = -22
y = -6



[State 1485, 1]
type = ChangeAnim2
trigger1 = !Time
value = 1157

[State 1485, 1]
type = ChangeAnim
trigger1 = time = 12
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 13
y = .49



[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;----------------------------------------------------------------------------------------

; If Off-screen
[Statedef 1160]
type = S
movetype = I
physics = N
anim = 0
ctrl = 0
velset = 0,0

[State 9995,2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 9995, 2]
type = PosAdd
trigger1 = BackEdgeDist < -100
x = -100 - BackEdgeDist

[State 742, Dash Onscreen!]
type = ChangeAnim
trigger1 = Time = 50
value = 100

[state 100, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 100, 4]
type = Velset
trigger1 = Time = 50
x = 8

[State 100, 5]
type = ChangeState
trigger1 = BackEdgeDist > 60
value = 101

;Tendril Grab L
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 85
anim = 1200
sprpriority = 2
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 6,6
volume = 50

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 0,6
volume = 0

[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = animelem = 4
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1203
p2stateno = 1213      ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
hitsound = S8000,8
guardsound = s6,0

[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = Time = 12
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1201
p2stateno = 1202       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
hitsound = S8000,8
guardsound = s6,0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------

;Head Butt
[Statedef 1201]
type    = S
movetype= A
physics = N
anim = 1204
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1203
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
accel = 0,0
random = 0,0
removetime = 23
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 290, 0
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 260,00
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  210,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  170,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 5
pos =  100,00
time = 26

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 9
value = 95
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 5, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 8222
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; head butt 2 variation
[Statedef 1203]
type    = S
movetype= A
physics = N
anim = 1207
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 5
pos =  105,00
time = 12

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 5
value = 95
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8222
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------

;P2 damage
[Statedef 1202]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera=0,1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1210

[State 821, 1] ;Gravity
type = Velset
Trigger1 = time > 57
y = -1
x = -4

[State 820, 2]
type = SelfState
Trigger1 = time = 60
;trigger1 = !gethitvar(isbound)
value = 5050

;P2 damage variation 2
[Statedef 1213]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1212

[State 820, 2]
type = SelfState
Trigger1 = time = 15
;trigger1 = !gethitvar(isbound)
value = 5050

;Tendril Grab M
[Statedef 1210]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 85
anim = 1200
sprpriority = 2
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 6,6
volume = 50

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 0,6
volume = 0

[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = animelem = 4
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1204
p2stateno = 1214      ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
hitsound = S8000,8
guardsound = s6,0

[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = Time = 12
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1211
p2stateno = 1212       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
hitsound = S8000,8
guardsound = s6,0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------

;Big Punch
[Statedef 1211]
type    = S
movetype= A
physics = N
anim = 1205
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1203
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
accel = 0,0
random = 0,0
removetime = 23
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 290, 0
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 260,00
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  210,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  170,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 5
pos =  100,00
time = 16

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 7
value = 110
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 5, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 8222
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Big Punch 2
[Statedef 1204]
type    = S
movetype= A
physics = N
anim = 1208
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 1
pos =  105,00
time = 6

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 3
value = 110
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8222
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------

;P2 damage
[Statedef 1212]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera=0,1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1211

[State 821, 1] ;Gravity
type = Velset
Trigger1 = time > 41
y = -1
x = -8

[State 820, 2]
type = SelfState
Trigger1 = time = 44
;trigger1 = !gethitvar(isbound)
value = 5050

;P2 damage  variation
[Statedef 1214]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1212

[State 820, 2]
type = SelfState
Trigger1 = time = 7
;trigger1 = !gethitvar(isbound)
value = 5050

;Tendril Grab H
[Statedef 1220]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 85
anim = 1200
sprpriority = 2
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 6,6
volume = 50

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 0,6
volume = 0

[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
trigger1 = enemy,stateno !=5050
Trigger1 = animelem = 4
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1205
p2stateno = 1215       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
hitsound = S8000,8
guardsound = s6,0

[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
trigger1 = enemy,stateno !=5050
Trigger1 = Time = 12
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1221
p2stateno = 1222       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
hitsound = S8000,8
guardsound = s6,0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------

;Big Uppercut
[Statedef 1221]
type    = S
movetype= A
physics = N
anim = 1206
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1203
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
accel = 0,0
random = 0,0
removetime = 23
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 290, 0
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 260,00
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  210,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  170,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 5
pos =  100,00
time = 16

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = - 160
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 9
value = 110
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 5, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 8222
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Big Uppercut 2
[Statedef 1205]
type    = S
movetype= A
physics = N
anim = 1209
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 1
pos =  105,00
time = 12

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = - 160
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 5
value = 110
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8222
pos = 0,-90
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------

;P2 damage
[Statedef 1222]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera=0,1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1211

[State 821, 1] ;Gravity
type = Velset
Trigger1 = time > 49
y = -10
x = -2

[State 820, 2]
type = SelfState
Trigger1 = time = 52
;trigger1 = !gethitvar(isbound)
value = 5050

;P2 damage
[Statedef 1215]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1212

[State 820, 2]
type = SelfState
Trigger1 = time = 12
;trigger1 = !gethitvar(isbound)
value = 5050

;Ground Pound L
[Statedef 1300]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 50
anim = 1300
sprpriority = 1

[State 1030, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = C, SA
hitflag = MAF
guardflag = MA
Animtype = back
damage = 122, 4
pausetime = 1,2
sparkxy = -5, -10
sparkno = s8022
guard.sparkno = s8001
hitsound = s5,5
guardsound = 6,0
ground.type = low
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,  ifelse(random<499,3,70)
channel = 0

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1307
pos = 130,10
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 0

[State 1040, 8]
type = EnvShake
trigger1 = AnimElem = 4
freq = 120
time = 20

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 4
pos = 40,10
postype = p1
stateno = 1301
helpertype = normal
name = "venom quake"
keyctrl = 0
ownpal = 1



[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 1301]
type = S
physics = N
movetype = A
ctrl = 0
velset = 1.75, 0
poweradd = 50
anim = 1305
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

[State 1030, 5]
type = PlaySnd
trigger1 = time = 0
value = 4, 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,0
anim = 1306
pos = 50,-10
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 2
ontop = 0
random = 0, 10

[State 1030, 4]
type = HitDef
trigger1 = timemod = 10, 3
attr = C, SP
hitflag = MAF
guardflag = MA
Animtype = Up
damage = 85, 6
pausetime = 1,2
sparkxy = -5, -10
sparkno = s8022
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = trip
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8
ground.cornerpush.veloff = -1
yaccel = .55
sprpriority = 3

[State 0, ]
type = DestroySelf
trigger1 = Animtime = 0
ignorehitpause = 1
;--------------------------------------------------------------------

;Ground Pound M
[Statedef 1302]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 50
anim = 1301


[State 1030, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = C, SA
hitflag = MAF
guardflag = MA
Animtype = back
damage = 142, 8
pausetime = 1,2
sparkxy = -5, -10
sparkno = s8022
guard.sparkno = s8001
hitsound = s5,5
guardsound = 6,0
ground.type = low
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,  ifelse(random<499,3,70)
channel = 0

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1307
pos = 135,10
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 0
scale = 1.2,1.2
sprpriority = 2
ontop = 1

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 0

[State 1040, 8]
type = EnvShake
trigger1 = AnimElem = 4
freq = 140
time = 20

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 4
pos = 40,10
postype = p1
stateno = 1303
helpertype = normal
name = "venom quake"
keyctrl = 0
ownpal = 1



[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 1303]
type = S
physics = N
movetype = A
ctrl = 0
velset = 3.5, 0
poweradd = 50
anim = 1305
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

[State 1030, 5]
type = PlaySnd
trigger1 = time = 0
value = 4, 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,0
anim = 1306
pos = 50,-10
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 2
ontop = 0
random = 0, 10

[State 1030, 4]
type = HitDef
trigger1 = timemod = 10, 3
attr = C, SP
hitflag = MAF
guardflag = MA
Animtype = Up
damage = 85, 6
pausetime = 1,2
sparkxy = -5, -10
sparkno = s8022
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = trip
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8
ground.cornerpush.veloff = -1
yaccel = .55
sprpriority = 3

[State 0, ]
type = DestroySelf
trigger1 = Animtime = 0
ignorehitpause = 1
;-------------------------------------------------------------

;Ground Pound H
[Statedef 1304]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 50
anim = 1302


[State 1030, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = C, SA
hitflag = MAF
guardflag = MA
Animtype = back
damage = 162, 4
pausetime = 1,2
sparkxy = -5, -10
sparkno = s8022
guard.sparkno = s8001
hitsound = s5,5
guardsound = 6,0
ground.type = low
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,  ifelse(random<499,3,70)
channel = 0

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1307
pos = 140,10
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 0
scale = 1.4,1.4
sprpriority = 2
ontop = 1

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 0

[State 1040, 8]
type = EnvShake
trigger1 = AnimElem = 4
freq = 160
time = 20

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 4
pos = 40,10
postype = p1
stateno = 1305
helpertype = normal
name = "venom quake"
keyctrl = 0
ownpal = 1



[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 1305]
type = S
physics = N
movetype = A
ctrl = 0
velset = 5.5, 0
poweradd = 50
anim = 1305
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

[State 1030, 5]
type = PlaySnd
trigger1 = time = 0
value = 4, 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,0
anim = 1306
pos = 50,-10
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 2
ontop = 0
random = 0, 10

[State 1030, 4]
type = HitDef
trigger1 = timemod = 10, 3
attr = C, SP
hitflag = MAF
guardflag = MA
Animtype = Up
damage = 85, 6
pausetime = 1,2
sparkxy = -5, -10
sparkno = s8022
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = trip
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8
ground.cornerpush.veloff = -1
yaccel = .55
sprpriority = 3

[State 0, ]
type = DestroySelf
trigger1 = Animtime = 0
ignorehitpause = 1

;Camo
[Statedef 1400]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 50
anim = 1400
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,6



[State 0, Camo on/off]
type = VarSet
trigger1 = time = 47
v = 24    ;fv = 10
value = 1
ignorehitpause = 1
persistent = 1

[State 0, Camo on/off]
type = VarSet
trigger1 = time = 47
v = 25    ;fv = 10
value = 1000
ignorehitpause = 1
persistent = 1

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------
