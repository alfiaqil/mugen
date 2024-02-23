;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;昁嶦儘乕僾
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 56
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2


[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 12, 3

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 0


[Statedef 1201]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1201
ctrl = 0
sprpriority = 2

[State 1201,Trail]
type = Explod
;trigger1 = time = 0
trigger1 = animelem = 1
anim = 1213
;id = 1040
postype = p1
pos = 0,0
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1201, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = M
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-90
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1201, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0


[Statedef 1202]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1202
ctrl = 0
sprpriority = 2

[State 1202,Trail]
type = Explod
;trigger1 = time = 0
trigger1 = animelem = 1
anim = 1213
;id = 1040
postype = p1
pos = 32,0
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1202, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = M
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-90
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1204, 5]
type = ChangeState
triggerall = command = "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
value = 1402
ctrl = 0

[State 1202, 5]
type = ChangeState
triggerall = command != "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
value = 1222
ctrl = 0

[State 1202, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1203
ctrl = 0

[Statedef 1203]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1203
ctrl = 0
sprpriority = 2

[State 1203,Trail]
type = Explod
trigger1 = animelem = 1
anim = 1213
;id = 1040
postype = p1
pos = 80,0
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1203, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = M
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-90
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1204, 5]
type = ChangeState
triggerall = command = "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
value = 1401
ctrl = 0

[State 1203, 5]
type = ChangeState
triggerall = command != "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
value = 1221
ctrl = 0

[State 1203, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1204
ctrl = 0

[Statedef 1204]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1204
ctrl = 0
sprpriority = 2

[State 1204, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = M
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-90
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1204, 5]
type = ChangeState
triggerall = command = "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
value = 1400
ctrl = 0

[State 1204, 5]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58)=1
trigger1 = movehit
value = 1400
ctrl = 0

[State 1204, 5]
type = ChangeState
triggerall = command != "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
value = 1220
ctrl = 0

[State 1204, 5]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58)=1
trigger1 = moveguarded
value = 1220
ctrl = 0

[State 1204, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1205
ctrl = 0

[Statedef 1205]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1205
ctrl = 0
sprpriority = 2

[State 1205, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;壴壩挿
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1220
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 1020, 2]
type = Projectile
trigger1 = time = 0
projanim = 1210
;projhitanim = 1210
offset = 20, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 6
projanim = 1210
;projhitanim = 1210
offset = 0, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 8
projanim = 1211
;projhitanim = 1210
offset = 20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 10
projanim = 1210
;projhitanim = 1210
offset = 20, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1210
;projhitanim = 1210
offset = 0, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1211
;projhitanim = 1210
offset = -20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 18
projanim = 1211
;projhitanim = 1210
offset = -20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1210
;projhitanim = 1210
offset = -10, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1211
;projhitanim = 1210
offset = -20, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 24
projanim = 1210
;projhitanim = 1210
offset = -20, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 26
projanim = 1211
;projhitanim = 1210
offset = -30, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 30
projanim = 1211
;projhitanim = 1210
offset = -40, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1





;壴壩拞
[Statedef 1221]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1221
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 1020, 2]
type = Projectile
trigger1 = time = 0
projanim = 1210
;projhitanim = 1210
offset = 20, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 4
projanim = 1210
;projhitanim = 1210
offset = 0, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 8
projanim = 1211
;projhitanim = 1210
offset = 20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 12
projanim = 1211
;projhitanim = 1210
offset = 20, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1210
;projhitanim = 1210
offset = 0, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 18
projanim = 1211
;projhitanim = 1210
offset = -20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1210
;projhitanim = 1210
offset = -20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 24
projanim = 1211
;projhitanim = 1210
offset = -10, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1221, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;壴壩抁
[Statedef 1222]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1222
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 1020, 2]
type = Projectile
trigger1 = time = 0
projanim = 1210
;projhitanim = 1210
offset = 20, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
sparkxy = 130, -90
hitsound = s20-var(35),1
guard.sparkno = s30040
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 8
projanim = 1210
;projhitanim = 1211
offset = 0, 0
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1211
;projhitanim = 1210
offset = 20, 20
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1210
;projhitanim = 1211
offset = 20, -10
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1222, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;--------------------------



;昁嶦儘乕僾俤倃
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1300
ctrl = 0
sprpriority = 2
poweradd = -1000



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
pos = -2,-70
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 17010
pos = -2,-70
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



[State 1301,Trail]
type = Explod
trigger1 = animelem = 12
anim = 1301
;id = 1040
postype = p1
pos = 0,0
sprpriority = 3
removeongethit = 1
ownpal = 1



[State 1201, 2]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, SA
animtype  = Hard
damage    = 25, 4
getpower = 0,0
givepower = 0,0
guardflag = M
pausetime = 1,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-90
hitsound   = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7




[State 1020, 2]
type = Projectile
trigger1 = animelem = 15,3
projanim = 1302
;projhitanim = 1210
offset = 0, 0
velocity = 40, 0
attr = S, SP
damage = 55,  6
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
sparkxy = 80, -90
hitsound = s20-var(35),1
guard.sparkno = s30040
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4,-3.5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall = 1
fall.recover = 0

[State 1020, 2]
type = Projectile
trigger1 = animelem = 16,1
projanim = 1302
;projhitanim = 1210
offset = 47, 0
velocity = 40, 0
attr = S, SP
damage = 55,  6
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
sparkxy = 80, -90
hitsound = s20-var(35),1
guard.sparkno = s30040
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4,-3.5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall = 1
fall.recover = 0

[State 1020, 2]
type = Projectile
trigger1 = animelem = 16,1
projanim = 1302
;projhitanim = 1210
offset = 30, 0
velocity = 40, 0
attr = S, SP
damage = 55,  6
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 80, -90
hitsound = s20-var(35),1
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
fall = 1
fall.recover = 0



[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;嫮堷掅婥埑挿
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1220
ctrl = 0
sprpriority = 2

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 7

[state 1410]
type = helper
trigger1 = animelem = 1
trigger1 = NumHelper(1410) = 0
ID = 1410
pos = 80,0
postype = p1
stateno = 1410
helpertype = normal
name = "teiki1i1"
sprpriority = 3
ownpal = 1
keyctrl = 0

[state 1410]
type = helper
trigger1 = animelem = 2
trigger1 = NumHelper(1411) = 0
ID = 1411
pos = 32,0
postype = p1
stateno = 1411
helpertype = normal
name = "teiki1i2"
sprpriority = 3
ownpal = 1
keyctrl = 0

[state 1410]
type = helper
trigger1 = animelem = 3
trigger1 = NumHelper(1412) = 0
ID = 1412
pos = 0,0
postype = p1
stateno = 1412
helpertype = normal
name = "teiki1i3"
sprpriority = 3
ownpal = 1
keyctrl = 0



[State 1203, 戜晽傊]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58) =1
triggerall = power >= 1000
trigger1 = animelem = 7
value = 1510
ctrl = 0

[State 1203, 戜晽傊]
type = ChangeState
trigger1 = command = "taihux1"
trigger2 = command = "taihuy1"
trigger3 = command = "taihux2"
trigger4 = command = "taihuy2"
value = 1500
ctrl = 0

[State 1203, 戜晽傊]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58) =1
triggerall = power < 1000
trigger1 = animelem = 7
value = 1500
ctrl = 0


[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;嫮堷掅婥埑拞
[Statedef 1401]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1221
ctrl = 0
sprpriority = 2

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 7

[state 1410]
type = helper
trigger1 = animelem = 1
trigger1 = NumHelper(1411) = 0
ID = 1411
pos = 32,0
postype = p1
stateno = 1411
helpertype = normal
name = "teiki1i2"
sprpriority = 3
ownpal = 1
keyctrl = 0

[state 1410]
type = helper
trigger1 = animelem = 2
trigger1 = NumHelper(1412) = 0
ID = 1412
pos = 0,0
postype = p1
stateno = 1412
helpertype = normal
name = "teiki1i3"
sprpriority = 3
ownpal = 1
keyctrl = 0



[State 1203, 戜晽傊]
type = ChangeState
trigger1 = command = "taihux1"
trigger2 = command = "taihuy1"
value = 1500
ctrl = 0

[State 1401, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;嫮堷掅婥埑抁
[Statedef 1402]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1222
ctrl = 0
sprpriority = 2

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 7

[state 1410]
type = helper
trigger1 = animelem = 1
trigger1 = NumHelper(1412) = 0
ID = 1412
pos = 0,0
postype = p1
stateno = 1412
helpertype = normal
name = "teiki1i3"
sprpriority = 3
ownpal = 1
keyctrl = 0



[State 1203, 戜晽傊]
type = ChangeState
trigger1 = command = "taihux1"
trigger2 = command = "taihuy1"
trigger3 = command = "taihux2"
trigger4 = command = "taihuy2"
value = 1500
ctrl = 0

[State 1402, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;掅婥埑侾
[Statedef 1410]
type = S
movetype = A
anim = 1401
velset = 0,0
sprpriority = 3

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 21, 8

[State 1202, 2]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Medium
damage    = 32,4
getpower = 0,0
givepower = 0,0
guardflag = MA
pausetime = 0,0
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-90
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = 5
air.velocity = -2.5,4
envshake.time = 12
envshake.ampl = 6; or 7


[State 191, 2]
type = parentvaradd
trigger1 = movehit
var(38) = 57
persistent = 0
ignorehitpause = 1



[State 1410, 2]
type = changestate
trigger1 = animtime = 0
value = 9044

;掅婥埑俀
[Statedef 1411]
type = S
movetype = A
anim = 1401
velset = 0,0
sprpriority = 3

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 21, 8

[State 1202, 2]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Medium
damage    = 32,4
getpower = 0,0
givepower = 0,0
guardflag = MA
pausetime = 0,0
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-100
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = 5
air.velocity = -2.5,4
envshake.time = 12
envshake.ampl = 6; or 7


[State 191, 2]
type = parentvaradd
trigger1 = movehit
var(38) = 57
persistent = 0
ignorehitpause = 1



[State 1410, 2]
type = changestate
trigger1 = animtime = 0
value = 9044

;掅婥埑俁
[Statedef 1412]
type = S
movetype = A
anim = 1401
velset = 0,0
sprpriority = 3

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 21, 8

[State 1202, 2]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Medium
damage    = 32,4
getpower = 0,0
givepower = 0,0
guardflag = MA
pausetime = 0,0
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-80
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = 5
air.velocity = -2.5,4
envshake.time = 12
envshake.ampl = 6; or 7


[State 191, 2]
type = parentvaradd
trigger1 = movehit
var(38) = 57
persistent = 0
ignorehitpause = 1



[State 1410, 2]
type = changestate
trigger1 = animtime = 0
value = 9044



;---------------------------------------------------------------------------
;戜晽栆懪
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 56
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 5

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 26
value = 12, 8

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = 12, 2

[State 1500, 2]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 9
trigger4 = time = 12
attr = S, SA
animtype  = Hard
damage    = 20, 2
getpower = 4,2
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-90
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 40
ground.velocity = -4
air.velocity = -2.5,4
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 12
trigger2 = animelem = 14
trigger3 = animelem = 20
attr = S, SA
animtype  = Hard
damage    = 20, 2
getpower = 4,2
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-50
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 40
ground.velocity = 4
air.velocity = -2.5,4
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 16
trigger2 = animelem = 18
attr = S, SA
animtype  = Hard
damage    = 20, 2
getpower = 4,2
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-20
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 40
ground.velocity = 4
air.velocity = -2.5,4
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 22
attr = S, SA
animtype  = Hard
damage    = 20, 2
getpower = 4,2
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 30
ground.velocity = -2,-4
air.velocity = -2,-4
fall = 1
fall.recover = 0
;p2stateno = 1501
envshake.time = 12
envshake.ampl = 6; or 7




[State 1500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------

;戜晽栆懪俤倃
[Statedef 1510]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
velset = 0,0
anim = 1510
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 5

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 7

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = 12, 2


[State 1300, 1]
type = palfx
trigger1 = time = 0
time = 70
;add = 64, 64, 64 ;128, 128, 128 ;White
sinadd = 64,64,64,3

[State 1300, Super A]
type = SuperPause
trigger1 = animelem = 1
time = 16
pos = -5, -95
anim = s2500
sound = s21, 6
darken = 0
p2defmul = 1

[State 1500, 2]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 9
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = -4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 3
trigger4 = time = 12
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = -4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 12
trigger2 = animelem = 16
trigger3 = animelem = 20
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = 4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 14
trigger2 = animelem = 18
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = 4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 21
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,16
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 80
ground.velocity = -3
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1201,Trail]
type = Explod
trigger1 = movehit
trigger1 = NumExplod(3005) = 0
anim = 3005
id = 3005
postype = p2
pos = 0,-50
sprpriority = 5
removeongethit = 1
ownpal = 1



[State 1500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1511
ctrl = 0



[Statedef 1511]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1511
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 5

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 7

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = 12, 2

[State 1300, 1]
type = palfx
trigger1 = time = 0
time = 97
;add = 64, 64, 64 ;128, 128, 128 ;White
sinadd = 64,64,64,3

[State 1500, 2]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 9
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = -4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = time = 12
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = -4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 12
trigger2 = animelem = 16
trigger3 = animelem = 20
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = 4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 14
trigger2 = animelem = 18
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = 4
air.velocity = -2.5,4
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
air.fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7


[State 1500, 2]
type = HitDef
trigger1 = animelem = 22
attr = S, SA
animtype  = Hard
damage    = 16, 2
getpower = 4,2
givepower = 0,1
guardflag = M
pausetime = 8,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = 0,-60
hitsound = s20,11
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 60
ground.velocity = -2,-4
air.velocity = -2,-4
fall = 1
fall.recover = 0
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
;p2stateno = 1501
envshake.time = 12
envshake.ampl = 6; or 7


[State 1201,Trail]
type = Explod
trigger1 = movehit
trigger1 = NumExplod(3005) = 0
anim = 3005
id = 3005
postype = p2
pos = 0,-50
sprpriority = 5
removeongethit = 1
ownpal = 1



[State 1500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;偟傖偑傒昁嶦儘乕僾
[Statedef 1600]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 56
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2


[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 12, 3

[State 1600, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1601
ctrl = 0


[Statedef 1601]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1601
ctrl = 0
sprpriority = 2

[State 1601,Trail]
type = Explod
;trigger1 = time = 0
trigger1 = animelem = 1
anim = 1213
;id = 1040
postype = p1
pos = -16,40
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1601, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = L
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-50
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1601, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1602
ctrl = 0


[Statedef 1602]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1602
ctrl = 0
sprpriority = 2

[State 1602,Trail]
type = Explod
;trigger1 = time = 0
trigger1 = animelem = 1
anim = 1213
;id = 1040
postype = p1
pos = 16,40
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1602, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = L
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-50
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1204, 5]
type = ChangeState
triggerall = command = "holdback"
trigger1 = command = "a"
trigger2 = command = "b"
value = 1802
ctrl = 0

[State 1202, 5]
type = ChangeState
triggerall = command != "holdback"
trigger1 = command = "a"
trigger2 = command = "b"
value = 1622
ctrl = 0

[State 1202, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1603
ctrl = 0

[Statedef 1603]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1603
ctrl = 0
sprpriority = 2

[State 1603,Trail]
type = Explod
trigger1 = animelem = 1
anim = 1213
;id = 1040
postype = p1
pos = 64,40
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 1603, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = L
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-50
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1604, 5]
type = ChangeState
triggerall = command = "holdback"
trigger1 = command = "a"
trigger2 = command = "b"
value = 1801
ctrl = 0

[State 1603, 5]
type = ChangeState
triggerall = command != "holdback"
trigger1 = command = "a"
trigger2 = command = "b"
value = 1621
ctrl = 0

[State 1603, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1604
ctrl = 0

[Statedef 1604]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1604
ctrl = 0
sprpriority = 2

[State 1604, 2]
type = HitDef
triggerall = !var(20)
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 26, 3
getpower = 34,17
givepower = 0,8
hitflag = MA
guardflag = L
pausetime = 8,7
sparkno = s30002
guard.sparkno = s30040
sparkxy = -10,-50
hitsound = s20-var(35),1
guardsound = S66,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 14
ground.velocity = -6
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 6; or 7




[State 1604, 5]
type = ChangeState
triggerall = command = "holdback"
trigger1 = command = "a"
trigger2 = command = "b"
value = 1800
ctrl = 0

[State 1204, 5]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58)=1
trigger1 = movehit
value = 1800
ctrl = 0

[State 1604, 5]
type = ChangeState
triggerall = command != "holdback"
trigger1 = command = "a"
trigger2 = command = "b"
value = 1620
ctrl = 0

[State 1204, 5]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58)=1
trigger1 = moveguarded
value = 1620
ctrl = 0


[State 1604, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1605
ctrl = 0

[Statedef 1605]
type    = C
movetype= A
physics = C
anim = 1605
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1605, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;-------------------------------


;偟傖偑傒壴壩挿
[Statedef 1620]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1620
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 1020, 2]
type = Projectile
trigger1 = time = 0
projanim = 1210
;projhitanim = 1210
offset = 4, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 6
projanim = 1210
;projhitanim = 1210
offset = 0, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 8
projanim = 1211
;projhitanim = 1210
offset = 4, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -100
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 10
projanim = 1210
;projhitanim = 1210
offset = 4, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1210
;projhitanim = 1210
offset = -16, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1211
;projhitanim = 1210
offset = -36, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 18
projanim = 1211
;projhitanim = 1210
offset = -36, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1210
;projhitanim = 1210
offset = -26, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1211
;projhitanim = 1210
offset = -36, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 24
projanim = 1210
;projhitanim = 1210
offset = -36, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 26
projanim = 1211
;projhitanim = 1210
offset = -46, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 30
projanim = 1211
;projhitanim = 1210
offset = -56, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1





;壴壩拞
[Statedef 1621]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1621
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 1020, 2]
type = Projectile
trigger1 = time = 0
projanim = 1210
;projhitanim = 1210
offset = 4, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 4
projanim = 1210
;projhitanim = 1210
offset = 0, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 8
projanim = 1211
;projhitanim = 1210
offset = 4, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 12
projanim = 1211
;projhitanim = 1210
offset = 4, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1210
;projhitanim = 1210
offset = -16, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -70
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 18
projanim = 1211
;projhitanim = 1210
offset = -36, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1210
;projhitanim = 1210
offset = -36, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 24
projanim = 1211
;projhitanim = 1210
offset = -26, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1221, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;壴壩抁
[Statedef 1622]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1622
ctrl = 0
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 1020, 2]
type = Projectile
trigger1 = time = 0
projanim = 1210
;projhitanim = 1210
offset = 4, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
sparkxy = 130, -90
hitsound = s20-var(35),1
guard.sparkno = s30040
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 8
projanim = 1210
;projhitanim = 1211
offset = -16, 40
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -90
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 14
projanim = 1211
;projhitanim = 1210
offset = 4, 60
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -110
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1020, 2]
type = Projectile
trigger1 = time = 20
projanim = 1210
;projhitanim = 1211
offset = 4, 30
velocity = 16, 0
attr = S, SP
damage    = 5, 1
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 130, -80
hitsound = s20-var(35),1
hitflag = MA
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1222, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;偟傖偑傒嫮堷掅婥埑挿
[Statedef 1800]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1620
ctrl = 0
sprpriority = 2

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 7

[state 1410]
type = helper
trigger1 = animelem = 1
trigger1 = NumHelper(1410) = 0
ID = 1410
pos = 64,40
postype = p1
stateno = 1410
helpertype = normal
name = "teiki1i1"
sprpriority = 3
ownpal = 1
keyctrl = 0

[state 1410]
type = helper
trigger1 = animelem = 2
trigger1 = NumHelper(1411) = 0
ID = 1411
pos = 16,40
postype = p1
stateno = 1411
helpertype = normal
name = "teiki1i2"
sprpriority = 3
ownpal = 1
keyctrl = 0

[state 1410]
type = helper
trigger1 = animelem = 3
trigger1 = NumHelper(1412) = 0
ID = 1412
pos = -16,40
postype = p1
stateno = 1412
helpertype = normal
name = "teiki1i3"
sprpriority = 3
ownpal = 1
keyctrl = 0



[State 1203, 戜晽傊]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58) =1
triggerall = power >= 1000
triggerall = var(50) = [0,49]
trigger1 = animelem = 7
value = 1510
ctrl = 0

[State 1203, 戜晽傊]
type = ChangeState
trigger1 = command = "taihua1"
trigger2 = command = "taihub1"
trigger3 = command = "taihua2"
trigger4 = command = "taihub2"
value = 1500
ctrl = 0

[State 1203, 戜晽傊]
type = ChangeState
triggerall = RoundState = 2
triggerall = p2life != 0
triggerall = var(58) =1
triggerall = power < 1000
trigger1 = animelem = 7
value = 1500
ctrl = 0

[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;偟傖偑傒嫮堷掅婥埑拞
[Statedef 1801]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1621
ctrl = 0
sprpriority = 2

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 7

[state 1410]
type = helper
trigger1 = animelem = 1
trigger1 = NumHelper(1411) = 0
ID = 1411
pos = 16,40
postype = p1
stateno = 1411
helpertype = normal
name = "teiki1i2"
sprpriority = 3
ownpal = 1
keyctrl = 0

[state 1410]
type = helper
trigger1 = animelem = 2
trigger1 = NumHelper(1412) = 0
ID = 1412
pos = -16,40
postype = p1
stateno = 1412
helpertype = normal
name = "teiki1i3"
sprpriority = 3
ownpal = 1
keyctrl = 0



[State 1203, 戜晽傊]
type = ChangeState
trigger1 = command = "taihua1"
trigger2 = command = "taihub1"
trigger3 = command = "taihua2"
trigger4 = command = "taihub2"
value = 1500
ctrl = 0

[State 1401, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;偟傖偑傒嫮堷掅婥埑抁
[Statedef 1802]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1622
ctrl = 0
sprpriority = 2

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 7

[state 1410]
type = helper
trigger1 = animelem = 1
trigger1 = NumHelper(1412) = 0
ID = 1412
pos = -16,40
postype = p1
stateno = 1412
helpertype = normal
name = "teiki1i3"
sprpriority = 3
ownpal = 1
keyctrl = 0



[State 1203, 戜晽傊]
type = ChangeState
trigger1 = command = "taihua1"
trigger2 = command = "taihub1"
trigger3 = command = "taihua2"
trigger4 = command = "taihub2"
value = 1500
ctrl = 0

[State 1402, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;偟傖偑傒昁嶦儘乕僾俤倃
[Statedef 1700]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
anim = 1700
ctrl = 0
sprpriority = 2
poweradd = -1000



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
pos = -15,-32
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
scale = .5,.5

[State 863, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 17010
pos = -15,-32
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


[State 1301,Trail]
type = Explod
trigger1 = animelem = 12
anim = 1301
;id = 1040
postype = p1
pos = 0,40
sprpriority = 3
removeongethit = 1
ownpal = 1


[State 1201, 2]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, SA
animtype  = Hard
damage    = 46, 4
getpower = 0,0
givepower = 0,0
guardflag = M
pausetime = 1,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 10,-50
hitsound   = 5,2
guardsound = S66,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 6; or 7




[State 1020, 2]
type = Projectile
trigger1 = animelem = 15,3
projanim = 1302
;projhitanim = 1210
offset = -16, 40
velocity = 40, 0
attr = S, SP
damage = 55,  6
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
sparkxy = 80, -90
hitsound = s20-var(35),1
guard.sparkno = s30040
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4,-3.5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall = 1
fall.recover = 0

[State 1020, 2]
type = Projectile
trigger1 = animelem = 16,1
projanim = 1302
;projhitanim = 1210
offset = 31, 40
velocity = 40, 0
attr = S, SP
damage = 55,  6
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
sparkxy = 80, -90
hitsound = s20-var(35),1
guard.sparkno = s30040
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4,-3.5
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall = 1
fall.recover = 0

[State 1020, 2]
type = Projectile
trigger1 = animelem = 16,1
projanim = 1302
;projhitanim = 1210
offset = 30, 0
velocity = 24, 40
attr = S, SP
damage = 55,  6
getpower = 0,0
givepower = 0,0
animtype = Medium
pausetime = 9,1
sparkno = s30002
guard.sparkno = s30040
sparkxy = 80, -90
hitsound = s20-var(35),1
guardflag = MA
guardsound = S66,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
fall = 1
fall.recover = 0

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
