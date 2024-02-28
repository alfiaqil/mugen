; Super Fighter Team

;=========================================================================
; Jump Start
;=========================================================================
[Statedef 40]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 40, Jump Direction]
type = varset
trigger1 = !ailevel && !time
sysvar(1) = 0 - command = "holdback" + command = "holdfwd"
[state 40, Jump Direction]
type = varset
trigger1 = !ailevel && time
trigger1 = command = "holdfwd" || command = "holdback"
sysvar(1) = 0 - command = "holdback" + command = "holdfwd"

[state 40, FWD Jump AI Direction]
type = varset
triggerall = ailevel && !time
trigger1 = P2BodyDist X > 80 && random >500
trigger2 = (enemynear,movetype!=A || backedgebodydist<=10)
sysvar(1) = 1
[state 40, BACK Jump AI Direction]
type = varset
triggerall = ailevel && !time
trigger1 = (P2BodyDist X =[1,60]) && random >500
trigger2 = (enemynear,movetype=A)
sysvar(1) = -1

[state 40, Change Animation]
type = changeanim
trigger1 = !time
value = 41 + sysvar(1)

[state 40, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, AA, AP

[state 40, Jump Dust]
type = helper
triggerall = random%3=0
trigger1 = !animtime
name = "Jump Dust"
ID = 60255
stateno = 6025
postype = P1
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 40, Neutral Jump]
type = velset
triggerall = !animtime && sysvar(1) = 0
trigger1 = fvar(36) := -pos y || 1 ; distance
trigger1 = fvar(37) := -10.0 || 1 ; velocity
trigger1 = fvar(38) := 36.0 || 1 ; time
x = 0.0 
y = fvar(37)
[state 40, Forward Jump]
type = velset
triggerall = !animtime && sysvar(1) = 1
trigger1 = fvar(36) := -pos y || 1 ; distance
trigger1 = fvar(37) := -9.0 || 1 ; velocity
trigger1 = fvar(38) := 36.0 || 1 ; time
x = 3.5
y = fvar(37)
[state 40, Backward Jump]
type = velset
triggerall = !animtime && sysvar(1) = -1
trigger1 = fvar(36) := -pos y || 1 ; distance
trigger1 = fvar(37) := -9.0 || 1 ; velocity
trigger1 = fvar(38) := 36.0 || 1 ; time
x = -3.5
y = fvar(37)

[state 40, End State]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

;=========================================================================
; Dash Forward
;=========================================================================
[Statedef 100]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 100, Reset Misc Variables]
type = null
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(1) := 0 || fvar(2) := 0 ; command buffering

[state 100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 100, Change Animation]
type = changeanim
trigger1 = !time
value = 100

[state 100, Dash Skill]
type = changestate
triggerall = !ailevel
triggerall = power >= powermax * 0.5
triggerall = animelemtime(2) >= 1 && animelemtime(6) < 0
trigger1 = command = "dskill"
value = 110
ctrl = 0

[state 100, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = F52, 0
volumescale = 100
channel = 4
lowpriority = 1

[state 100, Jump Land Dust]
type = helper
triggerall = !NumHelper(60260)
trigger1 = !animelemtime(1)
name = "Jump Land Dust"
ID = 60260
stateno = 6025
postype = P1
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 100, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = 8.0

[state 100, Add Velocity]
type = veladd
trigger1 = vel x > 0
trigger1 = animelemtime(2) > 0 && animelemtime(6) <= 0
x = -4.0 / 16.0

[state 100, Faux-Velocity]
type = offset
trigger1 = cond(!time, fvar(35) := 0 || 1, 1)
trigger1 = cond(animelemtime(2) >= 0 && animelemtime(6) < 0, var(47) := 1, var(47) := 0)
y = fvar(35) := fvar(35) + -4.0 + (0 - (-4.0 * 15.0)) / (15.0 ** 2.0 / 2.0) * animelemtime(2)

[state 100, Set Velocity]
type = velset
trigger1 = !animelemtime(6)
x = 0.0

[state 100, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Dash Backward
;=========================================================================
[Statedef 105]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 105, Reset Misc Variables]
type = null
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(1) := 0 || fvar(2) := 0 ; command buffering

[state 105, Set Position]
type = posset
trigger1 = !time
y = 0

[state 105, Change Animation]
type = changeanim
trigger1 = !time
value = 105

[state 105, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = F52, 0
volumescale = 100
channel = 4
lowpriority = 1

[state 105, Jump Land Dust]
type = helper
triggerall = !NumHelper(60260)
triggerall = random%3=0
trigger1 = !animelemtime(1)
name = "Jump Land Dust"
ID = 60260
stateno = 6025
postype = P1
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 105, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = -8.0

[state 105, Add Velocity]
type = veladd
trigger1 = vel x < 0
trigger1 = animelemtime(2) > 0 && animelemtime(6) <= 0
x = 4.0 / 16.0

[state 105, Faux-Velocity]
type = offset
trigger1 = cond(!time, fvar(35) := 0 || 1, 1)
trigger1 = cond(animelemtime(2) >= 0 && animelemtime(6) < 0, var(47) := 1, var(47) := 0)
y = fvar(35) := fvar(35) + -4.0 + (0 - (-4.0 * 15.0)) / (15.0 ** 2.0 / 2.0) * animelemtime(2)

[state 105, Set Velocity]
type = velset
trigger1 = !animelemtime(6)
x = 0.0

[state 105, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Dash Skill
;=========================================================================
[Statedef 110]
type = A
movetype = I
physics = N

[state 110, Change Animation]
type = changeanim
trigger1 = !time
value = 110

[state 110, Add Power]
type = poweradd
trigger1 = !time
value = -powermax / 2

[state 110, Afterimage]
type = afterimage
trigger1 = !time
time = 1
length = 12
palcolor = 0
palbright = 64, 64, 64
palcontrast = 160, 160, 256
paladd = 0, 0, 0
palmul = 1.0, 1.0, 1.0

[state 110, Width]
type = width
trigger1 = 1
edge = 40, 0

[state 110, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 1, 0
volumescale = 100
channel = 0

[state 110, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 110, Add Position]
type = posadd
trigger1 = !time
y = fvar(35)

[state 110, Add Velocity]
type = veladd
trigger1 = 1
x = -0.25
y = (abs(fvar(35)) - (-4.0 * 15.0)) / (15.0 ** 2.0 / 2.0)

[state 110, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 111

;=========================================================================
; Dash Skill Land
;=========================================================================
[Statedef 111]
type = C
movetype = A
physics = N
ctrl = 0

[state 111, Set Position]
type = posset
trigger1 = !time
y = 0

[state 111, Change Animation]
type = changeanim
trigger1 = !time
value = 110
elem = 2

[state 111, Shake]
type = envshake
trigger1 = !time
time = 4
ampl = 6
freq = 128

[state 111, Sound]
type = playsnd
trigger1 = !time
value = F5100, 0
volumescale = 100

[state 111, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 111, Slide Dust]
type = helper
triggerall = random%3=0
trigger1 = !time
name = "Slide Dust"
ID = 60256
stateno = 6025
postype = P1
pos = 16, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 111, Set Velocity]
type = velset
trigger1 = !time
y = 0.0
[state 111, Add Velocity]
type = veladd
trigger1 = vel x > 0
x = -0.25
[state 111, Set Velocity]
type = velset
trigger1 = animelemtime(4) = 4
x = 0.0

[state 111, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 3 || var(15) := -15 || var(21) := 110
[state 111, Hit 1]
type = hitdef
triggerall = var(21) != var(22) ; && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 110)
attr = C, SA
damage = ceil(cond(24 * fvar(23) < 2, 2, 24 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 8 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 205)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 70), (var(42) := -8)
animtype = hard
ground.type = trip
air.animtype = back
air.type = trip
ground.slidetime = 12
ground.hittime = 22
guard.slidetime = 12
guard.hittime = 18
air.hittime = 0
ground.velocity = -3.0, -6.0
guard.velocity = -8.0
air.velocity = -3.0, -6.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = 0, 0
givepower = 0 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 6
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 111, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = S
movetype = I
persistent = 0

[state 111, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 111, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; End of Round
;=========================================================================
[statedef 180]
type = S
movetype = I
physics = S
facep2 = 1
velset = 0, 0
sprpriority = 2

[state 180, Reset Miscellaneous Variables]
type = null
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables

[state 180, Calculate Score Bonus Normal]
type = null
triggerall = !time
trigger1 = var(3) := var(2) || 1 ;update previous score
trigger1 = var(2) := var(2) + Cond((stagevar(info.name)="Bonus Stage"=1),0,(100 * life + 100 * (100 - cond(sysfvar(1) > 99, 99, floor(sysfvar(1))))))


[state 180, Set Position]
type = posset
trigger1 = !time
y = 0

[state 180, Change Animation]
type = changeanim
trigger1 = !time
;value = cond(facing = 1, 181, 180 + random % 2)
value = cond(facing = 1, 181, 180)
[state 180, Turn Animation]
type = null;changeanim
trigger1 = !time && anim = 180
trigger1 = facing = 1
value = 5
[state 180, Heil Animation]
type = changeanim
trigger1 = !animelemtime(3) && anim = 5
value = 180
elem = 2

[state 180, Turn for Heil]
type = turn
trigger1 = anim = 5
persistent = 0

[state 180, Victory Quote]
type = victoryquote
trigger1 = 0
value = 0

[state 180, Special Effect]
type = assertspecial
trigger1 = time < 240
flag = roundnotover

[state 180, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 180, Voice]
type = playsnd
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = anim = 181
trigger1 = !animelemtime(3)
value = 180, 0
volumescale = 100
channel = 0

;=========================================================================
; Arcade CPU Intro
;=========================================================================
[Statedef 191]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 191, Set Position]
type = posset
trigger1 = !time
y = 0

[state 191, Camera]
type = helper
trigger1 = !time
name = "Camera"
ID = 191
stateno = 9990
postype = P1
pos = 0, 0
facing = 1
ownpal = 1

[state 191, Change Animation]
type = changeanim
trigger1 = !time
value = 45

[state 191, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 191, Vulnerability]
type = nothitby
trigger1 = anim = 45
value = SCA
time = 1

[state 191, Solidity]
type = playerpush
trigger1 = anim = 45
value = 0

[state 191, Add Position]
type = posadd
trigger1 = !time
x = -200.0
y = 0.0

[state 191, Set Velocity]
type = velset
trigger1 = !time
x = cond(numhelper(stateno), (helper(stateno),pos x - pos x) * facing, 200.0) / 56.0
y = const(movement.yaccel) * 28.0 * -1.0

[state 191, Add Velocity]
type = veladd
trigger1 = anim = 45
trigger1 = time
y = const(movement.yaccel)

[state 191, Change Animation]
type = changeanim
trigger1 = anim = 45 && time
trigger1 = pos y + vel y >= 0
value = 48

[state 191, State Type Set]
type = statetypeset
trigger1 = anim = 48
statetype = S
persistent = 0

[state 191, Sound]
type = playsnd
trigger1 = anim = 48
value = F52, 0
volumescale = 100
persistent = 0

[state 191, Set Velocity]
type = velset
trigger1 = anim = 48
x = 0.0
y = 0.0
persistent = 0

[state 191, Set Velocity]
type = posset
trigger1 = anim = 48
x = cond(numhelper(stateno), helper(stateno),pos x, pos x)
y = 0.0
persistent = 0

[state 191, Bound]
type = screenbound
trigger1 = anim = 45
value = 0
movecamera = 0, 0

[state 191, End State]
type = changestate
trigger1 = anim = 48
trigger1 = !animtime
value = 0

;=========================================================================
; Taunt
;=========================================================================
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 195, Set Position]
type = posset
trigger1 = !time
y = 0

[state 195, Change Animation]
type = changeanim
trigger1 = !time
value = 195

[state 195, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Tough Skill
;=========================================================================
[Statedef 900]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 900, Reset Misc Variables]
type = varset
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
trigger1 = fvar(39) := fvar(25) || fvar(25) := -1 ; superpause cornerpush
sysvar(2) = 720 + 0 * (var(52) := 720 / 3)

[state 900, Set Position]
type = posset
trigger1 = !time
y = 0

[state 900, Change Animation]
type = changeanim
trigger1 = !time
value = 900

[state 900, Add Power]
type = poweradd
trigger1 = !time
value = -powermax

[state 900, Super Effect]
type = helper
trigger1 = !time
name = "Super Effect"
ID = 6030
stateno = 6030
postype = left
pos = 0, 4
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 900, Super Pause]
type = superpause
trigger1 = !time
time = 48
movetime = (var(54) := 48)
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
darken = 0

[state 900, Vulnerability]
type = nothitby
trigger1 = !time
value = SCA
time = 48

[state 900, Voice]
type = playsnd
trigger1 = !time
value = 1, 2
volumescale = 100
channel = 0

[state 900, Control]
type = ctrlset
trigger1 = !animtime
value = 1

[state 900, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Magnetic Field Active
;=========================================================================
[Statedef 905]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 905, Decrement Tough Skill Stock]
type = varadd
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
var(52) = -(sysvar(2) / 3)

[state 905, Set Position]
type = posset
trigger1 = !time
y = 0

[state 905, Change Animation]
type = changeanim
trigger1 = !time
value = 905

[state 905, Set Number Loops]
type = varset
trigger1 = !time
var(6) = 16 ; number of cycles. values equal to and below ONE will generate one cycle.
[state 905, Loop Animation]
type = changeanim
triggerall = var(6) > 0
trigger1 = !animelemtime(7)
trigger1 = var(6) := var(6) - 1
value = anim
elem = 5
[state 905, End Loop Animation]
type = changeanim
triggerall = var(6) < 7
triggerall = command != "holdtskill"
triggerall = command != "hold_a" && command != "hold_b"
triggerall = command != "hold_x" && command != "hold_y"
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
value = anim
elem = 7

[state 905, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = F3, 3
volumescale = 100

[state 905, Magnetic Box Player]
type = helper
trigger1 = !animelemtime(5)
name = "Magnetic Box Player"
ID = 906
stateno = 906
postype = P1
ownpal = 0
persistent = 0

[state 905, Magnetic Box Projectile]
type = helper
trigger1 = !animelemtime(5)
name = "Magnetic Box Projectile"
ID = 907
stateno = 907
postype = P1
ownpal = 0
persistent = 0

[state 905, Control]
type = ctrlset
trigger1 = !animtime
value = 1

[state 905, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Magnetic Box Player
;=========================================================================
[StateDef 906]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 906, Change Animation]
type = changeanim
trigger1 = anim != 906
value = 906

[state 906, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 906, Width]
type = width
trigger1 = numenemy
value = -4 - cond(enemy,name = "Stan" && enemy,fvar(29), 6, 0), -4 - cond(enemy,name = "Stan" && enemy,fvar(29), 6, 0)

[state 906, Solidity]
type = playerpush
trigger1 = 1
value = 1 ; cond(numenemy, cond(enemy,name = "Stan" && enemy,fvar(29), gametime % 8 = 0, 1), 1)

[state 906, Bind to Enemy]
type = varset
trigger1 = !time || parent,command = "holdfwd" || parent,command = "holdback"
var(0) = cond(!time || parent,command = "holdback", 1, 2)
[state 906, Bind to Enemy]
type = posset
trigger1 = numenemy && var(0) = 1
x = enemynear,pos x + cond(enemynear,statetype = A, enemynear,const(size.air.front), enemynear,const(size.ground.front)) * -root,facing
[state 906, Bind to Enemy]
type = posset
trigger1 = numenemy && var(0) = 2
x = enemynear,pos x + cond(enemynear,statetype = A, enemynear,const(size.air.back), enemynear,const(size.ground.back)) * root,facing
[state 906, Bind to Enemy]
type = posset
trigger1 = numenemy
y = enemynear,pos y

[state 906, Set Velocity]
type = velset
trigger1 = numenemy
trigger1 = cond(enemy,name = "Stan" && enemy,fvar(29), 0, 1)
x = 1.0 - 2.0 * (var(0) = 2)

[state 906, Destroy Helper]
type = varadd
trigger1 = parent,movetype = H || !parent,var(59)
trigger2 = parent,stateno != 905
trigger3 = parent,anim = 905 && parent,animelemtime(7) >= 0
trigger4 = var(1)
var(1) = 1

[state 906, Destroy Helper]
type = destroyself
trigger1 = var(1) >= 16

;=========================================================================
; Magnetic Box Projectile
;=========================================================================
[Statedef 907]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 907, Absorb One Hit]
type = envshake
trigger1 = prevstateno
time = 4
ampl = 4
freq = 128

[state 907, Absorb One Hit]
type = null ; explod
trigger1 = prevstateno
anim = F200
ID = 200
postype = left
pos = floor(screenpos x), floor(screenpos y) - 56
facing = 1
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = 0
pausemovetime = 0

[state 907, Absorb One Hit]
type = playsnd
trigger1 = prevstateno
value = F4, 11

[state 907, Absorb One Hit]
type = destroyself
trigger1 = prevstateno

[state 907, Change Animation]
type = changeanim
trigger1 = anim != 907
value = 907 

[state 907, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 907, Bind to Parent]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 907, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 907, Reversal]
type = reversaldef
trigger1 = 1
reversal.attr = SCA, NP, SP
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
p1stateno = 907
p2stateno = 908
numhits = 0

[state 907, Absorb One Hit]
type = destroyself
trigger1 = parent,movetype = H || !parent,var(59)
trigger2 = parent,stateno != 905
trigger3 = parent,anim = 905 && parent,animelemtime(7) >= 0

;=========================================================================
; Alter Magnetic Charge
;=========================================================================
[Statedef 908]
type = U
movetype = H
physics = U
ctrl = 0
sprpriority = 2

[state 908, Own State]
type = selfstate
trigger1 = !ishelper
value = cond(authorname = "Super Fighter Team", 5305, 5050)

[state 908, Vulnerability]
type = nothitby
trigger1 = ishelper
value = SCA
time = 1

[state 908, Turn]
type = turn
trigger1 = ishelper

[state 908, Own State]
type = selfstate
trigger1 = ishelper
trigger1 = sysvar(1)
trigger1 = var(3) := 1
value = sysvar(1)

[state 908, Destroy]
type = destroyself
trigger1 = ishelper

;=========================================================================
; Magnetic Field Passive
;=========================================================================
[Statedef 910]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 910, Tough Skill Stock]
type = varadd
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
trigger1 = fvar(39) := fvar(25) || fvar(25) := -1 ; superpause cornerpush
sysvar(3) = sysvar(2) + 0 * (var(53) := 1)

[state 910, Set Position]
type = posset
trigger1 = !time
y = 0

[state 910, Change Animation]
type = changeanim
trigger1 = !time
value = 910

[state 910, Super Effect]
type = helper
trigger1 = !time
name = "Super Effect"
ID = 6030
stateno = 6030
postype = left
pos = 0, 4
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 910, Super Pause]
type = superpause
trigger1 = !time
time = 36
movetime = (var(54) := 36)
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
darken = 0

[state 910, Vulnerability]
type = nothitby
trigger1 = !time
value = SCA
time = 36

[state 910, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 0
volumescale = 100
channel = 0

[state 910, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = F3, 5
volumescale = 100
channel = 9

[state 910, Shake]
type = envshake
trigger1 = !animelemtime(2)
time = 32
ampl = 4
freq = 128

[state 910, Control]
type = ctrlset
trigger1 = time = 36 || !animelemtime(10)
value = 1

[state 910, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Magnetic Box Barrier
;=========================================================================
[Statedef 911]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 911, Add Power]
type = poweradd
trigger1 = prevstateno
value = 16

[state 911, Magnetic Field Positive Electron]
type = parentvaradd
trigger1 = prevstateno
fvar(29) = cond(numtarget, cond(target,var(5) < 3, 1, target,var(5)), 1)
[state 911, Magnetic Field Positive Electron]
type = parentvaradd
triggerall = prevstateno && numtarget
trigger1= target,name = "Sheana" && target,stateno = 3000
trigger2 = target,name = "Dietrich" && target,anim = 1105
fvar(29) = -1.5 + 1.0 * (target,name = "Dietrich")

[state 911, Return Discharged Electrons]
type = targetpoweradd
triggerall = prevstateno && numtarget
trigger1 = root,fvar(29) < 4 && root,stateno != 914
trigger1 = !target,ishelper && target,anim = [3000, 3999]
value = target,powermax

[state 911, Absorb One Hit]
type = envshake
trigger1 = prevstateno
time = 4
ampl = 4
freq = 128

[state 911, Absorb One Hit]
type = playsnd
trigger1 = prevstateno
value = F4, 11

[state 911, Absorb One Hit]
type = explod
trigger1 = numenemy && ishelper(912)
trigger1 = prevstateno
anim = F200
ID = 200
postype = p2
pos = enemy,var(41), enemy,var(42)
facing = 1
bindtime = 1
removetime = -2
sprpriority = 2
supermovetime = 0
pausemovetime = 0

[state 911, Absorb One Hit]
type = destroyself
trigger1 = prevstateno

[state 911, Detect Physical Electrons]
type = varset
triggerall = var(0) := 0 || 1
triggerall = ishelper(912)
trigger1 = p2name = "Lee" && p2movetype = A
trigger1 = p2stateno != 1100 && p2stateno = [1000, 1400]
trigger2 = p2name = "Yun" && p2movetype = A
trigger2 = p2stateno = 1000
trigger3 = p2name = "King" && p2movetype = A
trigger3 = p2stateno = 3000
trigger4 = p2name = "Kaori" && p2movetype = A
trigger4 = p2stateno = 3000 && (enemy,animelemtime(24) >= 0 && enemy,animelemtime(27) < 0 || enemy,animelemtime(42) >= 0 && enemy,animelemtime(60) < 0) || p2stateno = [1100, 1300]
trigger5 = p2name = "Sheana" && p2movetype = A
trigger5 = p2stateno = [1200, 1300]
trigger6 = p2name = "Madiesha" && p2movetype = A
trigger6 = p2stateno = 1400
trigger7 = p2name = "Gerdon" && p2movetype = A
trigger7 = p2stateno = 1200
trigger8 = p2name = "Stan" && p2movetype = A
trigger8 = p2stateno = 1000 && enemy,anim = 1005 || p2stateno = 3000
trigger9 = p2name = "Chieshen" && p2movetype = A
trigger9 = p2stateno = 3000
trigger10 = p2name = "Dietrich" && p2movetype = A
trigger10 = p2stateno = 1200
trigger11 = p2name = "Cula" && p2movetype = A
trigger11 = p2stateno = 1100
trigger12 = p2name = "Zhao" && p2movetype = A
trigger12 = p2stateno = 1100 || p2stateno = 3000
var(0) = 1

[state 911, Detect Physical Electrons]
type = varset
triggerall = ishelper(912)
trigger1 = p2name = "Yun" && p2movetype = A
trigger1 = p2stateno = 1400 || p2stateno = 3000
trigger2 = p2name = "Sheana" && p2movetype = A
trigger2 = p2stateno = 3000
trigger3 = p2name = "Zhao" && p2movetype = A
trigger3 = p2stateno = 1300
var(0) = 2

[state 911, Change Animation]
type = changeanim
trigger1 = 1
value = cond(animexist(root,anim + 10000), root,anim + 10000, 911)
elem = cond(animexist(root,anim + 10000), root,animelemno(0), 1)

[state 911, Invisble]
type = assertspecial
trigger1 = 1
flag = invisible

[state 911, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 911, Bind to Parent]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 911, Turn]
type = turn
trigger1 = facing != root,facing

[state 911, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 911, Reversal 1]
type = reversaldef
trigger1 = var(0) = 0
reversal.attr = SCA, AP
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
p1stateno = 911
p2stateno = 912
numhits = 0

[state 911, Reversal 2]
type = reversaldef
trigger1 = var(0) = 1
ID = 911
reversal.attr = SCA, AA
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
p1stateno = 911
p2stateno = 912
numhits = 0

[state 911, Reversal 3]
type = reversaldef
trigger1 = var(0) = 2
reversal.attr = SCA, AA
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
p1stateno = 911
numhits = 0

[state 911, No Physical Electrons]
type = destroyself
trigger1 = ishelper(912) && !var(0)
[state 911, Absorb One Hit]
type = destroyself
trigger1 = !root,sysvar(2) || root,sysvar(3) != root,sysvar(2)
trigger2 = !root,var(53) || !root,var(59) || root,statetype = A
trigger3 = root,fvar(29) >= 4 || root,stateno = 914
trigger4 = !animexist(root,anim + 10000)

;=========================================================================
; Absorb Magnetic Charge
;=========================================================================
[Statedef 912]
type = U
movetype = H
physics = U
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 912, Return Discharged Electrons]
type = poweradd
triggerall = ishelper && numenemy && prevstateno = [3000, 3999]
trigger1 = enemy,fvar(29) < 4 && enemy,stateno != 914
value = powermax
persistent = 0

[state 912, Own State]
type = selfstate
trigger1 = !ishelper
value = cond(authorname = "Super Fighter Team", 5305, 5050)

[state 912, Vulnerability]
type = nothitby
trigger1 = ishelper
value = SCA
time = 1

[state 912, Scale]
type = angledraw
trigger1 = ishelper
scale = const(size.xscale) - (const(size.xscale) / 8.0) * time, const(size.yscale) - (const(size.yscale) / 8.0) * time

[state 912, Position]
type = null
trigger1 = !time
trigger1 = fvar(18) := p2dist x || fvar(19) := p2dist y
[state 912, Add Position]
type = posadd
trigger1 = ishelper
x = p2dist x - fvar(18)
y = p2dist y - fvar(19)

[state 912, Absorb One Hit]
type = explod
trigger1 = !time && ishelper
anim = F200
ID = 200
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = 0
pausemovetime = 0

[state 912, Miss]
type = hitdef
trigger1 = 1
attr = 
hitflag = 

[state 912, Destroy]
type = removeexplod
trigger1 = numexplod && !numexplod(200)

[state 912, Destroy]
type = destroyself
trigger1 = ishelper && time >= 8

;=========================================================================
; Magnetic Field Charged
;=========================================================================
[Statedef 913]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 914, Set Position]
type = posset
trigger1 = !time
y = 0

[state 913, Change Animation]
type = changeanim
trigger1 = !time
value = 913

[state 913, Blink]
type = palfx
trigger1 = !time
time = 16
add = -64, -64, -64
sinadd = 32, 128, 256, 8
ignorehitpause = 1

[state 913, Sound]
type = playsnd
trigger1 = !time
value = 1, 0
channel = 0

[state 913, Shake]
type = envshake
trigger1 = !time
time = 8
ampl = 8
freq = 128

[state 913, Control]
type = ctrlset
trigger1 = !animtime
value = 1

[state 913, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Magnetic Field Overcharged
;=========================================================================
[Statedef 914]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 914, Reset Misc Variables]
type = varset
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
sysvar(3) = 0 * (var(52) := 0) * (var(53) := 0) * floor(fvar(29) := 0)

[state 914, Increase Dizzy]
type = varset
trigger1 = !time
fvar(14) = fvar(15) - 1

[state 914, Set Position]
type = posset
trigger1 = !time
y = 0

[state 914, Change Animation]
type = changeanim
trigger1 = time < 16
value = 914

[state 914, Add Power]
type = poweradd
trigger1 = !time
value = -powermax

[state 914, Blink]
type = palfx
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
time = 1
add = abs(floor(128 * cos(animelemtime(4) * pi / 8))), 0, 0

[state 914, Faux-Shake]
type = offset
trigger1 = time < 16
x = cond(random < 500, random % 2, -random % 2)
y = cond(random < 500, random % 2, -random % 2)

[state 914, Voice]
type = playsnd
trigger1 = time = 16
value = 5150, 0
volumescale = 100
channel = 0
persistent = 0

[state 914, Sound]
type = playsnd
trigger1 = !time
value = F3, 11
volumescale = 100
channel = 1
persistent = 0

[state 914, Shake]
type = envshake
trigger1 = !time
time = 8
ampl = 8
freq = 128

[state 914, Set Hit Velocity]
type = velset
trigger1 = time = 16
x = -8.0
[state 914, Multiply Velocity]
type = veladd
trigger1 = time > 16 && vel x < 0
x = 0.5
[state 914, Set Velocity]
type = velset
trigger1 = vel x > 0
x = 0.0

[state 914, Control]
type = ctrlset
trigger1 = !animtime
value = 1

[state 914, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Lying Down
;=========================================================================
[Statedef 5111]
type = L
movetype = H
physics = N

[state 5111, End State]
type = changestate
triggerall = alive
trigger1 = sysvar(0) = 5071 && animelemtime(1) >= 8 ; unqiue
trigger2 = sysvar(0) != 5071 && animelemtime(1) >= 16 ; unqiue
trigger3 = time > 128
value = 5120

[state 5111, End State]
type = changestate
trigger1 = !alive
trigger1 = !animtime || anim = [5110, 5119]
value = 5150