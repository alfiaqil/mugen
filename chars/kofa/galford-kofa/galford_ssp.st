;===========================================================================
;===========================================================================
;state3000-3399
;---------------------------------------------------------------------------
;===========================================================================
;Lighting Strike Three
[Statedef 3100]
type = S
movetype = A
physics = S
juggle = 0
poweradd= -1000 
velset = 0,0,0
anim = 1800
ctrl = 0



[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 2
anim = -1
time = 30
movetime = 0
darken = 0

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 2
anim = 17000
pos = 7,-48
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 2
anim = 17010
pos = 7,-48
postype = p1
sprpriority = 9
persistent = 0
supermove = 1
bindtime = 1
scale = .5,.5

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 17000,0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1


[State 3100, 2]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,0

[State 3100, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 1,2 

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 34
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 3100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 3100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3100, 4]
type = MakeDust
trigger1 = Time = 1
pos = 0, 0
spacing = 1

[State 3100, 5]
type = MakeDust
trigger1 = AnimElem = 3, >= 0
pos = 0, 0


[State 3100, 6]
type = HitDef
trigger1 = AnimElem =1
trigger2 = AnimElem =2
trigger3 = AnimElem =3
trigger4 = AnimElem =4
trigger5 = AnimElem =5
trigger6 = AnimElem =6
trigger7 = AnimElem =7
trigger8 = AnimElem =8
trigger9 = AnimElem =9
trigger10 = AnimElem =10
trigger11 = AnimElem =11
trigger12 = AnimElem =12
attr = S, ST
pausetime = 15,15
guard.pausetime = 20,5
damage = 20,15
hitflag = HL
guardflag = MA                    
animtype = Back
priority = 2
numhits = 1                  
sparkno = s30002
guard.sparkno = s30040
sparkxy = -15,-50
hitsound   = s6,1
guardsound = s6,0
p2facing = 1
p1stateno = 3101
p2stateno = 3121
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0



[State 3100, 7]
type = ChangeState
trigger1 = Time > 34
trigger2 = MoveGuarded = 1
value = 0
ctrl = 1
;--------------------------------------------------------------------------
[Statedef 3101]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1801
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3800, Shadows]
type = AfterImageTime
trigger1 = Time = 1
time = 0

[State 3101, env]
type = bgpalfx 
trigger1 = time = 1 
time = 240
add = -80,-80,-80

[State 3101, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,12  

[State 3101, 1]
type = VelSet
trigger1 = Time = 0
y = -7

[State 3101, 2]
type = VelAdd
trigger1 = Time < 15
y = .45

[State 3101, 3]
type = VelSet
trigger1 = Time = 15
y = 0

[State 3101, 4]
type = VelAdd
trigger1 = Time >= 15
y = .45

[State 3101, 5]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = vel Y > 0
value = 3102
ctrl = 0 

;---------------------------------------------------------------------------
[Statedef 3102]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3101

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3102, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3102, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,1

[State 3102,2]
type = PosSet
trigger1 = time = 0
y = 0

[State 3102, 3]
type = turn
trigger1 = time = 1

[State 3102, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3103
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3103]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3103, 4]
type = ChangeState
trigger1 = Time = 1
value = 3104
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3104]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3104, 1]
type = VelSet
trigger1 = Time = 0
x = 30
y = 0

[State 3104, 2]
type = ChangeState
trigger1 = P2StateNo = 3122
trigger1 = FrontEdgeBodyDist <= 10
value = 3105

[State 3104, 3]
type = ChangeState
trigger1 = P2StateNo = 3122
trigger1 = p2BodyDist X <= -50
value = 3105

[State 3104, 4]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3105]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = -2.0,0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3105, 1]
type = ChangeState
trigger1 = p2Dist y <= 20
trigger1 = p2Dist x <= 6
value = 3106

;---------------------------------------------------------------------------
[Statedef 3106]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3106, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 3106, turn]
type = turn
trigger1 = time = 0

[State 3106, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3107
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3107]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 5
ctrl = 0
velset = 0,0,0
anim = 3106

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3107, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
pausetime = 20,20
damage = 20
hitflag = MAFD
guardflag = L
sparkno = -1                     
sparkxy = -45,-40
hitsound   = s6,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -6
air.velocity = -3.5,-9.8
fall.recover = 0
down.velocity = -4,0
down.hittime = 20
down.recover = 0


[State 3000,3]
type = EnvShake
trigger1 = AnimElem = 4
time = 20

[State hit effect] 
type = explod
trigger1 = AnimElem = 4
anim = 30002
persistent = 0
pos = 50,-105
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = -1

[State 3107, 1]
type = PlaySnd
trigger1 = time = 8
value = 4, 13

[State 3107, 3]
type = varset
trigger1 = movehit = 1
persistent = 0
v = 20 
value = 1

[State 3107, 4]
type = ChangeState
trigger1 = var(20) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3107, 4]
type = ChangeState
trigger1 = var(20) = 1
trigger1 = AnimTime = 0
value = 3108
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3108]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3101

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3108, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,1

[State 3108, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3109
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3109]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3109, 1]
type = ChangeState
trigger1 = Time = 1
value = 3110
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3110]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3110, 1]
type = PosSet
trigger1 = Time = 0
y = -175   

[State 3110, 2]
type = VelSet
trigger1 = Time = 0
x = 20
y = 0

[State 3110, 3]
type = ChangeState
trigger1 = p2Dist X < 0
value = 3111

[State 3110, 4]
type = ChangeState
trigger1 = time = 100
value = 50
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3111]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3111, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 3111, 1]
type = varset
trigger1 = Time = 0
v = 21
value = 1

[State 3111, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3112
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3112]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3112

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3112, 1]
type = HitDef
trigger1 = AnimElem =1
trigger2 = AnimElem =2
trigger3 = AnimElem =3
trigger4 = AnimElem =4
trigger5 = AnimElem =5
trigger6 = AnimElem =6
trigger7 = AnimElem =7
trigger8 = AnimElem =8
trigger9 = AnimElem =9
trigger10 = AnimElem =10
trigger11 = AnimElem =11
trigger12 = AnimElem =12
attr = A, NA
getpower  = 0
givepower = 30
guardflag = HA
priority = 3
numhits = 0
pausetime = 7,8
sparkno = s30002
guard.sparkno = s30040                  ;Spark image group and no (Def: set above)
sparkxy = -50,-50
p1stateno = 3113
p2stateno = 3125
hitsound   = s5,0
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3


[State 3112, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3113]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3112

[State 3113, 1]
type = ChangeState
trigger1 = Time = 16
value = 3114
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3114]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 3114
ctrl = 0

[State 3114, 2]
type = VelSet
trigger1 = Time = 1
y = 4

[State 3114, 3] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .8

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 200
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 3114, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3115
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3115]
type = A
movetype = H
physics = N
anim = 1704
velset = 0,0,0

[State 3115, hit]
type = hitadd 
trigger1 = Time = 0 
value = 1

[State 3115, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 6,2 

[State 3115, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 4,14

[State 3115, snd]
type = PlaySnd 
trigger1 = Time = 2 
value = 8,2

[State 3115,3]
type = EnvShake
trigger1 = time = 0
time = 40

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 80
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1

[State 3115,4]
type = Explod
trigger1 = Time = 0
anim = 1080
pos = 2,5
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 57
bindtime = 1

[State 3115,4]
type = Explod
trigger1 = Time = 0
anim = 1070
pos = 2,15
postype = P1
sprpriority = 99
supermove = 1
ownpal = 1
removetime = 33
bindtime = 1


[State 3115,7] 
type = explod
trigger1 = Time = 1
anim = 1750
persistent = 0
pos = 20, 60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3115, 7] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = -30, 60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3115, 7] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = 70,60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3115, 7] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = -80,60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3115, 7] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = 120,60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3115,4]
type = PosSet
trigger1 = time = 0
y = 0

[State 3115, push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 3115, 5]
type = TargetBind
trigger1 = time = 0
pos = 5,15

[State 3115, spr]
type = SprPriority
trigger1 = time = 0
value = 1

[State 3115,6]
type = TargetLifeAdd
trigger1 = time = 0
value = -300

[State 3115,7]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3115,8]
type = CtrlSet
trigger1 = time >= 36
value = 1

[State 3115,9]
type = ChangeState
trigger1 = time = 36
value = 3116
ctrl = 0
;------------------------------------------------------------------------------
;Jump back after landing
[Statedef 3116]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43

[State hit effect] 
type = explod
trigger1 = Time = 0
anim = 1012
persistent = 0
pos = -15,-27
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 3116, 1]
type = VelAdd
trigger1 = time = 0
x = -3
y = -9

[State 3116,2]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 3116,3]
type = ChangeAnim
trigger1 = AnimElem = 3
value = 46

[State 3116,4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

[State 3116, 5]
type = ChangeState
trigger1 = time = 0
value = 51
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 3121]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3121, color]
type = PalFX
trigger1 = time = 2
time = 10
add = -100,-35,40     

[State 3121, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5010

[State 3121,2]
type = PosAdd
trigger1 = time = [0,10]
x = -0.2
y = -0.5

[State 3121,2]
type = PosAdd
trigger1 = time = [1,10]
x = -0.2
y = -0.5

[State 3121,2]
type = PosAdd
trigger1 = time = [3,10]
x = 0.2
y = -0.5

[State 3121,3]
type = PosAdd
trigger1 = time = [4,10]
x = .01
y = -0.5

[State 3121, 4]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 1
y = -6

[State 3121, 4]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 5
x = 5

[State 3121, 5]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 8   
x = 8

[State 3121, 6]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 10   
x = 10

[State 3121, 7]
type = ChangeState
trigger1 = time =10
value = 3122
ctrl = 1 

;---------------------------------------------------------------------------

[Statedef 3122]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 3122, color]
type = PalFX
trigger1 = time = 2
time = 80
add = -100,-35,40     

[State 3122, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5030

[State 3122, 2]
type = VelSet
trigger1 = Time = 1
x = 3.0
y = -5.9

[State 3122, 3]
type = VelAdd
trigger1 = Time > 1
x = .01
y = .18

[State 3122, 4]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 80
x = -.01

[State 3122, 5]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 80
y = .04

[State 3122, 6]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 40
y = .1

[State 3122, 7]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 15
x = -.02

[State 3122, 8]
type = VelAdd
trigger1 = Time > 0
trigger1 = Time < 20
trigger1 = FrontEdgeBodyDist <= 15
y = .06

[State 3122, 8]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 15
y = .125

[State 3122, 9]
type = VelAdd
trigger1 = Time > 20
trigger1 = p2dist x >= 30
trigger1 = p2dist y <= 10
x = .06
y =  -.2

[State 3122, 10]
type = posSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -30
y = -20

[State 3122, 11]
type = velAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -30
y = -.01

[State 3122, 12]
type = SelfState
trigger1 = Time = 100
value = 5030
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3124]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3125, 0]
type = Posset
trigger1 = var(21) = 1
trigger1 = p2stateno = [5035,5050]
y = -155

;---------------------------------------------------------------------------
[Statedef 3125]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3125, color]
type = PalFX
trigger1 = time = 2
time = 10
add = -100,-35,40     

[State 3125, tb]
type = velset
trigger1 = Time = 0
x = 0
y = 0

[State 3125, 0]
type = Posset
trigger1 = Time = 1
y = -155

[State 3125, 2]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 5
x = 30   ;5

[State 3125, 3]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 10
x = 35   ;10

[State 3125, 4]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 15
x = 40   ;15

[State 3125, 8]
type = Changeanim2
trigger1 = Time = 0
value = 5010

[State 3125, 9]
type = PosAdd
trigger1 = time  = 23
y = -80      
x = -30

[State 3125, 10]
type = ChangeState
trigger1 = time  = 24
value = 3126
ctrl = 1 

;---------------------------------------------------------------------------
[Statedef 3126]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 3126, 2]
type = Changeanim2 
trigger1 = Time = [0,40]
value = 5000

[State 3126, 3]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3126, 4]
type = AngleSet
trigger1 = Time = [0,40]
value = 180

[State 3126, 5]
type = VelSet
trigger1 = Time = 1
y = 4

[State 3126, 6] ;Acceleration
type = VelAdd
trigger1 = Time >= 1
y = .8

[State 3126, 7] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -70
value = 3127

;---------------------------------------------------------------------------
[Statedef 3127]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 3127, color]
type = PalFX
trigger1 = time = 0
time = 60
add = -100,-35,40 

[State 3127, 1]
type = velSet
trigger1 = Time = 0
y = 0

[State 3127, 2]
type = PosSet
trigger1 = Time = 0
y = -75

[State 3127, 3]
type = Changeanim2 
trigger1 = Time = [0,40]
value = 5012

[State 3127, 4]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3127, 5]
type = AngleSet
trigger1 = Time = [0,40]
value = 180


[State 3127, 6] ;Hit ground
trigger1 = Time = 36
type = SelfState
value = 5100




;============================================================================================================================
;============================================================================================================================
;Mega Double Strike heads

[Statedef 3200]
type = S
movetype = A
physics = S
juggle = 0
poweradd= -1000 
velset = 0,0,0
anim = 3101
ctrl = 0




[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 30
movetime = 0
darken = 0

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17000
pos = -3,-34
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 17010
pos = -3,-34
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

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1


[State 3200, snd]
type = PlaySnd 
trigger1 = Time = 1 
value = 9,1


[State 3200, 2]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,0

[State 3200, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3201]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3201, 1]
type = PosSet
trigger1 = Time = 0
y = -150

[State 3201, 2]
type = VelSet
trigger1 = Time = 0
x = 20
y = 0

[State 3201, 3]
type = ChangeState
trigger1 = p2BodyDist X <= 30
value = 3199

;---------------------------------------------------------------------------
[Statedef 3199]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3199, 1]
type = VarSet
trigger1 = Time = 0
v = 25
value = 1

[State 3199, 2]
type = ChangeState
trigger1 = Time = 10
value = 3202
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3202]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3202, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,2

[State 3202, 1] 
type = explod
trigger1 = time = 0
anim = 3102
persistent = 0
pos = 80, 0
postype = p1
facing = -1
ignorehitpause = 0
sprpriority = 6
bindtime = 40

[State 3202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3203
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3203]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 44

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3203, 1] 
type = explod
trigger1 = time = 0
anim = 3203
persistent = 0
pos = 80, 0
postype = p1
facing = -1
ignorehitpause = 0
sprpriority = 6
bindtime = 20

[State 3203, 1]
type = VelSet
trigger1 = Time = 1
y = 2

[State 3203, 3] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 3203, 2]
type = ChangeState
trigger1 = Time = 8
value = 3204
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3204]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 620

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3204, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,5

[State 3204, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20,2
guardflag = HAD
priority = 3
pausetime = 9,10
guard.pausetime = 7, 7
sparkno = s30002
guard.sparkno = s30040                 ;Spark image group and no (Def: set above)
sparkxy = -10,-21
p1stateno = 3205
p2stateno = 3250
hitsound   = s5,2
guardsound = s5,6
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -1.3,-3
envshake.time = 12
envshake.ampl = 6; or 7


[State 1902, 3]
type = ChangeState
trigger1 = moveguarded = 1
value = 1903
ctrl = 0

[State 3204, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3205]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3205, var]
type = Varadd
trigger1 = Time = 0
v = 25
value = -1

[State 3205, env]
type = bgpalfx 
trigger1 = time = 0 
time = 400
add = -80,-80,-80

[State 3205, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3205, 2]
type = posSet
trigger1 = Time = 0
y = 0

[State 3205, 3]
type = ChangeState
trigger1 = Time = 3
value = 3206
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 205                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3206, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 3206, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 20,2                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 
guard.sparkno = s30040           ;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
p1stateno = 3207
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
envshake.time = 12
envshake.ampl = 6; or 7


[State 3206, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5,3

[State 3206, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3207
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3207, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 20                  ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
hitflag = MA                     ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002 	   
guard.sparkno = s30040      ;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
p1stateno = 3208
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
envshake.time = 12
envshake.ampl = 6; or 7


[State 3101, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,3

[State 3207, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3208
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3208]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 215

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3208, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,4

[State 3208, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 20,2
guardflag = MA
;hitflag = MA                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = s30002 
guard.sparkno = s30040
sparkxy = -10,-65
p1stateno = 3209
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 12
envshake.ampl = 6; or 7

[State 3208, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3209
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3209]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 420

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3209, 1]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 20,2
animtype  = Hard
hitflag = MA
;guardflag = L
pausetime = 10,12
sparkno = s30002        
guard.sparkno = s30040          ;Spark image group and no (Def: set above)
sparkxy = -2,-10
p1stateno = 3210
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
envshake.time = 12
envshake.ampl = 6; or 7

[State 3209, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,5

[State 3209, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210
value = 0

;---------------------------------------------------------------------------
[Statedef 3210]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 620

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3210, 1]
type = VelSet
trigger1 = Time = 0
x = -.2
y = -4

[State 3210, 2]
type = VelAdd
trigger1 = Time = 0
y = .02

[State 3210, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20,2
guardflag = HAD
priority = 3
pausetime = 9,10
sparkno = s30002     
guard.sparkno = s30040             ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3211
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -1.3,-3
envshake.time = 12
envshake.ampl = 6; or 7

[State 3210, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,5

[State 3210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3211
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3211]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 610

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3211, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20,2
guardflag = HA
priority = 3
pausetime = 9,10
sparkno = s30002       
guard.sparkno = s30040         ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3212
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -1.3,-3
envshake.time = 12
envshake.ampl = 6; or 7


[State 3211, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,4

[State 3211, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3212
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3212]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 215

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3212, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 3212, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 3212, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3212, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 20,2
guardflag = MA
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = s30002 
guard.sparkno = s30040
sparkxy = -10,-65
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 12
envshake.ampl = 6; or 7

[State 3212, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,4

[State 3212, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3213
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3213]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 420

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3213, 1]
type = VelSet
trigger1 = Time = 0
x = -1

[State 3213, 2]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 20,2
animtype  = Hard
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = s30002      
guard.sparkno = s30040             ;Spark image group and no (Def: set above)
sparkxy = -2,-10
p1stateno = 3214
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
envshake.time = 12
envshake.ampl = 6; or 7

[State 3213, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 5,5

[State 3213, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3214
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3214]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 3214

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3214, 1]
type = VelSet
trigger1 = Time = 0
x = -.2
y = -4

[State 3214, 2]
type = VelAdd
trigger1 = Time = 0
y = .01

[State 3214, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 20,2
guardflag = HAD
priority = 3
pausetime = 9,10
sparkno = s30002    
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3215
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0
air.velocity = -1.3,-3
envshake.time = 12
envshake.ampl = 6; or 7

[State 3101, snd]
type = PlaySnd 
trigger1 = AnimElem = 5 
value = 5,5

;---------------------------------------------------------------------------
[Statedef 3215]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 1600

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3215, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 60;100

[State 3215,1]
type = PlaySnd 
trigger1 = TimeMod = 29,0 
value = 8,4

[State 3215, 2]
type = PosSet
trigger1 = time = 0
y = 0

[State 3215,3]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3215, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3216
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3216]
type = S 
movetype= A 
physics = S 
poweradd= 0 
ctrl = 0
velset = 0
anim = 1500 

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3216, color]
type = PalFX
trigger1 = time = 2
time = 80
add = 0,80,180

[State 3212, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 8,0

[State 3216, 1]
type = HitDef
trigger1 = Time = 0
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 20,2                  ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 5,10                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002     
guard.sparkno = s30040              ;Spark image group and no (Def: set above)
sparkxy = -10,-30                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s8,5                   ;Sound to play on hit
guardsound = s4,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
palfx.time = 86
palfx.add = -100,-35,40     
palfx.mul = 232,256,256
palfx.sinadd = 10,0,40,2
palfx.invertall = 0
palfx.color = 0
envshake.time = 12
envshake.ampl = 6; or 7

[State hit effect] 
type = explod
trigger1 = MoveHit = 1
anim = 1012
persistent = 0
pos = -6,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 84

[State 3216, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3220
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3220]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 3220
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1


[State 3220, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 6,5

[State 3220, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
animtype = Back
priority = 2
sparkno = -1
p2facing = 1
p1stateno = 3221
p2stateno = 3230
fall = 1
numhit = 0
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0

[State 3220, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
[Statedef 3221]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1701
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3221, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 9,3

[State 3221, 2]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 5
x = 5

[State 3221, 3]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 10
x = 10

[State 3221, 4]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 15
x = 5

[State 3221, 5]
type = PosAdd
trigger1 = Time = 4
trigger1 = p2dist X > 20
x = 10

[State 3221, 6]
type = PosAdd
trigger1 = Time = 5
trigger1 = p2dist X > 20
x = 10

[State 3221, 7]
type = PosAdd
trigger1 = Time = 6
trigger1 = p2dist X > 20
x = 10

[State 3221, 8]
type = ChangeState
trigger1 = Time = 10
value = 3222
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3222]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1702
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3222, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,11 

[State 3222, 2]
type = VelSet
trigger1 = Time = 1
y = -15.1

[State 3222, 5]
type = VelAdd
trigger1 = Time >= 36
y = .45

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 100
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1


[State 3222, 3]
type = PosSet
trigger1 = Time = 60
y = -400

[State 3222, 4]
type = ChangeState
trigger1 = Time = 61
value = 3223
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3223]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1703
ctrl = 0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3223, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 3223, 5] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 200
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1


[State 3223, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3224
ctrl = 0

;--------------------------------------------------------------------------
[Statedef 3224]
type = A
movetype = H
physics = N
anim = 1704
velset = 0,0,0

[State 4000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
mul = 900,900,900
add = -250,-250,-250
ignorehitpause = 1

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1

[State 3224, hit]
type = hitadd 
trigger1 = Time = 0 
value = 1

[State 3224, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 6,2 

[State 3224, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 8,2

[State 3224, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 4,14

[State 3224,3]
type = EnvShake
trigger1 = time = 0
time = 20

[State 3800, Shadows]
type = Afterimage
trigger1 = Time = 1
time = 60
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
framegap = 4
Trans = Add1


[State 3224, spsnd01]
type = PlaySnd 
trigger1 = Time = 5
value = 8,0 

[State 3224,4]
type = Explod
trigger1 = Time = 0
anim = 1080
pos = 2,5
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 57
bindtime = 1

[State 3224,4]
type = Explod
trigger1 = Time = 0
anim = 1070
pos = 2,15
postype = P1
sprpriority = 99
supermove = 1
ownpal = 1
removetime = 33
bindtime = 1

[State 3224,4]
type = Explod
trigger1 = Time = 0
anim = 1050
pos = -1,-35
postype = P2
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 40
bindtime = 39

[State 3224, 7] 
type = explod
trigger1 = Time = 1
anim = 1750
persistent = 0
pos = 20, 60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3224, 7] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = -30, 60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3224, 7] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = 70,60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3224, 7] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = -80,60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3224,7] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = 120,60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 3224,4]
type = PosSet
trigger1 = time = 0
y = 0

[State 3224, push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 3224, 5]
type = TargetBind
trigger1 = time = 0
pos = 5,15

[State 3224, spr]
type = SprPriority
trigger1 = time = 0
value = 1

[State 3224,6]
type = TargetLifeAdd
trigger1 = time = 0
value = -100

[State 3224,7]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3224,8]
type = CtrlSet
trigger1 = time >= 36
value = 1

[State 3224,9]
type = ChangeState
trigger1 = time = 24
value = 3225
ctrl = 0

;Jump back after landing
[Statedef 3225]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43

[State hit effect] 
type = explod
trigger1 = Time = 1
anim = 1012
persistent = 0
pos = -15,-27
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = -1
removetime = 56

[State 3225, 1]
type = VelAdd
trigger1 = time = 0
x = -3
y = -9

[State 3225, 4]
type = ChangeState
trigger1 = time = 0
value = 51

[State 3225,2]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 3225,2a]
type = ChangeAnim
trigger1 = AnimElem = 3
value = 46

[State 3225,3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
[Statedef 3230]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3230, 1]
type = Changeanim2
trigger1 = Time = 0
value = 5000

[State 3230, 2]
type = ChangeState
trigger1 = Time = 10
value = 3231
ctrl = 0 

;---------------------------------------------------------------------------

[Statedef 3231]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 3231, 1]
type = Changeanim2 
trigger1 = Time = 0
value = 5000

[State 3231, 2]
type = VelSet
trigger1 = Time = 1
y = -15.1

[State 3231, 5]
type = VelAdd
trigger1 = Time >= 36
y = .45

[State 3231, 3]
type = PosSet
trigger1 = Time = 60
y = -475

[State 3231, 4]
type = ChangeState
trigger1 = Time = 61
value = 3232
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3232]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 3232, 1]
type = Changeanim2 
trigger1 = Time = [0,40]
value = 5000

[State 3232, a]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3232, b]
type = AngleSet
trigger1 = Time = [0,40]
value = 180

[State 3232, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 3232, 4] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 3232, 3] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -70
value = 3233

;---------------------------------------------------------------------------
[Statedef 3233]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0

[State 3233, color]
type = PalFX
trigger1 = time = 0
time = 60
add = -100,-35,40     

[State 3233, 1]
type = PosSet
trigger1 = Time = 0
y = -75

[State 3233, 2]
type = Changeanim2 
trigger1 = Time = [0,40]
value = 5012

[State 3233, a]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3233, b]
type = AngleSet
trigger1 = Time = [0,40]
value = 180


[State 3233, 3] ;Hit ground
trigger1 = Time = 24
type = SelfState
value = 5100

;---------------------------------------------------------------------------
[Statedef 3250]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0

[State 3250, 1]
type = Changeanim2
trigger1 = Time = 0
value = 5000

[State 3250, bind]
type = targetbind
trigger1 = Time = 0
x = 15
y = 0

[State 3250, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3250, 3]
type = velSet
trigger1 = Time = 0
x = 0
y = 0

[State 3250, 4]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 70
x = 10

[State 3250, 5]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 60
x = 10

[State 3250, 6]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 50
x = 10

[State 3250, 6]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 40
x = 10

[State 3250, 8]
type = SelfState
trigger1 = AnimTime = 0
value = 5000
ctrl = 1

