;============================================================================================================================
; RYUJI YAMAZAKI (KOF 2002)
;============================================================================================================================
; CONVERTED BY OROCHIKOF97 & CCIRONMUGEN
;============================================================================================================================
; VERSION 0.8 (SEPTEMBER 2005)
;============================================================================================================================
;
;============================================================================================================================ 
; SPECIAL MOVES
;===========================================================================================================================
; Sadomazo
; Bakudan Pachiki (Headbutt)
; Bai Gaeshi - Kyuushuu (Double Return - Absorb)
; Bai Gaeshi - Dan Hassha (Double Return - Return)
; Hebi Tsukai - Zenpou (Snake Arm - Forward)
; Hebi Tsukai - Taikuu (Snake Arm - Upward)
; Hebi Tsukai - Gedan (Snake Arm - Downward)
; Dagger Of Judgement
; Jigoku Geri (Foot Crush)
; Metsubushi (Sand Kick)
;==========================================================================================================================

;--------------------------------------------------------------------------------------------------------------------------
; Sadomazo - Weak Version
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1000]
type    = S
movetype= I
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2

;--------------------------

[State 1000, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
trigger9 = prevstateno = 1200
trigger10= prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1000, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
trigger9 = prevstateno = 1200
trigger10= prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1000, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1000, Reversal]
type = ReversalDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
reversal.attr = SA, AA
hitflag = HMA
numhits = 0
pausetime = 8,12
sparkno = 42
sparkxy = 15,0
p1stateno = 1005
hitsound = S1,9
ground.velocity = 5,-4
air.velocity = 5,-4
fall = 1
fall.recover = 0
getpower = 121,121
givepower = 21,21

[State 1000, Counter]
type = VarSet
trigger1 = (enemy, hitdefattr = SCA,SA,HA)
v = 15
value = 1
ignorehitpause = 1
persistent = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 16
channel = 0

[State 1000, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0
channel = 1

[State 1000, Reset]
type = VarSet
trigger1 = !AnimTime
var(15) = 0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Sadomazo - Strong Version
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1001]
type    = S
movetype= I
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1001
sprpriority = 2

;--------------------------

[State 1001, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
trigger9 = prevstateno = 1200
trigger10= prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1001, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
trigger9 = prevstateno = 1200
trigger10= prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1001, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1001, Reversal]
type = ReversalDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
trigger9 = AnimElem = 11
trigger10 = AnimElem = 12
trigger11 = AnimElem = 13
reversal.attr = SA, AA
hitflag = HMA
numhits = 0
pausetime = 8,12
sparkno = 42
sparkxy = 15,0
p1stateno = 1005
hitsound = S1,9
ground.velocity = 5,-4
air.velocity = 5,-4
fall = 1
fall.recover = 0
getpower = 121,121
givepower = 21,21

[State 1001, Counter]
type = VarSet
trigger1 = (enemy, hitdefattr = SCA,SA,HA)
v = 15
value = 1
ignorehitpause = 1
persistent = 0

[State 1001, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 16
channel = 0

[State 1001, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0
channel = 1

[State 1001, Reset]
type = VarSet
trigger1 = !AnimTime
var(15) = 0

[State 1001, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Sadomazo - Success
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1005]
type    = S
movetype= A
physics = S
juggle  = 12
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1005
sprpriority = 2

[State 1005, No Guard]
type = AssertSpecial
trigger1 = 1
flag = unguardable

; "Counter!" is only available when opponent's move was a special/hyper one.
; There are cases where "Counter!" can be activated for a basic move but I haven't found any specific rule for that, so I'll
; just keep this as is.

[State 1005, Counter]
type = VarSet
trigger1 = var(6) = 1
trigger1 = var(15) != 1 ; <=> !(enemy, hitdefattr = SCA,SA,HA)
var(6) = 0

[State 1005, Reversal Attack]
type = Hitdef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !movecontact
attr = S, SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = Back
fall = 1
fall.animtype = Back
fall.yvelocity = -3.4
priority = 7,Hit
damage = 127
pausetime = 12,12
guard.pausetime = 12,15
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = low
air.type = low
guard.slidetime = 18
guard.hittime = 18
air.hittime = 0
guard.ctrltime = 19
ground.velocity = -2, -12
guard.velocity = -11.1
air.velocity = -2, -12
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 1005, Spiral]
type = Explod
trigger1 = Time = 9
anim = 1006
pos = 0,0
postype = p1
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1005, Shadow] 
type = Afterimage
trigger1 = Time = 13
time = 29
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3

[State 1005, Voice]
type = PlaySnd
trigger1 = Time = 3
value = 0, 17
channel = 0

[State 1005, Width]
type = Width
trigger1 = time = [9,25]
value = 20,0

[State 1005, Invincible]
type = NotHitBy
trigger1 = time = [0,26]
value = SCA

[State 1005, Vels] ; Stolen from Iron's Ryuji Yamazaki 2003 >:P
type = Posadd
trigger1 = time = 10
x = 5

[State 1005, Vels]
type = Posadd
trigger1 = time = [11,14]
trigger2 = time = 16
x = 4

[State 1005, Vels]
type = Posadd
trigger1 = time = 15
trigger2 = time = [17,19]
x = 3

[State 1005, Vels]
type = Posadd
trigger1 = time = 20
trigger2 = time = [22,25]
trigger3 = time = 27
x = 2

[State 1005, Vels]
type = Posadd
trigger1 = time = 26
trigger2 = time = [28,30]
x = 1

[State 1005, Pos] ; Axis
type = PosAdd
trigger1 = time = 38
x = 5

[State 1005, Reset]
type = VarSet
trigger1 = !AnimTime
var(15) = 0

[State 1005, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Bakudan Pachiki
;--------------------------------------------------------------------------------------------------------------------------
;-------------
; Grab Attempt
;-------------

[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1100

[State 1100, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1100, Grab Attempt]
type = HitDef
triggerall = var(16) <= 0 ; Opponent Guard Checking variable
triggerall = P2StateNo != [40,52] ; Can't grab while opponent is in a jump start/land state
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M
priority = 5, Miss
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 1101
p2stateno = 1110
numhits = 0
ID = 1100
guard.dist = 50
ground.velocity = -4,-5
fall = 1
fall.recover = 0
fall.xvelocity = -3.5
fall.yvelocity = -3.6
getpower = 121,121
givepower = 21,0

[State 1100, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-------------------------------
; Bakudan Pachiki - Grab Success
;-------------------------------

[Statedef 1101]
type    = S
physics = S
movetype= A
anim = 1105
ctrl = 0
velset = 0,0

[State 1101, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1101, Width]
type = Width
trigger1 = 1
edge = 55,0

[State 1101, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 60,0

[State 1101, TBind 2]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 5, < 0
pos = 42,-100

[State 1101, TBind 3]
type = TargetBind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,< 0
pos = 38,-103

[State 1101, TBind 4]
type = TargetBind
trigger1 = AnimElem = 6,>=0
trigger1 = AnimElem = 7,< 0
pos = 40,-106

[State 1101, TBind 5]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 37,-101

[State 1101, TBind 6]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 50,-94

[State 1101, Grab]
type = Playsnd
trigger1 = Animelem = 3, =1
value = 1,9
channel = 1

[State 1101, Headbutt]
type = Playsnd
trigger1 = Animelem = 8, =1
value = 3,1
channel = 1

[State 1101, Voice]
type = Playsnd
trigger1 = Animelem = 8
value = 0,15
channel = 0

[State 1101, Special Throw Spark]
type = Explod
trigger1 = animelem = 3
anim = 7014
pos = 44,-101
postype = p1
bindtime = 1
ontop = 0
sprpriority = 2
ownpal = 1

[State 1101, Knockdown Spark]
type = Explod
trigger1 = animelem = 8
anim = 7002
pos = 37,-80
postype = p1
bindtime = 1
ontop = 0
sprpriority = 4
ownpal = 1

[State 1101, Ground Wave]
type = Explod
trigger1 = animelem = 8
anim = 7017
pos = 46,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 1101, Explosion]
type = Explod
trigger1 = animelem = 8
anim = 1106
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 3
ownpal = 1

[State 1101, Screen Shaking]
type = Envshake
trigger1 = AnimElem = 8
time = 20
freq = 70
ampl = -8

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------
; Bakudan Pachiki - Enemy thrown
;-------------------------------

[Statedef 1110]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 1110, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 1110, Gethit]
type = Changeanim2
trigger1 = !time
value = 1110

[State 1110, Behind]
type = sprpriority
trigger1 = !time
value = 1

[State 1110, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 1110, Damage]
type = LifeAdd
trigger1 = time = 37
value = -186

[State 1110, Axis]
type = PosSet
trigger1 = !AnimTime
y = -30

[State 1110, End]
type = SelfState
trigger1 = !AnimTime
value = 5030

;--------------------------------------------------------------------------------------------------------------------------
; Bai Gaeshi - Kyuushuu
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

;--------------------------

[State 1200, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1200, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1200, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1200, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = S, SA
animtype  = High
damage    = 54,10
hitflag = MAF           
guardflag = M
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-93
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 11,11
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -12
getpower = 121,121
givepower = 21,21
yaccel = 0.52

[State 1200, Special]
type = Helper
name = "Mais Oui! Je renvoie !"
trigger1 = animelem = 4
id = 1202
pos = 0,0
postype = p1
stateno = 1202
helpertype = normal
keyctrl = 0
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1200, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 1200, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 19

[State 1200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------
; Bai Gaeshi - Kyuushuu - Absorb
;-------------------------------

[Statedef 1202]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 400
ctrl = 0
velset = 0,0
anim = 1202
sprpriority = 2

[State 1202, Invisible]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1202, Wind]
type = PlaySnd
trigger1 = time = 1
value = 4,0
channel = 1

[State 1202, Absorb]
type = Projectile
trigger1 = !Time
attr = S, SP
hitflag = P
hitsound = S4,0
guardsound = S4,0
projID = 1202
projanim = 1202
projhitanim = 1202
projremanim = 1202
projcancelanim = 1202
projremove = 1
projremovetime = 4
offset = 0,0
velocity = 0
ownpal = 1

[State 1202, Kill]
type = HitOverride
trigger1 = 1
attr = SCA,AP
stateno = 1203

[State 1202, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "Let's see if it works.\nShould be fine."

[State 1202, End]
type = DestroySelf
trigger1 = !AnimTime

[Statedef 1203]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1203

[State 1203, PosSet] ; Au cas où une merde du projectile ennemi se collerait à mon proj invisible.
type = PosSet
trigger1 = !Time
x = -5000
y = -5000

[State 1203, End]
type = Null
trigger1 = 1

;--------------------------------------------------------------------------------------------------------------------------
; Bai Gaeshi - Dan Hassha
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1201
sprpriority = 2

[State 1210, StopSND]
type = StopSND
trigger1 = 1
channel = 3

;--------------------------

[State 1210, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1210, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1600
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1210, ProjHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, SA
animtype  = High
damage    = 54,10
hitflag = P 
p1stateno = 1211        
guardflag = M
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-93
hitsound   = S2,var(4)
guardsound = -1
guard.pausetime = 11,11
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -12
getpower = 121,121
givepower = 21,21
yaccel = 0.52

[State 1210, NormalHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 5
attr = S, SA
animtype  = High
damage    = 54
hitflag = MAF          
guardflag = M
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-93
hitsound   = S2,6
guardsound = S1,7
guard.pausetime = 11,11
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.52
numhits = 1

[State 1210, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 1210, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 19

[State 1210, Special]
type = Helper
name = "Mais Oui! Je frappe !"
trigger1 = animelem = 4
id = 1212
pos = 0,0
postype = p1
stateno = 1212
helpertype = normal
keyctrl = 0
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------
; Bai Gaeshi - Dan Hassha - Return
;---------------------------------

[Statedef 1211]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 400
ctrl = 0
anim = 1204
velset = 0,0
sprpriority = 2

[State 1211, Wind]
type = PlaySnd
trigger1 = time = 1
value = 4,0
channel = 1
volume = 50

[State 1211, Voice]
type = PlaySnd
trigger1 = time = 7
value = 0,20
channel = 0

[State 1211, Wind2]
type = PlaySnd
trigger1 = time = 8
value = 4,1
channel = 1
volume = 50

[State 1211, Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 1207
ownpal = 1
ontop = 1
sprpriority = 3
ignorehitpause = 1

[State 1211, Return2]
type = Projectile
trigger1 = time = 6
projanim = 1205
projhitanim = 1206
projedgebound = 70
projID = 1205
projpriority = 7
postype = p1
offset = 45,0
velocity = 9
attr = S, SP
damage = 130,10
animtype = hard
hitflag = MAFP
guardflag = MA
sparkno = S30002
guard.sparkno = s30040
sparkxy = 10,-75
hitsound = S1,8
guardsound = S1,7
pausetime = 0,10
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -3.5,-6
air.velocity = -4,-3
air.fall = 1
fall = 1
fall.recover = 0

[State 1211, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------
; Bai Gaeshi - Dan Hassha - Hit Helper
;-------------------------------------

[Statedef 1212]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 400
ctrl = 0
velset = 0,0
anim = 1203
sprpriority = 2

[State 1212, Invisible]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1212, ProjHit]
type = HitDef
triggerall = p2stateno != [5020,5050]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 1
attr = S, SA
animtype  = High
damage    = 54
hitflag = MAF        
guardflag = M
pausetime = 0,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-93
hitsound   = S2,6
guardsound = S1,7
guard.pausetime = 11,11
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -12
getpower = 121,121
givepower = 21,21
yaccel = 0.52
numhits = 1

; The Pause SCtrl below makes Yamazaki pause for the same time as our helper's pausetime to avoid anim desync.
; This is also a minor issue since the pause affects Yamazaki's cornerpush vel & opponent shaking action.
; Gotta find out how to solve this :(

[State 1212, Pause]
type = Pause
trigger1 = movecontact = 1
time = 12
pausebg = 0
ignorehitpause = 1
persistent = 0

[State 1212, Kill]
type = HitOverride
trigger1 = 1
attr = SCA,AP
stateno = 1203

[State 1212, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "Will find another way to solve that Pause issue.\nWorks fine, except that issue."

[State 1212, End]
type = DestroySelf
trigger1 = Time = 4

;---------------------------------------------------------------------------------------------------------------------------
; Hebi Tsukai - Zenpou - Attempt
;---------------------------------------------------------------------------------------------------------------------------

[Statedef 1300]
type    = S
movetype= I
physics = S
juggle  = 5
poweradd= 70
ctrl = 0
velset = 0,0
sprpriority = 2

;--------------------------

[State 1300, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1406
trigger3 = prevstateno = 1407
trigger4 = prevstateno = 1408
trigger5 = prevstateno = 1409
trigger6 = prevstateno = 1500
trigger7 = prevstateno = 1200
trigger8 = prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1300, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1406
trigger3 = prevstateno = 1407
trigger4 = prevstateno = 1408
trigger5 = prevstateno = 1409
trigger6 = prevstateno = 1500
trigger7 = prevstateno = 1200
trigger8 = prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1300, Ikuze1]
type = PlaySnd
trigger1 = time = 1
value = 0,11
channel = 0

[State 1300, Ikuze2]
type = PlaySnd
trigger1 = time = 123
value = 0,12
channel = 0

[State 1300, Ikuze3]
type = PlaySnd
trigger1 = time = 232
value = 0,13
channel = 0

[State 1300, Anim]
type = ChangeAnim
trigger1 = !Time
trigger1 = command = "holda"
value = 1300
persistent = 0
ignorehitpause = 1

[State 1300, Cancel]
type = ChangeState
trigger1 = command = "b"
trigger2 = time >= 453
value = 1301

[State 1300, Attack]
type = ChangeState
trigger1 = time <= 453
trigger1 = command != "holda"
value = 1302

;---------------------
; Hebi Tsukai - Cancel
;---------------------

[Statedef 1301]
type    = S
movetype= I
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
sprpriority = 2

[State 1301, Mute]
type = StopSnd
trigger1 = time = 1
channel = 0

[State 1301, Anim]
type = ChangeAnim
trigger1 = !Time
value = 1301

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------
; Hebi Tsukai - Zenpou - Attack
;------------------------------

[Statedef 1302]
type    = S
movetype= A
physics = S
juggle  = 10
anim = 1302
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1302, Mute]
type = StopSnd
trigger1 = !Time
channel = 0

[State 1302, Attack]
type = Hitdef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = S, SA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65,10
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -12
guard.velocity = -11.1
air.velocity = -2, -10.5
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 1302, Attack]
type = Hitdef
triggerall = p2statetype != A 
trigger1 = AnimElem = 4
attr = S, SA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65,10
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -12
guard.velocity = -11.1
air.velocity = -3, -4
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 1302, Attack]
type = Hitdef
triggerall = p2statetype = A ; In order to add the special P2 state
trigger1 = AnimElem = 4
attr = S, SA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65,10
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
p2stateno = 1350
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -12
guard.velocity = -11.1
air.velocity = -3, -4
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 1302, Arm1]
type = Explod
trigger1 = AnimElem = 3
anim = 1303
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 1302, Arm2]
type = Explod
trigger1 = AnimElem = 3, =3
anim = 1304
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 1302, Wind]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,22
channel = 1
ignorehitpause = 1

[State 1302, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,14
channel = 2
ignorehitpause = 1

[State 1302, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------------------------
; Hebi Tsukai - Zenpou - P2 hit in air by 2nd hit
;------------------------------------------------

[Statedef 1350]
type    = A
physics = N
movetype= H
ctrl = 0
velset = -4.5,-6

[State 1350, Hit Anim]
type = ChangeAnim
trigger1 = !Time
value = 5017

[State 1350, Hit Anim 2]
type = ChangeAnim
trigger1 = time = 6
value = 5030

[State 1350, Hit Anim 3]
type = ChangeAnim
trigger1 = time = 12
value = 5050

[State 1350, Gravity]
type = VelAdd
trigger1 = time >= 1
y = 0.52

[State 1350, Slide]
type = ChangeState
triggerall = time >= 5
trigger1 = pos y > 0
trigger1 = vel y > 0
value = 1351
ctrl = 0

[Statedef 1351]
type    = A
physics = N
movetype= H
ctrl = 0

[State 1351, GroundLevel]
type = PosSet
trigger1 = !Time
y = 0

[State 1351, Slide]
type = ChangeAnim
trigger1 = !Time
value = 5080 ;5090

[State 1351, Vel]
type = VelSet
trigger1 = !Time
x = -6
y = 0

[State 1351, Vel]
type = VelSet
trigger1 = time = 3
x = -5

[State 1351, Vel]
type = VelSet
trigger1 = time = 6
x = -4

[State 1351, Vel]
type = VelSet
trigger1 = time = 9
x = -3

[State 1351, Vel]
type = VelSet
trigger1 = time = 12
x = -2

[State 1351, Vel]
type = VelSet
trigger1 = time = 16
x = -1

[State 1351, Stop]
type = VelSet
trigger1 = time = 20
x = 0

[State 1351, End]
type = SelfState
trigger1 = time >= 21
value = 5110
 

;---------------------------------------------------------------------------------------------------------------------------
; Hebi Tsukai - Taikuu - Attempt
;---------------------------------------------------------------------------------------------------------------------------

[Statedef 1310]
type    = S
movetype= I
physics = S
juggle  = 5
poweradd= 70
ctrl = 0
velset = 0,0
sprpriority = 2

;--------------------------

[State 1310, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1406
trigger3 = prevstateno = 1407
trigger4 = prevstateno = 1408
trigger5 = prevstateno = 1409
trigger6 = prevstateno = 1500
trigger7 = prevstateno = 1200
trigger8 = prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1310, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1406
trigger3 = prevstateno = 1407
trigger4 = prevstateno = 1408
trigger5 = prevstateno = 1409
trigger6 = prevstateno = 1500
trigger7 = prevstateno = 1200
trigger8 = prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1310, Ikuze1]
type = PlaySnd
trigger1 = time = 1
value = 0,11
channel = 0

[State 1310, Ikuze2]
type = PlaySnd
trigger1 = time = 123
value = 0,12
channel = 0

[State 1310, Ikuze3]
type = PlaySnd
trigger1 = time = 232
value = 0,13
channel = 0

[State 1310, Anim]
type = ChangeAnim
trigger1 = !Time
trigger1 = command = "holdx"
value = 1300
persistent = 0
ignorehitpause = 1

[State 1310, Cancel]
type = ChangeState
trigger1 = command = "b"
trigger2 = time >= 453
value = 1301

[State 1300, Attack]
type = ChangeState
trigger1 = time <= 453
trigger1 = command != "holdx"
value = 1311

;------------------------------
; Hebi Tsukai - Taikuu - Attack
;------------------------------

[Statedef 1311]
type    = S
movetype= A
physics = S
juggle  = 5
anim = 1305
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1311, Mute]
type = StopSnd
trigger1 = !Time
channel = 0

[State 1311, Attack]
type = Hitdef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = S, SA
hitflag = HAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65,10
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -17,-94
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -12
guard.velocity = -11.1
air.velocity = -2, -10.5
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 1311, Attack]
type = Hitdef
trigger1 = AnimElem = 4
attr = S, SA
hitflag = HAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -16,-110
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -3,-5
guard.velocity = -11.1
air.velocity = -3, -7.5
getpower = 184, 184
givepower = 21, 21
yaccel = .5
fall = 1

[State 1311, Arm1]
type = Explod
trigger1 = AnimElem = 3
anim = 1306
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 1311, Arm2]
type = Explod
trigger1 = AnimElem = 3, =3
anim = 1307
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 1311, Wind]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,22
channel = 1
ignorehitpause = 1

[State 1311, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,14
channel = 2
ignorehitpause = 1

[State 1311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------------------------------------
; Hebi Tsukai - Gedan - Attempt
;---------------------------------------------------------------------------------------------------------------------------

[Statedef 1320]
type    = S
movetype= I
physics = S
juggle  = 5
poweradd= 70
ctrl = 0
velset = 0,0
sprpriority = 2

;--------------------------

[State 1320, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1406
trigger3 = prevstateno = 1407
trigger4 = prevstateno = 1408
trigger5 = prevstateno = 1409
trigger6 = prevstateno = 1500
trigger7 = prevstateno = 1200
trigger8 = prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1320, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1406
trigger3 = prevstateno = 1407
trigger4 = prevstateno = 1408
trigger5 = prevstateno = 1409
trigger6 = prevstateno = 1500
trigger7 = prevstateno = 1200
trigger8 = prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1320, Ikuze1]
type = PlaySnd
trigger1 = time = 1
value = 0,11
channel = 0

[State 1320, Ikuze2]
type = PlaySnd
trigger1 = time = 123
value = 0,12
channel = 0

[State 1320, Ikuze3]
type = PlaySnd
trigger1 = time = 232
value = 0,13
channel = 0

[State 1320, Anim]
type = ChangeAnim
trigger1 = !Time
trigger1 = command = "holdy"
value = 1300
persistent = 0
ignorehitpause = 1

[State 1310, Cancel]
type = ChangeState
trigger1 = command = "b"
trigger2 = time >= 453
value = 1301

[State 1300, Attack]
type = ChangeState
trigger1 = time <= 453
trigger1 = command != "holdy"
value = 1321

;-----------------------------
; Hebi Tsukai - Gedan - Attack
;-----------------------------

[Statedef 1321]
type    = S
movetype= A
physics = S
juggle  = 5
anim = 1308
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1321, Mute]
type = StopSnd
trigger1 = !Time
channel = 0

[State 1321, Attack]
type = Hitdef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = S, SA
hitflag = HAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65,10
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -17,-54
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -12
guard.velocity = -11.1
air.velocity = -2, -10.5
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 1311, Attack]
type = Hitdef
trigger1 = AnimElem = 4
attr = S, SA
hitflag = HAF
guardflag = M
animtype = Hard
priority = 5,Hit
damage = 65,10
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -16,-20
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
ground.ctrltime = 19
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.velocity = -7
guard.velocity = -11.1
air.velocity = -3, -7.5
getpower = 184, 184
givepower = 21, 21
yaccel = .5
air.fall = 1

[State 1321, Arm1]
type = Explod
trigger1 = AnimElem = 3
anim = 1309
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 3
ignorehitpause = 1

[State 1321, Arm2]
type = Explod
trigger1 = AnimElem = 3, =3
anim = 1310
ownpal = 0
postype = p1
offset = 0,0
sprpriority = 4
ignorehitpause = 1

[State 1321, Wind]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,22
channel = 1
ignorehitpause = 1

[State 1321, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,14
channel = 2
ignorehitpause = 1

[State 1321, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Dagger Of Judgement - Weak Version
;--------------------------------------------------------------------------------------------------------------------------

[statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
Posadd = 0,0
sprpriority = 1

;--------------------------

[State 1400, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 1600
trigger3 = prevstateno = 1200
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1400, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 1600
trigger3 = prevstateno = 1200
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1400, YAAAA]
Type = PlaySnd
trigger1 = animelem = 3
value = 0,18

[State 1400, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 1401

[statedef 1401]
type = S
movetype = A
physics = S
juggle  = 10
anim = 1401
ctrl = 0
Posadd = 0,0
sprpriority = 1

[State 1401, vels]
Type = Posadd
trigger1 = time = [1,2]
x = 7

[State 1401, vels]
Type = Posadd
trigger1 = time = 3
x = 5

[State 1401, vels]
Type = Posadd
trigger1 = time = 4
x = 4

[State 1401, vels]
Type = Posadd
trigger1 = time = [5,6]
x = 3

[State 1401, vels]
Type = Posadd
trigger1 = time = 7
x = 2

[State 1401, vels]
Type = Posadd
trigger1 = time = 8
x = 1

[State 1409, knife snd]
Type = PlaySnd
trigger1 = animelem = 2
value = 10,0

[State 1401, knife hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 60,10
animtype = hard
priority = 5, Hit
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-65
hitsound = S10,1
guardsound = S1,7
pausetime = 11,13
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = 0
air.velocity = -3,-7
air.fall = 1
yaccel = .5

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

[State 1401, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 1402

[statedef 1402]
type = S
movetype = A
physics = S
juggle  = 10
anim = 1402
ctrl = 0
sprpriority = 1

[State 1402, vels]
Type = Posadd
trigger1 = time = 1
x = 8

[State 1402, vels]
Type = Posadd
trigger1 = time = 2
x = 7

[State 1402, vels]
Type = Posadd
trigger1 = time = 3
x = 5

[State 1402, vels]
Type = Posadd
trigger1 = time = 4
x = 4

[State 1402, vels]
Type = Posadd
trigger1 = time = [5,6]
x = 3

[State 1402, vels]
Type = Posadd
trigger1 = time = 7
trigger2 = time = 10
x = 2

[State 1402, vels]
Type = Posadd
trigger1 = time = [8,9]
x = 1

[State 1409, knife snd]
Type = PlaySnd
trigger1 = animelem = 4
value = 10,0

[State 1401, knife hit2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 50,10
animtype = hard
priority = 5, Hit
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10,-70
hitsound = S10,1
guardsound = S1,7
pausetime = 11,13
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
fall = 1
yaccel = .5

[State 1401, Blood Hit2]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = 0,-70
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1402, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Dagger Of Judgement - Strong Version
;--------------------------------------------------------------------------------------------------------------------------

[statedef 1405]
type = S
movetype = A
physics = S
anim = 1405
ctrl = 0
Posadd = 0,0
sprpriority = 1

;--------------------------

[State 1405, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 1600
trigger3 = prevstateno = 1200
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1405, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 1600
trigger3 = prevstateno = 1200
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1400, YAAAA]
Type = PlaySnd
trigger1 = animelem = 3
value = 0,18

[State 1400, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 1406

[statedef 1406]
type = S
movetype = A
physics = S
juggle  = 10
anim = 1406
ctrl = 0
Posadd = 0,0
sprpriority = 1

[State 1401, vels]
Type = Posadd
trigger1 = time = 1
x = 8

[State 1401, vels]
Type = Posadd
trigger1 = time = 2
x = 6

[State 1401, vels]
Type = Posadd
trigger1 = time = 3
x = 5

[State 1401, vels]
Type = Posadd
trigger1 = time = 4
x = 4

[State 1401, vels]
Type = Posadd
trigger1 = time = [5,6]
x = 3

[State 1401, vels]
Type = Posadd
trigger1 = time = 7
x = 2

[State 1401, vels]
Type = Posadd
trigger1 = time = 8
x = 1

[State 1409, knife snd]
Type = PlaySnd
trigger1 = animelem = 2
value = 10,0

[State 1401, knife hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 30,10
animtype = hard
priority = 5, Hit
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10,-65
hitsound = S10,1
guardsound = S1,7
pausetime = 7,9
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = -12
air.velocity = -3,-7
air.fall = 1
yaccel = .5

[State 1401, Blood Hit1]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = 0,-65
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1401, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 1407

[statedef 1407]
type = S
movetype = A
physics = S
juggle  = 10
anim = 1407
ctrl = 0
sprpriority = 1

[State 1402, vels]
Type = Posadd
trigger1 = time = 1
x = 8

[State 1402, vels]
Type = Posadd
trigger1 = time = [2,3]
x = 5

[State 1402, vels]
Type = Posadd
trigger1 = time = 4
x = 4

[State 1402, vels]
Type = Posadd
trigger1 = time = [5,6]
x = 3

[State 1402, vels]
Type = Posadd
trigger1 = time = 7
trigger2 = time = 10
x = 2

[State 1402, vels]
Type = Posadd
trigger1 = time = [8,9]
x = 1

[State 1409, knife snd]
Type = PlaySnd
trigger1 = animelem = 4
value = 10,0

[State 1401, knife hit2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 30,10
priority = 5, Hit
animtype = hard
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10,-70
hitsound = S10,1
guardsound = S1,7
pausetime = 7,9
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = 0
air.velocity = -4,-7
air.fall = 1
yaccel = .5

[State 1401, Blood Hit2]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = 0,-70
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1402, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 1408

[statedef 1408]
type = S
movetype = A
physics = S
juggle  = 10
anim = 1408
ctrl = 0
Posadd = 0,0
sprpriority = 1

[State 1401, vels]
Type = Posadd
trigger1 = time = 1
x = 8

[State 1401, vels]
Type = Posadd
trigger1 = time = 2
x = 7

[State 1401, vels]
Type = Posadd
trigger1 = time = 3
x = 5

[State 1401, vels]
Type = Posadd
trigger1 = time = 4
x = 4

[State 1401, vels]
Type = Posadd
trigger1 = time = [5,6]
x = 3

[State 1401, vels]
Type = Posadd
trigger1 = time = 7
x = 2

[State 1401, vels]
Type = Posadd
trigger1 = time = 8
x = 1

[State 1409, knife snd]
Type = PlaySnd
trigger1 = animelem = 2
value = 10,0

[State 1401, knife hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 30,10
animtype = hard
priority = 5, Hit
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10,-65
hitsound = S10,1
guardsound = S1,7
pausetime = 7,9
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = -12
air.velocity = -3,-7
air.fall = 1
yaccel = .5

[State 1401, Blood Hit3]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = 0,-65
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1401, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 1409

[statedef 1409]
type = S
movetype = A
physics = S
juggle  = 10
anim = 1409
ctrl = 0
Posadd = 0,0
sprpriority = 1

[State 1402, vels]
Type = Posadd
trigger1 = time = 1
x = 8

[State 1402, vels]
Type = Posadd
trigger1 = time = [2,3]
x = 5

[State 1402, vels]
Type = Posadd
trigger1 = time = 4
x = 4

[State 1402, vels]
Type = Posadd
trigger1 = time = [5,6]
x = 3

[State 1402, vels]
Type = Posadd
trigger1 = time = 7
trigger2 = time = 10
x = 2

[State 1402, vels]
Type = Posadd
trigger1 = time = [8,9]
x = 1

[State 1409, knife snd]
Type = PlaySnd
trigger1 = animelem = 4
value = 10,0

[State 1401, knife hit2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 50,10
priority = 5, Hit
animtype = hard
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = 0,-70
hitsound = S10,1
guardsound = S1,7
pausetime = 11,13
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
fall = 1
yaccel = .5

[State 1401, Blood Hit4]
type = Explod
trigger1 = MoveHit
anim = 7007
pos = -10,-70
postype = p2
sprpriority = 5
bindtime = -1
ontop = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1402, state]
Type = ChangeState
Trigger1 = !AnimTime
Value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Foot Crush (Jigoku Geri)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
velset = 0
ctrl = 0
juggle = 10

;--------------------------

[State 1500, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1600
trigger8 = prevstateno = 1200
trigger9 = prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1500, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1600
trigger8 = prevstateno = 1200
trigger9 = prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1450, pos]
type = posadd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
x = 8

[State 1005, snd]
type = playsnd
trigger1 = animelem = 4
value = 0,10

[State 2051, FX]
type = Explod
trigger1 = Time = 12
anim = 1601
ID = 1601
postype = p1
pos = 10,0
bindtime = -1
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 220, 1]
type = Null ; censé etre le son du sabel
trigger1 = AnimElem = 7
value = 4,1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 50,10
animtype = hard
priority = 5, Hit
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -18,-80
hitsound = S1,8
guardsound = S1,7
pausetime = 5,5
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -1
air.velocity = -2,-7
air.fall = 1
yaccel = .5

[State 200, 3]
type = ChangeState
trigger1 = !AnimTime
value = 1501

[Statedef 1501]
type = S
movetype = A
physics = S
anim = 1501
poweradd = 0
velset = 0
ctrl = 0

[State 1450, pos]
type = posadd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 5
x = 8

[State 1450, pos]
type = posadd
trigger1 = animelem = 3
x = 16

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 60,10
animtype = hard
hitflag = MAF
guardflag = H
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -23,-60
hitsound = S1,8
guardsound = S1,7
pausetime = 13,13
ground.hittime = 18
ground.type = high
ground.slidetime = 18
ground.velocity = -1
air.velocity = -7,8
air.fall = 1
yaccel = .5

[State 1400, p2]
type = Targetstate
trigger1 = p2statetype != A
trigger1 = movehit && time < 14
trigger1 = p2stateno != 1510
value = 1510

[State 200, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------Hit by foot crush (stand/crouch)
[Statedef 1510]
type = L
movetype = H
physics = N
velset = 0
ctrl = 0
facep2 = 1

[State 1405, anim]
type = ChangeAnim2
trigger1 = !Time
value = 1510

[State 197, quake]
type = EnvShake
trigger1 = time = 14
time = 10
ampl = 5
freq = 70

[State 855, 39]
type = ChangeState
trigger1 = statetype = A
trigger2 = life = 0
value = 5030

[State 1405, state]
type = Selfstate
trigger1 = time = 20
value = 5110

;--------------------------------------------------------------------------------------------------------------------------
; Sand Kick (Metsubushi)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1600]
type = S
movetype = A
physics = S
anim = 1600
juggle = 15
velset = 0
ctrl = 0

;--------------------------

[State 1600, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
triggerall = !time
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1500
trigger8 = prevstateno = 1200
trigger9 = prevstateno = 1210
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1600, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1401
trigger2 = prevstateno = 1402
trigger3 = prevstateno = 1406
trigger4 = prevstateno = 1407
trigger5 = prevstateno = 1408
trigger6 = prevstateno = 1409
trigger7 = prevstateno = 1600
trigger8 = prevstateno = 1200
trigger9 = prevstateno = 1210
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 1005, snd]
type = playsnd
trigger1 = animelem = 1
value = 0,10

[State 2051, FX]
type = Explod
trigger1 = Time = 11
anim = 1601
ID = 1601
postype = p1
pos = 10,0
bindtime = -1
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 220, 1]
type = Null ; censé etre le son du sable
trigger1 = AnimElem = 3
value = 4,1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 80,10
animtype = hard
priority = 5, Hit
hitflag = MAF
guardflag = M
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound = S2,9
guardsound = S1,7
pausetime = 12,12
ground.hittime = 18
ground.type = low
ground.slidetime = 18
ground.velocity = -3,-7
air.velocity = -3,-7
air.fall = 1
yaccel = .5
p2stateno = 1605
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18

[State 200, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------Hit by sand kick
[Statedef 1605]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0
facep2 = 1

[State 855, 39]
type = Selfstate
trigger1 = pos Y != 0
trigger2 = life = 0
value = 5000

[State 1405, anim]
type = Velset
trigger1 = time = 13
x = -12.5

[State 1405, anim]
type = ChangeAnim2
trigger1 = !Time
value = 1605

[State 1405, state]
type = Selfstate
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------
; TRIGGER HAPPY
;<><><><><><<><><>
;------------------------------
[Statedef 1700]
type = S
movetype = A
physics = S
anim = 7100
velset = 0,0
poweradd = 53
ctrl = 0

[State 7100, turn]
type = Turn
trigger1 = Time = 0
trigger1 = prevstateno = 311

[State 7100, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 5,4
channel = 0

[State 7100, Gun fire]
type = PlaySnd
trigger1 = AnimElem = 9
value = 23,1
volume = 230

[State 7100, Explod1]
type = Explod
trigger1 = AnimElem = 9
id = 7105
anim = 7105
pos = 110,5
sprpriority = 2
ownpal = 1
;removeongethit = 1

[State 7100, Explod1]
type = Explod
trigger1 = AnimElem = 9
id = 0
anim = f61
pos = 110,5
sprpriority = -1
ownpal = 1
;removeongethit = 1

[State 1021, 1]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SP
animtype = hard
damage = 60,5
hitflag = MFAD
guardflag = M
pausetime = 0,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-20
hitsound = -1
guardsound = S200,3
ground.type = Low
ground.slidetime = 16
ground.hittime = 14
ground.velocity = -11
air.velocity = -4,-2
down.velocity = -8,0
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -13
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -13
givepower = 50,20
getpower  = 50,30
air.fall = 1

[State 7100, VAR]
type = varset
trigger1 = Time = 0
var(22) = 0

[State 7100, VAR]
type = varset
trigger1 = animelem = 9, >= 0
trigger1 = animelem = 14,<= 0
trigger1 = command = "x" || command = "y"
var(22) = 1

[State 7100, FOLLOW]
type = ChangeState
triggerall = animelem = 14
trigger1 = var(22) > 0
trigger2 = var(9) = 1
trigger2 = movehit
value = 7110
ctrl = 0

[State 7100, CS]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;-----------------------------

;Motion Follow Up
[Statedef 7110]
type = S
movetype = A
physics = S
anim = 7110
velset = 0,0
poweradd = 53
ctrl = 0


[State 7100, Gun fire]
type = PlaySnd
trigger1 = AnimElem = 3
value = 23,1
volume = 230

[State 7100, Explod1]
type = Explod
trigger1 = AnimElem = 3
id = 7105
anim = 7105
pos = 110,5
sprpriority = 2
ownpal = 1
;removeongethit = 1

[State 7100, Explod1]
type = Explod
trigger1 = AnimElem = 3
id = 0
anim = f61
pos = 110,5
sprpriority = -1
ownpal = 1
;removeongethit = 1

[State 1021, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SP
animtype = hard
damage = 60,5
hitflag = MFAD
guardflag = M
pausetime = 0,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-20
hitsound = -1
guardsound = S200,3
ground.type = Low
ground.slidetime = 16
ground.hittime = 14
ground.velocity = -11
air.velocity = -4,-2
down.velocity = -8,0
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -13
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -13
givepower = 50,20
getpower  = 50,30
air.fall = 1
air.juggle = 10

[State 7100, VAR]
type = varset
trigger1 = Time = 0
trigger2 = animtime = 0
var(22) = 0

[State 7100, VAR]
type = varset
trigger1 = animelem = 3, >= 0
trigger1 = animelem = 8,<= 0
trigger1 = command = "x" || command = "y"
var(22) = 1

[State 7100, FOLLOW]
type = ChangeState
triggerall = animelem = 8
trigger1 = var(22) > 0
trigger2 = var(9) = 1
trigger2 = movehit
value = 7110
ctrl = 0

[State 7100, CS]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;-----------------------------

;====================================
; CCI UltraROX Yamazaki - End Of File
;====================================
