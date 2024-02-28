; Super Fighter Team

;=========================================================================
; Nazi Strike
;=========================================================================
[Statedef 1000]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = -1

[state 1000, Level]
type = null
triggerall = !time
triggerall = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
triggerall = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
triggerall = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
trigger1 = cond(ailevel, 1 * (var(9) := var(9) + !var(9)), 0) ; stop here if AI
trigger2 = cond(!fvar(3) && (command = "y" || command = "NE_y"), 1 * (var(9) := 2), 0) ; stop here if level isn't set
trigger3 = var(9) := cond(fvar(3), floor(fvar(3)), 1) || fvar(3) := 0 ; stop here if level is set

[state 1000, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1000, Change Animation]
type = changeanim
triggerall = !AILevel
trigger1 = !time
value = 1000 + var(9) - 1
[state 1000, AI Change Animation]
type = changeanim
triggerall = AILevel
trigger1 = !time
value = 1000

[state 1000, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = 0

[state 1000, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 1000, 0
volumescale = 100
channel = 0

[state 1000, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F3, 0
volumescale = 100
channel = 1
persistent = 0

[state 1000, Wind Dust]
type = helper
triggerall = random%3=0
trigger1 = !animelemtime(4)
name = "Wind Dust"
ID = 60252
stateno = 6025
postype = P1
pos = 40, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 1000, Nazi Symbol]
type = helper
trigger1 = !animelemtime(5)
name = "Nazi Symbol"
ID = 1005
stateno = 1005
postype = P1
pos = 33, -61
ownpal = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1000, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 1000, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 1000, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 1000, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Nazi Symbol Start 1
;=========================================================================
[Statedef 1005]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down
; sysvar(0) = subside state
; sysvar(1) = reflected state

;========================< Projectile Configuration >========================

[state 1005, Subside State]
type = varset
trigger1 = !time
sysvar(0) = 1007
[state 1005, Reflected State]
type = varset
trigger1 = !time
sysvar(1) = 1010

[state 1005, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && prevstateno != 1006 && !time
var(0) = 1
ignorehitpause = 1

[state 1005, Hit Counter]
type = varadd
trigger1 = var(0) = 1
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 1005, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1005, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1005, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(14) := root,var(14) || var(16) := root,var(16) || var(17) := root,var(17) || var(18) := root,var(18) || 1
; Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(13) := root,var(13) || fvar(22) := root,fvar(22) || fvar(23) := root,fvar(23) || 1
; Normal/Special/Super Levels
trigger1 = !prevstateno && !time
trigger1 = var(9) := root,var(9)

[state 1005, Change Animation]
type = changeanim
trigger1 = anim != 1005 && !time
value = 1005

[state 1005, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1005, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1005, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA, AP
time = -1
ignorehitpause = 1

[state 1005, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA, AA, AT, AP
stateno = 1006
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1005, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 1005, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1005, Set Velocity]
type = velset
trigger1 = cond(prevstateno, time = 0, time = 1)
x = cond(var(9) = 2, 6.0, 4.5)

[state 1005, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = S, SP
hitflag = 

[state 1005, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(5) := 2 || var(15) := 6 || var(21) := 1005
[state 1005, Hit 1]
type = hitdef
triggerall = !var(14) && !var(18) ; var(21) != var(22) && 
trigger1 = var(2) <= 0
ID = 0 + 0 * (var(21) := 1005)
attr = S, SP
damage = ceil(cond(20 * fvar(23) < 2, 2, 20 * fvar(23))), 2
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 4 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := floor(p2dist x)), (var(42) := floor(p2dist y - 48))
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 0
ground.velocity = -10.0
guard.velocity = -10.0
air.velocity = -5.5, -5.5
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = cond(2 - 1 * var(13) < 1, 1, 2 - 1 * var(13)), 1
givepower = 0 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

;========================< Projectile Contact >========================

[state 1005, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(2) = 200
ignorehitpause = 1

[state 1005, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(13) = 1
ignorehitpause = 1
[state 1005, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
fvar(22) = 1
ignorehitpause = 1

[state 1005, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(16) = var(15)
ignorehitpause = 1
[state 1005, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(16) := root,var(16) || 1
var(17) = cond((var(16) = [1, 6]), 120 - 20 * (var(16) - 1), cond(var(16) = 7, 10, cond(var(16) = 8, 4, cond(var(16) = 9, 2, cond(var(16) >= 10, 1, var(17))))))
ignorehitpause = 1

[state 1005, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(55) = (var(55) := target,ID)
ignorehitpause = 1
[state 1005, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(56) = (var(56) := target,ID)
ignorehitpause = 1

[state 1005, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(24) = target,gethitvar(xvel) ; * (1.0 + cond(var(13) * 0.05 < 0.5, var(13) * 0.05, 0.5))
ignorehitpause = 1
[state 1005, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(25) = fvar(26)
ignorehitpause = 1

[state 1005, Hit Sound]
type = playsnd
trigger1 = var(0) = 1
value = F4, cond(movehit, var(11), var(12))
channel = 2
ignorehitpause = 1

[state 1005, Hit Spark, Guard Spark]
type = explod
trigger1 = var(0) = 1
anim = F(cond(movehit, var(39), var(40)))
ID = 200
postype = p1
pos = ceil(cond(p2dist x < 0, 0, cond(p2dist x < var(41), p2dist x, var(41))) * const(size.xscale)), ceil(var(42) * const(size.yscale))
facing = 1
bindtime = 1
scale = 1.0 * const(size.xscale), 1.0  * const(size.yscale)
sprpriority = 5
ignorehitpause = 1

[state 1005, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = S, SP
hitflag = 
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 1005, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
value = 1007
ignorehitpause = 1

[state 1005, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-128, gamewidth + 128]
trigger2 = screenpos y < -64

[state 1005, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Nazi Symbol Canceled 1
;=========================================================================
[Statedef 1006]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1006, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1006, Change Animation]
type = changeanim
trigger1 = 0
value = anim
elem = animelemno(0)

[state 1006, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1006, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1006, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1006, Vulnerability]
type = hitby
trigger1 = 0
value = SCA, AP
time = -1

[state 1006, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA, AA, AT, AP
stateno = 1006
slot = 0
time = -1
forceair = 0

[state 1006, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1006, Hit Sound]
type = playsnd
trigger1 = !time
value = F4, 10
channel = 2

[state 1006, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1006, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1006, End State]
type = changestate
trigger1 = !time
value = 1007

;=========================================================================
; Nazi Symbol End 1
;=========================================================================
[Statedef 1007]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1007, Change Animation]
type = changeanim
trigger1 = !time
value = 1007

[state 1007, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1007, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1007, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Nazi Symbol Reflected 1
;=========================================================================
[Statedef 1010]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down
; var(3) = reflected
; sysvar(0) = subside state
; sysvar(1) = reflected state

;========================< Projectile Configuration >========================

[state 1010, Subside State]
type = varset
trigger1 = !time
sysvar(0) = 1007
[state 1010, Reflected State]
type = varset
trigger1 = !time
sysvar(1) = 1007

[state 1010, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && prevstateno != 1011 && !time
var(0) = 1
ignorehitpause = 1

[state 1010, Hit Counter]
type = varadd
trigger1 = var(0) = 1
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 1010, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1010, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1010, Reset Variables After Reflection]
type = null
triggerall = var(3) && !time
trigger1 = var(0) := 0 || var(1) := 0 || var(2) := -1 || var(3) := 0

[state 1010, Projectile Configuration]
type = null
triggerall = numenemy
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(14) := enemy,var(14) || var(16) := enemy,var(16) || var(17) := enemy,var(17) || var(18) := enemy,var(18) || 1
; Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(13) := enemy,var(13) || fvar(22) := enemy,fvar(22) || fvar(23) := enemy,fvar(23) || 1

[state 1010, Change Animation]
type = changeanim
trigger1 = anim != 1005 && !time
value = 1005

[state 1010, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1010, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1010, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA, AP
time = -1
ignorehitpause = 1

[state 1010, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA, AA, AT, AP
stateno = 1011
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1010, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 1010, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1010, Set Velocity]
type = velset
trigger1 = !time
x = cond(var(9) = 2, 6.0, 4.5)

[state 1010, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = , SP
hitflag = 

[state 1010, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(5) := 2 || var(15) := 5 || var(21) := 1010
[state 1010, Hit 1]
type = hitdef
triggerall = !var(14) && !var(18) ; var(21) != var(22) && 
trigger1 = var(2) <= 0
ID = 0 + 0 * (var(21) := 1010)
attr = , SP
damage = ceil(cond(20 * fvar(23) < 2, 2, 20 * fvar(23))), 2
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 4 ; stun damage
guardflag = M
hitflag = MAF
affectteam = F
priority = 4, Hit
pausetime = 0, 12 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := floor(p2dist x)), (var(42) := floor(p2dist y - 48))
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 0
ground.velocity = -10.0
guard.velocity = -10.0
air.velocity = -5.5, -5.5
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = 0, 0
givepower = 0 * (root,stateno != 5300), 0 * (root,stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = root,statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

;========================< Projectile Contact >========================

[state 1010, Reflective Juggle Points 1]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(19) = cond(var(21) = 1010, var(15), 0)
ignorehitpause = 1

[state 1010, Reflective Juggle Points]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(20) = 2
ignorehitpause = 1

[state 1010, Hit Sound]
type = playsnd
trigger1 = var(0) = 1
value = F4, cond(movehit, var(11), var(12))
channel = 2
ignorehitpause = 1

[state 1010, Hit Spark, Guard Spark]
type = explod
trigger1 = var(0) = 1
anim = F(cond(movehit, var(39), var(40)))
ID = 200
postype = p1
pos = ceil(cond(p2dist x < 0, 0, cond(p2dist x < var(41), p2dist x, var(41))) * const(size.xscale)), ceil(var(42) * const(size.yscale))
facing = 1
bindtime = 1
scale = 1.0 * const(size.xscale), 1.0  * const(size.yscale)
sprpriority = 5
ignorehitpause = 1

[state 1010, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = , SP
hitflag = 
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 1010, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
value = 1007
ignorehitpause = 1

[state 1010, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-128, gamewidth + 128]
trigger2 = screenpos y < -64

[state 1010, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Nazi Symbol Canceled 2
;=========================================================================
[Statedef 1011]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1011, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1011, Change Animation]
type = changeanim
trigger1 = 0
value = anim
elem = animelemno(0)

[state 1011, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1011, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1011, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1011, Vulnerability]
type = hitby
trigger1 = 0
value = SCA, AP
time = -1

[state 1011, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA, AA, AT, AP
stateno = 1011
slot = 0
time = -1
forceair = 0

[state 1011, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1011, Hit Sound]
type = playsnd
trigger1 = !time
value = F4, 10
channel = 2

[state 1011, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1011, Miss]
type = hitdef
trigger1 = 1
attr = , SP
hitflag = 

[state 1011, End State]
type = changestate
trigger1 = !time
value = 1007

;=========================================================================
; Lightning Rush
;=========================================================================
[Statedef 1100]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = -1

[state 1100, Level]
type = null
triggerall = !time
triggerall = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
triggerall = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
triggerall = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
trigger1 = cond(ailevel, 1 * (var(9) := var(9) + !var(9)), 0) ; stop here if AI
trigger2 = cond(!fvar(3) && (command = "y" || command = "NE_y"), 1 * (var(9) := 2), 0) ; stop here if level isn't set
trigger3 = var(9) := cond(fvar(3), floor(fvar(3)), 1) || fvar(3) := 0 ; stop here if level is set

[state 1100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1100, Change Animation]
type = changeanim
triggerall = !AILevel
trigger1 = !time
value = 1100 + var(9) - 1
[state 1100, AI Change Animation]
type = changeanim
triggerall = AILevel
trigger1 = !time
value = 1100

[state 1100, Set Number Loops]
type = varset
trigger1 = !time
var(6) = cond(anim = 1101, 4, 2) ; number of cycles. values equal to and below ONE will generate one cycle.
[state 1100, Loop Animation]
type = changeanim
triggerall = var(6) > 0
trigger1 = !animelemtime(8)
trigger1 = var(6) := var(6) - 1
value = anim
elem = 4
[state 1100, End Loop Animation]
type = changeanim
triggerall = var(6) = 1
trigger1 = !animelemtime(7)
value = anim
elem = 8

[state 1100, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 0
persistent = 0

[state 1100, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 1100, 0
volumescale = 100
channel = 0
persistent = 0

[state 1100, Sound]
type = playsnd
trigger1 = !animelemtime(4) || !animelemtime(6)
value = F3, 0
volumescale = 100
channel = 1
;persistent = 0

[state 1100, Wind Dust]
type = helper
triggerall = random%3=0
trigger1 = !animelemtime(4) || !animelemtime(6)
name = "Wind Dust"
ID = 60252
stateno = 6025
postype = P1
pos = 24 + random % 16, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 1100, Lightning Ball]
type = helper
trigger1 = !animelemtime(4) || !animelemtime(6)
name = "Lightning Ball"
ID = 1105
stateno = 1105
postype = P1
pos = cond(!animelemtime(6), 72, 64), -cond(!animelemtime(6), 88, 80) + cond(random < 500, random % 8, -random % 8)
ownpal = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1100, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 1100, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1100, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 1100, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Lightning Ball Start 1
;=========================================================================
[Statedef 1105]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down
; sysvar(0) = subside state
; sysvar(1) = reflected state

;========================< Projectile Configuration >========================

[state 1105, Subside State]
type = varset
trigger1 = !time
sysvar(0) = 1107
[state 1105, Reflected State]
type = varset
trigger1 = !time
sysvar(1) = 1110

[state 1105, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && prevstateno != 1106 && !time
var(0) = 1
ignorehitpause = 1

[state 1105, Hit Counter]
type = varadd
trigger1 = var(0) = 1
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 1105, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1105, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1105, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(14) := root,var(14) || var(16) := root,var(16) || var(17) := root,var(17) || var(18) := root,var(18) || 1
; Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(13) := root,var(13) || fvar(22) := root,fvar(22) || fvar(23) := root,fvar(23) || 1
; Normal/Special/Super Levels
trigger1 = !prevstateno && !time
trigger1 = var(9) := root,var(9)

[state 1105, Change Animation]
type = changeanim
trigger1 = anim != 1105 && !time
value = 1105

[state 1105, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1105, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1105, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA, AP
time = -1
ignorehitpause = 1

[state 1105, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA, AA, AT, AP
stateno = 1106
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1105, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 1105, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1105, Set Velocity]
type = velset
trigger1 = cond(prevstateno, time = 0, time = 1)
x = cond(var(9) = 2, 4.5, 3.0)

[state 1105, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = S, SP
hitflag = 

[state 1105, Juggle Points 1a-1b]
type = null
trigger1 = var(2) <= 0
trigger1 = var(5) := 2 || var(15) := 1 || var(21) := 1105

[state 1105, Hit 1a]
type = hitdef
triggerall = !var(14) && !var(18) ; var(21) != var(22) && 
trigger1 = var(2) <= 0 && pos y <= -80
ID = 0 + 0 * (var(21) := 1105)
attr = S, SP
damage = ceil(cond(8 * fvar(23) < 2, 2, 8 * fvar(23))), 1
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 1 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 6 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 8), (var(42) := 0)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 0
ground.velocity = -4.0
guard.velocity = -4.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 8.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
getpower = cond(2 - 1 * var(13) < 1, 1, 2 - 1 * var(13)), 1
givepower = 0 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 1105, Hit 1b]
type = hitdef
triggerall = !var(14) && !var(18) ; var(21) != var(22) && 
trigger1 = var(2) <= 0 && pos y > -80
ID = 0 + 0 * (var(21) := 1105)
attr = S, SP
damage = ceil(cond(8 * fvar(23) < 2, 2, 8 * fvar(23))), 1
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 1 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 6 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 8), (var(42) := 0)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 0
ground.velocity = -4.0
guard.velocity = -4.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 8.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
getpower = cond(2 - 1 * var(13) < 1, 1, 2 - 1 * var(13)), 1
givepower = 0 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

;========================< Projectile Contact >========================

[state 1105, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(2) = 200
ignorehitpause = 1

[state 1105, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(13) = 1
ignorehitpause = 1
[state 1105, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
fvar(22) = 1
ignorehitpause = 1

[state 1105, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(16) = var(15)
ignorehitpause = 1
[state 1105, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(16) := root,var(16) || 1
var(17) = cond((var(16) = [1, 6]), 120 - 20 * (var(16) - 1), cond(var(16) = 7, 10, cond(var(16) = 8, 4, cond(var(16) = 9, 2, cond(var(16) >= 10, 1, var(17))))))
ignorehitpause = 1

[state 1105, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(55) = (var(55) := target,ID)
ignorehitpause = 1
[state 1105, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(56) = (var(56) := target,ID)
ignorehitpause = 1

[state 1105, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(24) = target,gethitvar(xvel) ; * (1.0 + cond(var(13) * 0.05 < 0.5, var(13) * 0.05, 0.5))
ignorehitpause = 1
[state 1105, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(25) = fvar(26)
ignorehitpause = 1

[state 1105, Hit Sound]
type = playsnd
trigger1 = var(0) = 1
value = F4, cond(movehit, var(11), var(12))
channel = 2
ignorehitpause = 1

[state 1105, Hit Spark, Guard Spark]
type = explod
trigger1 = var(0) = 1
anim = F(cond(movehit, var(39), var(40)))
ID = 200
postype = p1
pos = ceil(cond(p2dist x < 0, 0, cond(p2dist x < var(41), p2dist x, var(41))) * const(size.xscale)), ceil(var(42) * const(size.yscale))
facing = 1
bindtime = 1
scale = 1.0 * const(size.xscale), 1.0  * const(size.yscale)
sprpriority = 5
ignorehitpause = 1

[state 1105, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = S, SP
hitflag = 
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 1105, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
trigger2 = !animtime
value = 1107
ignorehitpause = 1

[state 1105, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-128, gamewidth + 128]
trigger2 = screenpos y < -64

[state 1105, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Lightning Ball Canceled 1
;=========================================================================
[Statedef 1106]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1106, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1106, Change Animation]
type = changeanim
trigger1 = 0
value = anim
elem = animelemno(0)

[state 1106, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1106, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1106, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1106, Vulnerability]
type = hitby
trigger1 = 0
value = SCA, AP
time = -1

[state 1106, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA, AA, AT, AP
stateno = 1106
slot = 0
time = -1
forceair = 0

[state 1106, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1106, Hit Sound]
type = playsnd
trigger1 = !time
value = F4, 10
channel = 2

[state 1106, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1106, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1106, End State]
type = changestate
trigger1 = !time
value = 1107

;=========================================================================
; Lightning Ball End 1
;=========================================================================
[Statedef 1107]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1107, Change Animation]
type = changeanim
trigger1 = !time
value = 1107

[state 1107, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1107, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1107, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Lightning Ball Reflected 1
;=========================================================================
[Statedef 1110]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down
; var(3) = reflected
; sysvar(0) = subside state
; sysvar(1) = reflected state

;========================< Projectile Configuration >========================

[state 1110, Subside State]
type = varset
trigger1 = !time
sysvar(0) = 1107
[state 1110, Reflected State]
type = varset
trigger1 = !time
sysvar(1) = 1107

[state 1110, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && prevstateno != 1111 && !time
var(0) = 1
ignorehitpause = 1

[state 1110, Hit Counter]
type = varadd
trigger1 = var(0) = 1
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 1110, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1110, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1110, Reset Variables After Reflection]
type = null
triggerall = var(3) && !time
trigger1 = var(0) := 0 || var(1) := 0 || var(2) := -1 || var(3) := 0

[state 1110, Projectile Configuration]
type = null
triggerall = numenemy
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(14) := enemy,var(14) || var(16) := enemy,var(16) || var(17) := enemy,var(17) || var(18) := enemy,var(18) || 1
; Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(13) := enemy,var(13) || fvar(22) := enemy,fvar(22) || fvar(23) := enemy,fvar(23) || 1

[state 1110, Change Animation]
type = changeanim
trigger1 = !time
value = 1105

[state 1110, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 1110, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1110, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA, AP
time = -1
ignorehitpause = 1

[state 1110, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA, AA, AT, AP
stateno = 1111
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1110, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 1110, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1110, Set Velocity]
type = velset
trigger1 = !time
x = cond(var(9) = 2, 4.5, 3.0)

[state 1110, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = , SP
hitflag = 

[state 1110, Juggle Points 1a-1b]
type = null
trigger1 = var(2) <= 0
trigger1 = var(5) := 2 || var(15) := 1 || var(21) := 1110

[state 1110, Hit 1a]
type = hitdef
triggerall = !var(14) && !var(18) ; var(21) != var(22) && 
trigger1 = var(2) <= 0 && pos y <= -80
ID = 0 + 0 * (var(21) := 1110)
attr = , SP
damage = ceil(cond(8 * fvar(23) < 2, 2, 8 * fvar(23))), 1
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 1 ; stun damage
guardflag = M
hitflag = MAF
affectteam = F
priority = 4, Hit
pausetime = 0, 6 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 8), (var(42) := 0)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 0
ground.velocity = -4.0
guard.velocity = -4.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
getpower = 0, 0
givepower = 0 * (root,stateno != 5300), 0 * (root,stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = root,statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 1110, Hit 1b]
type = hitdef
triggerall = !var(14) && !var(18) ; var(21) != var(22) && 
trigger1 = var(2) <= 0 && pos y > -80
ID = 0 + 0 * (var(21) := 1110)
attr = , SP
damage = ceil(cond(8 * fvar(23) < 2, 2, 8 * fvar(23))), 1
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 1 ; stun damage
guardflag = M
hitflag = MAF
affectteam = F
priority = 4, Hit
pausetime = 0, 6 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 8), (var(42) := 0)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 0
ground.velocity = -4.0
guard.velocity = -4.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
getpower = 0, 0
givepower = 0 * (root,stateno != 5300), 0 * (root,stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = root,statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

;========================< Projectile Contact >========================

[state 1110, Reflective Juggle Points 1]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(19) = cond(var(21) = 1110, var(15), 0)
ignorehitpause = 1

[state 1110, Reflective Juggle Points]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(20) = 2
ignorehitpause = 1

[state 1110, Hit Sound]
type = playsnd
trigger1 = var(0) = 1
value = F4, cond(movehit, var(11), var(12))
channel = 2
ignorehitpause = 1

[state 1110, Hit Spark, Guard Spark]
type = explod
trigger1 = var(0) = 1
anim = F(cond(movehit, var(39), var(40)))
ID = 200
postype = p1
pos = ceil(cond(p2dist x < 0, 0, cond(p2dist x < var(41), p2dist x, var(41))) * const(size.xscale)), ceil(var(42) * const(size.yscale))
facing = 1
bindtime = 1
scale = 1.0 * const(size.xscale), 1.0  * const(size.yscale)
sprpriority = 5
ignorehitpause = 1

[state 1110, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = , SP
hitflag = 
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 1110, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
value = 1107
ignorehitpause = 1

[state 1110, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-128, gamewidth + 128]
trigger2 = screenpos y < -64

[state 1110, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Lightning Ball Canceled 2
;=========================================================================
[Statedef 1111]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1111, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1111, Change Animation]
type = changeanim
trigger1 = 0
value = anim
elem = animelemno(0)

[state 1111, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1111, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1111, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1111, Vulnerability]
type = hitby
trigger1 = 0
value = SCA, AP
time = -1

[state 1111, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA, AA, AT, AP
stateno = 1111
slot = 0
time = -1
forceair = 0

[state 1111, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1111, Hit Sound]
type = playsnd
trigger1 = !time
value = F4, 10
channel = 2

[state 1111, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1111, Miss]
type = hitdef
trigger1 = 1
attr = , SP
hitflag = 

[state 1111, End State]
type = changestate
trigger1 = !time
value = 1107

;=========================================================================
; Demon Arm
;=========================================================================
[Statedef 1200]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1200, Level]
type = null
triggerall = !time
triggerall = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
triggerall = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
triggerall = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
trigger1 = cond(ailevel, 1 * (var(9) := var(9) + !var(9)), 0) ; stop here if AI
trigger2 = cond(!fvar(3) && (command = "y" || command = "NE_y"), 1 * (var(9) := 2), 0) ; stop here if level isn't set
trigger3 = var(9) := cond(fvar(3), floor(fvar(3)), 1) || fvar(3) := 0 ; stop here if level is set

[state 1200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1200, Change Animation]
type = changeanim
triggerall = !AILevel
trigger1 = !time
value = 1200 + var(9) - 1
[state 1200, AI Change Animation]
type = changeanim
triggerall = AILevel
trigger1 = !time
value = 1200

[state 1200, Set Number Loops]
type = varset
trigger1 = !time
var(6) = cond(anim = 1201, 2, 1) ; number of cycles. values equal to and below ONE will generate one cycle.
[state 1200, Loop Animation]
type = changeanim
triggerall = var(6) > 0
trigger1 = !animelemtime(12)
trigger1 = var(6) := var(6) - 1
value = anim
elem = 8

[state 1200, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = 3

[state 1200, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 1200, 0
volumescale = 100
channel = 0

[state 1200, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 1200, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F3, 6
volumescale = 100
persistent = 0

[state 1200, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0 && animelemtime(12) < 0
trigger1 = var(5) := 2 || var(15) := 3 || var(21) := 1200
[state 1200, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(5) >= 0 && animelemtime(12) < 0
ID = 0 + 0 * (var(21) := 1200)
attr = S, SA
damage = ceil(cond(cond(anim = 1201, 40, 30) * fvar(23) < 2, 2, cond(anim = 1201, 40, 30) * fvar(23))), 2
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 16 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := floor(p2dist x)), (var(42) := floor(p2dist y - 48))
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 22
guard.slidetime = 12
guard.hittime = 18
air.hittime = 0
ground.velocity = -3.5, -9.0
guard.velocity = -10.0
air.velocity = -3.5, -9.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 5
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 1200, Idle]
type = statetypeset
trigger1 = animelemtime(12) >= 0
movetype = I
persistent = 0

[state 1200, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 1200, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1