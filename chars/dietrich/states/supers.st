; Super Fighter Team

;=========================================================================
; Nazi Overkill
;=========================================================================
[StateDef 3000]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = -1

;========================< Super Indication >========================

[state 3000, Level, Timer]
type = null
trigger1 = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables 
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = var(9) := 4 || 1 ; level
trigger1 = fvar(1) := 0 || fvar(2) := 0 || 1 ; command buffering
trigger1 = fvar(39) := fvar(25) || fvar(25) := -1 || 1 ; superpause cornerpush

[state 3000, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3000, Change Animation]
type = changeanim
trigger1 = !time
value = 3000

[state 3000, Add Power]
type = poweradd
trigger1 = !time
value = -powermax

[state 3000, Super Effect]
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

[state 3000, Super Pause]
type = superpause
trigger1 = !time
time = 40
movetime = (var(54) := 40)
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
darken = 0

[state 3000, Vulnerability]
type = nothitby
trigger1 = !time
value = SCA
time = 48

;========================< Move Functions >========================

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 1, 2
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 3000, 0
volumescale = 100
channel = 0

[state 3000, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = F3, 0
volumescale = 100

[state 3000, Wind Dust]
type = helper
triggerall = random%3=0
trigger1 = !animelemtime(9)
name = "Wind Dust"
ID = 60252
stateno = 6025
postype = P1
pos = 24 + random % 16, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 3000, Large Nazi Symbol]
type = helper
trigger1 = !animelemtime(9)
name = "Large Nazi Symbol"
ID = 3005
stateno = 3005
postype = P1
pos = 33, -61
ownpal = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 3000, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 3000, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 3000, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Large Nazi Symbol Start 1
;=========================================================================
[Statedef 3005]
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

[state 3005, Subside State]
type = varset
trigger1 = !time
sysvar(0) = 3007
[state 3005, Reflected State]
type = varset
trigger1 = !time
sysvar(1) = 3007

[state 3005, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && prevstateno != 3006 && !time
var(0) = 1
ignorehitpause = 1

[state 3005, Hit Counter]
type = varadd
trigger1 = var(0) = 1
var(1) = 1 + 0 * (var(2) := 4)
ignorehitpause = 1

[state 3005, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 3005, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 3005, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(14) := root,var(14) || var(16) := root,var(16) || var(17) := root,var(17) || var(18) := root,var(18) || 1
; Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(13) := root,var(13) || fvar(22) := root,fvar(22) || fvar(23) := cond(root,fvar(23) < 0.5, 0.5, root,fvar(23)) || 1
; Normal/Special/Super Levels
trigger1 = !prevstateno && !time
trigger1 = var(9) := root,var(9)

[state 3005, Change Animation]
type = changeanim
trigger1 = anim != 3005 && !time
value = 3005

[state 3005, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3005, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 3005, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, AP
time = -1
ignorehitpause = 1

[state 3005, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AT, AP
stateno = 3006
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 3005, Vulnerability]
type = nothitby
trigger1 = 0
value = SCA
time = -1
ignorehitpause = 1

[state 3005, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 3005, Sound]
type = playsnd
trigger1 = animelemtime(15) < 0
trigger1 = !animelemtime(animelemno(0))
trigger1 = animelemno(0) % 2 = 0
trigger1 = var(8) % 12 = 0
value = F3, 3
volumescale = 100
channel = 3
ignorehitpause = 1

[state 3005, Set Velocity]
type = velset
trigger1 = cond(prevstateno, time = 0, time = 1)
x =  2.0
[state 3005, Set Velocity]
type = velset
trigger1 = vel x
trigger1 = animelemtime(15) >= 0 || frontedgedist <= 32
x =  0.0
persistent = 0

[state 3005, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = , HP
hitflag = 

[state 3005, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(5) := 3 || var(15) := 0 || var(21) := 3005
[state 3005, Hit 1]
type = hitdef
triggerall = !var(18) ; !var(14) && ; var(21) != var(22) && 
trigger1 = var(2) <= 0
ID = 0 + 0 * (var(21) := 3005)
attr = , HP
damage = ceil(cond(12 * fvar(23) < 2, 2, 12 * fvar(23))), 2
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 4 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 205)
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
ground.velocity = -1.0 - 3.0 * (animelemtime(19) >= 0), -6.0 - 3.0 * (animelemtime(19) >= 0)
guard.velocity = -8.0
air.velocity = -1.0 - 3.0 * (animelemtime(19) >= 0), -6.0 - 3.0 * (animelemtime(19) >= 0)
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
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
p2facing = p2statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 3005, Hit 1: Magnetic]
type = hitdef
triggerall = numenemy
triggerall = enemy,name = "Dietrich"
triggerall = enemy,var(53) && enemy,numhelper(911)
triggerall = !var(18) ; !var(14) && ; var(21) != var(22) && 
trigger1 = var(2) <= 0
ID = 0 + 0 * (var(21) := 3005)
attr = S, HP
damage = ceil(cond(12 * fvar(23) < 2, 2, 12 * fvar(23))), 2
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 4 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6 + 8 * root,var(53)
hitsound = -1 + 0 * (var(11) := 2)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 205)
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
ground.velocity = -1.0 - 3.0 * (animelemtime(19) >= 0), -6.0 - 3.0 * (animelemtime(19) >= 0)
guard.velocity = -8.0
air.velocity = -1.0 - 3.0 * (animelemtime(19) >= 0), -6.0 - 3.0 * (animelemtime(19) >= 0)
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
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
p2facing = p2statetype != A
palfx.time = 16
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

;========================< Projectile Contact >========================

[state 3005, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(2) = 300
ignorehitpause = 1

[state 3005, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(13) = 1
ignorehitpause = 1
[state 3005, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
fvar(22) = 1
ignorehitpause = 1

[state 3005, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(16) = var(15)
ignorehitpause = 1
[state 3005, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(16) := root,var(16) || 1
var(17) = cond((var(16) = [1, 6]), 120 - 20 * (var(16) - 1), cond(var(16) = 7, 10, cond(var(16) = 8, 4, cond(var(16) = 9, 2, cond(var(16) >= 10, 1, var(17))))))
ignorehitpause = 1

[state 3005, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(55) = (var(55) := target,ID)
ignorehitpause = 1
[state 3005, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(56) = (var(56) := target,ID)
ignorehitpause = 1

[state 3005, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(24) = target,gethitvar(xvel) ; * (1.0 + cond(var(13) * 0.05 < 0.5, var(13) * 0.05, 0.5))
ignorehitpause = 1
[state 3005, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(25) = fvar(26)
ignorehitpause = 1

[state 3005, Hit Sound]
type = playsnd
trigger1 = var(0) = 1
value = F4, cond(movehit, var(11), var(12))
channel = 2
ignorehitpause = 1

[state 3005, Hit Spark, Guard Spark]
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

[state 3005, Miss]
type = hitdef
trigger1 = hitpausetime
attr = , HP
hitflag = 
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 3005, End State]
type = changestate
trigger1 = animelemtime(23) >= 0
value = 3007
ignorehitpause = 1

[state 3005, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Large Nazi Symbol Canceled 1
;=========================================================================
[Statedef 3006]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3006, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 3006, Change Animation]
type = changeanim
trigger1 = time <= 3
value = anim
elem = animelemno(0)

[state 3006, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3006, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3006, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3006, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, AP
time = -1

[state 3006, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AT, AP
stateno = 3006
slot = 0
time = -1
forceair = 0

[state 3006, Vulnerability]
type = nothitby
trigger1 = 0
value = SCA
time = -1

[state 3006, Hit Sound]
type = playsnd
trigger1 = !time
value = F4, 10
channel = 2

[state 3006, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3006, Miss]
type = hitdef
trigger1 = 1
attr = , HP
hitflag = 

[state 3006, End State]
type = changestate
trigger1 = time >= 6 || animelemtime(23) >= 0
value = cond(animelemtime(23) >= 0, 3007, 3005)

;=========================================================================
; Large Nazi Symbol End 1
;=========================================================================
[Statedef 3007]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3007, Change Animation]
type = changeanim
trigger1 = !time
value = 3007

[state 3007, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3007, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3007, Destroy]
type = destroyself
trigger1 = !animtime