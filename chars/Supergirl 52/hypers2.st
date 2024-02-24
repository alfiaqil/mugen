;---------------------------------------------------------------------------
; Hyper Attacks
;
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Extra Hyper = Red Rage
[Statedef 30000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 30000
ctrl = 0
sprpriority = 2


[State 0, VarSet] ;*Reset The custom state var(43) if needed
type = VarSet
trigger1 = var(43) = 9696
v = 43
value = 0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,400

[State 3000, Hyper portrait 1]
type = Explod
trigger1 = AnimElem = 2
trigger1 = Facing = 1
anim = 1010
postype = back
pos = 0, -60
supermovetime = 40
sprpriority = -3
;ontop = 1
ownpal = 1
vel = 11,2
accel = -0.3,-0.05

[State 3000, Hyper portrait 2]
type = Explod
trigger1 = AnimElem = 2
trigger1 = Facing = -1
anim = 1011
postype = back
pos = 0, -60
supermovetime = 40
sprpriority = -3
;ontop = 1
ownpal = 1
vel = 11,2
accel = -0.3,-0.05

[State 3000, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 4000
pos = 0, 0
postype = p1
removetime = 36
sprpriority = 5
shadow = -1, 0, 0
ownpal = 1


[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
pos = 42, -54
;anim = S1000
anim = 100
sound = S4, 1
poweradd = -1000

; voice
[State 3000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,2

[State 3100, Ground Flash]
type = Explod
trigger1 = time = 15
anim = 6666
ID = 8400
postype = P1
pos = -40, 0
sprpriority = 3
ownpal = 1
supermovetime = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim =  30001
ID = 30001
pos = -30,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0

[State 200, 2]
type = HitDef
trigger1 =  AnimElem = 1
trigger2 =  AnimElem = 2
trigger3 =  AnimElem = 3
trigger4 =  AnimElem = 4
trigger5 =  AnimElem = 5
trigger6 =  AnimElem = 6
trigger7 =  AnimElem = 7
trigger8 =  AnimElem = 8
trigger9 =  AnimElem = 9
trigger10 =  AnimElem = 10
trigger11 =  AnimElem = 11
trigger12 =  AnimElem = 12
trigger13 =  AnimElem = 13
trigger14 =  AnimElem = 14
trigger15 =  AnimElem = 15
trigger16 =  AnimElem = 16
trigger17 =  AnimElem = 17
trigger18 =  AnimElem = 18
trigger19 =  AnimElem = 19
trigger20 =  AnimElem = 20
trigger21 =  AnimElem = 21
trigger22 =  AnimElem = 22
trigger23 =  AnimElem = 23
trigger24 =  AnimElem = 24
trigger25 =  AnimElem = 25
trigger26 =  AnimElem = 26
trigger27 =  AnimElem = 27
trigger28 =  AnimElem = 28
trigger29 =  AnimElem = 29
trigger30 =  AnimElem = 30
attr = S, HA
damage   = 30,4
getpower = 0
priority = 7, Hit
sprpriority = 4
hitflag = MAFDP
guardflag = MA
pausetime = 0,0
guard.sparkno = -1
sparkno = -1
sparkxy = 999,999
hitsound   = 5,3
guardsound = s300,63
ground.type = Low
ground.slidetime = 15
ground.hittime  = 30
ground.velocity = 0,0
air.type = Low
air.velocity = 0,-.3
air.animtype = Back
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 215, 215, 215
Palfx.mul = 256, 256, 256
Palfx.sinadd = 128, 128, 128, 50
Palfx.color = 0
palfx.invertall = 1

[State 200, 2]
type = HitDef
trigger1 =  AnimElem = 31
attr = S, HA
damage   = 40,3
getpower = 0
priority = 7, Hit
sprpriority = 4
hitflag = MAFDP
guardflag = MA
pausetime = 0, 0
guard.sparkno = -1
sparkno = -1
sparkxy = 999,999
hitsound   = 5,3
guardsound = s300,63
ground.type = High
ground.slidetime = 2
ground.hittime  = 15
ground.velocity = -20,-8
air.velocity = -20,-8
airguard.velocity = 2.4
air.fall = 1
fall = 1
palfx.time = 60
palfx.add = 0,40,100
palfx.mul = 0, 0, 170
palfx.sinadd = 40,0,256,6


[State 0, Explod]
type = Explod
trigger1 = animelem = 28
anim =  30002
ID = 30002
pos = -10, -200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S16,2
freqmul = 1.0

[State 3000, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1


;=========================================================================================
; Hyper 1 hyper ice storm
[StateDef 3400]
type = S
movetype = A
physics = S
anim = 1090    ;disparo del laser
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S50,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 3000, Hyper portrait 1]
type = Explod
trigger1 = AnimElem = 2
trigger1 = Facing = 1
anim = 1010
postype = back
pos = 0, -60
supermovetime = 40
sprpriority = -3
;ontop = 1
ownpal = 1
vel = 11,2
accel = -0.3,-0.05

[State 3000, Hyper portrait 2]
type = Explod
trigger1 = AnimElem = 2
trigger1 = Facing = -1
anim = 1011
postype = back
pos = 0, -60
supermovetime = 40
sprpriority = -3
;ontop = 1
ownpal = 1
vel = 11,2
accel = -0.3,-0.05

[State 3000, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 4000
pos = 0, 0
postype = p1
removetime = 36
sprpriority = 5
shadow = -1, 0, 0
ownpal = 1


[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
pos = 0, -60 ;42, -54
;anim = S1000
anim = 100
sound = S4, 1
poweradd = -1000

;[State 405, 6]
;type = PlaySnd
;trigger1 = Time = 5
;value = 0,54

;[State 405, 6]
;type = PlaySnd
;trigger1 = Time = 9
;value = 0,54

[State 405, 6]
type = PlaySnd
trigger1 = Time = 15 ;14
value = 0,54


[State 9009, Wave]
type = Explod
trigger1 = Time = 15  ;35
anim = 31141
pos = 10, -72  ;0,90
postype = p1
sprpriority = 2
supermove = 1
bindtime = 25
scale = 0,0

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,29
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 9,-2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 10,2
trigger1 = Time >= 12   ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 10,-2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,14
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 11,-1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 25,10
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 12,-1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 13,-0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 13,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 13,0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,5
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 12,1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 11,1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 10,2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 25,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 9,2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 8,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 15,3
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 13,-3
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 12,3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 10, -72     ;26,-92
velocity = 11,-3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;---------------------------HYPER super breath---------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;Hyper 2 = Super Breath
[Statedef 4200]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4200



[State 3000, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 4000
pos = 0, 0
postype = p1
removetime = 36
sprpriority = 5
shadow = -1, 0, 0
ownpal = 1


[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
pos = 42, -54
;anim = S1000
anim = 100
sound = S4, 1
poweradd = -1000

;[State 200, 1]
;type = VarSet
;trigger1 = Animelem = 1
;trigger1 = PrevStateNo != [5000,5999]
;V = 2
;Value = 1

;[State 200, 0]
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = PrevStateNo = [5000,5999]
;value = 4200
;Elem = Var(2)

;[State 4100, Super A]
;type = SuperPause
;trigger1 = animelem = 3
;trigger1 = PrevStateNo != [5000,5999]
;time = 30
;movetime = 30
;pos =  -20,-125
;sound = S10, 1
;anim = 102
;p2defmul = 1


[State 0, Wave]
type = Explod
trigger1 = Time = 1  ;35
anim = 311411
pos = 10, -72  ;0,90
postype = p1
sprpriority = 2
supermove = 1
bindtime = 25
scale = 0,0


:------------------
;------------------
[State 1000, 2]
type = PlaySnd
trigger1 = Animelem = 5
trigger1 = PrevStateNo != [5000,5999]
value = 1300, 1
;------------------
;------------------

;--------f4-------------
[State 3100, sfondo]
type = Explod
trigger1 = AnimElem = 1
pos = -20,-50
anim = 8014
ID = 8014
postype = back
sprpriority = -1
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
scale = .4, .6
supermove = 1
removetime = 200
ontop = 0

;---------------------
;---------------------
[State 4200, sfondo]
type = Explod
trigger1 = AnimElem = 1
pos = -360,-50
anim = 8006
ID = 8006
postype = right
sprpriority = -15
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200
ontop = 0

;---------------------


[State 4100, Super D]
type = AfterImage
trigger1 = time = 0
trigger1 = PrevStateNo != [5000,5999]
time = 100
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
flamegap = 1
trans = add1

[State 3000, Helper]
type = Helper
trigger1 = Animelem = 2
trigger1 = NumHelper(4201) = 0
postype = p1
pos = -25, 5
stateno = 4201
name = "hyperbreath"
id = 4201

[State 1000, 8]
type = AfterImageTime
trigger1 = Animelem = 22
Time = 0

[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ファイヤー部分
[Statedef 4201]
type = S
movetype = A
physics = N
velset = 0,0
anim = 4201
ctrl = 0
sprpriority = 3
xscale = 1
yscale = 2.5

[State 4201, 0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 191, 3]
type = PlaySnd
trigger1 = Animelem = 1
trigger1 = PrevStateNo != [5000,5999]
value = s1300,0

[State 4201, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
attr = A, HP
animtype = Hard
numhits = 0
damage = 18, 1
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = -15, 8
guard.velocity = -0.05
air.velocity = -15, 8
airguard.velocity = -0.05,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5

[State 4200, Shake]
type = EnvShake
trigger1 = AnimElem = 3
time = 6
freq = 127
ampl = -5

[State 4201, 1]
type = HitDef
trigger1 = Time >= 0
trigger1 = Timemod = 2,0
trigger1 = Time <= 72
attr = A, HP
animtype = Hard
damage = 4, 1
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = 0, 0
guard.velocity = -0.05
air.velocity = 0, 0
airguard.velocity = -0.05,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5

[State 4201, 2]
type = HitDef
trigger1 = Time >= 0
trigger1 = Timemod = 6,0
trigger1 = Time <= 72
attr = A, HP
animtype = Hard
damage = 8, 1
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = 0, 0
guard.velocity = -0.05
air.velocity = 0, 0
airguard.velocity = -0.05,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5


[State 4201, 3]
type = HitDef
trigger1 = Time = 72
attr = A, HP
animtype = Hard
damage = 20, 2
getpower  = 0
numhit = 2
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = -2, -6
air.velocity = -1.3,-6

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5

fall = 1
air.fall = 1
recover = 0
fall.recover = 0
air.recover = 0


[State 191, 3]
type = PlaySnd
Trigger1 = P2StateNo = [5000,5020]
trigger1 = (GameTime%6) = 0
trigger1 = MoveHit = 1
IgnoreHitPause = 1
value = 1,0
channel = 3

[State 191, 3]
type = PlaySnd
Trigger1 = P2StateNo = [150,159]
trigger1 = (GameTime%6) = 0
trigger1 = MoveGuarded = 1
IgnoreHitPause = 1
value = 6,0
channel = 3

[State 4201, 4]
type = HitOverRide
trigger1 = 1
attr = SCA, AP
stateno = 3003

[State 4201, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NT, ST, HT

[State 4211, 6]
type = ChangeAnim
trigger1 = Time = 74
value = 4202

[State 4211, 7]
type = DestroySelf
trigger1 = Time = 86
trigger2 = parent, StateNo != 4200


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1 -- Rage Vision (Red Lantern Mode)
[Statedef 4010]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4010


[State 3000, Hyper portrait 1]
type = Explod
trigger1 = AnimElem = 2
trigger1 = Facing = 1
anim = 10101
postype = back
pos = 0, -60
supermovetime = 40
sprpriority = -3
;ontop = 1
ownpal = 1
vel = 11,2
accel = -0.3,-0.05

[State 3000, Hyper portrait 2]
type = Explod
trigger1 = AnimElem = 2
trigger1 = Facing = -1
anim = 10101
postype = back
pos = 0, -60
supermovetime = 40
sprpriority = -3
;ontop = 1
ownpal = 1
vel = 11,2
accel = -0.3,-0.05

[State 3000, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 4000
pos = 0, 0
postype = p1
removetime = 36
sprpriority = 5
shadow = -1, 0, 0
ownpal = 1


[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
pos = 42, -54
;anim = S1000
anim = 100
sound = S4, 1
poweradd = -1000

:------------------
;------------------
[State 4010, 2]
type = PlaySnd
trigger1 = Animelem = 1
trigger1 = PrevStateNo != [5000,5999]
value = 6, 19
;------------------
;------------------


[State 4010, Helper]
type = Helper
trigger1 = Animelem = 4
trigger1 = NumHelper(4011) = 0
postype = p1
pos = 5,0
stateno = 4011
name = "Rage Vision"
id = 4011


[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; ファイヤー部分
[Statedef 4011]
type = S
movetype = A
physics = N
velset = 0,0
anim = 4011
ctrl = 0
sprpriority = 3
xscale = 1
yscale = 2.5

[State 4011, 0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 63000, som]
type = PlaySnd
trigger1 = animelem = 1
value = s10,10

[State 4011, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
attr = A, HP
animtype = Hard
numhits = 0
damage = 8, 1
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
hitsound   = s5,11
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = -15, 8
guard.velocity = -0.05
air.velocity = 0, 0
airguard.velocity = -0.05,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5


[State 4011, 1]
type = HitDef
trigger1 = Time >= 0
trigger1 = Timemod = 2,0
trigger1 = Time <= 72
attr = A, HP
animtype = Hard
damage = 4, 1
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
hitsound   = s5,11
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = 0, 0
guard.velocity = -0.05
air.velocity = 0, 0
airguard.velocity = -0.05,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

palfx.time = 10
palfx.add = 235,10,10
palfx.sinadd = 235,10,10,5


fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5



[State 4011, 2]
type = HitDef
trigger1 = Time >= 0
trigger1 = Timemod = 6,0
trigger1 = Time <= 72
attr = A, HP
animtype = Hard
damage = 8, 1
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = s4014
sparkxy = -5, -10
hitsound   = s5,11
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = 0, 0
guard.velocity = -0.05
air.velocity = 0, 0
airguard.velocity = -0.05,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5

palfx.time = 10
palfx.add = 235,10,10
palfx.sinadd = 235,10,10,5


[State 4011, 3]
type = HitDef
trigger1 = Time = 72
attr = A, HP
animtype = Hard
damage = 20, 2
getpower  = 0
numhit = 2
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s4014
sparkxy = -5, -10
hitsound   = s5,11
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 8
ground.velocity = -2, -6
air.velocity = -1.3,-6

fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 127
envshake.ampl = -5

palfx.time = 40
palfx.add = 235,10,10
palfx.sinadd = 235,10,10,5


fall = 1
air.fall = 1
recover = 0
fall.recover = 0
air.recover = 0


[State 4011, 3]
type = Explod
trigger1 = MoveHit != 0
Persistent = 0
IgnoreHitPause = 1
OnTop = 1
OwnPal = 1
anim = 4014
pos = -20 + var(1), -30 + var(2)
postype = p2
sprpriority = 3
bindtime = 1
name = "Spark"

[State 4011, 3]
type = Explod
trigger1 = MoveHit != 0
Persistent = 0
IgnoreHitPause = 1
OnTop = 1
OwnPal = 1
anim = 4014
pos = -20 + var(1), -30 + var(2)
postype = p2
sprpriority = 3
bindtime = 1
name = "Spark"


[State 4202, 4]
type = HitOverRide
trigger1 = 1
attr = SCA, AP
stateno = 3003

[State 4202, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NT, ST, HT

[State 4013, 7]
type = DestroySelf
trigger1 = Time = 86
trigger2 = parent, StateNo != 4010


;---------------------------------------------------------------------------
; Hit Beam
[Statedef 4012]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0

[State 1013, DestroySelf]
type = DestroySelf
trigger1 = Time = 0


