;惷揹
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3000
ctrl = 0
poweradd= -1000
sprpriority = 0



[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
anim = 17000
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
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

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 3, 1

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 27
trigger2 = animelem = 28
trigger3 = animelem = 29
trigger4 = animelem = 30
value = 13, 2






[State 1301,Trail]
type = Explod
trigger1 = animelem = 27
anim = 3001
postype = p1
pos = 0,0
sprpriority = 3
removeongethit = 1
ownpal = 1



[State 1301,Trail]
type = Explod
trigger1 = animelem = 32
anim = 3001
postype = p1
pos = 48,0
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1301,Trail]
type = Explod
trigger1 = animelem = 32
anim = 3002
postype = p1
pos = 40,32
sprpriority = 3
removeongethit = 1
ownpal = 1




[State 1301,Trail]
type = Explod
trigger1 = animelem = 37
anim = 3001
postype = p1
pos = 0,0
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1301,Trail]
type = Explod
trigger1 = animelem = 37
anim = 3001
postype = p1
pos = 72,-16
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1301,Trail]
type = Explod
trigger1 = animelem = 37
anim = 3002
postype = p1
pos = 88,32
sprpriority = 3
removeongethit = 1
ownpal = 1





[State 1301,Trail]
type = Explod
trigger1 = animelem = 42
anim = 3001
postype = p1
pos = 120,-16
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1301,Trail]
type = Explod
trigger1 = animelem = 42
anim = 3002
postype = p1
pos = 24,-32
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1301,Trail]
type = Explod
trigger1 = animelem = 42
anim = 3002
postype = p1
pos = 40,32
sprpriority = 3
removeongethit = 1
ownpal = 1



[State 1301,Trail]
type = Explod
trigger1 = animelem = 47
anim = 3001
postype = p1
pos = 72,-16
sprpriority = 3
removeongethit = 1
ownpal = 1


[State 1301,Trail]
type = Explod
trigger1 = animelem = 47
anim = 3002
postype = p1
pos = 72,-32
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1301,Trail]
type = Explod
trigger1 = animelem = 52
anim = 3002
postype = p1
pos = 24,-32
sprpriority = 3
removeongethit = 1
ownpal = 1




[State 205, 1]
type = HitDef
trigger1 = animelem = 27;
;trigger4 = animelem = 33;
trigger2 = animelem = 39;
attr = S, HA
damage    = 25, 4
getpower = 11,5
givepower = 0,3
animtype = hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2, 2
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10, -90
hitsound = s20-var(35), 2
guardsound = S66,0
ground.type = low
ground.slidetime = 6
ground.hittime  = 26
ground.velocity = -2
airguard.velocity = -6
air.type = High
air.velocity = -1.4,-1
air.hittime = 26
;fall = 1
;p2stateno = 3050
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7


[State 205, 1]
type = HitDef
trigger1 = animelem = 31
trigger2 = animelem = 35
attr = S, HA
damage    = 25, 4
getpower = 11,5
givepower = 0,3
animtype = hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2, 2
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10, -90
;hitsound = s20, 1
guardsound = S66,0
ground.type = high
ground.slidetime = 6
ground.hittime  = 26
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-1
air.hittime = 26
;fall = 1
;p2stateno = 3050
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7


[State 205, 1]
type = HitDef
trigger1 = animelem = 29
;trigger2 = animelem = 33
trigger2 = animelem = 37
attr = S, HA
damage    = 25, 4
getpower = 11,5
givepower = 0,3
animtype = hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2, 2
sparkno = -1;s3003
guard.sparkno = s30040
sparkxy = -10, -90
;hitsound = s20, 1
guardsound = S66,0
ground.type = low
ground.slidetime = 6
ground.hittime  = 26
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-1
air.hittime = 26
;fall = 1
;p2stateno = 3050
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7


[State 205, 1]
type = HitDef
trigger1 = animelem = 33
attr = S, HA
damage    = 46, 4
getpower = 11,5
givepower = 0,3
animtype = hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2, 2
sparkno = -1;s3003
guard.sparkno = s30040
sparkxy = -10, -90
hitsound = s20, 2
guardsound = S66,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 26
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-1
air.hittime = 26
;fall = 1
;p2stateno = 3050
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7



[State 205, 1]
type = HitDef
trigger1 = animelem = 41
attr = S, HA
damage    = 46, 4
getpower = 11,5
givepower = 0,3
animtype = back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2, 2
sparkno = -1;s3003
guard.sparkno = s30040
sparkxy = -10, -90
;hitsound = s20, 1
guardsound = S66,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 26
ground.velocity = -2,-4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 26
fall = 1
fall.recover = 0
;p2stateno = 3050
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7


[State 1201,Trail]
type = Explod
trigger1 = movehit
trigger1 = NumExplod(3004) = 0
anim = 3004
id = 3004
postype = p2
pos = 0,-50
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1000, 1]
type = PlaySnd
trigger1 = movehit
trigger1 = animelem <= 30
;trigger1 = NumExplod(3004) = 1
value = 20, 10





[State 3000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1





;------------------
[Statedef 3050]
type    = S
movetype= H
physics = N

[State 3500 ]
type = BGPalfx
trigger1 =  time = 0
ignorehitpause = 1
add = 255,255,255
sinadd = 64, 64, 64
time = 1
invertall = -50
persistent = 0

[State 1028, 1]
type = pause
trigger1 = time = 0
time = 1

[State 830, 1]
type =  Changeanim
Trigger1 = Time = 0
value = 5030

[State 830, 1]
type =  SelfState
Trigger1 = Time = 0
value = 5030


[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100



;-----------------------------------
;嬧壨寖撍棊偲偟

[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3500
ctrl = 0
poweradd= -2000
sprpriority = 0



[State 863, 1]
type = SuperPause
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
anim = 17100
pos = 0,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
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



[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 3, 2





[State 1201, 2]
type = HitDef
triggerall = !var(20)
trigger1 = time = 0
;trigger1 = AnimElem = 12
;trigger2 = AnimElem = 13
;trigger3 = AnimElem = 14
;trigger4 = AnimElem = 15
attr = S, HA
animtype  = Hard
damage    = 50,5
hitflag = MA
guardflag = M
pausetime = 0,0
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-110
hitsound = s20-var(35),2
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
;guard.velocity = -2
ground.velocity = -4
air.velocity = -24,-4
p2stateno = 3550
fall = 1
fall.recover = 0
kill = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
trigger1 = P2stateno = 3550
pos = 30, 0

[State 810, 1]
type = Width
trigger1 = AnimElem = 12
trigger1 = P2stateno = 3550
value = 30,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
trigger1 = P2stateno = 3550
pos = 122, 0

[State 810, 1]
type = Width
trigger1 = AnimElem = 13
trigger1 = P2stateno = 3550
value = 122,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
trigger1 = P2stateno = 3550
pos = 160, 0

[State 810, 1]
type = Width
trigger1 = AnimElem = 14
trigger1 = P2stateno = 3550
value = 160,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
trigger1 = P2stateno = 3550
pos = 210, 0

[State 810, 1]
type = Width
trigger1 = AnimElem = 15
trigger1 = P2stateno = 3550
value = 210,0

[State 3500, 5]
type = ChangeState
trigger1 = AnimElem = 15,4
trigger1 = P2stateno = 3550
value = 3501
ctrl = 0

[State 3500 ]
type = BGPalfx
triggerall = movehit
trigger1 = AnimElem = 12,1
trigger2 = AnimElem = 13,1
trigger3 = AnimElem = 14,1
trigger4 = AnimElem = 15,1
ignorehitpause = 1
add = 255,255,255
sinadd = 64, 64, 64
time = 4
invertall = -50
persistent = 0

[State 3500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




[Statedef 3501]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3501
ctrl = 0
sprpriority = 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1

[State 3000, Super D]
type = AfterImage
;trigger1 = Time = 0
trigger1 = TimeMod = 14, 2
trigger2 = TimeMod = 14, 4
trigger3 = TimeMod = 14, 6
trigger4 = TimeMod = 14, 8
trigger5 = TimeMod = 14, 10
trigger6 = TimeMod = 14, 12
trigger7 = TimeMod = 14, 14
length = 3
;palcolor = 255;,255,0 
PalAdd      = 255,128,0;-255
;PalMul      = .50,.85,.50
TimeGap  = 2
FrameGap = 1
Trans = add1
time = 6

[State 3501, Throw 11]
type = TargetState
trigger1 = time = 0
value = 3551

[State 1300, 惵]
type = palfx
trigger1 = TimeMod = 14, 2
;trigger1 = Time = 2
time = 1
color = 0
mul = 0,0,255
add = -255,-255,0

[State 1300, 巼]
type = palfx
trigger1 = TimeMod = 14, 4
;trigger1 = Time = 4
color = 0
time = 1
add = 0,-255,0

[State 1300, 愒]
type = palfx
trigger1 = TimeMod = 14, 6
;trigger1 = Time = 6
color = 0
time = 1
add = 0,-255,-255

[State 1300, 烌]
type = palfx
trigger1 = TimeMod = 14, 8
;trigger1 = Time = 8
color = 0
time = 1
add = 128,-32,-255

[State 1300, 墿]
type = palfx
trigger1 = TimeMod = 14, 10
;trigger1 = Time = 10
color = 0
time = 1
add = 64,64,-255

[State 1300, 椢]
type = palfx
trigger1 = TimeMod = 14, 12
;trigger1 = Time = 12
color = 0
time = 1
add = -255,0,-255

[State 1300, 悈]
type = palfx
trigger1 = TimeMod = 14, 14
trigger1 = Time = 14
color = 0
time = 1
add = -255,64,64



[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 180, -90

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 120, -85

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 25
trigger3 = AnimElem = 47
pos = 95, -105

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
trigger2 = AnimElem = 26
trigger3 = AnimElem = 48
pos = 65, -125

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 27
trigger3 = AnimElem = 49
pos = 35, -155

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
trigger2 = AnimElem = 28
trigger3 = AnimElem = 50
pos = 10, -185

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
trigger2 = AnimElem = 29
trigger3 = AnimElem = 51
pos = -20, -220

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
trigger2 = AnimElem = 30
trigger3 = AnimElem = 52
pos = -50, -200

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
trigger2 = AnimElem = 31
trigger3 = AnimElem = 53
pos = -80, -190

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
trigger2 = AnimElem = 32
trigger3 = AnimElem = 54
pos = -90, -160

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
trigger2 = AnimElem = 33
trigger3 = AnimElem = 55
pos = -20, -160

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
trigger2 = AnimElem = 34
pos = 180, -160

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
trigger2 = AnimElem = 35
pos = 200, -110

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
trigger2 = AnimElem = 36
pos = 195, -30

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
trigger2 = AnimElem = 37
pos = 160, -10

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 16
trigger2 = AnimElem = 38
pos = 125, 0

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 17
trigger2 = AnimElem = 39
pos = 105, 0

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 18
trigger2 = AnimElem = 40
pos = 85, 0

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
trigger2 = AnimElem = 41
pos = 45, 0

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 20
trigger2 = AnimElem = 42
pos = 10, 0

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 21
trigger2 = AnimElem = 43
pos = -15, 0

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 22
trigger2 = AnimElem = 44
pos = 40, -20

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 23
trigger2 = AnimElem = 45
pos = 120, -30

[State 3501, Bind 1]
type = TargetBind
trigger1 = AnimElem = 24
trigger2 = AnimElem = 46
pos = 140, -85


[State 810, Hurt 11]
type = targetLifeAdd
trigger1 = AnimElem = 55
value = -400



[State 191, 2]
type = varadd
trigger1 = AnimElem = 55
var(38) = ifelse(var(2)!=0,880,590)

[State 3501, Throw 11]
type = TargetState
trigger1 = AnimElem = 55
value = 3552;821

[State 3500 ]
type = BGPalfx
trigger1 = AnimElem = 55
ignorehitpause = 1
add = 255,255,255
sinadd = 64, 64, 64
time = 4
invertall = -50
persistent = 0

[State 1301,Trail]
type = Explod
trigger1 = animelem = 15
trigger2 = animelem = 37
anim = 3540
postype = p2
pos = 0,0
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1200, 1]
type = PlaySnd
trigger1 = animelem = 15
trigger2 = animelem = 37
trigger3 = AnimElem = 55
value = 12, 9

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 27
trigger3 = AnimElem = 49
trigger4 = AnimElem = 65
value = 12, 8



[State 3501, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1









;搳偘傜傟偰傞憡庤
[Statedef 3550]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3550, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3550


;搳偘傜傟偰傞憡庤俀
[Statedef 3551]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3551, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3551


[Statedef 3552]
type    = A
movetype= H
physics = N

[State 830, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3552



[State 3552, Velocity]
type = VelSet
trigger1 = Time = 0
x = -25

[State 3552, Velocity]
type = Veladd
trigger1 = 1
y = 0.6

;[State 3552, Hit wall]
;type = ChangeState
;trigger1 = BackEdgeBodyDist <= 10
;trigger2 = FrontEdgeBodyDist <= 10
;value = 7051

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
