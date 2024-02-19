;Stand light punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
poweradd = 25
sprpriority = 2
velset = 0,0
anim = 200

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 30,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -32,-80
guard.sparkno = s8001
hitsound = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -1.4,-3
envshake.time = 1
envshake.ampl = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------

;Alt Stand light punch
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
poweradd = 25
sprpriority = 2
velset = 0,0
anim = 201

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 30, 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = s8002
sparkxy = -28,-78
guard.sparkno = s8001
hitsound = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6


[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing mid punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 70
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 210


[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 2, ifelse(random<499,1,70)
channel = 0


[State 210, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, NA
animtype  = Up
damage    = 55
guardflag = MA
pausetime = 10,10
sparkno = s8022
sparkxy = -24,-85
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -2,-8.5
air.velocity = -2,-8.5
yaccel = 0.55
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && !Var(55)
anim = 211
ID = 211
pos = 0,0
postype = p1
bindtime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 3
;persistent = 1



[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------

;Alt Standing mid punch
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 70
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 215


[State 210, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2,ifelse(random<499,1,70)
channel = 0



[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage    = 53
guardflag = MA
pausetime = 5,10
sparkno = s8022
sparkxy = 0,-55
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 18
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 15
ground.velocity = -6
air.velocity = -15
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
down.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
airguard.cornerpush.veloff = -3

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Stand hard punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 220



[State 210, 1]
type = PlaySnd
trigger1 = Time = 10
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 10
value = 2,  ifelse(random<499,2,70)
channel = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = diagup
damage    = 78
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = -20,-85
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -2, -14
air.velocity = -2, -14
yaccel = 0.6
fall = 1
;p2stateno = 6000



[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------

; Alt Stand hard punch
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 225


[State 210, 1]
type = PlaySnd
trigger1 = Time = 10
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 10
value = 2,  ifelse(random<499,2,70)
channel = 0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Back
damage    = 85
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = -33,-80
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14.5, -4
air.velocity = -14.5, -4
yaccel = 0.6
fall = 1
;p2stateno = 6000


[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Stand light kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
poweradd= 25
sprpriority = 2
velset = 0,0
anim = 230


[State 230, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0



[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 6,6
sparkno = s8002
sparkxy = -28,-5
guard.sparkno = s8001
hitsound   = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -7

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------

[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
poweradd= 25
sprpriority = 2
velset = 0,0
anim = 235


[State 230, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0



[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 6,6
sparkno = s8002
sparkxy = 0,-55
guard.sparkno = s8001
hitsound   = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -7


[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------

;S forward kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
poweradd= 65
sprpriority = 2
velset = 0,0
anim = 240


[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 240, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 240, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2, ifelse(random<499,1,70)
channel = 0

[State 230, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 6,6
sparkno = s8022
sparkxy = 0,-55
guard.sparkno = s8001
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -7
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -8



[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Alt S forward kick
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
poweradd= 65
sprpriority = 2
velset = 0,0
anim = 245


[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 240, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 240, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2, ifelse(random<499,1,70)
channel = 0

[State 230, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 6,6
sparkno = s8022
sparkxy = 0,-55
guard.sparkno = s8001
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -4,-6.5
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -8



[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Stand hard kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 250

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 8
value = 2, 4

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 8
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 8
value = 2, ifelse(random<499,2,70)
channel = 0

[State 240, 2]
type = HitDef
trigger1 = AnimElem =4 || AnimElem = 8
attr = S, NA
animtype  = Hard
damage    = 45
guardflag = MA
pausetime = 6,6
sparkno = s8222
sparkxy = 0,-55
guard.sparkno = s8001
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 25
air.hittime  = 25
ground.velocity = -10
air.velocity = -4,-9
yaccel = 0.5
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10


[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Alt Stand hard kick
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 251


[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 8000, 13

[State 210, 1]
type = PlaySnd
trigger1 = Time = 12
value = 2,  ifelse(random<499,1,2)
channel = 0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Back
damage    = 78,5
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = 0,-75
guard.sparkno = s8001
hitsound = s8000,12
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -6.5, -2
air.velocity = -6.5, -2
yaccel = 0.6
fall = 1
;p2stateno = 6000


[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------

;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
poweradd= 15
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 400


[State 400, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 26
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 2,7
sparkno = s8002
sparkxy = 0,-20
guard.sparkno = s8001
hitsound = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -7
air.velocity = -1.5,-3
ground.cornerpush.veloff = -8
down.cornerpush.veloff = -8
guard.cornerpush.veloff = -8


[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching mid punch
[Statedef 410]
type    = C
movetype= A
physics = N
juggle  = 20
poweradd= 50
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 410

[State 410, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 25,0

[State 410, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2, ifelse(random<499,1,70)
channel = 0


[State 410, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 55
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 6,12
sparkno = s8022
sparkxy = 0,-20
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -9
air.velocity = -3,-4
ground.cornerpush.veloff = -10
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


; crouching hard
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 10
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 420


[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (7) < 0) && !Var(55)
value = 85,0

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 5, 6

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1307
pos = 135,0
postype = p1  ;p2,front,back,left,right
ontop = 1
scale = 1,.5

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1306
pos = 100,0
postype = p1  ;p2,front,back,left,right
scale = .5,.5
sprpriority = 1

[State 240, 1]
type = PlaySnd
trigger1 = Time = 12
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 12
value = 2, ifelse(random<499,2,70)
channel = 0

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = Up
damage    = 100
guardflag = MA
pausetime = 10,10
sparkno = s8222
sparkxy = 0,-20
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14, -4
air.velocity = -14, -4
yaccel = 0.6
p2stateno = 6000


[State 210, 3]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(4) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 420
elem = Animelemno(0) + 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch light kick
[Statedef 430]
type    = C
movetype= A
physics = C
poweradd= 25
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 430


[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 28
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 7,7
sparkno = s8002
sparkxy = 0,-20
guard.sparkno = s8001
hitsound   = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 12
ground.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9


[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;--------------------------------------------------------


[Statedef 440]
type    = C
movetype= A
physics = C
poweradd= 25
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 440


[State 440, 2]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1

[State 440, 2]
type = PlaySnd
trigger1 = Time = 6
value = 2, ifelse(random<499,1,70)
channel = 0

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 60
hitflag = MAFD
animtype = Medium
guardflag = MA
pausetime = 12,12
sparkno = s8022
sparkxy = -10,-60
guard.sparkno = s8001
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -9
air.velocity = -1.2,-5
guard.velocity = -5
ground.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9


[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------

;Crouch Hard Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
sprpriority = 2
velset = 0,0
anim = 450

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 4

[State 440, 2]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 5
value = 2, ifelse(random<499,2,70)
channel = 0

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 72
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-20
guard.sparkno = s8001
hitsound   = s5,2
guardsound = 6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,-4
air.velocity = 0,-4
guard.velocity = -9
fall = 1
fall.recover=0
yaccel = .45
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Jump Light Punch

[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 11
ctrl = 0
sprpriority = 2
anim = 600


[State 600, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0


[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = s8002
sparkxy = 0,-55
guard.sparkno = s8001
hitsound = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -5
air.velocity = -1,-9.5
yaccel = 0.6
ground.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump mid Punch

[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 65
ctrl = 0
sprpriority = 2
anim = 610

[State 610, 2]
type = PlaySnd
trigger1 = Time = 4
value = 0, 1

[State 600, 1]
type = PlaySnd
trigger1 = Time = 4
value = 2, ifelse(random<499,1,70)

[State 610, 3]
type = HitDef
trigger1 = animelem = 4
attr = A, NA
damage = 48
guardflag = HA
priority = 4
pausetime = 9,9
sparkno = s8022
sparkxy = 0,-55
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -7
air.velocity = -1,-7
yaccel = 0.6
ground.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;Air Hard Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
anim = 620


[State 610, 2]
type = PlaySnd
trigger1 = Time = 6
value = 0, 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 2, ifelse(random<499,2,70)

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 72,10
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = s8222
sparkxy = -25,-32
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.velocity = -1,3
yaccel = 0.6
ground.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9



[State 192, b]
type = ScreenBound
trigger1 = (movehit) && (Pos Y < -150)
value = 0

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Kick

[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 20
ctrl = 0
sprpriority = 2
anim = 630



[State 630, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 26
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = s8002
sparkxy = -10,-55
guard.sparkno = s8001
hitsound = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -5
air.velocity = -1,-9.5
yaccel = 0.6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump mid Kick

[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 65
ctrl = 0
sprpriority = 2
anim = 640


[State 640, 2]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1

[State 640, 2]
type = PlaySnd
trigger1 = Time = 6
value = 2, ifelse(random<499,1,70)

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
guardflag = HA
pausetime = 9,9
sparkno = s8022
sparkxy = -10,-45
guard.sparkno = s8001
hitsound = s5,1
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -7
air.velocity = -1,-7
yaccel = 0.6
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------

;Air Hard Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
anim = 650

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 8
value = 2, 4

[State 640, 2]
type = PlaySnd
trigger1 = Time = 8
value = 0, 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 8
value = 2, ifelse(random<499,2,70)

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 7 || AnimElem = 9
attr = A, NA
damage    = 33
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = s8222
sparkxy = 0,-55
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.velocity = -1, -7
air.hittime = 25
yaccel = 0.6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------------------------------------------------------------------
[Statedef 655]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
anim = ifelse(Var(55),651,655)



[State 640, 2]
type = PlaySnd
trigger1 = Time = 8
value = 0, 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 8
value = 2, 2

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4
attr = A, NA
damage    = 90
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = s8222
sparkxy = -40,0
guard.sparkno = s8001
hitsound = s5,2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.velocity = -1, -7
air.hittime = 25
yaccel = 0.6
fall = 1
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 0, ChangeState]
type = Changeanim
trigger1 = movehit=1
value = 44
ctrl = 0

[State 0, VelAdd]
type = Velset
trigger1 = movehit =1
x = -3
y = -5
;ignorehitpause =
;persistent =



[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;----------------------------------------------------

;Grab attempt 1
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 800
poweradd = 50

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype = Hard
attr = A, NT
damage = 20
hitflag = M-
priority = 1, Miss
sparkno = 2
sparkxy = -25,-83
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 811
ground.velocity = -8,-4
air.velocity = -8, -4
kill = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------

;grabbed
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
sprpriority = 1


[State 810, Grab Sound]
type = PlaySnd
trigger1 = var(24)=0
trigger1 = AnimElem = 1
value = 1, 5

[State 810, Grab Sound]
type = PlaySnd
trigger1 = var(24)=1
trigger1 = AnimElem = 1
value = 1, 11

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 4

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6
anim = 8222
pos = 0,0
postype = p2  ;p2,front,back,left,right
scale = .5,.5
sprpriority = 3
ontop = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6
value = 5, 2


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 102, -72
time = 5

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 110, -130
time = 5

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 25, -180
time = 10

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 110,110

[State 0, ]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -40
;ID =
;kill = 1
;absolute = 0
;ignorehitpause = 0
;persistent = 1

[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------

;p2 state
[Statedef 811]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 0


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 811

[State 0, Gravity]
type = Gravity
trigger1 = time > 20
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = time = 20
x = 1
y = -14
;ignorehitpause =
;persistent =


[State 0, 1]
type = SelfState
trigger1 = pos y  > 0
trigger2 = !alive
value = 5050
ctrl = 1



;Slam attempt
[Statedef 820]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 800
poweradd = 50

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype = Hard
attr = A, NT
damage = 20
hitflag = M-
priority = 1, Miss
sparkno = 2
sparkxy = -25,-90
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 821
p2stateno = 825
ground.velocity = -8,-4
air.velocity = -8, -4
kill = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Slam
[Statedef 821]
type    = S
movetype= A
physics = N
anim = 821
poweradd = 60
sprpriority = 2

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 810, Grab Sound]
type = PlaySnd
trigger1 = var(24)=0
trigger1 = AnimElem = 1
value = 1, 5

[State 810, Grab Sound]
type = PlaySnd
trigger1 = var(24)=1
trigger1 = AnimElem = 1
value = 1, 11

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 5
value = 2, 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 6
value = 5,6

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4
value = 0, 2

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 95, -90
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 102, -145
time = 16

[State 0, 1]
type = Turn
trigger1 = AnimElem = 4
;ignorehitpause = 0
;persistent = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 0, -130
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 127, -6
time = 6


[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 110,110


[State 0, 1]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -80



[State 0, 1]
type = TargetState
trigger1 = AnimElem = 6
value = 826


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;p2 state
[Statedef 825]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 825

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 =  enemy, stateno !=821
value = 5000
ctrl = 1


;---------------------------------------

[Statedef 826]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1486, 2]
type = VelAdd
trigger1 = Time = 5
x = 10
y = -10

[State 0, 1]
type = PosSet
trigger1 = time = 4
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 5
y = .49

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 25
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;Air Slam
[Statedef 850]
type    = A
movetype= A
physics = A
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 850
poweradd = 50

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype = Hard
attr = A, NT
damage = 20
hitflag = AF
priority = 1, Miss
sparkno = 2
sparkxy = -25,-90
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 851
p2stateno = 855
ground.velocity = -8,-4
air.velocity = -8, -4
kill = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1



[Statedef 851]
type    = A
movetype= A
physics = N
anim = 851
poweradd = 60
sprpriority = 2
velset = 0,0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 810, Grab Sound]
type = PlaySnd
trigger1 = var(24)=0
trigger1 = AnimElem = 1
value = 1, 5

[State 810, Grab Sound]
type = PlaySnd
trigger1 = var(24)=1
trigger1 = AnimElem = 1
value = 1, 11

[State 0, 1]
type = VelSet
trigger1 = Animelem = 1, 10
y = -.5
;ignorehitpause = 0
;persistent = 1



[State 0, 2]
type = Gravity
trigger1 = Animelemtime(1) > 10
;ignorehitpause = 0
;persistent = 1

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 110,110

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 86, -121
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2, >=0
pos = 88, -66
time = 1



[State 0, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 852
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

[Statedef 852]
type    = S
movetype= A
physics = S
anim = 852
sprpriority = 2
velset = 0,0



[State 0, 1]
type = PosSet
trigger1 = !time
;x =
y = 0
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 88, -10
time = 4

[State 0, 1]
type = TargetLifeAdd
trigger1 = !time
value = -80



[State 0, 1]
type = TargetState
trigger1 = !time
value = 856

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 6

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1
channel = 0



[State 0, ]
type = VelSet
trigger1 = Animelem = 2,6
x = -3.55
y = -8.2
;ignorehitpause = 0
;persistent = 1


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 50




;---------------------------------------------------------------------------
;Grabbed
[Statedef 855]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 855

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 =  enemy, stateno !=851
value = 5010


; Throw (hit by, into air)
[Statedef 856]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 5
x = -8
y = -8

[State 0, 1]
type = PosSet
trigger1 = time = 4
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 1485, 1]
type = ChangeAnim2
trigger1 = !Time
value = 856

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 5
y = .49

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 25
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
