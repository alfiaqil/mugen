; Super Fighter Team

;=========================================================================
; S. Weak Punch
;=========================================================================
[Statedef 200]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 200, Change Animation]
type = changeanim
trigger1 = !time
value = 200

[state 200, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 200, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = F2, 0
volumescale = 100
channel = 1
persistent = 0

[state 200, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 200
[state 200, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(21) := 200)
attr = S, NA
damage = ceil(cond(8 * fvar(23) < 2, 2, 8 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 4 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 56), (var(42) := -80)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 10
guard.slidetime = 6
guard.hittime = 10
air.hittime = 3
ground.velocity = -7.0
guard.velocity = -7.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(2 - 1 * var(13) < 1, 1, 2 - 1 * var(13)), 1
givepower = 0 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 200, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 200, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 200, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Medium Punch
;=========================================================================
[Statedef 205]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 205, Set Position]
type = posset
trigger1 = !time
y = 0

[state 205, Change Animation]
type = changeanim
trigger1 = !time
value = 205

[state 205, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 205, Sound]
type = playsnd
trigger1 = !animelemtime(1)
value = F2, 0
volumescale = 100
channel = 1
persistent = 0

[state 205, Add Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3) 
trigger2 = !animelemtime(5) || !animelemtime(6)
x = 8.0 - 16.0 * (animelemtime(5) >= 0)

[state 205, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 205
[state 205, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(21) := 205)
attr = S, NA
damage = ceil(cond(18 * fvar(23) < 2, 2, 18 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 6 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 64), (var(42) := -94)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 5
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, -5.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 8.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(9 - 1 * var(13) < 1, 1, 9 - 1 * var(13)), 4
givepower = 2 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 2
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 205, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 205, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 205, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Strong Punch
;=========================================================================
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 210, Set Position]
type = posset
trigger1 = !time
y = 0

[state 210, Change Animation]
type = changeanim
trigger1 = !time
value = 210

[state 210, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 210, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 210, Add Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3) 
trigger2 = !animelemtime(4) || !animelemtime(6)
trigger3 = !animelemtime(7)
x = 8.0 - 20.0 * (animelemtime(6) >= 0)

[state 210, Add Position]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
x = 8.0 - (8.0 / 3.0) * animelemtime(3)

[state 210, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 210
[state 210, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 210)
attr = S, NA
damage = ceil(cond(28 * fvar(23) < 2, 2, 28 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 64), (var(42) := -40)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 10
ground.hittime = 18
guard.slidetime = 10
guard.hittime = 16
air.hittime = 7
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -4.0, -6.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 10.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 3
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 210, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 210, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 210, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Distinct Punch
;=========================================================================
[Statedef 215]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 215, Set Position]
type = posset
trigger1 = !time
y = 0

[state 215, Change Animation]
type = changeanim
trigger1 = !time
value = 215

[state 215, Contact Animation]
type = changeanim
trigger1 = movecontact
trigger1 = !animelemtime(7)
value = cond(movehit, 216, 217)
elem = 7
persistent = 0

[state 215, Width Adjustment]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(8) < 0
value = cond(animelemtime(4) >= 0 && animelemtime(7) < 0, -16, -8), 0
ignorehitpause = 1

[state 215, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 215, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 215, Add Position]
type = posadd
trigger1 = !animelemtime(3) || !animelemtime(4) 
trigger2 = !animelemtime(7) || !animelemtime(8)
x = 8.0 - 16.0 * (animelemtime(7) >= 0)

[state 215, Add Position]
type = posadd
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
x = 4.0 - 0.5 * animelemtime(5)

[state 215, Faux-Velocity]
type = offset
trigger1 = cond(!time, fvar(35) := 0 || 1, 1)
trigger1 = cond(animelemtime(5) >= 0 && animelemtime(7) < 0, var(47) := 1, var(47) := 0)
y = fvar(35) := fvar(35) + (-8.0 + (0 - (-8.0 * 8.0)) / (8.0 ** 2.0 / 2.0) * animelemtime(5)) * !hitpausetime
ignorehitpause = 1

[state 215, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = var(5) := 1 || var(15) := 3 || var(21) := 215
[state 215, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(21) := 215)
attr = S, NA
damage = ceil(cond(cond(animelemtime(5) >= 0, 32, 38) * fvar(23) < 2, 2, cond(animelemtime(5) >= 0, 32, 38) * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 4 ; hit y position
fall.envshake.ampl = 10 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := cond(animelemtime(5) >= 0, 14, 40)), (var(42) := -cond(animelemtime(5) >= 0, 136, 80))
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 22
guard.slidetime = 12
guard.hittime = 18
air.hittime = 9
ground.velocity = -0.5, -13.0
guard.velocity = -12.0
air.velocity = -0.5, -13.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.75
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 4
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

[state 215, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 215, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 215, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Weak Kick
;=========================================================================
[Statedef 230]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 230, Set Position]
type = posset
trigger1 = !time
y = 0

[state 230, Change Animation]
type = changeanim
trigger1 = !time
value = 230

[state 230, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 0

[state 230, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 1
volumescale = 100
channel = 1
persistent = 0

[state 230, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 230
[state 230, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 230)
attr = S, NA
damage = ceil(cond(6 * fvar(23) < 2, 2, 6 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 4 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 68), (var(42) := -76)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 10
guard.slidetime = 6
guard.hittime = 10
air.hittime = 3
ground.velocity = -7.5
guard.velocity = -7.5
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(2 - 1 * var(13) < 1, 1, 2 - 1 * var(13)), 1
givepower = 0 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 230, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 230, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 230, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Medium Kick
;=========================================================================
[Statedef 235]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 235, Set Position]
type = posset
trigger1 = !time
y = 0

[state 235, Change Animation]
type = changeanim
trigger1 = !time
value = 235

[state 235, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = 0

[state 235, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = F2, 1
volumescale = 100
channel = 1
persistent = 0

[state 235, Add Position]
type = posadd
triggerall = animelemtime(2) >= 0 && animelemtime(6)
trigger1 = !animelemtime(animelemno(0))
x = 4.0 - 8.0 * (animelemtime(7) >= 0)

[state 235, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 235
[state 235, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(21) := 235)
attr = S, NA
damage = ceil(cond(14 * fvar(23) < 2, 2, 14 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 6 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 78), (var(42) := -78)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 5
ground.velocity = -9.5
guard.velocity = -9.5
air.velocity = -4.0, -5.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 8.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(9 - 1 * var(13) < 1, 1, 9 - 1 * var(13)), 4
givepower = 2 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 2
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 235, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 235, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 235, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Strong Kick
;=========================================================================
[Statedef 240]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 240, Set Position]
type = posset
trigger1 = !time
y = 0

[state 240, Change Animation]
type = changeanim
trigger1 = !time
value = 240

[state 240, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = 3

[state 240, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 240, Add Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3)
trigger2 = !animelemtime(8) || !animelemtime(9)
x = 16.0 - 24.0 * (animelemtime(8) >= 0)

[state 240, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 240
[state 240, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(21) := 240)
attr = S, NA
damage = ceil(cond(24 * fvar(23) < 2, 2, 24 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 62), (var(42) := -108)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 10
ground.hittime = 18
guard.slidetime = 10
guard.hittime = 16
air.hittime = 0
ground.velocity = -11.5
guard.velocity = -11.5
air.velocity = -2.5, -13.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 10.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 + 0.375 * (p2statetype = A)
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 3
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 240, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 240, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 240, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Distinct Kick
;=========================================================================
[Statedef 245]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 245, Set Position]
type = posset
trigger1 = !time
y = 0

[state 245, Change Animation]
type = changeanim
trigger1 = !time
value = 245

[state 245, Add Power]
type = poweradd
trigger1 = !animelemtime(6)
value = 3

[state 245, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 245, Add Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3)
trigger2 = !animelemtime(4) || !animelemtime(5)
trigger3 = !animelemtime(6)
x = 16.0 - 8.0 * (animelemtime(4) >= 0) - 4.0 * (animelemtime(5) >= 0)
[state 245, Add Position]
type = posadd
trigger1 = !animelemtime(10) || !animelemtime(11)
trigger2 = !animelemtime(12) || !animelemtime(13)
x = -16.0 + 8.0 * (!animelemtime(10) || !animelemtime(11))

[state 245, Add Position]
type = posadd
trigger1 = animelemtime(5) >= 0 && animelemtime(8) < 0
x = 4.0 - 0.4 * animelemtime(5)

[state 245, Faux-Velocity]
type = offset
trigger1 = cond(!time, fvar(35) := 0 || 1, 1)
trigger1 = cond(animelemtime(5) >= 0 && animelemtime(8) < 0, var(47) := 1, var(47) := 0)
y = fvar(35) := fvar(35) + (-8.0 + (0 - (-8.0 * 8.0)) / (8.0 ** 2.0 / 2.0) * animelemtime(5)) * !hitpausetime
ignorehitpause = 1

[state 245, Juggle Points 1]
type = null
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 245
[state 245, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 245)
attr = S, NA
damage = ceil(cond(34 * fvar(23) < 2, 2, 34 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 12 ; stun damage
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 16), (var(42) := -136)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 22
guard.slidetime = 12
guard.hittime = 18
air.hittime = 0
ground.velocity = -12.0
guard.velocity = -12.0
air.velocity = -6.0, 6.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 4
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 245, Juggle Points 2]
type = null
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 245
[state 245, Hit 2]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
ID = 0 + 0 * (var(21) := 245)
attr = S, NA
damage = ceil(cond(32 * fvar(23) < 2, 2, 32 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 12 ; stun damage
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 70), (var(42) := -78)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 22
guard.slidetime = 12
guard.hittime = 18
air.hittime = 0
ground.velocity = -15.0
guard.velocity = -15.0
air.velocity = -7.5, 7.5
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 4
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 245, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 245, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 245, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; C. Medium Punch
;=========================================================================
[Statedef 400]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 400, Set Position]
type = posset
trigger1 = !time
y = 0

[state 400, Change Animation]
type = changeanim
trigger1 = !time
value = 400

[state 400, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 400, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = F2, 0
volumescale = 100
channel = 1
persistent = 0

[state 400, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 400
[state 400, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(21) := 400)
attr = C, NA
damage = ceil(cond(18 * fvar(23) < 2, 2, 18 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 6 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 72), (var(42) := -68)
animtype = light
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 5
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, -5.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 8.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(9 - 1 * var(13) < 1, 1, 9 - 1 * var(13)), 4
givepower = 2 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 2
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 400, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 400, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 400, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; C. Strong Punch
;=========================================================================
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 410, Set Position]
type = posset
trigger1 = !time
y = 0

[state 410, Change Animation]
type = changeanim
trigger1 = !time
value = 410

[state 410, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 410, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 410, Add Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3) 
trigger2 = !animelemtime(4) || !animelemtime(6)
trigger3 = !animelemtime(7)
x = 8.0 - 20.0 * (animelemtime(6) >= 0)

[state 410, Add Position]
type = null ; posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
x = 8.0 - (8.0 / 3.0) * animelemtime(3)

[state 410, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 410
[state 410, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 410)
attr = C, NA
damage = ceil(cond(28 * fvar(23) < 2, 2, 28 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 64), (var(42) := -40)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 10
ground.hittime = 18
guard.slidetime = 10
guard.hittime = 16
air.hittime = 7
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -4.0, -6.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 10.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 3
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 410, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 410, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 410, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; C. Medium Kick
;=========================================================================
[Statedef 430]
type = C
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 430, Set Position]
type = posset
trigger1 = !time
y = 0

[state 430, Change Animation]
type = changeanim
trigger1 = !time
value = 430

[state 430, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 430, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = F2, 1
volumescale = 100
channel = 1
persistent = 0

[state 430, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 430
[state 430, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(21) := 430)
attr = C, NA
damage = ceil(cond(14 * fvar(23) < 2, 2, 14 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 6 ; stun damage
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 46), (var(42) := -58)
animtype = light
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 8
ground.hittime = 14
guard.slidetime = 8
guard.hittime = 13
air.hittime = 5
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, -5.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 8.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(9 - 1 * var(13) < 1, 1, 9 - 1 * var(13)), 4
givepower = 2 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 2
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 430, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 430, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 430, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; C. Strong Kick
;=========================================================================
[Statedef 440]
type = C
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 440, Set Position]
type = posset
trigger1 = !time
y = 0

[state 440, Change Animation]
type = changeanim
trigger1 = !time
value = 440

[state 440, Width Adjustment]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(8) < 0
value = -8 * (animelemno(0) % 5 = 2) - 16 * (animelemno(0) % 3 = 0) - 24 * (animelemno(0) % 8 = [4, 5]), 0
ignorehitpause = 1

[state 440, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 440, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 440, Add Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3) 
trigger2 = !animelemtime(4) || !animelemtime(6)
trigger3 = !animelemtime(7) || !animelemtime(8)
x = 8.0 - 16.0 * (animelemtime(6) >= 0)

[state 440, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 15 || var(21) := 440
[state 440, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 440)
attr = C, NA
damage = ceil(cond(24 * fvar(23) < 2, 2, 24 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 4 ; hit y position
fall.envshake.ampl = 10 ; stun damage
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 48), (var(42) := -4)
animtype = hard
ground.type = trip
air.animtype = back
air.type = trip
ground.slidetime = 10
ground.hittime = 18
guard.slidetime = 10
guard.hittime = 16
air.hittime = 7
ground.velocity = -6.0, -2.0
guard.velocity = -10.0
air.velocity = -6.0, -2.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 10.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 3
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

[state 440, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 440, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 440, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; A. Medium Punch
;=========================================================================
[Statedef 600]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 600, Change Animation]
type = changeanim
trigger1 = !time
value = 600

[state 600, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 600, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = F2, 0
volumescale = 100
channel = 1
persistent = 0

[state 600, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 600, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 600, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 600
[state 600, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(21) := 600)
attr = A, NA
damage = ceil(cond(18 * fvar(23) < 2, 2, 18 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 6 ; stun damage
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 60), (var(42) := -66)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 13
guard.slidetime = 6
guard.hittime = 13
air.hittime = 5
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(9 - 1 * var(13) < 1, 1, 9 - 1 * var(13)), 4
givepower = 2 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 2
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 600, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 600, Control]
type = ctrlset
trigger1 = time >= 1024
value = 1
persistent = 0

[state 600, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Strong Punch
;=========================================================================
[Statedef 610]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 610, A. Distinct Punch]
type = changestate
triggerall = !time
trigger1 = vel x >= const(velocity.jump.fwd.x)
trigger2 = vel x <= const(velocity.jump.back.x)
value = stateno + 5

[state 610, Change Animation]
type = changeanim
trigger1 = !time
value = 610

[state 610, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 610, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 610, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 610, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 610, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 610
[state 610, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 610)
attr = A, NA
damage = ceil(cond(28 * fvar(23) < 2, 2, 28 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 56), (var(42) := -56)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 16
guard.slidetime = 6
guard.hittime = 16
air.hittime = 7
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 3
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 610, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 610, Control]
type = ctrlset
trigger1 = time >= 1024
value = 1
persistent = 0

[state 610, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Distinct Punch
;=========================================================================
[Statedef 615]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 615, Change Animation]
type = changeanim
trigger1 = !time
value = 615

[state 615, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 615, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 2
volumescale = 100
channel = 1
persistent = 0

[state 615, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 615, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 615, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 615
[state 615, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 615)
attr = A, NA
damage = ceil(cond(38 * fvar(23) < 2, 2, 38 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 10 ; stun damage
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 44), (var(42) := -24)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 18
guard.slidetime = 6
guard.hittime = 18
air.hittime = 0
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -6.0, 6.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 4
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 615, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 615, Control]
type = ctrlset
trigger1 = time >= 1024
value = 1
persistent = 0

[state 615, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Medium Kick
;=========================================================================
[Statedef 630]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 630, Change Animation]
type = changeanim
trigger1 = !time
value = 630

[state 630, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 0

[state 630, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 1
volumescale = 100
channel = 1
persistent = 0

[state 630, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 630, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 630, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 630
[state 630, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 630)
attr = A, NA
damage = ceil(cond(14 * fvar(23) < 2, 2, 14 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 6 ; stun damage
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 0)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 82), (var(42) := -100)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 13
guard.slidetime = 6
guard.hittime = 13
air.hittime = 5
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, -4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(9 - 1 * var(13) < 1, 1, 9 - 1 * var(13)), 4
givepower = 2 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 2
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 630, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 630, Control]
type = ctrlset
trigger1 = time >= 1024
value = 1
persistent = 0

[state 630, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Strong Kick
;=========================================================================
[Statedef 640]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 640, A. Crossup Kick]
type = changestate
triggerall = !time
trigger1 = vel x >= const(velocity.jump.fwd.x)
trigger2 = vel x <= const(velocity.jump.back.x)
value = stateno + 5

[state 640, Change Animation]
type = changeanim
trigger1 = !time
value = 640

[state 640, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 640, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 640, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 640, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 640, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 640
[state 640, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 640)
attr = A, NA
damage = ceil(cond(24 * fvar(23) < 2, 2, 24 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := 66), (var(42) := -26)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 16
guard.slidetime = 6
guard.hittime = 16
air.hittime = 7
ground.velocity = -8.0
guard.velocity = -8.0
air.velocity = -4.0, 4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 3
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 640, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 640, Control]
type = ctrlset
trigger1 = time >= 1024
value = 1
persistent = 0

[state 640, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Crossup Kick
;=========================================================================
[Statedef 645]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 645, Change Animation]
type = changeanim
trigger1 = !time
value = 645

[state 645, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 3

[state 645, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 645, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 645, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 645, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(5) := 1 || var(15) := 6 || var(21) := 645
[state 645, Hit 1]
type = hitdef
triggerall = var(21) != var(22) && !var(14) && !var(18)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(21) := 645)
attr = A, NA
damage = ceil(cond(24 * fvar(23) < 2, 2, 24 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14 + 8 * var(53)
hitsound = -1 + 0 * (var(11) := 1)
guardsound = -1 + 0 * (var(12) := 10)
sparkno = -1 + 0 * (var(39) := 200)
guard.sparkno = -1 + 0 * (var(40) := 210)
sparkxy = (var(41) := cond(anim = 645, 86, 66)), (var(42) := cond(anim = 645, -64, -26))
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 6
ground.hittime = 18
guard.slidetime = 6
guard.hittime = 18
air.hittime = 7
ground.velocity = -6.0
guard.velocity = -6.0
air.velocity = -4.0, 4.0
airguard.velocity = -4.0, -4.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 6.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375
getpower = cond(16 - 1 * var(13) < 1, 1, 16 - 1 * var(13)), 7
givepower = 4 * (p2stateno != 5300), 0 * (p2stateno != 5300)
envshake.time = 4
envshake.ampl = 4
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
palfx.time = 16 * var(53)
palfx.add = -128, -128, -128
palfx.sinadd = 32, 128, 256, 8

[state 645, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 645, Control]
type = ctrlset
trigger1 = time >= 1024
value = 1
persistent = 0

[state 645, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Throw Attempt
;=========================================================================
[Statedef 800]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 800, Level]
type = null
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(1) := 0 || fvar(2) := 0 ; command buffering

[state 800, Direction]
type = null
triggerall = !time
trigger1 = cond(ailevel, 1 * (var(9) := var(9) + !var(9)), 0)
trigger2 = cond(!fvar(3) && (command = "holdback"), 1 * (var(9) := 2), 0)
trigger3 = var(9) := cond(fvar(3), floor(fvar(3)), 1) || fvar(3) := 0

[state 800, Set Position]
type = posset
trigger1 = !time
y = 0

[state 800, Change Animation]
type = changeanim
trigger1 = !time
value = 800

[state 800, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = F2, 0
volumescale = 100
channel = 1
persistent = 0

[state 800, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 800, Juggle Points 1]
type = null
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = var(5) := 4 || var(15) := 0 || var(21) := 800
[state 800, Hit 1]
type = hitdef
triggerall = var(21) != var(22) ; && !var(14) && !var(18)
trigger1 = p2stateno != 40 && p2movetype != H || p2stateno = 5300
trigger1 = p2dist x > 0 && p2stateno != [150, 155]
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
ID = 810 + 0 * (var(21) := 800)
attr = S, NT
damage = 0
fall.damage = 0 ; ceil(cond(24 * fvar(23) < 2, 2, 24 * fvar(23)))
fall.envshake.time = var(5) ; hit/attack level
fall.envshake.phase = 0 ; hit y position
fall.envshake.ampl = 8 ; stun damage
guardflag =
hitflag = M
priority = 1, miss
pausetime = 0, 0
guard.pausetime = 0, 0
hitsound = -1 + 0 * (var(11) := -1)
guardsound = -1 + 0 * (var(12) := -1)
sparkno = -1 + 0 * (var(39) := -1)
guard.sparkno = -1 + 0 *  (var(40) := -1)
sparkxy = (var(41) := 0), (var(42) := 0)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 0
ground.hittime = 0
guard.slidetime = 0
guard.hittime = 0
air.hittime = 0
ground.velocity = 0.0
guard.velocity = 0.0
air.velocity = 0.0, 0.0
airguard.velocity = 0.0, 0.0
ground.cornerpush.veloff = 0.0 * (fvar(26) := 0.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 1
p1stateno = 805
numhits = 0

[state 800, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[state 800, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 800, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Throw Front/Back
;=========================================================================
[Statedef 805]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 805, Change Animation]
type = changeanim
trigger1 = !time
value = 805

[state 805, Set Number Loops]
type = varset
trigger1 = !time
var(6) = 8 ; number of cycles. values equal to and below ONE will generate one cycle.
[state 805, Loop Animation]
type = changeanim
triggerall = var(6) > 0
trigger1 = !animelemtime(4)
trigger1 = var(6) := var(6) - 1
value = anim
elem = 2

[state 805, Backward Animation]
type = changeanim
triggerall = var(9) = 2
trigger1 = !animelemtime(4)
value = anim
elem = 6

[state 805, Width]
type = width
trigger1 = !time
edge = 40, 8

[state 805, Voice]
type = playsnd
trigger1 = (!animelemtime(2) && var(9) = 1) || !animelemtime(7)
value = 1, 0
volumescale = 100
channel = 0
;persistent = 0

[state 805, Sound]
type = playsnd
trigger1 = prevstateno != 801
trigger1 = !animelemtime(1)
value = F4, 12
volumescale = 100
channel = 1
persistent = 0

[state 805, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = F3, 3
volumescale = 100
persistent = 0

[state 805, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = F2, 3
volumescale = 100
channel = 1
persistent = 0

[state 805, Wind Dust]
type = helper
triggerall = random%3=0
trigger1 = !animelemtime(2)
name = "Wind Dust"
ID = 60252
stateno = 6025
postype = P1
pos = 40, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 805, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

;========================< Target Timeline >========================

[state 805, Target State]
type = targetstate
trigger1 = cond(numtarget, !time, 0)
trigger2 = !animelemtime(2)
value = 810

[state 805, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
value = -1

[state 805, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 32 * const(size.xscale), -72 * const(size.yscale)

[state 805, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
pos = 50 * const(size.xscale), -84 * const(size.yscale)

[state 805, Target Bind]
type = targetbind
trigger1 = numtarget && var(9) = 1
trigger1 = !animelemtime(4)
pos = 66 * const(size.xscale), -96 * const(size.yscale)

[state 805, Target Bind]
type = targetbind
trigger1 = numtarget && var(9) = 2
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 56 * const(size.xscale), -50 * const(size.yscale)

[state 805, Target Bind]
type = targetbind
trigger1 = numtarget && var(9) = 2
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 64 * const(size.xscale), -82 * const(size.yscale)

[state 805, Target Bind]
type = targetbind
trigger1 = numtarget && var(9) = 2
trigger1 = !animelemtime(8)
pos = 8 * const(size.xscale), -120 * const(size.yscale)

[state 805, Target Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = !animelemtime(2)
value = -ceil(cond(4 * fvar(23) < 2, 2, 4 * fvar(23)))
kill = (var(6) = 1)

[state 805, Target Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = !animelemtime(2)
value = 4 * (target,prevstateno != 5300)
persistent = 0

[state 805, Target State]
type = targetstate
triggerall = numtarget
trigger1 = !animelemtime(4) && var(9) = 1
trigger2 = !animelemtime(8) && var(9) = 2
value = 811

;========================< Throw Effects >========================

[state 805, Add Hit]
type = hitadd
trigger1 = !animelemtime(2)
trigger1 = var(15) := 0 || var(10) := -4 || fvar(26) := 12 || 1 ; juggle points, hit type, cornerpush time
trigger1 = var(11) := 1 || var(12) := 10 || fvar(22) := -1 || 1 ; hitsound, guard sound, damage scaling
trigger1 = var(39) := 200 || var(40) := -1 || 1 ; sparkno, guard.sparkno
trigger1 = var(41) := 32 + random % 56 || var(42) := -56 - random % 64 || 1 ; sparkxy
value = 1

[state 805, Add Power]
type = poweradd
trigger1 = !animelemtime(2)
value = 16
persistent = 0

[state 805, Shake]
type = envshake
trigger1 = !animelemtime(2)
time = 4
ampl = 4
freq = 128

[state 805, Hit Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = F4, var(11)
channel = 2

[state 805, Hit Spark]
type = explod
trigger1 = !animelemtime(2)
anim = F(var(39))
ID = 200
postype = p1
pos = ceil(var(41)* const(size.xscale)), ceil(var(42) * const(size.yscale))
facing = 1
bindtime = 1
scale = 1.0 * const(size.xscale), 1.0  * const(size.yscale)
sprpriority = 5

;========================< End Throw >========================

[state 805, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0 && var(9) = 1
trigger2 = animelemtime(4) >= 0 && var(9) = 2
movetype = I
persistent = 0

[state 805, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 805, End State]
type = changestate
trigger1 = !animtime
trigger2 = !animelemtime(6) && var(9) = 1
value = 0
ctrl = 1

;=========================================================================
; Target (810) - 1
;=========================================================================
[Statedef 810]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 810, Change Animation 2]
type = changeanim2
trigger1 = !time
value = 810 
elem = 1 + (prevstateno = 810)

[state 810, Blink]
type = palfx
trigger1 = !animelemtime(2)
time = 16
add = -128, -128, -128
sinadd = 32, 128, 256, 8

[state 810, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 810, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 810, Faux-Shake]
type = offset
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
x = cond(random < 500, random % 2, -random % 2)
y = cond(random < 500, random % 2, -random % 2)

[state 810, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (810) - 2
;=========================================================================
[Statedef 811]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 811, Change Animation]
type = changeanim
trigger1 = !time
value = 5050 

[state 811, Blink]
type = palfx
trigger1 = !time
time = 16
add = 0, 0, 0
sinadd = 32, 128, 256, 8
color = 256

[state 811, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 811, Set Velocity]
type = velset
trigger1 = !time
x = cond(pos y <= -120, 5.0, -5.0) * fvar(27)
y = -6.0 * fvar(27)

[state 811, Add Position]
type = posadd
trigger1 = !time
y = -const(size.mid.pos.y)

[state 811, Add Velocity]
type = veladd
trigger1 = time
y = gethitvar(yaccel)

[state 811, Own State]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5100

[state 811, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050