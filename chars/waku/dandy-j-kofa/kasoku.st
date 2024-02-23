;ëŒè¡ñ≈ó±éqâ¡ë¨åù
[Statedef 7000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7000
ctrl = 0
poweradd= -3000
sprpriority = 2




[State 2000, 2]
type = SuperPause
trigger1 = AnimElem = 32
time = 40
movetime = 40
anim = -1

[State 1700, 3]
type = PlaySnd
trigger1 = time = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 32
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

[State 863, 4]
type = Explod
trigger1 = AnimElem = 32
anim = 17200
pos = 4,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 32
anim = 17210
pos = 4,-70
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

[State 3000,∫⁄…´µ◊…´]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1











[State 7000, 10]
type = VarSet
trigger1 = time = 0
v = 4
value = 0


[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 3, 3



[State 7000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 7001
ctrl = 0

;------------------------------------------

[Statedef 7001]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 7500
ctrl = 0
sprpriority = 2

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1

[State 1010,Trail]
type = removeExplod
trigger1 = time = 0
id = 7100

[State 1000, 5] ;Opponent near
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = 750
priority  = 6
hitflag = MAF
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-70
hitsound   = s20,9
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
fall = 1
fall.recover = 0
p2stateno = 7050
envshake.time = 12
envshake.ampl = 6; or 7



[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 21
value = 13, 1


;íå
[State 7000,Trail]
type = helper
trigger1 = animelem = 21
trigger1 = NumHelper(7010) = 0
;anim = 7110
postype = p1
pos = 0,0
bindtime = -1
stateno = 7010
helpertype = normal
name = "kasoku"
sprpriority = 2
removeongethit = 1
ownpal = 1
keyctrl = 0

[State 1201,Trail]
type = Explod
trigger1 = p2stateno = 7050
trigger1 = NumExplod(802) = 0
anim = 802
id = 802
postype = p1
pos = 0,0
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1201,Trail]
type = Explod
trigger1 = p2stateno = 7050
trigger1 = NumExplod(803) = 0
anim = 803
id = 803
postype = p1
pos = 0,0
sprpriority = 4
removeongethit = 1
ownpal = 1

[State 1201,Trail]
type = Explod
trigger1 = p2stateno = 7050
trigger1 = NumExplod(7002) = 0
anim = 7002
id = 7002
postype = p2
pos = 0,-30
sprpriority = 3
removeongethit = 1
ownpal = 1






[State 7000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------
[Statedef 7010]
type = S
movetype = A
anim = 1
velset = 0,0
sprpriority = 3

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1

[State 1000, 1]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 3
trigger3 = time = 5
trigger4 = time = 7
value = 21, 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1000, 5] ;Opponent near
type = Projectile
trigger1 = time = 0
projanim = 7110
offset = 0, 0
projremovetime = 52;è¡Ç¶ÇÈÇ‹Ç≈ÇÃéûä‘
projhits = 6;ÉqÉbÉgêî
projremove = 0;ÉqÉbÉgå„è¡Ç≥Ç»Ç¢
projmisstime = 12;ëΩíiÉqÉbÉgéûÇÃä‘äu
projpriority = 100;ëäéEóDêÊìx
velocity = 0
attr = S, HP
animtype  = back
damage    = 186
getpower = 0,0
givepower = 0,0
priority  = 6
hitflag = MAF
pausetime = 1,2
sparkno = s30002
guard.sparkno = s30040
sparkxy = floor(p2dist x),floor(p2dist y)-60
hitsound   = s20,2
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-6
air.velocity = -1,-6
fall = 1
fall.recover = 0
;p2stateno = 7020





[State 7010, 2]
type = changestate
trigger1 = time = 60
value = 9044
;------------------


; íåÇ≠ÇÁÇ¡ÇΩëäéË

[Statedef 7020]
type    = A
movetype= H
physics = N
velset = -1,-5

[State 1028, 1]
type = NotHitBy
trigger1 = time = 0
value = , NA, NP, SA, HA, NT, ST, HT, SP, HP
time = 11

[State 1028, 1]
type = pause
trigger1 = time = 0
time = 1

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

;[State 1028, Anim 5050] 
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = !SelfAnimExist(5052)
;value = 5050

[State 1028, Anim 5052] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5030)
value = 5030

[State 1028, Anim 5052] 
type = ChangeAnim
trigger1 = Time = 3
trigger1 = SelfAnimExist(5035)
value = 5035

;[State 1028, Anim 5060] 
;type = ChangeAnim
;trigger1 = Vel Y > -2
;trigger1 = Anim = 5050
;trigger1 = SelfAnimExist(5060)
;persistent = 0
;value = 5060

;[State 1028, Anim 5062] 
;type = ChangeAnim
;trigger1 = Vel Y > -2
;trigger1 = Anim = 5052
;trigger1 = SelfAnimExist(5062)
;persistent = 0
;value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = time = 12
value = 5050

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100






;------------------
[Statedef 7050]
type    = S
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1;time = 0
value = , NA, NP, SA, HA, NT, ST, HT, SP, HP
time = 20

[State 1028, 1]
type = pause
trigger1 = time = 0
time = 1

[State 830, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7050

[State 7050, Velocity]
type = VelSet
trigger1 = Time = 0
x = -20
y = -2

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 7051

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
[Statedef 7051]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1;time = 0
value = , NA, NP, SA, HA, NT, ST, HT, SP, HP
time = 50

[State 7051, 1]
type = EnvShake
trigger1 = time = 0
time = 16
ampl = 4
freq = 100
phase = 90

[State 7051, Hurt 11]
type = LifeAdd
trigger1 = time = 0
value = -40

[State 7051, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7051

[State 7051, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
;y = 1

[State 7051, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, Pos]
type = Posset
trigger1 = AnimTime = 0
y = -10

[State 1028, Hit ground]
type = Changeanim
trigger1 = AnimTime = 0
value = 5030

[State 1028, Hit ground]
type = SelfState
trigger1 = Anim = 5030
value = 5030

;------------------------------------------
;ëŒè¡ñ≈ó±éqâ¡ë¨åù
[Statedef 7600]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7600
ctrl = 0
poweradd= -1000
sprpriority = 2

[State 7000, 10]
type = VarSet
trigger1 = time = 0
v = 4
value = 1

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 0
volume = 20

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 57
value = 3, 3

[State 1000, 1]
type = PlaySnd
trigger1 = time = 1
value = 3, 8

[State 1000, 1]
type = PlaySnd
trigger1 = time = 100
value = 3, 9

;ÇÌÅ[Ç…ÇÒ
[State 7000, 0]
type = explod
trigger1 = Time = 0
trigger1 = numexplod(7100) = 0
anim = 7100
ID = 7100
pos = 160, 120
postype = left
sprpriority = -5
removeongethit = 1
bindtime = -1
ownpal = 1

[State 7000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 7001
ctrl = 0
