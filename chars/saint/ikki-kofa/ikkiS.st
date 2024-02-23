;----------------------------------------------------------------
;----------------------------------------------------------------

;===========================================================================
;Fireball
;===========================================================================
 ;Light Fireball
[StateDef 1000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 20

;flam
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3,1

 ;voix
[State 1000, PlaySnd]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
value = s2,5

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1000
projanim = 8088
projhitanim = 8146
projcancelanim =8146
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 80,-85
velocity = 5
attr = S, SP
damage   = 10
animtype = Light
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAFDP
hitsound   = s4,0
pausetime = 10,10
hitsound   = s2,2
guardsound = s1,0
sparkno = S30002
sparkxy = 45,-5
guard.sparkno = s30040
ground.type = Low
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;medium Fireball
[StateDef 1010]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 20

;flam
[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3,1

 ;voix
[State 1020, PlaySnd]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
value = s2,5

[State 1010, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1010
projanim = 8088
projhitanim = 8146
projhits = 2
projmisstime = 2
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 80,-75
velocity = 5
attr = S, SP
damage   = 15
animtype = Light
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAFDP
hitsound   = s4,0
guardsound = s1,0
pausetime = 10,10
hitsound   = s2,2
guardsound = s1,0
sparkno = S30002
sparkxy = 45,-5
guard.sparkno = s30040
ground.type = Low
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 1010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
 ; Strong  Fireball
[StateDef 1020]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1001
poweradd = 20

;flam
[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s3,1

 ;voix
[State 1020, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = s2,5

[State 1020, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1010
projanim = 8088
projhitanim = 8146
projhits = 3
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 80,-75
velocity = 5
attr = S, SP
damage   = 20
animtype = Light
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAFDP
hitsound   =s4,0
pausetime = 10,10
hitsound   = s2,2
guardsound = s1,0
sparkno = S30002
sparkxy = 45,-5
guard.sparkno = s30040
ground.type = Low
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 1020, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;l'envole du phénix
;===========================================================================
 ;Light fly away phoenix
[Statedef 1030]
type    = S
movetype= A
physics = S
poweradd= 10
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

  ;voix
[State 1030, PlaySnd]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem =2
value = S2,9

[State 1030, NoHit]
type = NotHitBy
trigger1 = 1
value = SC

[State 1030, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1031

;---------------------------------------------------------------------------
[Statedef 1031]
type    = A
movetype= A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.4,-8.4

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S3,2
;volume = 0
;channel = -1


[State 1031, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact =8
attr = A, SA
animtype = Up
damage    = 10
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S30002
sparkxy = -10,-100
guard.sparkno = s30040
hitsound   = S1,2
guardsound = s1,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-13.5
guard.velocity = -7
air.velocity = -.1,-13.5
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20


[State 1031]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
;médium fly away phoenix
[Statedef 1032]
type    = S
movetype= A
physics = S
poweradd= 10
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

  ;voix
[State 1032, PlaySnd]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem =2
value = S2,9

[State 1032, NoHit]
type = NotHitBy
trigger1 = 1
value = SC

[State 1032, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1033

;---------------------------------------------------------------------------
[Statedef 1033]
type    = A
movetype= A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.4,-8.4

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S3,2
;volume = 0
;channel = -1

[State 1033, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact =5
attr = A, SA
animtype = Up
damage    = 13
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S30002
sparkxy = -10,-80
guard.sparkno = s30040
hitsound   = S1,2
guardsound = s1,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-13.5
guard.velocity = -7
air.velocity = -.1,-13.5
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20

[State 1033]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
;Strong fly away phoenix
[Statedef 1034]
type    = S
movetype= A
physics = S
poweradd= 10
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

  ;voix
[State 1034, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem =2
value = S2,9

[State 1034, NoHit]
type = NotHitBy
trigger1 = 1
value = SC

[State 1034, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035

;---------------------------------------------------------------------------
[Statedef 1035]
type    = A
movetype= A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.4,-8.4

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = S3,2
;volume = 0
;channel = -1

[State 1035, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact =3
attr = A, SA
animtype = Up
damage    = 12
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S30002
sparkxy = -10,-80
guard.sparkno = s30040
hitsound   = S1,2
guardsound = s1,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-13.5
guard.velocity = -7
air.velocity = -.1,-13.5
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20

[State 1035]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
; Plongeon du phénix
;===========================================================================
;Light Plongeon du phénix
[Statedef 1040]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1040
velset = 0,0
juggle = 7

;voix
[State 1040, PlaySnd]
type = PlaySnd
triggerall = random <= 250
trigger1 = time=0
value = S2,3

;flam
[State 1040, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3,1

[State 1040, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;flam snd
[State 1040, PlaySnd2]
type = PlaySnd

trigger1 = AnimElem = 3
trigger2 = time=2
value = S3000,2
volume = 0
channel = -1

; traverser P2
[State 1040, PushOff]
type = PlayerPush
trigger1 = anim = 1040
value = 0

;vel feux
[State 1040, Vel]
type = VelSet
trigger1 = Anim = 1040
trigger1 = AnimElem =6
X = 7
Y = 7

[State 1040, FEUX ]
type = HitDef
triggerall = Anim = 1040
trigger1 = AnimElem = 6
trigger2 = AnimElem =7
trigger3 = AnimElem = 8
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 16
pausetime = 8,12
guard.pausetime = 12,12
sparkno = S30002
sparkxy = 0,-10
guard.sparkno = s30040
hitsound   = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

;Axe de  fin para pore au sol
[State 1040, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1041

;===========================================================================
;atérisage du Plongeon du phénix
 [Statedef 1041]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1053
velset = 0,0
juggle = 7

[State 1053,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1041, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;medium Plongeon du phénix
[Statedef 1042]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1040
velset = 0,0
juggle = 7

;voix
[State 1042, PlaySnd]
type = PlaySnd
triggerall = random <= 500
trigger1 = time=0
value = S2,3

;flam
[State 1042, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3,1


 ;flam snd
[State 1042, PlaySnd2]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = time=2
value = S3000,2
volume = 0
channel = -1


[State 1042, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA


;traverser P2
[State 1042, PushOff]
type = PlayerPush
trigger1 = anim = 1040
value = 0

;vel feux
[State 1042, Vel]
type = VelSet
trigger1 = Anim = 1040
trigger1 = AnimElem =6
X = 7
Y = 7

[State 1042, FEUX ]
type = HitDef
triggerall = Anim = 1040
trigger1 = AnimElem = 6
trigger2 = AnimElem =7
trigger3 = AnimElem = 8
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 26
pausetime = 8,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-10
hitsound   = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

;Axe de  fin para pore au sol
[State 1042, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1041

;===========================================================================
; Strong Plongeon du phénix
[Statedef 1043]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1040
velset = 0,0
juggle = 7

;voix
[State 1043, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = time=0
value = S2,3

;flam
[State 1043, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3,1


[State 1043, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;flam snd
[State 1043, PlaySnd2]
type = PlaySnd

trigger1 = AnimElem = 3
trigger2 = time=2
value = S3000,2
volume = 0
channel = -1

; traverser P2
[State 1043, PushOff]
type = PlayerPush
trigger1 = anim = 1040
value = 0

;vel feux
[State 1043, Vel]
type = VelSet
trigger1 = Anim = 1040
trigger1 = AnimElem =6
X = 7
Y = 7

[State 1043, FEUX ]
type = HitDef
triggerall = Anim = 1040
trigger1 = AnimElem = 6
trigger2 = AnimElem =7
trigger3 = AnimElem = 8
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 36
pausetime = 8,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-10
hitsound   = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

;Axe de  fin para pore au sol
[State 1043, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1041
;===========================================================================
;les Serres du phénix
;===========================================================================

;les Serres du phénix Light
[Statedef 1050]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7

;invincibilité
[State 1050, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;kik snd
[State 1050, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
;trigger2 = time=2
value = S2,7
volume = 0
channel = -1

; traverser P2
[State 1050, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0

;vel kik
[State 1050, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y = 7

[State 1050, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
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
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1050,kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 30
pausetime = 15,15
guard.pausetime = 12,12
sparkno = S30002;s8146
guard.sparkno = s30040
sparkxy = 0,-25
hitsound   = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
trigger1 = MoveContact=1

;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053
;===========================================================================

;médium les Serres du phénix
[Statedef 1051]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7


;invincibilité
[State 1051, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;kik snd
[State 1051, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
;trigger2 = time=2
value = S2,7


; traverser P2
[State 1051, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0



;vel kik
[State 1051, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y =7



[State 1051, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
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
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 50
pausetime = 20,20
guard.pausetime = 12,12
sparkno = S30002;s8146
guard.sparkno = s30040
sparkxy = 0,-35
hitsound   = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1


;;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
trigger1 = MoveContact=1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
;hard les Serres du phénix
[Statedef 1052]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7


;invincibilité
[State 1052, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

;voix
[State 1052, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = S2,7

; traverser P2
[State 1052, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0

;vel kik
[State 1052, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y = 7

[State 1052, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
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
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 70
pausetime = 25,25
guard.pausetime = 12,12
sparkno = S30002;s8146
guard.sparkno = s30040
sparkxy = 0,-35
hitsound   = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
trigger1 = MoveContact=1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
;atérire
[Statedef 1053]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1053
velset = 0,0
juggle = 7

[State 1053,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1053, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;rebon sur p2
[Statedef 1055]
type = A
movetype = A
physics = N
ctrl = 0
anim =1055
velset = 0,0
juggle = 7

[State 1055,1]
type = PosSet
trigger1 = Time = 0
y = 0

 [State 1055, VelSet]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem=1
x = -10
y = -7
;ignorehitpause =
;persistent =


[State 1055, VelSet]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem=6
x = 0
y = 0

;ignorehitpause =
;persistent =
[State 1055, end]
type = ChangeState
trigger1 =AnimTime = 0; AnimElem =6
value = 50
ctrl = 1
;===========================================================================
; Light MULTI Punch
;===========================================================================
; MULTI Punch
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1060
sprpriority = 2


[State 1060, 1]
type = HitDef
trigger1 = Anim = 1060
attr = S, NA
damage = 4, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 3
sparkno = S30002
sparkxy = -10, -80
guard.sparkno = s30040
hitsound = s1,1
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 1060, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
; Strong MULTI Punch
;===========================================================================
; MULTI Punch
[Statedef 1061]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1060
sprpriority = 2


[State 1061, 1]
type = HitDef
trigger1 = Anim = 1060
attr = S, NA
damage = 4, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 3
sparkno = S30002
sparkxy = -10, -80
guard.sparkno = s30040
hitsound = s1,1
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1061, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 1060, 7]
type = ChangeState
trigger1 =time=30
value = 0
ctrl = 1
;===========================================================================
; Stand Wings
;===========================================================================
;Light Stand Wings
[Statedef 1070]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 0
value =1070,0

;voix
[State 1070, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 =Time = 0
value = S2,5

[State 1070, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 15, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s30040
sparkno = S30002
sparkxy = -10, -76
hitsound = 5, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1070, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 45,-125 ;100
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1070, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 45,-115 ;or-80
guard.sparkno = s30040
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   =s1,3 ;5,0
guardsound = 6,0
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

[State 1070, 1]
type = PlaySnd
trigger1 = Time = 1
value = 3400, 0

[State 1070, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; médium Stand Wings
[Statedef 1071]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2

[State 1071]
type = PlaySnd
trigger1 = Time = 0
value =1070,0

;voix
[State 1071, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 =Time = 0
value = S2,5

[State 1071, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
sparkxy = -10, -76
guard.sparkno = s30040
hitsound = 5, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1071, Wings]
type = Projectile
trigger1 = time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy = 45,-135 ;or120
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 10,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1071, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy = 45,-125;or100
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 10,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1071, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy = 45,115;-80
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 11,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1071, 1]
type = PlaySnd
trigger1 = Time = 1
value = 3400, 0

[State 1071, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------
; Strong Stand Wings
[Statedef 1072]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2

[State 1072]
type = PlaySnd
trigger1 = Time = 0
value =1070,0

;voix
[State 1072, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 =Time = 0
value = S2,5

[State 1072, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10, -76
hitsound = 5, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1072, Wings]
type = Projectile
trigger1 = time = 11
projanim = 3410
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy = 45,-155 ;or140
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 10,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1072, Wings]
type = Projectile
trigger1 = time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy =45,-145 ;or130
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 11,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1072, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy = 45,-135 ;or120
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 12,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1072, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy = 45,-125;or100
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 13,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1072, Wings]
type = Projectile
trigger1 = time = 15
projanim = 3414
projhits = 1
projhitanim = -1
offset = 0,30
sparkno = S30002
sparkxy =  45,115;-80
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 14,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1072, 1]
type = PlaySnd
trigger1 = Time = 1
value = 3400, 0

[State 1072, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
; air Wings
;===========================================================================
;Light air Wings
[Statedef 1750]
type    = A
movetype= A
physics = N
anim = 1750
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1750, Turn]
type = Turn
trigger1 = P2Dist X < 0


[State 1750, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA


[State 1750, Snd]
type = PlaySnd
trigger1 = time = 0
value = 3500,2

;voix
[State 1750, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 =Time = 0
value = S2,5


[State 1750, Snd]
type = PlaySnd
trigger1 = time = 15
value = 3500,3



[State 1750, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 45,-80
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1750, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-80
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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


;[State 3502]
;type = ChangeState
;trigger1 = Time = 20
;value = 50
;ctrl = 1


[State 1750]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 1

;===========================================================================


;médium air Wings
[Statedef 1751]
type    = A
movetype= A
physics = N
anim = 1750
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1751, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA


[State 1751, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1751, Snd]
type = PlaySnd
trigger1 = time = 0
value = 3500,2



;voix
[State 1751, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 =Time = 0
value = S2,5

[State 1751, Snd]
type = PlaySnd
trigger1 = time = 15
value = 3500,3



[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 45,-80
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 10,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-80
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 11,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-50
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 12,4
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

;[State 3502]
;type = ChangeState
;trigger1 = Time = 20
;value = 50
;ctrl = 1


[State 1751]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 1

;===========================================================================


;Strong air Wings
[Statedef 1752]
type    = A
movetype= A
physics = N
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0

[State 1752, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA


[State 1752, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1752, Snd]
type = PlaySnd
trigger1 = time = 0
value = 3500,2


;voix
[State 1752, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 =Time = 0
value = S2,5

[State 1752, Snd]
type = PlaySnd
trigger1 = time = 15
value = 3500,3

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3510
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 45,-90
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 10,1
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-70
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 11,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-40
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 12,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-20
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 13,4
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
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

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3514
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S30002
sparkxy = 90,-10
guard.sparkno = s30040
hitsound   =s1,3 ;5,0
velocity = 14,5
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 15
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = 5,0
guardsound = 6,0
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

;[State 1752]
;type = ChangeState
;trigger1 = Time = 20
;value = 50
;ctrl = 1


[State 1752]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 1

;=============================================================================
;explosion du phénix
;=============================================================================

[Statedef 1080]
type    = s
movetype= A
physics = N
anim = 1080
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

;SuperPause
[State 1080, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = 1080
Time = 70
movetime = 70
darken = 20

[State 2100 , 3]
type = EnvShake
trigger1 = Time = 0
time = 50


[State 1080]
type = ChangeState
trigger1 = AnimTime = 0
value = 1081
ctrl = 1

;==============================================================================
[Statedef 1081]
type    = s
movetype= A
physics = N
anim = 1081
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1081, Snd]
type = PlaySnd
trigger1 = time = 0
value =190,2

[State 1081, Snd]
type = PlaySnd
trigger1 = time = 0
value =2,3

[State 1081, EXPLOS Cosmos]
type = Explod
;triggerall = NumExplod(2002) = 0
trigger1 =  AnimElem=1
anim =8108
id = 2002
pos = 0,0
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
supermove = -2
removeongethit = 1
supermovetime = 700

 [State 2100 , 3]
type = EnvShake
trigger1 = Time = 0
time = 50

[State 1081, 1]
type = Projectile
triggerall=anim=1081
trigger1 =AnimElem = 1
;trigger1 = Time%20=0
projID = 8107
projanim =8107
projhits = 20
projhitanim = 80110
projmisstime = 5
projpriority = 1
projremove = 1
projremovetime = 120
projedgebound =120
attr = S, HP
guardflag = MA
guard.cornerpush =0
guard.velocity = 2
guard.hittime = 3
guard.slidetime = 5
guard.pausetime =3,3
guard.damage =
hitflag = MAFDP
animtype = hard
damage   = 5,0
postype = p1
pos =0,0
offset =0,35
velocity =0,-10
pausetime = 3,9
supermovetime = 140
hitsound   = s1,2
guardsound = 6,0
sparkno = -1
sparkxy =0 -0
ground.type = Low
ground.cornerpush.veloff = 0
ground.slidetime =0
ground.hittime  = 1
ground.velocity = -10,-10
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
fall=1


[State 1081]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;[Statedef 1081]
;type    = S
;ctrl = 0
;anim = prevstateno + 1
;velset = 0,0

;[State 1081, 1]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1
;==============================================================================
; TRENCDIMENTION
;==============================================================================
; TRENCDIMENTION1
[Statedef 1084]
type    = s
movetype= A
physics = N
anim = 1084
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1084, PlaySnd]
type = PlaySnd
trigger1 =time=1
value = S2,12

[State 1084, PlaySnd]
type = PlaySnd
trigger1 =time=1
value = S180,1

[State 1084]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================
;TRENCDIMENTION2
;===========================================================
[Statedef 1085]
type    = s
movetype= A
physics = N
anim = 1085
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1084, PlaySnd]
type = PlaySnd
trigger1 =time=1
value = S2,12

[State 1084, PlaySnd]
type = PlaySnd
trigger1 =time=1
value = S180,1


[State 1084]
type = ChangeState
trigger1 = AnimTime = 0
value =1086
ctrl = 0
;==========================
;suit
;=========================
[Statedef 1086]
type    = s
movetype= A
physics = N
anim = 1086
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 =TIME=0
x = 290
y = 0
;ignorehitpause =
;persistent =

[State 1084]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------
; helper
[Statedef 2000]
type    = s
movetype= A
physics = N
anim = 2000
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 2000, Helper]
type = Helper
trigger1 =AnimElem=1
helpertype = normal ;player
name = "andremaide"
;ID =
stateno =2002
pos = -45,-150
postype =p1 ;left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
;size.xscale (float)
;size.yscale (float)
;size.ground.back (int)
;size.ground.front (int)
;size.air.back (int)
;size.air.front (int)
;size.height (int)
;size.proj.doscale (int)
;size.head.pos (int,int)
;size.mid.pos (int,int)
;size.shadowoffset (int)
;ignorehitpause =
;persistent =

[State 2000]
type = ChangeState
trigger1 =Time = 100
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
 ; attaque
[Statedef 2002]
type    = s
movetype= A
physics = s
anim = 2002
velset = 0,0
poweradd = 0
juggle = 0


  [State 2002, VelAdd]
type = VelAdd
trigger1 =Anim = 2002
X = 7
Y = 7
;ignorehitpause =
;persistent =


[State 2002, kik]
type = HitDef
trigger1 = Anim = 2002
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 15
pausetime = 15,15
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-25
hitsound   = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

[State 2002]
type = ChangeState
trigger1 = Pos Y >= -3
value = 2003
ctrl = 0


;----------------------------------------------------------------
;----------------------------------------------------------------
 ; atérisage
[Statedef 2003]
type    = S
movetype= A
physics = S
anim = 2003
velset = 0,0
poweradd = 0
juggle = 0

[State 2003, Tux]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 10

[State 2003]
type = ChangeState
trigger1 = AnimTime = 0
value = 2004
ctrl = 0
;----------------------------------------------------------------

;----------------------------------------------------------------
 ; fuit
[Statedef 2004]
type    = S
movetype= A
physics = S
anim = 2004
velset = 0,0
poweradd = 0
juggle = 0

[State 2004, VelSet]
type = VelSet
trigger1 = AnimElem=2
x = -15
y = -15

[State 2004, DestroySelf]
type = DestroySelf
trigger1=  AnimElem=6