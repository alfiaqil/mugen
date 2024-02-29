;============================================================================================================================
; RYUJI YAMAZAKI (KOF 2002)
;============================================================================================================================
; CONVERTED BY FMT (OROCHIKOF97 - IRONMUGEN - DARK SAVIOUR)
;============================================================================================================================
; VERSION 0.8 (FEBRUARY 2006)
;============================================================================================================================
;
;============================================================================================================================ 
; HYPER MOVES
;============================================================================================================================
; Guillotine DM
; Guillotine SDM
; Dagger Of Destiny DM
; Drill DM
; Drill SDM
; ...! HSDM/MAX2
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
; Guillotine DM - A
;----------------------------------------------------------------------------------------------------------------------------

[Statedef 2000]
type = S
movetype = A
physics = S
anim = 2000
poweradd = -1000
velset = 0
ctrl = 0

[State 2000, Width]
type = Width
trigger1 = 1
edge = 35,40

;[State 2000, Power] ; S.Cancel Power Loss
;type = PowerAdd
;trigger1 = var(12) = 1 && !time
;value = -1000

[State 2000, Cancel]
type = VarSet
trigger1 = var(12) = 1 && !time
v = 12
value = 0

[State 2000, NoFG]
type = AssertSpecial
trigger1 = Time = [1,28]
flag = noFG	

[State 2000, WhiteBG]
type = BgPalFX
trigger1 = Time = 0
add = 255,255,255
time = 0

[State 2000, BlackBG]
type = AssertSpecial
trigger1 = time = [5,28]
flag = noBG

;Super Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1


[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135


[State 2000, DM Spark BG]
type = Explod
trigger1 = Time = 3
anim = 10000
ID = 1000
postype = p1
pos = -13,-46
bindtime = 1
sprpriority = -1
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2000, DM Spark FG]
type = Explod
trigger1 = Time = 13
anim = 10010
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = 2
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1

[State 2000, Pause]
type = SuperPause
trigger1 = Animelem = 1
time = 30
anim = -1
movetime = 30
darken = 0
p2defmul = 1

[State 2000, DM Sound]
type = Playsnd
trigger1 = AnimElem = 1
value = 1,13

[State 2000, Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,21

[State 2000, Jumping Sound]
type = PlaySnd
trigger1 = !AnimTime
value = 1,4

[State 2000, Hit]
type = HitDef
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, HA
damage = 20,10
animtype = hard
priority = 5, Hit
hitflag = MA
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-60
hitsound = S2,6
guardsound = S1,7
pausetime = 12,12
getpower = 0,0
givepower = 21,21
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = 0
air.velocity = -3.5,-6
air.fall = 1
yaccel = .5

[State 2000, State]
type = ChangeState
trigger1 = !AnimTime
value = 2001

;-Guillotine 2eme state - uppercut en l'air
[Statedef 2001]
type = A
movetype = A
physics = N
anim = 2001
poweradd = 0
juggle = 15
ctrl = 0

[State 2050, Width]
type = Width
trigger1 = 1
edge = 35,40

[State 2001, FX]
type = Explod
trigger1 = Time = 10
anim = 2003
ID = 2003
postype = p1
pos = -10,0
bindtime = -1
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 1
x = 3
y = -6

[State 2001, Vel]
type = PosAdd
trigger1 = time = 2
x = 3
y = -5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 3
x = 4
y = -5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 4
x = 3
y = -5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 5
x = 23
y = -4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 6
x = 3
y = -4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 7
x = 3
y = -3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 8
x = 3
y = -4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 9
x = 4
y = -3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 10
x = 3
y = -2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 11
x = 3
y = -3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 12
x = 4
y = -2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 13
x = 3
y = -2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 14
x = 3
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 15
x = 3
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 16
x = 4
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 17
x = 3
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 18
x = 7
y = 0

[State 2001, Vel]
type = PosAdd
trigger1 = time = 19
x = 3
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 20
x = 3
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 21
x = 4
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 22
x = -3
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 23
x = 3
y = 2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 24
x = 4
y = 2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 25
x = 3
y = 2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 26
x = 3
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 27
x = 4
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 28
x = 3
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 29
x = 3
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 30
x = 3
y = 4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 31
x = 4
y = 4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 32
x = 3
y = 5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 33
x = 3
y = 5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 34
x = 4
y = 5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 35
x = 3
y = 5

[State 2201, hit1]
type = HitDef
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 1
attr = A, HA
damage = 40,10
animtype = hard
hitflag = MAF
guardflag = M
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S2,6
guardsound = S1,7
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -4.5,-7.5
air.velocity = -4.5,-7.5
fall = 1
fall.recover = 0
yaccel = .5

[State 2201, hit2]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HT
damage = 0
animtype = hard
hitflag = MAF
guardflag = M
sparkno = s6030
guard.sparkno = s30040
priority = 5, Hit
sparkxy = -30,-30
hitsound = S1,9
guardsound = S1,7
pausetime = 11,11
getpower = 0,0
givepower = 21,21
guard.pausetime = 12,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -4,-6
guard.velocity = -12
air.velocity = -4,-6
fall = 1
fall.recover = 0
p1stateno = 2005

[State 2201, State]
type = ChangeState
trigger1 = !AnimTime
value = 2002

[Statedef 2002]
type = S
physics = S
anim = 2002
poweradd = 0
velset = 0,0
ctrl = 0

[State 2002, Land Sound]
type = PlaySnd
trigger1 = !Time
value = 1,5

[State 2002, Pos]
type = Posset
trigger1 = !Time
y = 0

[State 2002, State]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-- Guillotine quand il va atterir avec l'adversaire dans les mains
[Statedef 2005]
type = S
movetype = A
physics = S
anim = 2005
poweradd = 0
velset = 0,0
ctrl = 0

[State 2005, Width]
type = width
trigger1 = 1
edge = 40,30

[State 2005, Target State]
type = TargetState
trigger1 = !Time
value = 2015

[State 2005, Target Bind]
type = TargetBind
trigger1 = 1
pos = 60,-12

[State 2005, X vel]
type = velset
trigger1 = 1
x = 5

[State 2005, Y vel]
type = Veladd
trigger1 = time > 1
y = .46

[State 2005, State]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 2006

;--Guillotine, atterissage, frotage du sol, bottage de fesse
[Statedef 2006]
type = S
movetype = A
physics = S
anim = 2006
poweradd = 0
ctrl = 0
velset = 0,0

[State 2006, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 2006, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 1,5

[State 2006, Pos Y 0]
type = Posset
trigger1 = !Time
y = 0

[State 2006, Target State]
type = TargetState
trigger1 = !Time
value = 2016

[State 2006, Vel X 1]
type = Velset
trigger1 = animelem = 18, < 0
x = 5

[State 2006, Vel X 2]
type = Velset
trigger1 = animelem = 19
x = 2

[State 2006, Vel X 3]
type = Velset
trigger1 = animelem = 20
x = 0

[State 2006, Hit]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
trigger4 = AnimElem = 14
value = 1

[State 2006, Blood]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
trigger4 = AnimElem = 13
anim = 7007
pos = 0,0
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 2006, Sound] ;- c'est pour le FX
type = Playsnd
trigger1 = AnimElem = 3, =1 ;AnimElem = 2, =1
trigger2 = AnimElem = 6, =1 ;AnimElem = 5, =1
trigger3 = AnimElem = 11, =1 ;AnimElem = 10, =1
trigger4 = AnimElem = 14, =1 ;AnimElem = 13, =1
value = 10,2
channel = 1

[State 2006, Sound] ; Course
type = Playsnd
trigger1 = AnimElem = 1, =1 
value = 1,2
channel = 3

[State 2006, Sound] ; Stop Course
type = StopSnd
trigger1 = AnimElem = 17, =0
channel = 3

[State 2006, Quake]
type = EnvShake
trigger1 = AnimElem = 20
time = 15
ampl = 5
freq = 60

[State 2006, Target]
type = TargetBind
trigger1 = animelem = 1, >= 1
trigger1 = animelem = 17, < 0
pos = 55,-10

[State 2006, Target]
type = TargetBind
trigger1 = animelem = 17, >= 0
trigger1 = animelem = 18, < 0
pos = 61,-54

[State 2006, Target]
type = TargetBind
trigger1 = animelem = 18, >= 0
trigger1 = animelem = 19, < 0
pos = 44,-91

[State 2006, Target]
type = TargetBind
trigger1 = animelem = 19, >= 0
trigger1 = animelem = 20, < 0
pos = 50,0

[State 2006, Width]
type = width
trigger1 = animelem = 18, < 0
edge = 30,30

[State 2006, KonoAmushaga]
type = Playsnd
trigger1 = AnimElem = 19
value = 0,22

[State 2006, hit]
type = HitDef
trigger1 = AnimElem = 20
attr = S, HA
damage = 150,10
animtype = up
hitflag = MAF
guardflag = MA
sparkno = S30002
guard.sparkno = s30040
getpower = 0,0
givepower = 21,21
sparkxy = 0,-80
hitsound = S1,8
guardsound = S1,8
pausetime = 0,11
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -2,-14
air.velocity = -2,-14
fall = 1
fall.recover = 0
yaccel = .5
juggle = 15
air.juggle = 15

[State 2006, state]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------States de l'adversaire
;--------1/ en l'air
;--------2/ Par terre
[Statedef 2015]
type = A
movetype = H
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
facep2 = 1

[State 2015, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2015

[State 2015, Screen]
type = screenbound
trigger1 = 1
value = 0

[State 2015, 3]
type = SelfState
trigger1 = time = 50
value = 5100

[Statedef 2016]
type = A
movetype = H
physics = N
poweradd = 0
ctrl = 0
velset = 0,0

[State 2016, Life]
type = lifeadd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
trigger4 = AnimElem = 13
value = -30
kill = 0

[State 2016, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2016

[State 2016, Screen]
type = screenbound
trigger1 = 1
value = 0

[State 2016, Au cas ou]
type = SelfState
trigger1 = !AnimTime
value = 5110
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------
; Guillotine DM - C (Different CLSN1)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 2010]
type = S
movetype = A
physics = S
anim = 2010
poweradd = -1000
velset = 0
ctrl = 0
juggle = 1

[State 2050, Width]
type = Width
trigger1 = 1
edge = 35,40

;[State 2010, Power] ; S.Cancel Power Loss
;type = PowerAdd
;trigger1 = var(12) = 2 && !time
;value = -1000

[State 2010, Cancel]
type = VarSet
trigger1 = var(12) = 2 && !time
v = 12
value = 0

[State 2010, noBG]
type = assertspecial
trigger1 = time = [0,30]
flag = nobg
flag2 = nofg

[State 2010, NoFG]
type = AssertSpecial
trigger1 = Time = [1,28]
flag = noFG	

[State 2010, WhiteBG]
type = BgPalFX
trigger1 = Time = 0
add = 255,255,255
time = 0

[State 2010, BlackBG]
type = AssertSpecial
trigger1 = time = [5,28]
flag = noBG

;Super Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135


[State 2010, DM Spark BG]
type = Explod
trigger1 = Time = 3
anim = 10000
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = -1
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2010, DM Spark FG]
type = Explod
trigger1 = Time = 13
anim = 10010
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = 2
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1

[State 2000, Pause]
type = SuperPause
trigger1 = Animelem = 1
time = 30
anim = -1
movetime = 30
darken = 0
p2defmul = 1

[State 2000, DM Sound]
type = Playsnd
trigger1 = AnimElem = 1
value = 1,13

[State 2000, Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,21

[State 2000, Jumping Sound]
type = PlaySnd
trigger1 = !AnimTime
value = 1,4

[State 2000, Hit]
type = HitDef
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, HA
damage = 20,10
animtype = hard
hitflag = MA
guardflag = M
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-60
hitsound = S2,6
guardsound = S1,7
pausetime = 12,12
getpower = 0,0
givepower = 21,21
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = -4
air.velocity = -3,-4
air.fall = 1
yaccel = .5

[State 2000, State]
type = ChangeState
trigger1 = !AnimTime
value = 2001

;---------------------------------------------------------------------------------------------------------------------------
; Guillotine SDM
;---------------------------------------------------------------------------------------------------------------------------

[Statedef 2050]
type = S
movetype = A
physics = S
anim = 2050
poweradd = -2000
velset = 0
ctrl = 0
juggle = 1

[State 2050, Width]
type = Width
trigger1 = 1
edge = 35,40

;[State 2050, Power] ; S.Cancel Power Loss
;type = PowerAdd
;trigger1 = var(12) = 3 && !time
;value = -1000

[State 2050, Cancel]
type = VarSet
trigger1 = var(12) = 3 && !time
v = 12
value = 0

[State 2000, NoFG]
type = AssertSpecial
trigger1 = Time = [1,28]
flag = noFG	

[State 2000, WhiteBG]
type = BgPalFX
trigger1 = Time = 0
add = 255,255,255
time = 0

[State 2000, BlackBG]
type = AssertSpecial
trigger1 = time = [5,28]
flag = noBG

;Super Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135

;Dream Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 3009
trigger2 = prevstateno = 3020
trigger3 = prevstateno = 3021
trigger4 = prevstateno = 3022
trigger5 = prevstateno = 2503
anim = 15000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 3009
trigger2 = prevstateno = 3020
trigger3 = prevstateno = 3021
trigger4 = prevstateno = 3022
trigger5 = prevstateno = 2503
anim = 15005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 3009
trigger2 = prevstateno = 3020
trigger3 = prevstateno = 3021
trigger4 = prevstateno = 3022
trigger5 = prevstateno = 2503
anim = 15010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135

[State 2000, DM Spark BG]
type = Explod
trigger1 = Time = 3
anim = 11000
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = -1
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2000, DM Spark FG]
type = Explod
trigger1 = Time = 13
anim = 11010
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = 2
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1

[State 2000, Pause]
type = SuperPause
trigger1 = Animelem = 1
time = 30
anim = -1
movetime = 30
darken = 0
p2defmul = 1

[State 2000, SDM Sound]
type = Playsnd
trigger1 = AnimElem = 1
value = 1,24

[State 2000, Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,21

[State 2000, Jumping Sound]
type = PlaySnd
trigger1 = !AnimTime
value = 1,4

[State 2000, Hit]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 20,10
animtype = hard
hitflag = MA
guardflag = M
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-60
hitsound = S2,6
guardsound = S1,7
pausetime = 12,12
getpower = 0,0
givepower = 21,21
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = 0
air.velocity = -3,-4
air.fall = 1
yaccel = .5

[State 2000, State]
type = ChangeState
trigger1 = !AnimTime
value = 2051

;-Guillotine 2eme state - uppercut en l'air
[Statedef 2051]
type = A
movetype = A
physics = N
anim = 2051
poweradd = 0
velset = 0
ctrl = 0

[State 2050, Width]
type = Width
trigger1 = 1
edge = 35,40

[State 2051, FX]
type = Explod
trigger1 = Time = 10
anim = 2003
ID = 2003
postype = p1
pos = -10,0
bindtime = -1
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 1
x = 3
y = -6

[State 2001, Vel]
type = PosAdd
trigger1 = time = 2
x = 3
y = -5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 3
x = 4
y = -5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 4
x = 3
y = -5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 5
x = 23
y = -4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 6
x = 3
y = -4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 7
x = 3
y = -3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 8
x = 3
y = -4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 9
x = 4
y = -3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 10
x = 3
y = -2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 11
x = 3
y = -3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 12
x = 4
y = -2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 13
x = 3
y = -2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 14
x = 3
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 15
x = 3
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 16
x = 4
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 17
x = 3
y = -1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 18
x = 7
y = 0

[State 2001, Vel]
type = PosAdd
trigger1 = time = 19
x = 3
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 20
x = 3
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 21
x = 4
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 22
x = -3
y = 1

[State 2001, Vel]
type = PosAdd
trigger1 = time = 23
x = 3
y = 2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 24
x = 4
y = 2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 25
x = 3
y = 2

[State 2001, Vel]
type = PosAdd
trigger1 = time = 26
x = 3
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 27
x = 4
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 28
x = 3
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 29
x = 3
y = 3

[State 2001, Vel]
type = PosAdd
trigger1 = time = 30
x = 3
y = 4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 31
x = 4
y = 4

[State 2001, Vel]
type = PosAdd
trigger1 = time = 32
x = 3
y = 5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 33
x = 3
y = 5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 34
x = 4
y = 5

[State 2001, Vel]
type = PosAdd
trigger1 = time = 35
x = 3
y = 5

[State 2201, hit1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 40,10
animtype = hard
hitflag = MAF
guardflag = M
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S2,6
guardsound = S1,7
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -4,-6
air.velocity = -4,-6
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5

[State 2201, hit2]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HT
damage = 0
animtype = hard
hitflag = MAF
guardflag = M
priority = 5, Hit
sparkno = s6030
guard.sparkno = s30040
sparkxy = -30,-30
hitsound = S1,9
guardsound = S1,7
pausetime = 12,12
getpower = 0,0
givepower = 21,21
guard.pausetime = 11,11
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -4,-6
guard.velocity = -12
air.velocity = -4,-6
fall = 1
fall.recover = 0
p1stateno = 2055

[State 2201, State] ;l'atterissage normal est le meme que la DM
type = ChangeState
trigger1 = !AnimTime
value = 2002

;-- Guillotine quand il va atterir avec l'adversaire dans les mains
[Statedef 2055]
type = S
movetype = A
physics = S
anim = 2005
poweradd = 0
velset = 0,0
ctrl = 0

[State 2005, Width]
type = width
trigger1 = 1
edge = 40,30

[State 2005, Target State]
type = TargetState
trigger1 = !Time
value = 2015

[State 2005, Target Bind]
type = TargetBind
trigger1 = 1
pos = 60,-12

[State 2005, X vel]
type = velset
trigger1 = 1
x = 5

[State 2005, Y vel]
type = Veladd
trigger1 = time > 1
y = .46

[State 2005, State]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 2056

;--Guillotine, atterissage, frotage du sol, bottage de fesse
[Statedef 2056]
type = S
movetype = A
physics = S
anim = 2056
poweradd = 0
ctrl = 0
velset = 0,0

[State 2056, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 2006, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 1,5

[State 2006, Pos Y 0]
type = Posset
trigger1 = !Time
y = 0

[State 2006, Target State]
type = TargetState
trigger1 = !Time
value = 2066

[State 2006, Vel X 1]
type = Velset
trigger1 = animelem = 26, < 0
x = 5

[State 2006, Vel X 2]
type = Velset
trigger1 = animelem = 26
x = 2

[State 2006, Vel X 3]
type = Velset
trigger1 = animelem = 28
x = 0

[State 2006, Hit]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
trigger7 = AnimElem = 31
trigger8 = AnimElem = 37
trigger9 = AnimElem = 43
trigger10 = AnimElem = 49
trigger11 = AnimElem = 55
trigger12 = AnimElem = 61
value = 1

[State 2006, Blood]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
trigger4 = AnimElem = 13
trigger5 = AnimElem = 17
trigger6 = AnimElem = 21
anim = 7007
pos = 0,0
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
ontop = 1

[State 2016, Life]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
trigger7 = AnimElem = 31
trigger8 = AnimElem = 37
trigger9 = AnimElem = 43
trigger10 = AnimElem = 49
trigger11 = AnimElem = 55
trigger12 = AnimElem = 61
value = -25
kill = 0

[State 2056, Sound] ;- c'est pour le FX
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
trigger4 = AnimElem = 14
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
value = 10,2

[State 2056, GroundWaves BG]
type = Explod
trigger1 = AnimElem = 31,=1
trigger2 = AnimElem = 37,=1
trigger3 = AnimElem = 43,=1
trigger4 = AnimElem = 49,=1
trigger5 = AnimElem = 55,=1
trigger6 = AnimElem = 61,=1
anim = 8050
postype = p2
pos = 0,0
bindtime = 1
sprpriority = -2
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2056, GroundWaves FG]
type = Explod
trigger1 = AnimElem = 31,=1
trigger2 = AnimElem = 37,=1
trigger3 = AnimElem = 43,=1
trigger4 = AnimElem = 49,=1
trigger5 = AnimElem = 55,=1
trigger6 = AnimElem = 61,=1
anim = 8060
postype = p2
pos = 0,0
bindtime = 1
sprpriority = 4
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1

[State 2006, explod]
type = Explod
trigger1 = AnimElem = 31
trigger2 = AnimElem = 37
trigger3 = AnimElem = 43
trigger4 = AnimElem = 49
trigger5 = AnimElem = 55
trigger6 = AnimElem = 61
anim = 30002
ID = 2000
postype = p2
pos = 0,-15
bindtime = 1
sprpriority = 5
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2006, Quake]
type = EnvShake
trigger1 = AnimElem = 31
trigger2 = AnimElem = 37
trigger3 = AnimElem = 43
trigger4 = AnimElem = 49
trigger5 = AnimElem = 55
trigger6 = AnimElem = 61
time = 15
ampl = 5
freq = 40

[State 2006, Quake]
type = EnvShake
trigger1 = AnimElem = 66
time = 15
ampl = 5
freq = 60

[State 2006, Target]
type = TargetBind
trigger1 = animelem = 1, >= 1
trigger1 = animelem = 25, < 0
pos = 55,-10

[State 2006, Target]
type = TargetBind
trigger1 = animelem = 24, >= 1
trigger1 = animelem = 66, < 0
pos = 40,0

[State 2006, Width]
type = width
trigger1 = animelem = 25, < 0
edge = 30,30

[State 2006, KonoAmushaga]
type = Playsnd
trigger1 = AnimElem = 30
value = 0,22

[State 2006, Teubim!]
type = Playsnd
trigger1 = AnimElem = 31
trigger2 = AnimElem = 37
trigger3 = AnimElem = 43
trigger4 = AnimElem = 49
trigger5 = AnimElem = 55
trigger6 = AnimElem = 61
value = S1,8

[State 2006, hit]
type = HitDef
trigger1 = AnimElem = 66
attr = S, HA
damage = 150,10
animtype = up
hitflag = MAF
guardflag = MA
sparkno = S30002
guard.sparkno = s30040
getpower = 0,0
givepower = 21,21
sparkxy = 0,-80
hitsound = S1,8
guardsound = S1,8
pausetime = 0,11
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -2,-14
air.velocity = -2,-14
fall = 1
fall.recover = 0
yaccel = .5
p2stateno = 2514

[State 2006, state]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------States de l'adversaire
;--------Par terre
[Statedef 2066]
type = A
movetype = H
physics = N
poweradd = 0
ctrl = 0
velset = 0,0

[State 2016, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2066

[State 2016, Screen]
type = screenbound
trigger1 = AnimElem = 25, < 0
value = 0

[State 2016, Au cas ou]
type = SelfState
trigger1 = !AnimTime
value = 5110
ctrl = 0

;----------------------------------------------------------------------------------------------------------------------------
; Dagger Of Destiny DM
;----------------------------------------------------------------------------------------------------------------------------

; 1. Run

[Statedef 2500]
type = S
movetype = A
physics = S
anim = 40
poweradd = -1000
velset = 0,0
ctrl = 0

;Super Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135

;[State 2500, Power] ; S.Cancel Power Loss
;type = PowerAdd
;trigger1 = var(12) = 6 && !time
;value = -1000

[State 2500, Cancel]
type = VarSet
trigger1 = var(12) = 6 && !time
v = 12
value = 0

[State 2500, Run]
type = ChangeAnim
trigger1 = time = 3
value = 100

[State 2500, Vel]
type = VelSet
trigger1 = time = [3,35]
x = const(velocity.run.fwd.x)

[State 2500, Attack]
type = ChangeState
triggerall = time = [3,35]
trigger1 = p2bodydist x < 20
value = 2502
ctrl = 0

[State 2500, Miss]
type = ChangeState
trigger1 = time > 35
value = 2501
ctrl = 0

;2. Miss

[Statedef 2501]
type = S
movetype = I
physics = S
anim = 2501
velset = 0,0
ctrl = 0

[State 2501, Voice]
type = PlaySnd
trigger1 = time = 1
value = 0,7
channel = 0

[State 2501, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; 3. Attack

[Statedef 2502]
type = S
movetype = A
physics = S
anim = 2502
velset = 0,0
juggle = 15
ctrl = 0

[State 2000, NoFG]
type = AssertSpecial
trigger1 = Time = [11,38]
flag = noFG	

[State 2000, WhiteBG]
type = BgPalFX
trigger1 = Time = 10
add = 255,255,255
time = 0

[State 2000, BlackBG]
type = AssertSpecial
trigger1 = time = [15,38]
flag = noBG

[State 2502, Dm Spark BG]
type = Explod
trigger1 = Time = 13
anim = 10000
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = -1
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2502, Dm Spark FG]
type = Explod
trigger1 = Time = 23
anim = 10010
ID = 1000
postype = p1
pos = -13,-46
bindtime = -1
sprpriority = 2
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1

[State 2502, Pause]
type = SuperPause
trigger1 = time = 13
time = 27
anim = -1
movetime = 27
darken = 0

[State 2502, DM Sound]
type = Playsnd
trigger1 = time = 13
value = 1,13

[State 2502, DM Sound]
type = Playsnd
trigger1 = AnimElem = 5
value = 0,11
channel = 0

[State 2502, Attempt]
type = HitDef
trigger1 = AnimElem = 11, =4
attr = S, HA
hitflag = MAF
damage = 80
animtype = Hard
ground.velocity = 0,18
air.velocity = 0,20
priority = 7, Hit
sparkno = S30002
sparkxy = -20,-52
hitsound = S10,1
p1stateno = 2503
pausetime = 45,45
numhits = 1
hitonce = 1
kill = 0
getpower = 0,0
givepower = 21,21

[State 2502, Unblockable]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 2502, Hit Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;----------------------------
; Dagger Of Destiny - Success
;----------------------------

[Statedef 2503]
type = S
movetype = A
physics = S
anim = 2503
velset = 0,0
ctrl = 0

[State 2006, Blood]
type = Explod
trigger1 = Anim = 2502 && Time = 0
anim = 7007
pos = 0,-52
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
ontop = 1
persistent = 0

[State 2503, Laugh]
type = PlaySnd
trigger1 = AnimElem = 26, =1
trigger2 = AnimElem = 111, =1
value = 0,10
channel = 0

[State 2503, Voice]
type = PlaySnd
trigger1 = AnimElem = 46, =1
value = 0,6

[State 2503, Voice2]
type = PlaySnd
trigger1 = AnimElem = 104, =1
value = 0,15

[State 2503, P2]
type = TargetState
trigger1 = !Time
value = 2513

[State 2503, Attack]
type = HitDef
trigger1 = AnimElem = 47
trigger2 = AnimElem = 53
trigger3 = AnimElem = 59
trigger4 = AnimElem = 65
trigger5 = AnimElem = 71
trigger6 = AnimElem = 77
trigger7 = AnimElem = 83
trigger8 = AnimElem = 89
trigger9 = AnimElem = 95
trigger10= AnimElem = 101
attr = S, HA
damage = 70*(AnimElem=47)+10,0
hitflag = MAFD
animtype = Hard
ground.velocity = 0,0
air.velocity = 0,0
priority = 7, Hit
sparkno = S30002
guard.sparkno = 42
sparkxy = 0,-15
hitsound = S2,var(5)
pausetime = 2,1
numhits = 1
kill = 0
envshake.time = 10
envshake.freq = 70
envshake.ampl = -5
envshake.phase = 2
getpower = 0,0
givepower = 21,21

[State 2503, GroundWaves]
type = Explod
trigger1 = AnimElem = 47,=1
trigger2 = AnimElem = 53,=1
trigger3 = AnimElem = 59,=1
trigger4 = AnimElem = 65,=1
trigger5 = AnimElem = 71,=1
trigger6 = AnimElem = 77,=1
trigger7 = AnimElem = 83,=1
trigger8 = AnimElem = 89,=1
trigger9 = AnimElem = 95,=1
trigger10= AnimElem = 101,=1
anim = 7017
postype = p2
pos = 0,0
bindtime = -1
sprpriority = -2
supermovetime = 30
ownpal = 1
removeongethit = 1

[State 2503, Final Kick]
type = HitDef
trigger1 = AnimElem = 106
attr = S, HA
damage = 26,30
hitflag = MAFD
sparkno = S30002
guard.sparkno = s30040
getpower = 0,0
givepower = 21,21
guard.sparkno = s30040
sparkxy = 0,-80
hitsound = S1,8
guardsound = S1,8
pausetime = 12,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -2,-17
air.velocity = -2,-17
p2stateno = 2514
fall = 1
fall.recover = 0
down.bounce = 1
yaccel = .5
envshake.time = 15
envshake.freq = 50
envshake.ampl = -6
envshake.phase = 2

[State 2503, End]
type = ChangeState
trigger1 = !AnimTime
value = 0 
ctrl = 1

;------------------------------
; Dagger Of Destiny - Enemy hit
;------------------------------

[Statedef 2513]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 2513, Ground]
type = StateTypeSet
trigger1 = !time
statetype = L

[State 2513, Ground2]
type = PosSet
triggerall = !time
trigger1 = statetype = A
trigger2 = Pos Y < 0
y = 0

[State 2513, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 2513, Gethit]
type = ChangeAnim
trigger1 = !time
value = 5160

[State 2513, GetHit2]
type = ChangeAnim
trigger1 = time = 8
value = 5110

[State 2513, Behind]
type = sprpriority
trigger1 = !time
value = 1

[State 2513, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 2513, Safety]
type = SelfState
trigger1 = time = 400
value = 0
ctrl = 1

;------------------------------------------------
; Dagger Of Destiny - Enemy hit by the final kick
;------------------------------------------------

[Statedef 2514]
type    = A
physics = N
movetype= H
ctrl = 0
velset = -2,-13.5

[State 2514, Twist]
type = ChangeAnim2
trigger1 = !time
value = 2514

[State 2514, Gravity]
type = VelAdd
trigger1 = time > 1
y = 0.51

[State 2514, End]
type = SelfState
triggerall = time > 5
trigger1 = (vel y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------------------------------------------------------------
; Drill DM
;----------------------------------------------------------------------------------------------------------------------------

[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0
ctrl = 0
facep2 = 1

;[State 2000, Power] ; S.Cancel Power Loss
;type = PowerAdd
;trigger1 = var(12) = 4 && !time
;value = -1000

[State 2000, Cancel]
type = VarSet
trigger1 = var(12) = 4 && !time
v = 12
value = 0

[State 3000, Mute]
type = StopSnd
trigger1 = !time
channel = 3

[State 2000, NoFG]
type = AssertSpecial
trigger1 = Time = [1,28]
flag = noFG	

[State 2000, WhiteBG]
type = BgPalFX
trigger1 = Time = 0
add = 255,255,255
time = 0

[State 2000, BlackBG]
type = AssertSpecial
trigger1 = time = [5,28]
flag = noBG

;Super Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135

[State 3000, DM Spark BG]
type = Explod
trigger1 = Time = 3
anim = 10000
ID = 3000
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = -1
supermovetime = 27
ownpal = 1
removeongethit = 1

[State 3000, DM Spark FG]
type = Explod
trigger1 = Time = 13
anim = 10010
ID = 3000
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = 2
supermovetime = 27
ownpal = 1
removeongethit = 1
ontop = 1

[State 3000, Pause]
type = SuperPause
trigger1 = time = 2
time = 27
anim = -1
movetime = 27
darken = 0

[State 3000, DM Sound]
type = Playsnd
trigger1 = time = 3
value = 1,13
channel = 1

[State 3000, Voice]
type = PlaySnd
trigger1 = time = 1
value = 0,23
channel = 0

[State 3000, Attempt]
type = HitDef
triggerall = var(16) = 0 ; Opponent Guard Checking variable
triggerall = P2StateNo != [40,52] ; Can't grab while opponent is in a jump start/land state
trigger1 = !Time
attr = S, HT
damage = 0
animtype = Hard
hitflag = M
sparkno = -1
priority = 5, Miss
sparkxy = -35,-75
hitsound = S1,9
getpower = 0,0
givepower = 21,21
ground.type = high
fall = 1
fall.recover = 0
p1stateno = 3001
p2stateno = 3010
numhits = 0

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------
; Drill DM - Success
;-------------------

[Statedef 3001]
type = S
movetype = A
physics = S
anim = 3001
velset = 0
ctrl = 0

[State 3001, NoFG]
type = AssertSpecial
trigger1 = Time = [1,28]
flag = noFG	

[State 3001, WhiteBG]
type = BgPalFX
trigger1 = Time = 0
add = 255,255,255
time = 0

[State 3001, BlackBG]
type = AssertSpecial
trigger1 = time = [5,28]
flag = noBG

[State 3001, DM Spark BG]
type = Explod
trigger1 = Time = 3
anim = 10000
ID = 3000
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = -1
supermovetime = 27
ownpal = 1
removeongethit = 1

[State 3001, DM Spark FG]
type = Explod
trigger1 = Time = 13
anim = 10010
ID = 3000
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = 2
supermovetime = 27
ownpal = 1
removeongethit = 1
ontop = 1

[State 3001, DM Sound]
type = Playsnd
trigger1 = time = 3
value = 1,13
channel = 1

[State 3001, Voice]
type = PlaySnd
trigger1 = time = 1
value = 0,23
channel = 0

[State 3001, Bind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 20,0

[State 3001, Bind]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 5, < 0
pos = 50,-130

[State 3001, Bind]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 5, < 2
pos = 50,-50

[State 3001, 1st hit]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
damage = 40,10
animtype = Hard
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 12,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = 0,-8
air.velocity = 0,-8
fall = 1
fall.recover = 0
yaccel = .5
kill = 0

[State 3001, 2nd hit]
type = HitDef
trigger1 = AnimElem = 9
attr = S, HA
damage = 40,10
animtype = Hard
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 12,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -0.9,-12
air.velocity = -0.9,-12
fall = 1
fall.recover = 0
yaccel = .51
kill = 0

[State 3001, Laugh]
type = PlaySnd
trigger1 = AnimElem = 11, =1
value = 0,10
channel = 0

[State 3001, End]
type = ChangeState
trigger1 = !AnimTime
value = 3002
ctrl = 0

;------------------
; Drill DM - Charge
;------------------


[Statedef 3002]
type = S
movetype = A
physics = S
anim = 3002
poweradd = 0
juggle = 0
velset = 0
ctrl = 0

[State 3002, State]
type = TargetState
trigger1 = target,stateno = 5110
value = 3013

[State 3002, Width]
type = width
trigger1 = 1
edge = 20,20

[State 2105, Var]
type = VarSet
trigger1 = !time
var(17) = 0

[State 3002, Var]
type = VarAdd
triggerall = time > 0
trigger1 = command = "x" || command = "y"
var(17) = 1

[State 3002, Var]
type = VarAdd
triggerall = time > 0
trigger1 = command = "x" && command = "y"
var(17) = 2

[State 3002, Var]
type = VarSet
trigger1 = time > 0
trigger1 = command = "b"
var(17) = 0

[State 3002, Anim]
type = ChangeAnim
trigger1 = var(17) < 7
trigger1 = anim != 3002
value = 3002

[State 3002, Anim]
type = ChangeAnim
trigger1 = var(17) = [7,13]
trigger1 = anim != 3003
value = 3003

[State 3002, Anim]
type = ChangeAnim
trigger1 = var(17) = [14,20]
trigger1 = anim != 3004
value = 3004

[State 3002, Anim]
type = ChangeAnim
trigger1 = var(17) >= 21
trigger1 = anim != 3005
value = 3005

[State 3002, State]
type = ChangeState
trigger1 = var(17) < 7
trigger1 = time = 60
value = 3003

[State 3002, State]
type = ChangeState
trigger1 = var(17) = [7,13]
trigger1 = time = 60
value = 3004

[State 3002, State]
type = ChangeState
trigger1 = var(17) = [14,20]
trigger1 = time = 60
value = 3005

[State 3002, State]
type = ChangeState
trigger1 = var(17) >= 21
trigger1 = time = 60
value = 3008

;------------------------------------
; Drill DM - 1st Level - Multi Juggle
;------------------------------------

[Statedef 3003]
type = S
movetype = A
physics = S
anim = 3006
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4001, Vel]
type = VelSet
trigger1 = time = 37
y = -4.5

[State 4001, Gravity]
type = VelAdd
trigger1 = time = [37,52]
y = 0.52

[State 4001, Ground]
type = PosSet
trigger1 = time = 53
y = 0

[State 4001, Vel]
type = VelSet
trigger1 = time = 53
y = 0

[State 4001, Gravity]
type = VelSet
trigger1 = time = [37,52]
x = 3

[State 3003, Fwd]
type = VelSet
trigger1 = AnimElem = 7, = 1
trigger2 = AnimElem = 12, = 1
trigger3 = AnimElem = 13, = 1
trigger4 = AnimElem = 17, = 1
trigger5 = AnimElem = 18, = 1
trigger6 = AnimElem = 19, = 1
x = 7

[State 3003, Friction]
type = VelMul
trigger1 = AnimElem >= 8
x = 0.8

[State 3003, Hits]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
damage = 40,10
animtype = Up
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -5,-30
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.type = high
ground.velocity = -1,-8
air.velocity = -1,-8
fall = 1
fall.recover = 0
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -4
envshake.phase = 2

[State 3003, GroundWaves BG]
type = Explod
trigger1 = MoveHit && AnimElem = 8,=1
anim = 8050
postype = p2
pos = 0,0
bindtime = 1
sprpriority = -2
supermovetime = 30
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3003, GroundWaves FG]
type = Explod
trigger1 = MoveHit && AnimElem = 8,=1
anim = 8060
postype = p2
pos = 0,0
bindtime = 1
sprpriority = 4
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1
ignorehitpause = 1
persistent = 0

[State 3003, Hits]
type = HitDef
trigger1 = AnimElem = 12
attr = S, HA
damage = 40,10
animtype = Up
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -5,-77
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.type = high
ground.velocity = -2.5,-7
air.velocity = -2.5,-7
fall = 1
fall.recover = 0
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, Hits]
type = HitDef
trigger1 = AnimElem = 13
attr = S, HA
damage = 40,10
animtype = Up
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-130
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.type = high
ground.velocity = -2.5,-7.3
air.velocity = -2.5,-7.3
fall = 1
fall.recover = 0
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, Hits]
type = HitDef
trigger1 = AnimElem = 18
attr = S, HA
damage = 40,10
animtype = Up
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.type = high
ground.velocity = -3,-7
air.velocity = -3,-7
fall = 1
fall.recover = 0
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, Hits]
type = HitDef
trigger1 = AnimElem = 19
attr = S, HA
damage = 40,10
animtype = Up
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-120
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 10,12
ground.type = high
ground.velocity = -3,-7
air.velocity = -3,-7
fall = 1
fall.recover = 0
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 3100
ctrl = 0

;-----------------------------------
; Drill DM - 2nd Level - Kick Juggle
;-----------------------------------

[Statedef 3004]
type = S
movetype = A
physics = S
anim = 3007
poweradd = 0
velset = 0
ctrl = 0

[State 3004, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3004, Attack]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 30,0
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7
air.velocity = -2,-7
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = 15,-15         
hitsound = S2,var(5)
pausetime = 10,12
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 3004, Attack]
type = HitDef
trigger1 = AnimElem = 9
attr = S, HA
damage = 30,0
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7
air.velocity = -2,-7
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-73
hitsound = S2,var(5)
pausetime = 10,12
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 3004, Attack]
type = HitDef
trigger1 = AnimElem = 18
attr = S, HA
damage = 30,0
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7.5
air.velocity = -2,-7.5
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10,-65         
hitsound = S2,var(5)
pausetime = 10,12
kill = 0
yaccel = 0.54
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 3004, Attack]
type = HitDef
trigger1 = AnimElem = 29
attr = S, HA
damage = 30,0
hitflag = MAFD
animtype = DiagUp
ground.velocity = -2,7
air.velocity = -2,7
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -25,-65         
hitsound = S1,8
pausetime = 10,12
down.bounce = 0
kill = 0
hitonce = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -4
envshake.phase = 2
getpower = 0,0
givepower = 21,21

[State 3004, GroundWave1]
type = Explod
trigger1 = MoveHit && AnimElem = 29,=1
anim = 7017
postype = p1
pos = 60,0
bindtime = 1
sprpriority = -2
supermovetime = 30
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3004, GroundWaves2 BG]
type = Explod
trigger1 = AnimElem = 32
anim = 8050
postype = p2
pos = 0,0
bindtime = 1
sprpriority = -2
supermovetime = 30
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3004, GroundWaves2 FG]
type = Explod
trigger1 = AnimElem = 32
anim = 8060
postype = p2
pos = 0,0
bindtime = 1
sprpriority = 4
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1
ignorehitpause = 1
persistent = 0

[State 3004, Attack]
type = HitDef
trigger1 = AnimElem = 37
attr = S, HA
damage = 30,0
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7
air.velocity = -2,-7
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10, -15; -25,-5         
hitsound = S2,var(5)
pausetime = 10,12
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -4
envshake.phase = 2
getpower = 0,0
givepower = 21,21

[State 2056, GroundWaves BG]
type = Explod
trigger1 = AnimElem = 37,=1
anim = 8050
postype = p2
pos = 0,0
bindtime = 1
sprpriority = -2
supermovetime = 30
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persitent = 0

[State 2056, GroundWaves FG]
type = Explod
trigger1 = AnimElem = 37,=1
anim = 8060
postype = p2
pos = 0,0
bindtime = 1
sprpriority = 4
supermovetime = 30
ownpal = 1
removeongethit = 1
ontop = 1
ignorehitpause = 1
persitent = 0

[State 3004, Attack]
type = HitDef
trigger1 = AnimElem = 43
attr = S, HA
damage = 30,0
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7
air.velocity = -2,-7
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -15,-75         
hitsound = S2,var(5)
pausetime = 10,12
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 3004, State]
type = TargetState
trigger1 = AnimElem = 32
value = 3013

[State 3004, Fwd]
type = VelSet
trigger1 = AnimElem = 4, = 1
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9, = 1
trigger4 = AnimElem = 28, = 1
trigger5 = AnimElem = 31, = 1
x = 7 + 3*(AnimElem = 4) + 3*(AnimElem = 8) + 3*(AnimElem = 9)

[State 3004, Jump]
type = VelSet
trigger1 = AnimElem = 14, >= 1
trigger1 = AnimElem = 23, < 0
x = 4

[State 3004, Friction]
type = VelMul
trigger1 = AnimElem = 4, = 2
trigger2 = AnimElem = 6, = 2 
trigger3 = AnimElem = 9, = 2
trigger4 = AnimElem = 28,= 2
trigger5 = AnimElem = 31,= 2
x = 0.8

[State 3004, Jump]
type = VelSet
trigger1 = time = 39
y = -8

[State 3004, Gravity]
type = VelAdd
trigger1 = time = [40,70]
y = 0.5

[State 3004, Ground]
type = VelSet
trigger1 = time = 71
y = 0

[State 3004, OnGround]
type = PosSet
trigger1 = time = 71
y = 0

[State 3004, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 3100
ctrl = 0

;-----------------------------------------------
; Drill DM - 3rd Level - Dynamic Bakudan Pachiki
;-----------------------------------------------
;1st part
;--------

[Statedef 3005]
type = S
movetype = A
physics = S
anim = 3008
poweradd = 0
velset = 0
ctrl = 0

[State 3005, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3005, P2]
type = TargetState
trigger1 = time = 9
value = 3014

[State 3006, HitAdd]
type = HitAdd
trigger1 = time = 9
value = 1

[State 3006, HitSound]
type = PlaySnd
trigger1 = time = 9
value = 1,8
channel = 1

[State 3006, Hit Spark]
type = Explod
trigger1 = time = 9
anim = 30002
ID = 3006
postype = p1
pos = 65,-12
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 3005, Bind]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 81,-34

[State 3005, Bind]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 65,-78

[State 3005, Bind]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 46,-129

[State 3005, Bind]
type = TargetBind
trigger1 = AnimElem = 9, >=0
pos = 45,-129

[State 3005, Headbutts] ; Entering the headbutt loop
type = ChangeState
trigger1 = !AnimTime
value = 3006
ctrl = 0

;-----------------------------------------------
; Drill DM - 3rd Level - Dynamic Bakudan Pachiki
;-----------------------------------------------
; 2nd part - Headbutt Loop
;-------------------------

[Statedef 3006]
type = S
movetype = A
physics = S
anim = 3009
poweradd = 0
velset = 0
ctrl = 0

[State 3006, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3006, Damage]
type = TargetLifeAdd
trigger1 = time = 12
value = -25
kill = 0

[State 3006, HitCounter]
type = VarAdd
trigger1 = time = 1
var(18) = 1

[State 3006, HitAdd]
type = HitAdd
trigger1 = time = 12
value = 1

[State 3006, HitSound]
type = PlaySnd
trigger1 = time = 12
value = 2,6
channel = 2

[State 3006, Hit Spark]
type = Explod
trigger1 = time = 12
anim = 30002
ID = 3006
postype = p1
pos = 47,-88
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 3006, Shake]
type = EnvShake
trigger1 = time = 12
time = 15
ampl = -6
freq = 70

[State 3006, GroundWave]
type = Explod
trigger1 = time = 13
anim = 7017
ID = 3006
postype = p1
pos = 49,0
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 3006, P2]
type = TargetState
trigger1 = !time
value = 3015

[State 3006, TBind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 42,-107

[State 3006, TBind 2]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 35,-110

[State 3006, TBind 3]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,< 0
pos = 29,-113

[State 3006, TBind 4]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 38,-108

[State 3006, TBind 5]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 8, < 0
pos = 60,-101

[State 3006, Loop]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) < 7
value = 3006
ctrl = 0

[State 3006, FinalHead]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 7
value = 3007
ctrl = 0

;-----------------------------------------------
; Drill DM - 3rd Level - Dynamic Bakudan Pachiki
;-----------------------------------------------
; 3rd part - Final Headbutt
;--------------------------

[Statedef 3007]
type = S
movetype = A
physics = S
anim = 3010
poweradd = 0
velset = 0
ctrl = 0

[State 3007, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3007, Damage]
type = TargetLifeAdd
trigger1 = time = 12
value = -40
kill = 0

[State 3007, P2]
type = TargetState
trigger1 = !time
value = 3016

[State 3007, HitAdd]
type = HitAdd
trigger1 = time = 12
value = 1

[State 3007, HitSound]
type = PlaySnd
trigger1 = time = 12
value = 1,8
channel = 1

[State 3007, Hit Spark]
type = Explod
trigger1 = time = 12
anim = 30002
ID = 3006
postype = p1
pos = 47,-88
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 3007, Ground Wave]
type = Explod
trigger1 = time = 13
anim = 8060
ID = 3006
postype = p1
pos = 49,0
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 3007, Shake]
type = EnvShake
trigger1 = time = 12
time = 15
ampl = -6
freq = 70

[State 3007, Explosion]
type = Explod
trigger1 = time = 12
anim = 1106
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 3
ownpal = 1

[State 3007, TBind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 42,-100

[State 3007, TBind 2]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 38,-103

[State 3007, TBind 3]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,< 0
pos = 40,-106

[State 3007, TBind 4]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 37,-101

[State 3007, TBind 5]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 50,-94

[State 3007, TBind 6]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 48,-94

[State 3007, TBind 6]
type = TargetBind
trigger1 = AnimElem = 8
pos = 78,-60

[State 3007, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 3100
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 1st part - Arm shaking
;-----------------------

[Statedef 3008]
type = S
movetype = A
physics = S
anim = 3020
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3008,.]
type = Null
trigger1 = 1

[State 3008, Dwn]
type = ChangeState
trigger1 = !AnimTime
value = 3009
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Gedan (Down)
;-------------

[Statedef 3009]
type = S
movetype = A
physics = S
anim = 3021
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3009, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3009, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 2,2
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-34
hitsound = S2,var(3)
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
getpower = 0,0
givepower = 21,21
yaccel = .5
numhits = ifelse(prevstateno=3008,3,1)
kill = 0
getpower = 0

[State 3009, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1309
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3009, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1310
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3009, Next] ; Down To Forward
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 1
trigger2 = var(18) = 3
trigger3 = var(18) = 8
trigger4 = var(18) = 10
value = 3020
ctrl = 0

[State 3009, Next] ; Down To Up
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 16
value = 3021
ctrl = 0

[State 3009, Final] ; To the final Zenpou
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 20
value = 3022
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Zenpou (Forward)
;----------------

[Statedef 3020]
type = S
movetype = A
physics = S
anim = 3022
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3020, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3020, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 2,2
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-84
hitsound = S2,var(4)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
yaccel = .5
kill = 0
getpower = 0,0
givepower = 21,21

[State 3020, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1303
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3020, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1304
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3020, Next] ; Forward to Down
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 2
trigger2 = var(18) = 7
trigger3 = var(18) = 9
value = 3009
ctrl = 0

[State 3020, Next] ; Forward to Up
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 4
trigger2 = var(18) = 12
trigger3 = var(18) = 14
trigger4 = var(18) = 18
value = 3021
ctrl = 0

[State 3020, Next] ; Forward to Forward
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 6
trigger2 = var(18) = 11
value = 3020
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Taikuu (Up)
;------------

[Statedef 3021]
type = S
movetype = A
physics = S
anim = 3023
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3021, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3021, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 2,2
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-104
hitsound = S2,var(4)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
getpower = 0,0
givepower = 21,21
yaccel = .5
kill = 0
getpower = 0

[State 3021, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1306
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3021, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1307
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3021, Next] ; Up to Down
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 15
trigger2 = var(18) = 19
value = 3009
ctrl = 0

[State 3021, Next] ; Up To Forward
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 5
trigger2 = var(18) = 13
trigger3 = var(18) = 17
value = 3020
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Final Zenpou (Forward)
;-----------------------

[Statedef 3022]
type = S
movetype = A
physics = S
anim = 3024
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 3022, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3022, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 2,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-84
hitsound = S2,var(4)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -1.5,-9
yaccel = .5
fall = 1
kill = 0
getpower = 0,0
givepower = 21,21

[State 3022, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1303
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3022, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1304
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3022, Wind]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,22
channel = 1
ignorehitpause = 1

[State 3022, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 3100
ctrl = 0

;------------------------
; Drill DM - Enemy Thrown
;------------------------

[Statedef 3010]
type    = A
physics = N
movetype= H
ctrl = 0

[State 690, Camera]
type = ScreenBound
trigger1 = 1

[State 3010, Grabbed]
type = ChangeAnim2
trigger1 = !time
value = 3030

[State 3010, Fall]
type = VelSet
trigger1 = time = 28
y = 3

[State 3010, Fall2]
type = VelAdd
trigger1 = time >= 29
y = 0.51

[State 2102, SafetyState]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------
; Drill DM - Enemy Lying Down (waiting for Yamazaki)
;---------------------------------------------------

[Statedef 3013]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0
anim = 5110

[State 3013, Stand] 
type = StateTypeSet
trigger1 = enemy, stateno = 3008 ; For Drill DM Level 4 - Hebi Tsukai Illusion
trigger2 = enemy, stateno = 4013 ; For Drill SDM Level 4 - Super Hebi Tsukai Illusion
statetype = S
physics = S
movetype = I
persistent = 0
ignorehitpause = 1

[State 3013, Stand] 
type = StateTypeSet
trigger1 = enemy, stateno = 4003 ; For Drill SDM Level 1 - Super Ground Kick
statetype = L
physics = N
movetype = I
persistent = 0
ignorehitpause = 1

[State 3013, Stand] ; For Drill SDM Level 2 - Super Dagger Of Judgement
type = StateTypeSet
trigger1 = enemy, stateno = 4006
statetype = S
physics = N
movetype = I
persistent = 0
ignorehitpause = 1

[State 3013, .]
type = PosSet
trigger1 = !time
y = 0

;---------------------------------------------------------------
; Drill DM - Enemy grabbed by Dynamic Bakudan Pachiki (1st part)
;---------------------------------------------------------------

[Statedef 3014]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 3014, Camera]
type = ScreenBound
trigger1 = 1

[State 3014, .]
type = ChangeAnim2
trigger1 = !time
value = 3014

;---------------------------------------------------------------
; Drill DM - Enemy grabbed by Dynamic Bakudan Pachiki (2nd part)
;---------------------------------------------------------------

[Statedef 3015]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 3015, Camera]
type = ScreenBound
trigger1 = 1


[State 3015, .]
type = ChangeAnim2
trigger1 = !time
value = 3015

;---------------------------------------------------------------
; Drill DM - Enemy grabbed by Dynamic Bakudan Pachiki (3rd part)
;---------------------------------------------------------------

[Statedef 3016]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 3016, Camera]
type = ScreenBound
trigger1 = time <= 33

[State 3016, .]
type = ChangeAnim2
trigger1 = !time
value = 3016

[State 3016, Vel]
type = VelSet
trigger1 = time = 33
y = -8.5

[State 3016, Vel]
type = VelSet
trigger1 = time >= 33
x = -2

[State 3016, Vel]
type = VelAdd
trigger1 = time >= 35
y = 0.5

[State 3016, .]
type = PosSet
trigger1 = time = 32
y = -10

[State 3016, .]
type = ChangeAnim
trigger1 = time = 32
value = 5050

[State 3016, Safety]
type = SelfState
triggerall = time > 35
trigger1 = Pos Y > 0 && Vel Y > 0
value = 5100

;-------------------------
; Drill DM - Spiral Finish
;-------------------------

[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = 0
velset = 0
ctrl = 0
juggle = 1

[State 3100, Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,24
channel = 0

[State 3100, Spiral]
type = Explod
trigger1 = Time = 4
anim = 3101
pos = 0,0
postype = p1
sprpriority = 5
bindtime = 30
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3100, Vels]
type = Posadd
trigger1 = time = 6
x = 5

[State 3100, Vels]
type = Posadd
trigger1 = time = [7,10]
trigger2 = time = 12
x = 4

[State 3100, Vels]
type = Posadd
trigger1 = time = 11
trigger2 = time = [13,15]
trigger3 = time = 17
x = 3

[State 3100, Vels]
type = Posadd
trigger1 = time = 16
trigger2 = time = [18,21]
trigger3 = time = 23
x = 2

[State 3100, Vels]
type = Posadd
trigger1 = time = 22
trigger2 = time = [24,25]
trigger3 = time = 27
trigger4 = time = 29
x = 1

[State 3100, Tornado]
type = HitDef
trigger1 = AnimElem = 4, = 0
trigger2 = AnimElem = 4, = 2
trigger3 = AnimElem = 4, = 4
attr = S, HA
damage = 20,0
animtype = Up
hitflag = MAFD
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-100
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 3,6
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -5,-9
air.velocity = -5,-9
down.velocity = -5,-9
fall = 1
fall.recover = 0
yaccel = .5
kill = 0

[State 3100, Tornado]
type = HitDef
trigger1 = AnimElem = 4, = 6
attr = S, HA
damage = 20,0
animtype = Up
hitflag = MAFD
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-100
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 3,6
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -5,-9
air.velocity = -5,-9
down.velocity = -5,-9
fall = 1
fall.recover = 0
yaccel = .5
juggle = 14
air.juggle = 14

[State 4100, Laugh]
type = VarSet
triggerall = AnimElem = 3, >=0
triggerall = AnimElem = 8, < 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "x" && command = "y"
v = 19
value = 1

[State 4100, Laugh]
type = ChangeState
triggerall = AnimElem = 8
trigger1 = var(19)
value = 4101

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------------------------------------------------------------------------------------------------
; Drill SDM
;----------------------------------------------------------------------------------------------------------------------------

[Statedef 4000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -2000
velset = 0
ctrl = 0
facep2 = 1

;[State 2000, Power] ; S.Cancel Power Loss
;type = PowerAdd
;trigger1 = var(12) = 5 && !time
;value = -1000

[State 2000, Cancel]
type = VarSet
trigger1 = var(12) = 5 && !time
v = 12
value = 0

[State 4000, Mute]
type = StopSnd
trigger1 = !time
channel = 3

[State 4000, Black]
type = assertspecial
trigger1 = time = [2,29]
flag = noFG
flag2 = noBG

;Super Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
anim = 16010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135

;Dream Cancel Effect
[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 3009
trigger2 = prevstateno = 3020
trigger3 = prevstateno = 3021
trigger4 = prevstateno = 3022
trigger5 = prevstateno = 2503
anim = 15000
pos = 65,70
postype = Left
removetime = -2
bindtime = 50
pausemove = 1
supermove = 1
scale = .5,.5
sprpriority = -3
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 3009
trigger2 = prevstateno = 3020
trigger3 = prevstateno = 3021
trigger4 = prevstateno = 3022
trigger5 = prevstateno = 2503
anim = 15005
pos = -5,69
postype = Left
removetime = -2
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,1
sprpriority = -2
ownpal = 1

[State 2000]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = 3009
trigger2 = prevstateno = 3020
trigger3 = prevstateno = 3021
trigger4 = prevstateno = 3022
trigger5 = prevstateno = 2503
anim = 15010
pos = -150,69
postype = Left
removetime = -2
facing = 1
vfacing = 1
bindtime = 65
pausemove = 1
supermove = 1
scale = 1.5,.8
sprpriority = -3
ownpal = 1
trans = addalpha
alpha = 256, 135

[State 4000, SDM spark]
type = Explod
trigger1 = time = 3
anim = 11000
ID = 7062
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = -2
supermovetime = 27
ownpal = 1
removeongethit = 1

[State 4000, SDM spark]
type = Explod
trigger1 = time = 13
anim = 11010
ID = 7061
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = 2
supermovetime = 27
ownpal = 1
removeongethit = 1

[State 4000, Pause]
type = SuperPause
trigger1 = time = 2
time = 27
anim = -1
movetime = 27
darken = 0

[State 4000, SDM Sound]
type = Playsnd
trigger1 = time = 3
value = 1,24
channel = 1

[State 4000, Voice]
type = PlaySnd
trigger1 = time = 1
value = 0,23
channel = 0

[State 4000, Attempt]
type = HitDef
triggerall = var(16) = 0 ; Opponent Guard Checking variable
triggerall = P2StateNo != [40,52] ; Can't grab while opponent is in a jump start/land state
trigger1 = !time
attr = S, HT
damage = 0
animtype = Hard
hitflag = M
sparkno = -1
priority = 5, Miss
sparkxy = -35,-75
getpower = 0,0
givepower = 21,21
ground.type = high
fall = 1
fall.recover = 0
p1stateno = 4001
p2stateno = 4010
numhits = 0

[State 4000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------
; Drill SDM - Success
;--------------------

[Statedef 4001]
type = S
movetype = A
physics = S
anim = 4001
velset = 0
ctrl = 0

[State 4000, Black]
type = assertspecial
trigger1 = time = [2,29]
flag = noFG
flag2 = noBG

[State 4000, SDM spark]
type = Explod
trigger1 = time = 3
anim = 11000
ID = 7062
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = -2
supermovetime = 27
ownpal = 1
removeongethit = 1

[State 4000, SDM spark]
type = Explod
trigger1 = time = 13
anim = 11010
ID = 7061
postype = p1
pos = 50,-130
bindtime = 1
sprpriority = 2
supermovetime = 27
ownpal = 1
removeongethit = 1

[State 4001, SDM Sound]
type = Playsnd
trigger1 = time = 3
value = 1,24
channel = 1

[State 4001, Grab Sound]
type = Playsnd
trigger1 = time = 4
value = 1,9
channel = 2

[State 4001, Bind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 20,0

[State 4001, Bind]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 5, < 0
pos = 50,-130

[State 4001, Bind]
type = TargetBind
trigger1 = AnimElem = 5, =0
pos = 50,-70

[State 4001, Vel]
type = VelSet
trigger1 = time = 72
y = -4

[State 4001, Gravity]
type = VelAdd
trigger1 = time = [72,84]
y = 0.52

[State 4001, Ground]
type = PosSet
trigger1 = time = 85
y = 0

[State 4001, Vel]
type = VelSet
trigger1 = time = 85
y = 0

[State 4001, 1st hit]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
damage = 40
animtype = Hard
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 12,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = 0,-8
air.velocity = 0,-8
fall = 1
fall.recover = 0
yaccel = .5
kill = 0

[State 4001, 2nd hit]
type = HitDef
trigger1 = AnimElem = 9
attr = S, HA
damage = 40
animtype = Hard
hitflag = MAFD
priority = 7, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-97
hitsound = S1,8
getpower = 0,0
givepower = 21,21
pausetime = 12,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -0.9,-12
air.velocity = -0.9,-12
fall = 1
fall.recover = 0
yaccel = .51
kill = 0

[State 4001, End]
type = ChangeState
trigger1 = !AnimTime
value = 4002
ctrl = 0

;-------------------
; Drill SDM - Charge
;-------------------

[Statedef 4002]
type = S
movetype = A
physics = S
anim = 3002
poweradd = 0
juggle = 0
velset = 0
ctrl = 0
hitcountpersist = 1

[State 4002, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4002, State]
type = TargetState
trigger1 = target,stateno = 5110
value = 3013

[State 4002, Width]
type = width
trigger1 = 1
edge = 20,20

[State 4002, Var]
type = VarSet
trigger1 = !time
var(17) = 0

[State 4002, Var]
type = VarAdd
triggerall = time > 0
trigger1 = command = "x" || command = "y"
var(17) = 1

[State 4002, Var]
type = VarAdd
triggerall = time > 0
trigger1 = command = "x" && command = "y"
var(17) = 2

[State 4002, Var]
type = VarSet
trigger1 = time > 0
trigger1 = command = "b"
var(17) = 0

[State 4002, Anim]
type = ChangeAnim
trigger1 = var(17) < 7
trigger1 = anim != 3002
value = 3002

[State 4002, Anim]
type = ChangeAnim
trigger1 = var(17) = [7,13]
trigger1 = anim != 3003
value = 3003

[State 4002, Anim]
type = ChangeAnim
trigger1 = var(17) = [14,20]
trigger1 = anim != 3004
value = 3004

[State 4002, Anim]
type = ChangeAnim
trigger1 = var(17) >= 21
trigger1 = anim != 3005
value = 3005

[State 4002, Level1]
type = ChangeState
trigger1 = var(17) < 7
trigger1 = time = 60
value = 4003

[State 4002, Level2]
type = ChangeState
trigger1 = var(17) = [7,13]
trigger1 = time = 60
value = 4006

[State 4002, Level3]
type = ChangeState
trigger1 = var(17) = [14,20]
trigger1 = time = 60
value = 4009

[State 4002, Level4]
type = ChangeState
trigger1 = var(17) >= 21
trigger1 = time = 60
value = 4013

;-------------------------
; Drill SDM - Enemy Thrown
;-------------------------

[Statedef 4010]
type    = A
physics = N
movetype= H
ctrl = 0

[State 690, Camera]
type = ScreenBound
trigger1 = 1

[State 4010, Grabbed]
type = ChangeAnim2
trigger1 = !time
value = 4030

[State 4010, Fall]
type = VelSet
trigger1 = time = 58
y = 2

[State 4010, Fall2]
type = VelAdd
trigger1 = time >= 59
y = 0.51

[State 4010, SafetyState]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------
; Drill SDM - 1st Level - Super Ground Kick
;------------------------------------------
; 1st part - 1st Kick
;--------------------

[Statedef 4003]
type = S
movetype = A
physics = S
anim = 4003
poweradd = 0
velset = 0
ctrl = 0

[State 4003, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4003, Fwd]
type = VelSet
trigger1 = AnimElem = 1, = 1
x = 7

[State 4003, Friction]
type = VelMul
trigger1 = AnimElem >= 1
x = 0.8

[State 4003, Attack]
type = Hitdef
trigger1 = AnimElem = 7
attr = S, HA
hitflag = D
animtype = Hard
priority = 7,Hit
damage = 30
pausetime = 2,2
sparkno = S30002
sparkxy = 8,-5
hitsound = S2,var(5)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = 0,0
givepower = 21, 21
yaccel = .5
numhits = 3
kill = 0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -4
envshake.phase = 2
getpower = 0,0
givepower = 21,21

[State 4011, Ground Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 8050
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = -2
ownpal = 1
ontop = 0

[State 4011, Ground Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 8060
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = 4
ownpal = 1
ontop = 1

[State 4003, Next] ; To the kick loop
type = ChangeState
trigger1 = !AnimTime
value = 4004
ctrl = 0

;------------------------------------------
; Drill SDM - 1st Level - Super Ground Kick
;------------------------------------------
; 2nd part - Kick Loop
;---------------------

[Statedef 4004]
type = S
movetype = A
physics = S
anim = 4004
poweradd = 0
velset = 0
ctrl = 0

[State 4004, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4004, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 4004, Attack]
type = Hitdef
trigger1 = AnimElem = 4
attr = S, HA
hitflag = MAFD
animtype = Hard
priority = 7,Hit
damage = 25
pausetime = 3,2
sparkno = S30002
sparkxy = 8,-5
hitsound = S2,var(5)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = 0,0
givepower = 21, 21
yaccel = .5
kill = 0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -4
envshake.phase = 2
getpower = 0,0
givepower = 21,21

[State 4011, Ground Wave]
type = Explod
trigger1 = AnimElem = 4
anim = 8050
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = -2
ownpal = 1
ontop = 0

[State 4011, Ground Wave]
type = Explod
trigger1 = AnimElem = 4
anim = 8060
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = 4
ownpal = 1
ontop = 1

[State 4004, Loop]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) < 6
value = 4004
ctrl = 0

[State 4004, Next]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 6
value = 4005
ctrl = 0

;------------------------------------------
; Drill SDM - 1st Level - Super Ground Kick
;------------------------------------------
; 3rd part - Final Kicks
;-----------------------

[Statedef 4005]
type = S
movetype = A
physics = S
anim = 4005
poweradd = 0
velset = 0
ctrl = 0

[State 4005, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4005, Fwd]
type = VelSet
trigger1 = AnimElem = 1, = 1
trigger2 = AnimElem = 4, = 1
x = 7

[State 4005, Friction]
type = VelMul
trigger1 = AnimElem >= 1
x = 0.8

[State 4005, Attack]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 30
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7
air.velocity = -2,-7
priority = 7, Hit
sparkno = S30002
sparkxy = 0,-5         
hitsound = S2,var(5)
pausetime = 10,12
fall = 1
fall.recover = 0
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 4005, Attack]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
damage = 30
hitflag = MAFD
animtype = Hard
ground.velocity = -2,-7
air.velocity = -2,-7
priority = 7, Hit
sparkno = S30002
sparkxy = 0,-73
hitsound = S2,var(5)
pausetime = 10,12
fall = 1
fall.recover = 0
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 4005, Attack]
type = HitDef
trigger1 = AnimElem = 11
attr = S, HA
damage = 30
hitflag = MAFD
animtype = Hard
ground.velocity = -2.5,-8
air.velocity = -2.5,-8
priority = 7, Hit
sparkno = S30002
sparkxy = -15,-95         
hitsound = S2,var(5)
pausetime = 10,12
fall = 1
fall.recover = 0
kill = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 21,21

[State 4005, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 4100
ctrl = 0

;--------------------------------------------------
; Drill SDM - 2nd Level - Super Dagger Of Judgement
;--------------------------------------------------
; 1st part - Kick
;----------------

[Statedef 4006]
type = S
movetype = A
physics = S
anim = 4006
poweradd = 0
velset = 0
ctrl = 0

[State 4006, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4006, Fwd]
type = VelSet
trigger1 = AnimElem = 1, = 1
x = 7

[State 4006, Friction]
type = VelMul
trigger1 = AnimElem >= 1
x = 0.8

[State 4006, Attack]
type = Hitdef
trigger1 = AnimElem = 3
attr = S, HA
hitflag = MAFD
animtype = Back
priority = 7,Hit
damage = 40
pausetime = 10,12
sparkno = S30002
sparkxy = 8,-5
hitsound = S1,8
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = -1.5,-6
air.velocity = -1.5,-6
yaccel = .5
numhits = 3
fall = 1
kill = 0
getpower = 0,0
givepower = 21,21

[State 4006, Next] ; To the dagger loops
type = ChangeState
trigger1 = !AnimTime
value = 4007
ctrl = 0

;--------------------------------------------------
; Drill SDM - 2nd Level - Super Dagger Of Judgement
;--------------------------------------------------
; 2nd part - Dagger Loop
;-----------------------

[Statedef 4007]
type = S
movetype = A
physics = S
anim = 4007
poweradd = 0
velset = 0
ctrl = 0

[State 4007, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4007, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 4007, Attack]
type = Hitdef
trigger1 = AnimElem = 2
attr = S, HA
hitflag = MAFD
animtype = Hard
priority = 7,Hit
damage = 25
pausetime = 2,2
sparkno = S30002
sparkxy = 10,-55
hitsound = S10,1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = 0,0
air.velocity = 0,0
forcestand = 1
snap = 100,0
fall = 0
kill = 0
getpower = 0,0
givepower = 21,21

[State 4007, Attack2]
type = Hitdef
trigger1 = AnimElem = 7
attr = S, HA
hitflag = MAFD
animtype = Hard
priority = 7,Hit
damage = 25
pausetime = 2,2
sparkno = S30002
sparkxy = 10,-55
hitsound = S10,1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
forcestand = 1
snap = 100,0
kill = 0
getpower = 0,0
givepower = 21,21

[State 1401, Blood Hit1]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = -10,-65
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4007, Loop]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) < 5
value = 4007
ctrl = 0

[State 4007, Next]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 5
value = 4008
ctrl = 0

;--------------------------------------------------
; Drill SDM - 2nd Level - Super Dagger Of Judgement
;--------------------------------------------------
; 3rd part - Final Dagger Attack
;-------------------------------

[Statedef 4008]
type = S
movetype = A
physics = S
anim = 4008
poweradd = 0
velset = 0
ctrl = 0

[State 4008, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4008, Attack]
type = Hitdef
trigger1 = AnimElem = 2
attr = S, HA
hitflag = MAFD
animtype = Hard
priority = 7,Hit
damage = 25
pausetime = 2,2
sparkno = S30002
sparkxy = 10,-55
hitsound = S10,1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = 0,0
yaccel = .5
fall = 0
fall.recover = 0
kill = 0
getpower = 0,0
givepower = 21,21

[State 4008, Attack2]
type = Hitdef
trigger1 = AnimElem = 7
attr = S, HA
hitflag = MAFD
animtype = Hard
priority = 7,Hit
damage = 25
pausetime = 2,12
sparkno = S30002
sparkxy = 10,-55
hitsound = S10,1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
ground.velocity = -3,-9
air.velocity = -3,-9
yaccel = .5
fall = 1
fall.recover = 0
kill = 0
getpower = 0,0
givepower = 21,21

[State 1401, Blood Hit1]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = -10,-65
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4008, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 4100
ctrl = 0

;------------------------------------------
; Drill SDM - 3rd Level - Super Ground Slam
;------------------------------------------
; 1st part - Grab
;----------------

[Statedef 4009]
type = S
movetype = A
physics = S
anim = 3008
poweradd = 0
velset = 0
ctrl = 0

[State 4009, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4009, P2]
type = TargetState
trigger1 = time = 9
value = 3014

[State 4009, HitAdd]
type = HitAdd
trigger1 = time = 9
value = 1

[State 4009, HitSound]
type = PlaySnd
trigger1 = time = 9
value = 1,8
channel = 1

[State 4009, Hit Spark]
type = Explod
trigger1 = time = 9
anim = 30002
ID = 3006
postype = p1
pos = 65,-12
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 4009, Bind]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 81,-34

[State 4009, Bind]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 65,-78

[State 4009, Bind]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 46,-129

[State 4009, Bind]
type = TargetBind
trigger1 = AnimElem = 9, >=0
pos = 45,-129

[State 4009, Slam] ; Entering the slam loop
type = ChangeState
trigger1 = !AnimTime
value = 4011
ctrl = 0

;------------------------------------------
; Drill SDM - 3rd Level - Super Ground Slam
;------------------------------------------
; 2nd part - Slam Loop
;---------------------

[Statedef 4011]
type = S
movetype = A
physics = S
anim = 4011
poweradd = 0
velset = 0
ctrl = 0

[State 4011, P2]
type = TargetState
trigger1 = !time
value = 4020

[State 4011, P2]
type = TargetLifeAdd
trigger1 = Time = 3
value = -35
kill = 0

[State 4011, P2]
type = TargetPowerAdd
trigger1 = Time = 3
value = 21

[State 4011, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4011, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 4011, HitAdd]
type = HitAdd
trigger1 = time = 3
value = 1

[State 4011, SlamSND]
type = PlaySnd
trigger1 = time = 3
value = 1,12
channel = 1

[State 4011, Hit Spark]
type = Explod
trigger1 = time = 3
anim = 30002
ID = 7006
postype = p1
pos = 50,-5
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 1

[State 4011, Ground Wave]
type = Explod
trigger1 = time = 3
anim = 8050
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = -2
ownpal = 1
ontop = 0

[State 4011, Ground Wave]
type = Explod
trigger1 = time = 3
anim = 8060
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = 4
ownpal = 1
ontop = 1

[State 4011, Shake]
type = EnvShake
trigger1 = time = 3
time = 15
ampl = -6
freq = 70

[State 4011, TBind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 44,-130

[State 4011, TBind2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 4, < 0
pos = 67,-12

[State 4011, TBind3]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 81,-34

[State 4011, TBind4]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 65,-78

[State 4011, TBind5]
type = TargetBind
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
pos = 47,-122

[State 4011, Loop] ; Slam Loop
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) < 14
value = 4011
ctrl = 0

[State 4011, Headbutt] ; Burning Headbutt
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 14
value = 4012
ctrl = 0

;------------------------------------------
; Drill SDM - 3rd Level - Super Ground Slam
;------------------------------------------
; 3rd part - Burning Headbutt
;----------------------------

[Statedef 4012]
type = S
movetype = A
physics = S
anim = 4012
poweradd = 0
velset = 0
ctrl = 0

[State 4012, HitAdd]
type = HitAdd
trigger1 = AnimElem = 6
value = 1

[State 4012, P2]
type = TargetState
trigger1 = !time
value = 4021

[State 4012, P2]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -30
kill = 0

[State 4012, Width]
type = Width
trigger1 = 1
edge = 60,60

[State 4012, TBind 2]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 42,-100

[State 4012, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 38,-103

[State 4012, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,< 0
pos = 40,-106

[State 4012, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 37,-101

[State 4012, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 50,-94

[State 4012, Headbutt]
type = Playsnd
trigger1 = Animelem = 6, =1
value = 1,8
channel = 1

[State 4012, Knockdown Spark]
type = Explod
trigger1 = animelem = 6
anim = 4000
pos = 37,-80
postype = p1
bindtime = 1
ontop = 0
sprpriority = 4
ownpal = 1

[State 4012, Ground Wave]
type = Explod
trigger1 = animelem = 6
anim = 7017
pos = 46,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 4012, Explosion]
type = Explod
trigger1 = animelem = 6
anim = 1106
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 3
ownpal = 1

[State 4012, Shake]
type = EnvShake
trigger1 = AnimElem = 6
time = 20
ampl = -6
freq = 70

[State 4012, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 4100
ctrl = 0

;----------------------------------------------------------
; Drill SDM - Enemy grabbed by Super Ground Slam (2nd part)
;----------------------------------------------------------

[Statedef 4020]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0
juggle = 0

[State 4020, Camera]
type = ScreenBound
trigger1 = 1

[State 4020, Display]
type = ChangeAnim2
trigger1 = !time
value = 4020

;----------------------------------------------------------
; Drill SDM - Enemy grabbed by Super Ground Slam (3rd part)
;----------------------------------------------------------

[Statedef 4021]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0
juggle = 0

[State 4021, Camera]
type = ScreenBound
trigger1 = time < 36	

[State 4021, Burn FX]
type = PalFX
trigger1 = time = 30
add = 40,-70,-200
sinadd = 40,30,0,10
time = 20
ignorehitpause = 1
invertall = 1

[State 4021, Display]
type = ChangeAnim2
trigger1 = !time
value = 4021

[State 4021, Vel]
type = VelSet
trigger1 = time = 36
y = -8.5

[State 4021, Vel]
type = VelSet
trigger1 = time >= 36
x = -2

[State 4021, Vel]
type = VelAdd
trigger1 = time >= 38
y = 0.5

[State 4021, Axis]
type = PosSet
trigger1 = time = 35
y = -20

[State 4021, .]
type = ChangeAnim
trigger1 = time = 35
value = 5050

[State 4021, Safety]
type = SelfState
triggerall = time > 35
trigger1 = Pos Y > 0 && Vel Y > 0
value = 5100

;---------------------------------------------------
; Drill SDM - 4th Level - Super Hebi Tsukai Illusion
;---------------------------------------------------
; 1st part - Arm shaking
;-----------------------

[Statedef 4013]
type = S
movetype = A
physics = S
anim = 3020
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 4013, Dwn]
type = ChangeState
trigger1 = !AnimTime
value = 4014
ctrl = 0

;---------------------------------------------------
; Drill SDM - 4th Level - Super Hebi Tsukai Illusion
;---------------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Gedan (Down)
;-------------

[Statedef 4014]
type = S
movetype = A
physics = S
anim = 4022
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 3009, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3009, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 0,1
sparkno = S30002
sparkxy = -26,-34
hitsound = S2,ifelse(random<=500,9,5)
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
givepower = 21, 21
getpower = 0,0
yaccel = .5
numhits = ifelse(prevstateno=3008,3,1)
kill = 0

[State 3009, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1309
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3009, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1310
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3009, Next] ; Down To Forward
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 1
trigger2 = var(18) = 3
trigger3 = var(18) = 8
trigger4 = var(18) = 10
trigger5 = var(18) = 20
trigger6 = var(18) = 26
trigger7 = var(18) = 28
value = 4015
ctrl = 0

[State 3009, Next] ; Down To Up
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 16
trigger2 = var(18) = 33
value = 4016
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Zenpou (Forward)
;----------------

[Statedef 4015]
type = S
movetype = A
physics = S
anim = 4023
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 3020, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3020, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 0,1
sparkno = S30002
sparkxy = -26,-84
hitsound = S2,ifelse(random<=500,9,5)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
givepower = 21, 21
getpower = 0,0
yaccel = .5
kill = 0

[State 3020, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1303
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3020, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1304
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3020, Next] ; Forward to Down
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 2
trigger2 = var(18) = 7
trigger3 = var(18) = 9
trigger4 = var(18) = 25
trigger5 = var(18) = 27
trigger6 = var(18) = 32
value = 4014
ctrl = 0

[State 3020, Next] ; Forward to Up
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 4
trigger2 = var(18) = 12
trigger3 = var(18) = 14
trigger4 = var(18) = 18
trigger5 = var(18) = 21
trigger6 = var(18) = 30
value = 4016
ctrl = 0

[State 3020, Next] ; Forward to Forward
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 6
trigger2 = var(18) = 11
trigger3 = var(18) = 23
trigger4 = var(18) = 24
trigger5 = var(18) = 29
value = 4015
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Taikuu (Up)
;------------

[Statedef 4016]
type = S
movetype = A
physics = S
anim = 4024
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 3021, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3021, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 0,1
sparkno = S30002
sparkxy = -26,-104
hitsound = S2,ifelse(random<=500,9,5)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
yaccel = .5
kill = 0
givepower = 21, 21
getpower = 0,0

[State 3021, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1306
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3021, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1307
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3021, Next] ; Up to Down
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 15
trigger2 = var(18) = 19
value = 4014
ctrl = 0

[State 3021, Next] ; Up To Forward
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 5
trigger2 = var(18) = 13
trigger3 = var(18) = 17
trigger4 = var(18) = 22
trigger5 = var(18) = 31
value = 4015
ctrl = 0

[State 3009, Final] ; To the final Zenpou
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) = 34
value = 4017
ctrl = 0

;--------------------------------------------
; Drill DM - 4th Level - Hebi Tsukai Illusion
;--------------------------------------------
; 2nd part - Hebi Tsukai
;-----------------------
; Final Zenpou (Forward)
;-----------------------

[Statedef 4017]
type = S
movetype = A
physics = S
anim = 4025
poweradd = 0
velset = 0
ctrl = 0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 3022, Counter]
type = VarAdd
trigger1 = !time
var(18) = 1

[State 3022, Attack]
type = Hitdef
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,Hit
damage = 10
pausetime = 1,12
sparkno = 2
sparkxy = -26,-84
hitsound = S2,ifelse(random<=500,9,5)
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -1.5,-9
givepower = 21, 21
getpower = 0,0
yaccel = .5
fall = 1
kill = 0

[State 3022, Arm1]
type = Explod
trigger1 = AnimElem = 2
anim = 1303
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 3022, Arm2]
type = Explod
trigger1 = AnimElem = 2, =3
anim = 1304
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 3022, Wind]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,22
channel = 1
ignorehitpause = 1

[State 3022, Spiral]
type = ChangeState
trigger1 = !AnimTime
value = 4100
ctrl = 0

;--------------------------
; Drill SDM - Spiral Finish
;--------------------------

[Statedef 4100]
type = S
movetype = A
physics = S
anim = 4100
poweradd = 0
velset = 0
ctrl = 0
juggle = 1

[State 4100, Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,24
channel = 0

[State 4100, Width]
type = Width
trigger1 = 1
edge = 75,50

[State 4100, Spiral]
type = Explod
trigger1 = Time = 4
anim = 3101
pos = 0,0
postype = p1
sprpriority = 5
bindtime = 30
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4100, Vels]
type = Posadd
trigger1 = time = 6
x = 5

[State 4100, Vels]
type = Posadd
trigger1 = time = [7,10]
trigger2 = time = 12
x = 4

[State 4100, Vels]
type = Posadd
trigger1 = time = 11
trigger2 = time = [13,15]
trigger3 = time = 17
x = 3

[State 4100, Vels]
type = Posadd
trigger1 = time = 16
trigger2 = time = [18,21]
trigger3 = time = 23
x = 2

[State 4100, Vels]
type = Posadd
trigger1 = time = 22
trigger2 = time = [24,25]
trigger3 = time = 27
trigger4 = time = 29
x = 1

[State 4100, Tornado]
type = HitDef
trigger1 = AnimElem = 4, = 1
trigger2 = AnimElem = 4, = 2
trigger3 = AnimElem = 4, = 3
trigger4 = AnimElem = 4, = 5
trigger5 = AnimElem = 4, = 7
trigger6 = AnimElem = 4, = 9
trigger7 = AnimElem = 4, = 11
attr = S, HA
damage = 10,0
animtype = Up
hitflag = MAFD
sparkno = S30002
sparkxy = -30,-100
hitsound = S1,8
givepower = 21, 21
getpower = 0,0
pausetime = 3,3
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -3,-1
air.velocity = -3,-1
down.velocity = -3,-1
fall = 1
fall.recover = 0
yaccel = .5
kill = 0

[State 4100, Tornado]
type = HitDef
trigger1 = AnimElem = 4, =13
attr = S, HA
damage = 10,0
animtype = DiagUp
hitflag = MAFD
sparkno = S30002
sparkxy = -30,-100
hitsound = S1,8
givepower = 21, 21
getpower = 0,0
pausetime = 3,12
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -5,-10
air.velocity = -5,-10
down.velocity = -5,-10
fall = 1
fall.recover = 0
yaccel = .5

[State 4100, Laugh]
type = VarSet
triggerall = AnimElem = 3, >=0
triggerall = AnimElem = 8, < 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "x" && command = "y"
v = 19
value = 1

[State 4100, Laugh]
type = ChangeState
triggerall = AnimElem = 8
trigger1 = var(19)
value = 4101

[State 4100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------
; Drill - Ending Laugh
;---------------------

[Statedef 4101]
type = S
movetype = I
physics = S
anim = 4040
poweradd = 0
velset = 0
ctrl = 0

[State 4101, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 0,10

[State 4101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HSDM / MAX2 - (What's its name already ?)
;---------------------------------------------------------------------------
; Attempt
;--------

[Statedef 4500]
type = S
movetype = A
physics = S
anim = 4500
poweradd = -3000
velset = 0
ctrl = 0


[State 2000, 2]
type = SuperPause
trigger1 = AnimElem = 5
time = 10
;movetime = 20
anim = -1

[State 1700, 3]
type = PlaySnd
trigger1 = time = 1
value = 17000,1

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 5
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
trigger1 = AnimElem = 5
anim = 17200
pos = -6,-78
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 5
anim = 17210
pos = -6,-78
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

[State 3000,黑色底色]
type = Envcolor
trigger1 = 1
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 40
under = 1
supermove = 1




[State 4500, Mute]
type = StopSnd
trigger1 = !time
channel = 3


[State 4500, Invincible]
type = NotHitBy
trigger1 = 1
value = C,AA


[State 4500, HSDM Sound]
type = Playsnd
trigger1 = time = 19
value = 1,18
channel = 1

[State 4500, AttemptVoice]
type = PlaySnd
trigger1 = time = 18
value = 0,13
channel = 0

[State 4500, MissVoice]
type = PlaySnd
trigger1 = time = 50
value = 0,9

[State 4500, Attempt]
type = HitDef
triggerall = var(16) = 0 ; Opponent Guard Checking variable
triggerall = P2StateNo != [40,52] ; Can't grab while opponent is in a jump start/land state
trigger1 = AnimElem = 8
attr = S, HT
damage = 0
animtype = Hard
hitflag = M
sparkno = -1
priority = 5, Miss
givepower = 21, 21
getpower = 0,0
ground.type = high
p1stateno = 4501
p2stateno = 4510
numhits = 0

[State 4500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------
; HSDM / MAX2
;------------
; Success
;--------

[Statedef 4501]
type = S
movetype = A
physics = S
anim = 4501
velset = 0
ctrl = 0
sprpriority = 1


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
time = 40
under = 1
supermove = 1

[State 4501, Screen]
type = Width
trigger1 = 1
edge = 125,95

[State 4501, BG]
type = null
trigger1 = 1
flag = noFG
flag2= noBG

[State 4501, Grab]
type = PlaySnd
trigger1 = !time
value = 1,9
channel = 1

[State 4501, Grab]
type = Explod
trigger1 = !time
anim = 6030
ID = 4501
postype = p1
pos = 35,-105
bindtime = 1
sprpriority = 9
ownpal = 1
ontop = 0

[State 4501, Quake]
type = EnvShake
trigger1 = AnimElem = 5
time = 20
ampl = -4
freq = 60

[State 4501, QuakeSND]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,12
channel = 1

[State 4501, HitSpark]
type = Explod
trigger1 = AnimElem = 5
anim = 8050
ID = 4501
postype = p1
pos = 65,-10
bindtime = 1
sprpriority = 2
ownpal = 1
ontop = 0

[State 4011, Ground Wave]
type = Explod
trigger1 = AnimElem = 5
anim = 8060
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = -2
ownpal = 1
ontop = 0

[State 4011, Ground Wave]
type = Explod
trigger1 = AnimElem = 5
anim = 7036
ID = 3006
postype = p1
pos = 60,0
bindtime = 1
sprpriority = 4
ownpal = 1
ontop = 1

[State 4501, Bind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 35,0

[State 4501, Bind]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 45,-126

[State 4501, Bind]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 42,-126

[State 4501, Bind]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 41,-128

[State 4501, Bind]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 66,-10

[State 4501, SDHTI]
type = ChangeState
trigger1 = !AnimTime
value = 4502
ctrl = 0

;-----------------------------------------------------
; HSDM / MAX2
;-----------------------------------------------------
; 2nd part - Super Daggered Hebi Tsukai Illusion (...)
;-----------------------------------------------------

[Statedef 4502]
type = S
movetype = A
physics = S
anim = 4502
velset = 0
ctrl = 0
sprpriority = 1


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
time = 40
under = 1
supermove = 1

[State 4502, Screen]
type = Width
trigger1 = 1
edge = 85,85

[State 4502, BG]
type = null
trigger1 = 1
flag = noFG
flag2= noBG

[State 4502, Var]
type = VarAdd
trigger1 = !time
var(18) = 1
persistent = 0

[State 4502, Attack]
type = Hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
attr = S, HA
hitflag = MAFD
animtype = Hard
priority = 7,Hit
damage = 15
pausetime = 0,0
sparkno = S30002
sparkxy = -25+10*(random<500),-10
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = 0,0
givepower = 21, 21
getpower = 0,0
yaccel = .5
kill = 0
snap = 110,0

[State 1401, Blood Hit1]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = -15-10*(random < 500),0
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4502, Laugh]
type = PlaySnd
triggerall = time = 1
trigger1 = var(18) = 1
trigger2 = var(18) = 6
value = 0,10
channel = 0

[State 4502, Hit]
type = PlaySnd
trigger1 = movehit = 1
trigger1 = random <= 800
value = 10,1
channel = 1

[State 4502, Loop]
type = ChangeState
triggerall = !AnimTime
trigger1 = var(18) < 9
value = 4502
ctrl = 0

[State 4502, Grab]
type = ChangeState
trigger1 = var(18) = 9
value = 4503
ctrl = 0

;-----------------------
; HSDM / MAX2
;-----------------------
; 3rd part - Throat Grab
;-----------------------

[Statedef 4503]
type = S
movetype = A
physics = S
anim = 4503
velset = 0
ctrl = 0
sprpriority = 2


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
time = 40
under = 1
supermove = 1

[State 4503, Screen]
type = Width
trigger1 = 1
edge = 85,85

[State 4503, BG]
type = null
trigger1 = time < 108
flag = noFG
flag2= noBG

[State 4503, Target]
type = TargetState
trigger1 = !time
value = 4511

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 11
anim = 7008
pos = 89,-20
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 12
anim = 7008
pos = 80,-20
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 13
anim = 7008
pos = 75,-30
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 14
anim = 7008
pos = 90,-70
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 15
anim = 7008
pos = 80,-100
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 16
anim = 7008
pos = 60,-110
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 17
anim = 7008
pos = 30,-125
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 18
anim = 7008
pos = -50,-120
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 19
anim = 7008
pos = -65,-90
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 20
anim = 7008
pos = -70,-50
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 21
anim = 7008
pos = -70,-40
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Blood]
type = Explod
trigger1 = AnimElem = 22
anim = 7008
pos = -70,-30
postype = p1
sprpriority = 2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 4503, Voice]
type = PlaySnd
trigger1 = AnimElem = 4,=1
value = 0,14
channel = 0

[State 4503, FX]
type = PlaySnd
trigger1 = AnimElem = 17, =1
value = 1,10
channel = 1

[State 4503,Damage]
type = TargetLifeAdd
trigger1 = time = 45
trigger2 = time = 75
value = -50
kill = 0

[State 4503,Damage]
type = TargetLifeAdd
trigger1 = time = 108
value = -50

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 12, >= 0
trigger1 = AnimElem = 13, < 0
pos = 82,-23

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 13, >= 0
trigger1 = AnimElem = 14, < 0
pos = 74,-36

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 14, >= 0
trigger1 = AnimElem = 15, < 0
pos = 66,-67

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 15, >= 0
trigger1 = AnimElem = 16, < 0
pos = 55,-84

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 16, >= 0
trigger1 = AnimElem = 17, < 0
pos = 44,-98

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 17, >= 0
trigger1 = AnimElem = 18, < 0
pos = 30,-108

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 18, >= 0
trigger1 = AnimElem = 19, < 0
pos = -25,-109

[State 4503,Bind]
type = TargetBind
trigger1 = AnimElem = 19, >= 0
trigger1 = AnimElem = 20, < 0
pos = -51,-89

[State 4503, Laugh]
type = ChangeState
trigger1 = !AnimTime
value = 4504
ctrl = 0

;------------
; HSDM / MAX2
;------------
; End Laugh
;------------

[Statedef 4504]
type = S
movetype = I
physics = S
anim = 4504
velset = 0
ctrl = 0
sprpriority = 2


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
time = 40
under = 1
supermove = 1

[State 4504, Facing]
type = Turn
trigger1 = !time

[State 4504, Laugh]
type = PlaySnd
trigger1 = time = 4
value = 0,10
channel = 0

[State 4504, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------
; HSDM / MAX2 - Enemy grabbed (1st part)
;---------------------------------------

[Statedef 4510]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0
juggle = 0
sprpriority = 2

[State 4510, Camera]
type = ScreenBound
trigger1 = 1

[State 4510, Display]
type = ChangeAnim2
trigger1 = !time
value = 4510

[State 4510, Anim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5110

[State 4510, LieDown] 
type = StateTypeSet
trigger1 = Anim = 5110
statetype = L
physics = N
movetype = I
persistent = 0

[State 4510, Facing]
type = Turn
trigger1 = Anim = 5110
persistent = 0

[State 4510, PosAdd]
type = PosAdd
trigger1 = Anim = 5110
x = 30
persistent = 0

[State 4510, Ground]
type = PosSet
trigger1 = Anim = 5110
y = 0
persistent = 0

;---------------------------------------
; HSDM / MAX2 - Enemy grabbed (2nd part)
;---------------------------------------

[Statedef 4511]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0
anim = 5110

[State 4511, Ground]
type = PosSet
trigger1 = !time
y = 0

[State 4511, Anim]
type = ChangeAnim2
trigger1 = time = 64
value = 4511

[State 4511, Vel]
type = VelSet
trigger1 = time >= 107
x = -3

[State 4511, Vel]
type = VelSet
trigger1 = time = 107
y = -4.5

[State 4511, Grav]
type = VelAdd
trigger1 = time >= 108
y = 0.53

[State 4511, End]
type = Turn
trigger1 = time > 110
trigger1 = Pos Y >= 0 && Vel Y >= 0

[State 4511, End]
type = SelfState
trigger1 = time > 110
trigger1 = Pos Y >= 0 && Vel Y >= 0
value = 5100

;===================================
; CC UltraROX Yamazaki - End Of File
;===================================
