; Super Fighter Team

;=========================================================================
; Stand
;=========================================================================
[StateDef 0]
type = S
movetype = I
physics = N
velset = 0, 0
sprpriority = 0

[state 0, Destroy]
type = stopsnd
trigger1 = ishelper
channel = -1
[state 0, Destroy]
type = removeexplod
trigger1 = ishelper
[state 0, Destroy]
type = destroyself
trigger1 = ishelper

[state 0, Change Animation]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && !animtime
value = 0

[state 0, Madiesha: Stance Movement]
type = null ; posadd
triggerall = name = "Madiesha"
triggerall = anim = 0 && !gethitvar(isbound)
trigger1 = !animelemtime(2) || !animelemtime(3)
trigger2 = !animelemtime(4) || !animelemtime(5)
trigger3 = !animelemtime(6) || !animelemtime(1) || !animtime
x = 6.0 * !animelemtime(2) + 2.0 * (!animelemtime(3) || !animelemtime(4)) - 2.0 * (!animelemtime(5) || !animelemtime(6)) - 6.0 * (!animelemtime(1) || !animtime)

[state 0, Dietrich: Randomize Animation]
type = changeanim
triggerall = name = "Dietrich"
trigger1 = anim = 0 && !animelemtime(10)
trigger1 = random < 500 && time % 10 = [0, 4]
value = anim
elem = cond(random < 500, 6, 8)

[state 0, Cula: Randomize Animation]
type = changeanim
triggerall = name = "Cula"
trigger1 = anim = 0 && !animelemtime(11)
trigger1 = random < 500 && time % 10 = [0, 4]
value = anim
elem = cond(random < 500, 7, 9)

[state 0, End State]
type = changestate
trigger1 = !alive
value = 5050

;=========================================================================
; Stand to Crouch
;=========================================================================
[Statedef 10]
type = C
movetype = I
physics = C
velset = 0, 0
sprpriority = 0

[state 10, Change Animation]
type = changeanim
trigger1 = anim != 10 && !time
value = 10

[state 10, Multiply Velocity]
type = velmul
trigger1 = !time
x = 0.75

[state 10, Set Velocity]
type = velset
trigger1 = abs(vel x) < const(movement.crouch.friction.threshold)
x = 0.0

[state 10, End State]
type = changestate
trigger1 = !animtime
value = 11

;=========================================================================
; Crouching
;=========================================================================
[Statedef 11]
type = C
movetype = I
physics = C
velset = 0, 0
sprpriority = 0

[state 11, Change Animation]
type = changeanim
trigger1 = anim != 6 && anim != 11
trigger2 = anim != 11 && !animtime
value = 11

;=========================================================================
; Crouch to Stand
;=========================================================================
[Statedef 12]
type = S
movetype = I
physics = S
velset = 0, 0
sprpriority = 0

[state 12, Change Animation]
type = changeanim
trigger1 = anim != 12 && !time
value = 12

[state 12, End State]
type = changestate
trigger1 = !animtime
value = 0

;=========================================================================
; Walking
;=========================================================================
[StateDef 20]
type = S
movetype = I
physics = N
ctrl = 1
sprpriority = 0

; Walk forward
[state 20, Set Velocity]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

; Walk backward
[state 20, Set Velocity]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[state 20, Change Animation]
type = changeanim
trigger1 = anim != 20 + (vel x < 0)
value = 20 + (vel x < 0)

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

[state 40, Change Animation]
type = changeanim
trigger1 = !time
value = 41 - command = "holdback" + command = "holdfwd"

[state 40, Jump Direction]
type = varset
trigger1 = !ailevel
sysvar(1) = cond(!time, 0, cond(command = "holdfwd", 1, cond(command = "holdback", -1, sysvar(1))))

[state 40, Change Animation]
type = changeanim
trigger1 = !time
value = 41 + sysvar(1)

[state 40, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, AA, AP

[state 40, Set Velocity]
type = velset
triggerall = !animtime
trigger1 = fvar(36) := -pos y || 1 ; distance
trigger1 = fvar(37) := const(velocity.jump.y) || 1 ; velocity
trigger1 = fvar(38) := 35.0  || 1 ; time
x = const(velocity.jump.back.x) * (sysvar(1) = -1) + const(velocity.jump.fwd.x) * (sysvar(1) = 1)
y = fvar(37)

[state 40, End State]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

;=========================================================================
; Jumping
;=========================================================================
[Statedef 50]
type = A
movetype = I
physics = N
sprpriority = 1

[state 50, Change Animation]
type = changeanim
trigger1 = !time && prevstateno != [600, 699]
value = cond(prevstateno = 140, 44, 44 + sysvar(1))
elem = cond(prevstateno = 140, 4, 1)
[state 50, Change Animation]
type = changeanim
trigger1 = numenemy && anim != 44
trigger1 = enemy,name = "Gerdon" && enemy,var(53)
value = 44

[state 50, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 50, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 50, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Jump Land
;=========================================================================
[Statedef 52]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 52, Set Position]
type = posset
trigger1 = !time
y = 0

[state 52, Change Animation]
type = changeanim
trigger1 = !time
value = cond(command = "holddown", 10, 47 + sysvar(1))

[state 52, Madiesha: FaceP2]
type = turn
triggerall = name = "Madiesha"
trigger1 = !time && anim = 48 && p2dist x < 0

[state 52, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 52, Control]
type = ctrlset
trigger1 = time = (prevstateno = [600, 699])
; trigger1 = prevstateno != [600, 699]
; trigger1 = animtime >= -2
value = 1
persistent = 0

[state 52, Special Effect]
type = assertspecial
trigger1 = !ctrl || animtime < -2
flag = nowalk

[state 52, Sound]
type = playsnd
trigger1 = !time 
value = F52, 0
volumescale = 100
channel = 4
lowpriority = 1

[state 52, Jump Land Dust]
type = helper
triggerall = !NumHelper(60260)
triggerall = random%3=0
trigger1 = !time 
name = "Jump Land Dust"
ID = 60260
stateno = 6025
postype = P1
pos = 0 + 8 * (name= "Yun") + 4 * (name = "Madiesha"), 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 52, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 52, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1

;=========================================================================
; Into Guard
;=========================================================================
[Statedef 120]
type = U
physics = U

[state 120, Set Velocity]
type = velset
trigger1 = !time && statetype != A
x = 0.0
y = 0.0

[state 120, Change Animation]
type = changeanim
trigger1 = !time
value = 120 + (statetype = C) + (statetype = A) * 2

[state 120, Set State Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S

[state 120, Set State Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C

[state 120, Set State Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A

[state 120, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && enemy,movetype = A && enemy,statetype = C
statetype = C
physics = C

[state 120, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && enemy,movetype = A && enemy,statetype!= C
statetype = S
physics = S

[state 120, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemy,time >= 70 || time >= 70

[state 120, End State]
type = changestate
trigger1 = !animtime
value = 130 + (statetype = C) + (statetype = A) * 2

[state 120, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemy,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Stand Guard (guarding)
;=========================================================================
[Statedef 130]
type = S
physics = S

[state 130, Change Animation]
type = changeanim
trigger1 = anim != 130
value = 130

[state 130, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 130, High -> Low]
type = changestate
trigger1 = !ailevel && command = "holddown"
trigger2 = ailevel && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
value = 131

[state 130, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Crouch Guard (guarding)
;=========================================================================
[Statedef 131]
type = C
physics = C

[state 131, Change Animation]
type = changeanim
trigger1 = anim != 131
value = 131

[state 131, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 131, Low -> High]
type = changestate
trigger1 = !ailevel && command != "holddown"
trigger2 = ailevel && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
value = 130

[state 131, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Air Guard (guarding)
;=========================================================================
[Statedef 132]
type = A
physics = N

[state 132, Change Animation]
type = changeanim
trigger1 = anim != 132
value = 132

[state 132, Add Velocity]
type = veladd
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 132, Add Velocity]
type = veladd
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 132, Set Position]
type = posset
trigger1 = pos y + vel y > 0
y = 0

[state 132, Set Velocity]
type = velset
trigger1 = pos y >= 0
y = 0.0

[state 132, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 132, End State]
type = changestate
triggerall = pos y >= 0
triggerall = inguarddist
trigger1 = !ailevel
trigger1 = command = "holdback"
trigger2 = ailevel
value = cond(((!ailevel && command = "holddown") || (ailevel && p2statetype = C)), 131, 130)

[state 132, End State]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 132, End State]
type = changestate
trigger1 = !ailevel
trigger1 = command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Guard (end)
;=========================================================================
[Statedef 140]
type = U
physics = U
ctrl = 1

[state 140, Change Animation]
type = changeanim
trigger1 = !time
value = 140 + 1 * (statetype = C) + 2 * (statetype = A)

[state 140, Set State Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S

[state 140, Set State Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C

[state 140, Set State Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = N

[state 140, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 140, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

[state 140, Add Velocity]
type = veladd
triggerall = statetype = A
trigger1 = !fvar(37) || !fvar(38)
y = const(movement.yaccel)
[state 140, Add Velocity]
type = veladd
triggerall = statetype = A
trigger1 = fvar(37) && fvar(38)
y = (fvar(36) - fvar(37) * fvar(38)) / (fvar(38) ** 2.0 / 2.0)

[state 140, End State]
type = changestate
trigger1 = !animtime || statetype = A && pos y + vel y > 0
value = 0 + 11 * (statetype = C) + 50 * (statetype = A)

;=========================================================================
; Stand Guard Hit (shaking)
;=========================================================================
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0

[state 150, Change Animation]
type = changeanim
trigger1 = 1
value = 150

[state 150, End State]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!ailevel && command = "holddown") || (ailevel && p2movetype = A && p2statetype = C))

[state 150, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 150, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

[state 150, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 3

;=========================================================================
; Stand Guard Hit 2 (knocked back)
;=========================================================================
[Statedef 151]
type = S
movetype = H
physics = N

[state 151, Change Animation]
type = changeanim
trigger1 = !time
value = 150

[state 151, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)

[state 151, Multiply Velocity]
type = veladd
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
x = gethitvar(xvel) * facing * fvar(27) / -gethitvar(slidetime)

[state 151, Set Velocity]
type = velset
trigger1 = hitover || time > gethitvar(slidetime)
trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
x = 0.0 * fvar(27)

[state 151, Hit Dust]
type = explod
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
trigger1 = time % 4 = 0
anim = F100
ID = 100
postype = P1
pos = const(size.ground.front), 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = cond(vel x < 0, 0.5 + (random % 10 / 10), -0.5 - (random % 10 / 10)), -1.5 - (random % 10 / 10)
random = 0, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 151, Control]
type = ctrlset
trigger1 = hitover ; || time > gethitvar(slidetime)
; trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
value = 1

[state 151, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C

[state 151, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S

[state 151, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 130
ctrl = 1

;=========================================================================
; Crouch Guard Hit (shaking)
;=========================================================================
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0

[state 152, Change Animation]
type = changeanim
trigger1 = 1
value = 151

[state 152, End State]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!ailevel && command = "holddown") || (ailevel && p2movetype = A && p2statetype = C))

[state 152, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 152, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

[state 152, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

;=========================================================================
; Crouch Guard Hit 2 (knocked back)
;=========================================================================
[Statedef 153]
type = C
movetype = H
physics = N

[state 153, Change Animation]
type = changeanim
trigger1 = !time
value = 151

[state 153, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)

[state 153, Multiply Velocity]
type = veladd
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
x = gethitvar(xvel) * facing * fvar(27) / -gethitvar(slidetime)

[state 153, Set Velocity]
type = velset
trigger1 = hitover || gethitvar(hittime) <= 0 || time > gethitvar(slidetime)
trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
x = 0.0 * fvar(27)

[state 153, Hit Dust]
type = explod
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
trigger1 = time % 4 = 0
anim = F100
ID = 100
postype = P1
pos = const(size.ground.front), 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = cond(vel x < 0, 0.5 + (random % 10 / 10), -0.5 - (random % 10 / 10)), -1.5 - (random % 10 / 10)
random = 0, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 153, Control]
type = ctrlset
trigger1 = hitover ; || time > gethitvar(slidetime)
; trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
value = 1

[state 153, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C

[state 153, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S

[state 153, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 131
ctrl = 1

;=========================================================================
; Air Guard Hit (shaking)
;=========================================================================
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0

[state 154, Change Animation]
type = changeanim
trigger1 = 1
value = 152

[state 154, End State]
type = changestate
trigger1 = hitshakeover
value = 155

[state 154, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

;=========================================================================
; Air Guard Hit 2 (knocked away)
;=========================================================================
[Statedef 155]
type = A
movetype = H
physics = N

[state 155, Change Animation]
type = changeanim
trigger1 = !time
value = 152

[state 155, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)
y = gethitvar(yvel) * fvar(27)

[state 155, Add Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 155, Control]
type = ctrlset
trigger1 = hitover || gethitvar(hittime) <= 0 ; || time >= gethitvar(slidetime)
; trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
value = 1

[state 155, Set Position]
type = posset
trigger1 = pos y + vel y > 0
y = 0

[state 155, Set Velocity]
type = velset
trigger1 = pos y >= 0
y = 0.0 * fvar(27)

[state 155, End State]
type = changestate
trigger1 = pos y >= 0
trigger1 = command = "holdback"
trigger1 = inguarddist
value = cond(command = "holddown", 131, 130)

[state 155, End State]
type = changestate
trigger1 = pos y >= 0
value = 52

;=========================================================================
; Lose Pose
;=========================================================================
[Statedef 170]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 170, Set Position]
type = posset
trigger1 = !time
y = 0

[state 170, Change Animation]
type = changeanim
trigger1 = !time
value = 170

[state 170, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 170, Voice]
type = playsnd
trigger1 = !time
value = 170, 0
volumescale = 100
channel = 0

;=========================================================================
; Draw Game / time Over
;=========================================================================
[Statedef 175]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 175, End State]
type = changestate
trigger1 = !time
value = 170

[state 175, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

;=========================================================================
; Introduction
;=========================================================================
[Statedef 190]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 190, Change Animation]
type = changeanim
trigger1 = !time
value = 0

[state 190, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 190, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 190, End State]
type = changestate
trigger1 = !time
value = 0

;=========================================================================
; Bonus Introduction
;=========================================================================
[Statedef 4000]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 190, Change Animation]
type = changeanim
trigger1 = !time
value = 0

[state 190, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 190, Special Effect]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = invisible
flag3 = nobardisplay

[state 190, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 5900, 3]
type = VarSet
triggerall = name="Bonus Stage"
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
trigger1 = !time
v = 44
;#####################################################################################################################
;## Set the amount of seconds for the bonus game.
;## Default value is 30.
value = 30
[State 5900, Timer]
type = VarSet
triggerall = name="Bonus Stage"
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
trigger1 = !time
var(44)=60*var(44)
persistent = 0

[state 190, End State]
type = changestate
trigger1 = !time
value = 4001

;=========================================================================
; Bonus Idle
;=========================================================================
[Statedef 4001]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, ScreenBound] ;place offscreen, just in case
type = ScreenBound
trigger1 = 1 
value = 0
movecamera = 0,0
;ignorehitpause = 
;persistent = 

[state 190, Change Animation]
type = changeanim
trigger1 = !time
value = 9999

[state 190, Special Effect]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = invisible
flag3 = nobardisplay

[state 190, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 0, 4] ;Are you alive?
type = ChangeState
trigger1 = alive
trigger1 = roundstate=3
value = 0 ;180
ctrl = 1 ;0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
ctrl = 0


;=========================================================================
; S. Gethit Shaking
;=========================================================================
[Statedef 5000]
type = S
movetype = H
physics = N
velset = 0, 0

[state 5000, Change Animation]
type = changeanim
trigger1 = time <= 1
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(groundtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 5000, Change Animation]
type = changeanim
trigger1 = time <= 1
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + 5 * (gethitvar(fall) && selfanimexist(5035))

[state 5000, Change Animation]
type = changeanim
trigger1 = time > 0
value = anim

[state 5000, Add Position]
type = posset
triggerall = !time
trigger1 = pos y > -gethitvar(fall.envshake.phase)
y = -gethitvar(fall.envshake.phase)

[state 5000, Set State Type]
type = statetypeset
trigger1 = !time
trigger1 = gethitvar(yvel) || gethitvar(fall)
trigger2 = pos y != 0
statetype = A

[state 5000, FFB Light]
type = forcefeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
time = 6
waveform = square
persistent = 0

[state 5000, FFB Medium]
type = forcefeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
time = 8
waveform = sinesquare
ampl = 110, -1, -0.3
persistent = 0

[state 5000, FFB Hard]
type = forcefeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
time = 15
waveform = sinesquare
ampl = 140
persistent = 0

[state 5000, Change to Wall Slam]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(chainid) = [5230, 5235]
value = 5230

[state 5000, Change to Stand Hit Slide]
type = changestate
trigger1 = hitshakeover
trigger1 = !gethitvar(yvel) && !gethitvar(fall)
value = 5001

[state 5000, Change to FallBack Hit Slide]
type = changestate
trigger1 = hitshakeover
value = 5030

;=========================================================================
; S. Gethit Sliding
;=========================================================================
[Statedef 5001]
type = S
movetype = H
physics = N

[state 5001, Change Animation]
type = changeanim
trigger1 = !animtime
value = 5005 + gethitvar(animtype) + 10 * (gethitvar(groundtype) = 2)

[state 5001, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)

[state 5001, Multiply Velocity]
type = veladd
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
x = gethitvar(xvel) * facing * fvar(27) / -gethitvar(slidetime)

[state 5001, Set Velocity]
type = velset
trigger1 = hitover || time > gethitvar(Slidetime)
trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
x = 0.0 * fvar(27)

[state 5001, Hit Dust]
type = explod
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
trigger1 = time % 4 = 0
anim = F100
ID = 100
postype = P1
pos = const(size.ground.front), 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = cond(vel x < 0, 0.5 + (random % 10 / 10), -0.5 - (random % 10 / 10)), -1.5 - (random % 10 / 10)
random = 0, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 5001, Set Defense]
type = defencemulset
trigger1 = hitover
value = 1

[state 5001, Set State Type]
type = statetypeset
trigger1 = fvar(14) < fvar(15) && !var(4)
trigger1 = hitover
movetype = I 

[state 5001, Control]
type = ctrlset
trigger1 = hitover
value = 1

[state 5001, End State]
type = changestate
trigger1 = hitover
value = 0
ctrl = 1

;=========================================================================
; C. Gethit Shaking
;=========================================================================
[Statedef 5010]
type = C
movetype = H
physics = N
velset = 0, 0

[state 5010, Change Animation]
type = changeanim
trigger1 = time <= 1
trigger1 = gethitvar(animtype) != [3, 5]
value = 5020 + gethitvar(animtype)

[state 5010, Change Animation]
type = changeanim
trigger1 = time <= 1
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + 5 * (gethitvar(fall) && selfanimexist(5035))

[state 5010, Change Animation]
type = changeanim
trigger1 = time > 0
value = anim

[state 5010, Add Position]
type = posset
triggerall = !time
trigger1 = pos y > -gethitvar(fall.envshake.phase)
y = -gethitvar(fall.envshake.phase)

[state 5010, Set State Type]
type = statetypeset
triggerall = !time
trigger1 = gethitvar(yvel) || gethitvar(fall)
trigger2 = pos y != 0
statetype = A

[state 5010, FFB Light]
type = forcefeedback
trigger1 = anim = 5020
time = 6
waveform = square
persistent = 0

[state 5010, FFB Medium]
type = forcefeedback
trigger1 = anim = 5021
time = 8
waveform = sinesquare
ampl = 110, -1, -0.3
persistent = 0

[state 5010, FFB Hard]
type = forcefeedback
trigger1 = anim = 5022
time = 15
waveform = sinesquare
ampl = 140
persistent = 0

[state 5010, Change to Wall Slam]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(chainid) = [5230, 5235]
value = 5230

[state 5010, Change to Stand Hit Slide]
type = changestate
trigger1 = hitshakeover
trigger1 = !gethitvar(yvel) && !gethitvar(fall)
value = 5011

[state 5010, Change to FallBack Hit Slide]
type = changestate
trigger1 = hitshakeover
value = 5030

;=========================================================================
; C. Gethit Sliding
;=========================================================================
[Statedef 5011]
type = C
movetype = H
physics = N

[state 5011, Change Animation]
type = changeanim
trigger1 = !animtime
value = 5025 + gethitvar(animtype)

[state 5011, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)

[state 5011, Multiply Velocity]
type = veladd
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
x = gethitvar(xvel) * facing * fvar(27) / -gethitvar(slidetime)

[state 5011, Set Velocity]
type = velset
trigger1 = hitover || time > gethitvar(Slidetime)
trigger2 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
x = 0.0 * fvar(27)

[state 5011, Hit Dust]
type = explod
trigger1 = time && gethitvar(slidetime)
trigger1 = time <= gethitvar(slidetime)
trigger1 = time % 4 = 0
anim = F100
ID = 100
postype = P1
pos = const(size.ground.front), 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = cond(vel x < 0, 0.5 + (random % 10 / 10), -0.5 - (random % 10 / 10)), -1.5 - (random % 10 / 10)
random = 0, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 5011, Set Defense]
type = defencemulset
trigger1 = hitover
value = 1

[state 5011, Set State Type]
type = statetypeset
trigger1 = fvar(14) < fvar(15) && !var(4)
trigger1 = hitover
movetype = I 

[state 5011, End State]
type = changestate
trigger1 = hitover
value = 11
ctrl = 1

;=========================================================================
; A. Gethit Shaking
;=========================================================================
[Statedef 5020]
type = A
movetype = H
physics = N
velset = 0, 0

[state 5020, Set Hit Fall]
type = hitfallset
trigger1 = fvar(14) >= fvar(15) || var(4)
trigger2 = !alive
value = 1

[state 5020, Change Animation]
type = changeanim
trigger1 = time <= 1
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(airtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 5020, Change Animation]
type = changeanim
trigger1 = time <= 1
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + 5 * (gethitvar(fall) && selfanimexist(5035))

[state 5020, Change Animation]
type = changeanim
trigger1 = time > 0
value = anim

[state 5020, Add Position]
type = posset
triggerall = !time
trigger1 = pos y > -gethitvar(fall.envshake.phase)
y = -gethitvar(fall.envshake.phase)

[state 5020, FFB Light]
type = forcefeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
time = 6
waveform = square
persistent = 0

[state 5020, FFB Medium]
type = forcefeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
time = 8
waveform = sinesquare
ampl = 110, -1, -0.3
persistent = 0

[state 5020, FFB Hard]
type = forcefeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
time = 15
waveform = sinesquare
ampl = 140
persistent = 0

[state 5020, Change to Wall Slam]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(chainid) = [5230, 5235]
value = 5230

[state 5020, Default Hit Transition]
type = changestate
trigger1 = hitshakeover
value = 5030

;=========================================================================
; A. Gethit Flying
;=========================================================================
[Statedef 5030]
type = A
movetype = H
physics = N
ctrl = 0

[state -2, End State] ;Against Bonus game
type = changestate
triggerall = name="Bonus Stage"
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
value = 5150 ;5110

[state 5030, Set Hit Fall]
type = hitfallset
trigger1 = fvar(14) >= fvar(15) || var(4)
trigger2 = !alive
value = 1

[state 5030, Change Animation]
type = changeanim
trigger1 = anim != [5000, 5199]
trigger1 = selfanimexist(5030)
value = 5030

[state 5030, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)
y = gethitvar(yvel) * fvar(27)

[state 5030, Add Velocity]
type = veladd
trigger1 = time
y = gethitvar(yaccel)

[state 5030, End State]
type = changestate
triggerall = !hitfall
trigger1 = hitover || gethitvar(hittime) < 0
trigger2 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5040

[state 5030, End State]
type = changestate
triggerall = hitfall
trigger1 = hitover || gethitvar(hittime) < 0 || !animtime || time >= 0
trigger2 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5050

[state 5030, End State]
type = changestate
trigger1 = !animtime
trigger2 = anim = [5090, 5095]
trigger2 = time >= 7
value = 5035

;=========================================================================
; Air get-hit (transition)
;=========================================================================
[Statedef 5035]
type = A
movetype = H
physics = N

[state 5035, Set Hit Fall]
type = hitfallset
trigger1 = fvar(14) >= fvar(15) || var(4)
value = 1

[state 5035, Add Velocity]
type = veladd
trigger1 = cond((prevstateno = [5030, 5050]), 1, time)
y = gethitvar(yaccel)

[state 5035, End State]
type = changestate
triggerall = !hitfall
trigger1 = hitover || gethitvar(hittime) < 0
trigger2 = pos y + vel y > const(movement.air.gethit.groundlevel)
trigger3 = anim != 5035 && !time
value = 5040

[state 5035, End State]
type = changestate
triggerall = hitfall
trigger1 = hitover || gethitvar(hittime) < 0 || !animtime || time >= 0
trigger2 = pos y + vel y > const(movement.air.gethit.groundlevel)
trigger3 = anim != 5035 && !time
value = 5050

;=========================================================================
; A. Gethit Recovering
;=========================================================================
[Statedef 5040]
type = A
movetype = H
physics = N

[state 5040, Set Hit Fall]
type = hitfallset
trigger1 = fvar(14) >= fvar(15) || var(4)
value = 1

[state 5040, End State]
type = changestate
trigger1 = !alive
trigger2 = fvar(14) >= fvar(15) || var(4)
value = 5050
ctrl = 0

[state 5040, Change Animation]
type = changeanim
trigger1 = !time
value = 5040

[state 5040, Set State Type]
type = statetypeset
trigger1 = hitover
movetype = I
persistent = 0

[state 5040, Add Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5040, End State]
type = changestate
trigger1 = vel y >= 0
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Gethit Falling
;=========================================================================
[Statedef 5050]
type = A
movetype = H
physics = N

[state 5050, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = anim != [5090, 5095]
value = 5050

[state 5050, Change Animation]
type = changeanim
trigger1 = !time && vel y >= 0
value = 5060

[state 5050, Add Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5050, End State]
type = changestate
trigger1 = vel y >= 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5100

;=========================================================================
; T. Gethit Shaking
;=========================================================================
[Statedef 5070]
type = A
movetype = H
physics = N
velset = 0, 0

[state 5070, Change Animation]
type = changeanim
trigger1 = 1
value = 5070

[state 5070, Add Position]
type = posset
triggerall = !time
trigger1 = pos y > -gethitvar(fall.envshake.phase)
y = -gethitvar(fall.envshake.phase)

[state 5070, FFB]
type = forcefeedback
trigger1 = !time
time = 12
waveform = sinesquare
ampl = 140

[state 5070, End State]
type = changestate
trigger1 = hitshakeover
value = 5071

;=========================================================================
; T. Gethit Flying
;=========================================================================
[Statedef 5071]
type = A
movetype = H
physics = N

[state 5071, Set Trip Flag]
type = varset
trigger1 = !time
sysvar(0) = stateno

[state 5071, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)
y = gethitvar(yvel) * fvar(27)

[state 5071, Add Velocity]
type = veladd
trigger1 = time
y = gethitvar(yaccel)

[state 5071, End State]
type = changestate
trigger1 = vel y >= 0
trigger1 = pos y + vel y > const(movement.air.gethit.trip.groundlevel)
value = 5110

;=========================================================================
; L. Gethit Shaking
;=========================================================================
[Statedef 5080]
type = L
movetype = H
physics = N
velset = 0, 0

[state 5080, Change Animation]
type = changeanim
trigger1 = !time
value = cond(!gethitvar(yvel), 5080, 5090)

[state 5080, Change Animation]
type = changeanim
trigger1 = 1
value = anim
elem = 1 + (animelemtime(animelemno(0) - 1) = 1 && hitshakeover) ; unique

[state 5080, Add Position]
type = posset
triggerall = !time
trigger1 = pos y > -gethitvar(fall.envshake.phase)
y = -gethitvar(fall.envshake.phase)

[state 5080, End State]
type = changeState
trigger1 = hitshakeover
value = cond(!gethitvar(yvel), 5081, 5030)

;=========================================================================
; L. Gethit Sliding
;=========================================================================
[Statedef 5081]
type = L
movetype = H
physics = C

[state 5081, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing * fvar(27)

[state 5081, Set Hit Velocity]
type = velset
trigger1 = hitover || gethitvar(hittime) <= 0
x = 0.0 * fvar(27)

[state 5081, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 5110

;=========================================================================
; Hit Ground
;=========================================================================
[Statedef 5100]
type = L
movetype = H
physics = N

[state 5100, Change Animation]
type = changeanim
trigger1 = !time
value = 5100

[state 5100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5100, Freeze Position]
type = posfreeze
trigger1 = 1

[state 5100, Hit Fall Damage]
type = hitfalldamage
trigger1 = !time

[state 5100, Shake]
type = envshake ; fallenvshake
trigger1 = !time
time = 4
ampl = 1
freq = 128

[state 5100, Sound]
type = playsnd
trigger1 = !time
value = F5100, 0

[state 5100, Hit Ground Dust]
type = helper
triggerall = random%3=0
trigger1 = !time
name = "Hit Ground Dust"
ID = 60250
stateno = 6025
postype = P1
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 5100, Set Velocity]
type = velset
trigger1 = !time
y = 0.0 * fvar(27)

[state 5100, Multiply Velocity]
type = velmul
trigger1 = !time
x = 0.75

[state 5100, Multiply Velocity]
type = velmul
triggerall = !time
trigger1 = prevstateno = [5230, 5232]
x = 0.5

[state 5100, FFB]
type = forcefeedback
trigger1 = !time
waveform = sinesquare
ampl = 128, -3, -0.2, 0.005
time = 20

[state 5100, Set State Type]
type = statetypeset
trigger1 = const240p(gethitvar(fall.yvel)) < const240p(-4.5)
statetype = A
persistent = 0

[state 5100, End State]
type = changestate
trigger1 = !time
trigger1 = !gethitvar(fall.yvel)
value = 5110

[state 5100, End State]
type = changestate
trigger1 = !animtime
value = 5101

;=========================================================================
; Bounce from Ground
;=========================================================================
[Statedef 5101]
type = L
movetype = H
physics = N

[state 5101, Change Animation]
type = changeanim
trigger1 = !time
value = 5160

[state 5101, Hit Fall Velocity]
type = hitfallvel
trigger1 = !time

[state 5101, Set Velocity]
type = velset
trigger1 = !time
x = vel x * fvar(27)
y = vel y * fvar(27)

[state 5101, Multiply Velocity]
type = velmul
trigger1 = !time
x = 0.5

[state 5101, Set Position]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[state 5101, Add Position]
type = posadd
trigger1 = !time
x = const(movement.down.bounce.offset.x)

[state 5101, Gerdon: Add Velocity]
type = veladd
trigger1 = time
trigger1 = cond(numenemy, cond(enemy,name = "Gerdon" && enemy,fvar(29) > 1, 0, 1), 1)
y = const(movement.down.bounce.yaccel)

[state 5101, Gerdon: Add Velocity]
type = veladd
trigger1 = numenemy && time
trigger1 = enemy,name = "Gerdon"
trigger1 = enemy,fvar(29) > 1
y = enemy,fvar(32)

[state 5101, Set State Type]
type = statetypeset
trigger1 = const240p(gethitvar(fall.yvel)) < const240p(-4.5)
statetype = A
persistent = 0

[state 5101, End State]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.down.bounce.groundlevel)
value = 5110

;=========================================================================
; L. Gethit Static
;=========================================================================
[Statedef 5110]
type = L
movetype = H
physics = N

[state 5110, Change Animation]
type = changeanim
trigger1 = !time && anim != 5080 && anim != 5110
value = 5170

[state 5110, Change Animation]
type = changeanim
trigger1 = !animtime
trigger2 = anim = 5080 && animelemtime(2) >= 4
value = 5110

[state 5110, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5110, Hit Fall Damage]
type = hitfalldamage
trigger1 = !time && prevstateno != [5100, 5101]

[state 5110, Shake]
type = envshake ; fallenvshake
triggerall = !time
trigger1 = (prevstateno != [5080, 5081])
; trigger1 = (prevstateno != [5100, 5101])
time = 4
ampl = 1
freq = 128

[state 5110, Sound]
type = playsnd
triggerall = !time
trigger1 = (prevstateno != [5080, 5081])
; trigger1 = (prevstateno != [5100, 5101])
value = F5100, 0

[state 5110, Hit Ground Dust]
type = helper
triggerall = !time
triggerall = random%3=0
trigger1 = (prevstateno != [5080, 5081])
trigger1 = (prevstateno != [5100, 5101])
name = "Hit Ground Dust"
ID = 60250
stateno = 6025
postype = P1
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[state 5110, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.25, 1.25]
trigger1 = sysvar(0) = 5071
x = cond(vel x > 1.25, 1.25, -1.25) * fvar(27)

[state 5110, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.875, 1.875]
trigger1 = sysvar(0) != 5071
x = cond(vel x > 1.875, 1.875, -1.875) * fvar(27)

[state 5110, Set Velocity]
type = velset
trigger1 = !time
y = 0.0 * fvar(27)

[state 5110, Set Velocity]
type = velset
trigger1 = anim = 5110
trigger2 = anim != 5110 && !animtime
x = 0.0 * fvar(27)
persistent = 0

[state 5110, Multiply Velocity]
type = velmul
trigger1 = vel x
x = 0.765

[state 5110, FFB]
type = forcefeedback
trigger1 = alive
trigger1 = !time
time = 8
ampl = 240
waveform = sine

[state 5110, FFB]
type = forcefeedback
trigger1 = !alive
trigger1 = !time
ampl = 200, 7, -0.467
time = 30
waveform = sine

[state 5110, End State]
type = changestate
trigger1 = alive && anim = 5110
value = 5111

[state 5110, End State]
type = changestate
trigger1 = !alive
trigger1 = !animtime || anim = [5110, 5119]
value = 5150

;=========================================================================
; Get Up
;=========================================================================
[Statedef 5120]
type = L
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 5120, Change Animation]
type = changeanim
trigger1 = !time
value = 5120

[state 5120, State Type Set]
type = statetypeset
trigger1 = fvar(14) >= fvar(15) || var(4)
movetype = H
persistent = 0

[state 5120, State Type Set]
type = statetypeset
trigger1 = !animtime
statetype = S
persistent = 0

[state 5120, Vulnerability]
type = nothitby
trigger1 = statetype = L
value = SCA
time = 1

[state 5120, Set Hit Fall]
type = hitfallset
trigger1 = !animtime || statetype = S
trigger1 = fvar(14) < fvar(15) && !var(4)
value = 1

[state 5120, Vulnerability]
type = nothitby
trigger1 = !animtime || statetype = S
trigger1 = fvar(14) < fvar(15) && !var(4)
value = ,NT,ST,HT
time = 12
persistent = 0

[state 5120, Vulnerability]
type = nothitby
trigger1 = !animtime || statetype = S
trigger1 = fvar(14) < fvar(15) && !var(4)
value2 = SCA
time = 3
persistent = 0

[state 5120, Control Set]
type = ctrlset
trigger1 = statetype = S
value = 1
persistent = 0

[state 5120, Change to Dizzy State]
type = changestate
triggerall = numhelper(6002) && alive
trigger1 = fvar(14) >= fvar(15) || var(4)
trigger1 = ctrl || !animtime
trigger1 = fvar(14) := 0 || var(4) := 0 || 1
value = 5300

[state 5120, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Lie Dead
;=========================================================================
[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3

[state 5150, Change Animation]
type = changeanim
trigger1 = !time && anim != [5110, 5111]
trigger1 = anim != 5950
value = 5110

[state 5150, Multiply Velocity]
type = velmul
trigger1 = 1
x = 0.85

[state 5150, Set Velocity]
type = velset
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
x = 0.0 * fvar(27)
persistent = 0

[state 5150, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

; Disallow helpers to survive in this state
[state 5150, Transparency]
type = trans
trigger1 = ishelper
trans = addalpha
alpha = 256 - 16 * time, 16 * time
[state 5150, Destroy Helper]
type = destroyself
trigger1 = ishelper
trigger1 = time > 16

;=========================================================================
; Ground Recovery
;=========================================================================
[Statedef 5200]
type = A
movetype = H
physics = N

[state 5200, Set Position]
type = posset
trigger1 = pos y > 0
y = 0

[state 5200, Change Animation]
type = changeanim
trigger1 = anim = 5035
trigger1 = !animtime
value = 5050

[state 5200, Add Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5200, Own State]
type = selfstate
trigger1 = pos y + vel y > -4
value = 5201

;=========================================================================
; Ground Recovery
;=========================================================================
[Statedef 5201]
type = S
movetype = I
physics = N
ctrl = 0

[state 5201, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5201, Change Animation]
type = changeanim
trigger1 = !time
value = 5200

[state 5201, Palette Effect]
type = palfx
trigger1 = !time
time = 4
add = 128, 128, 128

[state 5201, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < const720p(-20)

[state 5201, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 5201, Set Velocity]
type = velset
trigger1 = !time
x = 0.0 * fvar(27)
y = 0.0 * fvar(27)

[state 5201, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Air Recovery
;=========================================================================
[Statedef 5210]
type = A
movetype = I
physics = N
ctrl = 0

[state 5210, Change Animation]
type = changeanim
trigger1 = !time
value = 5210

[state 5210, Palette Effect]
type = palfx
trigger1 = !time
time = 4
add = 128, 128, 128

[state 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < const720p(-80)

[state 5210, Invulnerability]
type = nothitby
trigger1 = !time
value = SCA
time = 16

[state 5210, Set Velocity]
type = velset
trigger1 = time <= 1
x = (4.296875 * command = "holdfwd") - (4.296875 * command = "holdback") * fvar(27)
y = -8.7890625 + (4.39453125 * command = "holddown") * fvar(27)

[state 5210, Add Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 5210, Control]
type = ctrlset
trigger1 = time = 24
value = 1

[State 5210, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52
ctrl = 1

;=========================================================================
; Wall Gethit Shaking
;=========================================================================
[statedef 5230]
type = A
movetype = H
physics = N
ctrl = 0

[state 5230, Destroy Explod]
type = removeexplod
trigger1 = ishelper

[state 5230, Destroy Helper]
type = destroyself
trigger1 = ishelper

[state 5230, Change Animation]
type = changeanim
trigger1 = !time && !fvar(21)
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(groundtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 5230, Change Animation]
type = changeanim
trigger1 = !time && !fvar(21)
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 5230, Change Animation]
type = changeanim
trigger1 = !time && !fvar(21)
trigger1 = (gethitvar(animtype) = [4, 5]) && selfanimexist(5047 + gethitvar(animtype))
value = 5047 + gethitvar(animtype)

[state 5230, Change Animation]
type = changeanim
trigger1 = !hitshakeover
value = anim

[state 5230, Change Animation]
type = changeanim
trigger1 = hitshakeover && !fvar(21)
value = 5230
persistent = 0

[state 5230, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 5230, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 5230, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 5230, Set Velocity]
type = velset
trigger1 = hitshakeover && !fvar(28)
x = gethitvar(xvel) * fvar(27) * facing
y = gethitvar(yvel) * fvar(27)
persistent = 0

[state 5230, Set Velocity]
type = velset
triggerall = hitshakeover
trigger1 = gethitvar(chainid) = 5230 || gethitvar(chainid) = 5232 || gethitvar(chainid) = 5234
trigger2 = fvar(28) = 5230 || fvar(28) = 5232 || fvar(28) = 5234
y = 0.0
persistent = 0

[state 5230, Add Velocity]
type = veladd
triggerall = hitshakeover
trigger1 = gethitvar(chainid) = 5231 || gethitvar(chainid) = 5233 || gethitvar(chainid) = 5235
trigger2 = fvar(28) = 5231 || fvar(28) = 5233 || fvar(28) = 5235
y = gethitvar(yaccel)

[state 5230, End State]
type = changestate
trigger1 = hitshakeover
trigger1 = cond(vel x > 0, frontedgebodydist <= 0, backedgebodydist <= 0)
value = 5231
ctrl = 0

[state 5230, Own State]
type = selfstate
trigger1 = hitshakeover
trigger1 = pos y + vel y > 0
value = 5100

[state 5230, Own State]
type = selfstate
trigger1 = hitshakeover
trigger1 = !gethitvar(isbound)
trigger1 = time > 128
value = 5050

;=========================================================================
; Wall Gethit Impact
;=========================================================================
[statedef 5231]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 5231, Change Animation]
type = changeanim
trigger1 = !time
value = 5231

[state 5231, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 5231, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 5231, Turn]
type = turn
trigger1 = backedgedist < frontedgedist
trigger1 = !animtime

[state 5231, Sound]
type = playsnd
trigger1 = !time
value = F5100, 0
volumescale = 100

[state 5231, Shake]
type = envshake
trigger1 = !time
time = 8
ampl = 4

[state 5231, Set Velocity]
type = velset
triggerall = !animtime
trigger1 = gethitvar(chainid) = 5230 || gethitvar(chainid) = 5231
trigger2 = fvar(28) = 5230 || fvar(28) = 5231
x = -3.0 * fvar(27)
y = -7.0 * fvar(27)

[state 5231, Set Velocity]
type = velset
triggerall = !animtime
trigger1 = gethitvar(chainid) = 5232 || gethitvar(chainid) = 5233
trigger2 = fvar(28) = 5232 || fvar(28) = 5233
x = -6.0 * fvar(27)
y = -5.0 * fvar(27)

[state 5231, Set Velocity]
type = velset
triggerall = !animtime
trigger1 = gethitvar(chainid) = 5234 || gethitvar(chainid) = 5235
trigger2 = fvar(28) = 5234 || fvar(28) = 5235
x = -abs((p2dist x + 80.0) / 32.0)
y = -8.0

[state 5231, End State]
type = changestate
trigger1 = !animtime
value = 5232
ctrl = 0

[state 5231, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 128
value = 5050

;=========================================================================
; Wall Gethit Fall
;=========================================================================
[Statedef 5232]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = -1

[state 5232, Change Animation]
type = changeanim
trigger1 = !time
value = 5050

[state 5232, Change Animation]
type = null ; changeanim
trigger1 = vel y > 0
value = 5060
persistent = 0

[state 5232, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 5232, Add Velocity]
type = veladd
trigger1 = gethitvar(chainid) = 5230 || gethitvar(chainid) = 5231
trigger2 = gethitvar(chainid) = 5232 || gethitvar(chainid) = 5233
trigger3 = fvar(28) = 5230 || fvar(28) = 5231 
trigger4 = fvar(28) = 5232 || fvar(28) = 5233
y = gethitvar(yaccel)

[state 5232, Add Velocity]
type = veladd
trigger1 = gethitvar(chainid) = 5234 || gethitvar(chainid) = 5235
trigger2 = fvar(28) = 5234 || fvar(28) = 5235
y = (0 - (-8.0 * 31.0)) / (31.0 ** 2.0 / 2.0)

[state 5232, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100 ; + 10 * (gethitvar(chainid) = 5234 || gethitvar(chainid) = 5235 || fvar(28) = 5234 || fvar(28) = 5235)

[state 5232, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 256
value = 5050

;=========================================================================
; Dizzied
;=========================================================================
[Statedef 5300]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 5300, Reset Misc Variables]
type = null
triggerall = !time
trigger1 = var(6) := 0 || var(7) := 0 || var(8) := 0 || 1 ; miscellaneous variables
trigger1 = fvar(18) := 0 || fvar(19) := 0 || fvar(20) := 0 || 1 ; miscellaneous variables

[state 5300, State Type Set]
type = statetypeset
trigger1 = !time
movetype = H

[state 5300, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 0

[state 5300, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5300, End State]
type = changestate
trigger1 = !alive
value = 5050

[state 5300, Dizzy Time]
type = varset
trigger1 = !time
var(6) = 0

[state 5300, Dizzy Time]
type = null
triggerall = !time
trigger1 = var(5) = [0, 1] ; Normal Hit
trigger1 = var(7) := 90 + 20 * (random % 4)
trigger2 = var(5) = 2 ; Special Hit
trigger2 = var(7) := 150 + 20 * (random % 4)
trigger3 = var(5) = 3 ; Super Art Hit
trigger3 = var(7) := 120 + 40 * (random % 4)
trigger4 = var(5) = 4 ; Normal Throw
trigger4 = var(7) := 120 + 20 * (random % 4)
trigger5 = var(5) = 5 ; Special Throw
trigger5 = var(7) := 120 + 40 * (random % 4)
trigger6 = var(5) = 6 ; Super Art Throw
trigger6 = var(7) := 150 + 40 * (random % 4)

[state 5300, Change Animation]
type = changeanim
trigger1 = !time
value = 5300

[state 5300, Button Tap Buffer Time]
type = varadd
trigger1 = var(6) > 0
trigger1 = time % 3 = 0
var(6) = -1

[state 5300, Tap button to Speed up]
type = varadd
trigger1 = command = "a" || command = "b"
trigger2 = command = "x" || command = "y"
trigger3 = command = "fwd" || command = "back" || command = "up" || command = "down"
var(6) = 1

[state 5300, Button Tap Buffer Time]
type = varset
trigger1 = var(6) > 12
var(6) = 12

[state 5300, Decrease Dizzy Time]
type = varadd
triggerall = var(7) > 0 && var(6) >= 6
trigger1 = command = "a" || command = "b"
trigger2 = command = "x" || command = "y"
trigger3 = command = "fwd" || command = "back" || command = "up" || command = "down"
var(7) = -1

[state 5300, Change Animation]
type = changeanim
triggerall = anim = 5300
triggerall = var(7) > 0 && var(6) >= 6
triggerall = animelemtime(animelemno(0)) >= 4
trigger1 = command = "a" || command = "b"
trigger2 = command = "x" || command = "y"
trigger3 = command = "fwd" || command = "back" || command = "up" || command = "down"
value = anim
elem = cond(!animelemtime(animelemno(0) + 1), 1, animelemno(0) + 1)

[state 5300, Control]
type = ctrlset
trigger1 = time >= var(7)
value = 1
persistent = 0

[state 5300, End State]
type = changeanim
trigger1 = time >= var(7)
value = 5301
persistent = 0

[state 5300, Sound]
type = playsnd
trigger1 = !time
value = F5300, 0
volumescale = 100

[state 5300, Dizzy Spark Position]
type = null
trigger1 = name = "Lee"
trigger1 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger1 = fvar(20) := 5300

trigger2 = name = "Yun"
trigger2 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger2 = fvar(20) := 5302

trigger3 = name = "King"
trigger3 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger3 = fvar(20) := 5300

trigger4 = name = "Kaori"
trigger4 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger4 = fvar(20) := 5301

trigger5 = name = "Sheana"
trigger5 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger5 = fvar(20) := 5301

trigger6 = name = "Madiesha"
trigger6 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger6 = fvar(20) := 5301

trigger7 = name = "Gerdon"
trigger7 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger7 = fvar(20) := 5302

trigger8 = name = "Stan"
trigger8 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger8 = fvar(20) := 5300

trigger9 = name = "Chieshen"
trigger9 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger9 = fvar(20) := 5303

trigger10 = name = "Dietrich"
trigger10 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger10 = fvar(20) := 5303

trigger11 = name = "Cula"
trigger11 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger11 = fvar(20) := 5303

trigger12 = name = "Zhao"
trigger12 = fvar(18) := const(size.head.pos.x) || fvar(19) := const(size.head.pos.y) || 1
trigger12 = fvar(20) := 5300

[state 5300, Dizzy Sparks]
type = explod
trigger1 = !time
anim = F(floor(fvar(20)))
ID = 5300
postype = P1
pos = floor(fvar(18)), floor(fvar(19))
bindtime = -1
removetime = -1
scale = 2.0, 2.0
sprpriority = 1
removeongethit = 1

[state 5300, Position Dizzy Sparks]
type = modifyexplod
trigger1 = numexplod(5300)
postype = P1
pos = 0, floor(fvar(19) - 16.0) ; floor(32 * cos(time * pi / 24)), floor(const(size.head.pos.y) + 4 * sin(time * pi / 24))
; sprpriority = 16 * cos(time * pi / 8)
ID = 5300

[state 5300, Remove Dizzy Sparks]
type = removeexplod
triggerall = numexplod(5300)
trigger1 = anim = 5301
trigger2 = ctrl && p2dist x < 0
ID = 5300

[state 5300, End State]
type = changestate
trigger1 = anim = 5301 && !animtime
trigger2 = ctrl && p2dist x < 0
value = 0
ctrl = 1

;=========================================================================
; Human Attack Reflected
;=========================================================================
[Statedef 5305]
type = A
movetype = H
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 5305, Change Animation]
type = changeanim
trigger1 = time < 16
value = anim
elem = animelemno(0)

[state 5305, Change Animation]
type = changeanim
trigger1 = time = 16
value = 5050

[state 5305, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 5305, Stop Voice Sound]
type = stopsnd
trigger1 = !time
channel = 0

[state 5305, Hit Sound]
type = playsnd
trigger1 = !time
value = F4, 10
channel = 2

[state 5305, Add Position]
type = null ; posadd
trigger1 = !time && fvar(35)
y = fvar(35) 

[state 5305, Set Velocity]
type = velset
trigger1 = time = 16
x = -3.0 * fvar(27)
y = -5.0 * fvar(27)

[state 5305, Add Velocity]
type = veladd
trigger1 = time > 16
y = gethitvar(yaccel)

[state 5305, End State]
type = changestate
trigger1 = time = 16 && numenemy
trigger1 = enemy,name = "Dietrich" 
trigger1 = gethitvar(chainid) = 911
value = 5040

[state 5305, End State]
type = changestate
trigger1 = time > 16 && vel y >= 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5100

;=========================================================================
; Dramatic Collapse
;=========================================================================
[Statedef 5310]
type = S
movetype = H
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = -1

[state 5310, Increase Dizzy]
type = varset
trigger1 = !time
fvar(14) = fvar(15) - 1

[state 5310, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5310, Change Animation]
type = changeanim
trigger1 = time < 8 ; gethitvar(hitshaketime)
value = 5310

[state 5310, Add Power]
type = poweradd
trigger1 = !time
value = -powermax

[state 3000, Background Effect]
type = allpalfx
trigger1 = !time
time = gethitvar(hitshaketime)
color = 256
invertall = 1

[state 5310, Blink]
type = palfx
trigger1 = gethitvar(hitshaketime)
time = 1
add = abs(floor(128 * cos(animelemtime(4) * pi / 8))), 0, 0

[state 5310, Faux-Shake]
type = offset
trigger1 = gethitvar(hitshaketime)
x = cond(random < 500, random % 2, -random % 2)
y = cond(random < 500, random % 2, -random % 2)

[state 5310, Voice]
type = playsnd
trigger1 = !time
value = 5150, 0
volumescale = 100
channel = 0

[state 5310, Sound]
type = playsnd
trigger1 = !time
value = F3, 11
volumescale = 100
channel = 1

[state 5310, Shake]
type = envshake
trigger1 = !time
time = 8
ampl = 8
freq = 128

[state 5310, Set Hit Velocity]
type = velset
trigger1 = !gethitvar(hitshaketime)
x = gethitvar(xvel) * facing * fvar(27)
persistent = 0
[state 5310, Multiply Velocity]
type = veladd
trigger1 = !gethitvar(hitshaketime) && gethitvar(slidetime)
x = gethitvar(xvel) * facing * fvar(27) / -gethitvar(slidetime)
[state 5310, Set Velocity]
type = velset
trigger1 = cond(gethitvar(xvel) * facing * fvar(27) < 0, vel x > 0, vel x < 0)
x = 0.0 * fvar(27)

[state 5310, End State]
type = selfstate
trigger1 = !animtime
value = 5100

;=========================================================================
; Continue screen animation
;=========================================================================
[Statedef 5500]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0

[state 5500, Change Animaton]
type = changeanim
trigger1 = !time
value = 5300 + 200 * selfanimexist(5500)

;=========================================================================
; Initiate System
;=========================================================================
[Statedef 5900]
type = S

[state 5900, Reset Variables at Beginning of Every Round?]
type = null
triggerall = 1
; Integers
trigger1 = var(00) := 0000000 || var(01) := 0000000 || var(02) := var(02) || var(03) := var(03) || var(04) := 0000000 || var(05) := 0000000 || 1
trigger1 = var(06) := 0000000 || var(07) := 0000000 || var(08) := 0000000 || var(09) := 0000000 || var(10) := 0000000 || var(11) := 0000000 || 1
trigger1 = var(12) := 0000000 || var(13) := 0000000 || var(14) := 0000000 || var(15) := 0000000 || var(16) := 0000000 || var(17) := 0000000 || 1
trigger1 = var(18) := 0000000 || var(19) := 0000000 || var(20) := 0000000 || var(21) := 0000000 || var(22) := 0000000 || var(23) := 0000000 || 1
trigger1 = var(24) := var(24) || var(25) := var(25) || var(26) := var(26) || var(27) := var(27) || var(28) := var(28) || var(29) := var(29) || 1
trigger1 = var(30) := var(30) || var(31) := var(31) || var(32) := var(32) || var(33) := var(33) || var(34) := var(34) || var(35) := var(35) || 1
trigger1 = var(36) := 0000000 || var(37) := 0000000 || var(38) := 0000000 || var(39) := 0000000 || var(40) := 0000000 || var(41) := 0000000 || 1
trigger1 = var(42) := 0000000 || var(43) := 0000000 || var(44) := 0000000 || var(45) := 0000000 || var(46) := 0000000 || var(47) := 0000000 || 1
trigger1 = var(48) := 0000000 || var(49) := 0000000 || var(50) := 0000000 || var(51) := 0000000 || var(52) := 0000000 || var(53) := 0000000 || 1
trigger1 = var(54) := 0000000 || var(55) := 0000000 || var(56) := 0000000 || var(57) := 0000000 || var(58) := 0000000 || var(59) := var(59) || 1
; Floats
trigger1 = fvar(00) := 00000000 || fvar(01) := 00000000 || fvar(02) := 00000000 || fvar(03) := 00000000 || fvar(04) := 00000000 || fvar(05) := 00000000 || 1
trigger1 = fvar(06) := 00000000 || fvar(07) := 00000000 || fvar(08) := 00000000 || fvar(09) := 00000000 || fvar(10) := 00000000 || fvar(11) := 00000000 || 1
trigger1 = fvar(12) := 00000000 || fvar(13) := 00000000 || fvar(14) := 00000000 || fvar(15) := 00000000 || fvar(16) := 00000000 || fvar(17) := 00000000 || 1
trigger1 = fvar(18) := 00000000 || fvar(19) := 00000000 || fvar(20) := 00000000 || fvar(21) := 00000000 || fvar(22) := 00000000 || fvar(23) := 00000000 || 1
trigger1 = fvar(24) := 00000000 || fvar(25) := 00000000 || fvar(26) := 00000000 || fvar(27) := 00000000 || fvar(28) := 00000000 || fvar(29) := 00000000 || 1
trigger1 = fvar(30) := 00000000 || fvar(31) := 00000000 || fvar(32) := 00000000 || fvar(33) := 00000000 || fvar(34) := 00000000 || fvar(35) := 00000000 || 1
trigger1 = fvar(36) := 00000000 || fvar(37) := 00000000 || fvar(38) := 00000000 || fvar(39) := 00000000

[state 5900, Reset Variables at Beginning of Every Match?]
type = null
triggerall = !roundsexisted
; Integers
trigger1 = var(00) := 0000000 || var(01) := 0000000 || var(02) := var(02) || var(03) := var(03) || var(04) := 0000000 || var(05) := 0000000 || 1
trigger1 = var(06) := 0000000 || var(07) := 0000000 || var(08) := 0000000 || var(09) := 0000000 || var(10) := 0000000 || var(11) := 0000000 || 1
trigger1 = var(12) := 0000000 || var(13) := 0000000 || var(14) := 0000000 || var(15) := 0000000 || var(16) := 0000000 || var(17) := 0000000 || 1
trigger1 = var(18) := 0000000 || var(19) := 0000000 || var(20) := 0000000 || var(21) := 0000000 || var(22) := 0000000 || var(23) := 0000000 || 1
trigger1 = var(24) := var(24) || var(25) := var(25) || var(26) := var(26) || var(27) := var(27) || var(28) := var(28) || var(29) := var(29) || 1
trigger1 = var(30) := var(30) || var(31) := var(31) || var(32) := var(32) || var(33) := var(33) || var(34) := var(34) || var(35) := var(35) || 1
trigger1 = var(36) := 0000000 || var(37) := 0000000 || var(38) := 0000000 || var(39) := 0000000 || var(40) := 0000000 || var(41) := 0000000 || 1
trigger1 = var(42) := 0000000 || var(43) := 0000000 || var(44) := 0000000 || var(45) := 0000000 || var(46) := 0000000 || var(47) := 0000000 || 1
trigger1 = var(48) := 0000000 || var(49) := 0000000 || var(50) := 0000000 || var(51) := 0000000 || var(52) := 0000000 || var(53) := 0000000 || 1
trigger1 = var(54) := 0000000 || var(55) := 0000000 || var(56) := 0000000 || var(57) := 0000000 || var(58) := 0000000 || var(59) := var(59) || 1
; Floats
trigger1 = fvar(00) := 00000000 || fvar(01) := 00000000 || fvar(02) := 00000000 || fvar(03) := 00000000 || fvar(04) := 00000000 || fvar(05) := 00000000 || 1
trigger1 = fvar(06) := 00000000 || fvar(07) := 00000000 || fvar(08) := 00000000 || fvar(09) := 00000000 || fvar(10) := 00000000 || fvar(11) := 00000000 || 1
trigger1 = fvar(12) := 00000000 || fvar(13) := 00000000 || fvar(14) := 00000000 || fvar(15) := 00000000 || fvar(16) := 00000000 || fvar(17) := 00000000 || 1
trigger1 = fvar(18) := 00000000 || fvar(19) := 00000000 || fvar(20) := 00000000 || fvar(21) := 00000000 || fvar(22) := 00000000 || fvar(23) := 00000000 || 1
trigger1 = fvar(24) := 00000000 || fvar(25) := 00000000 || fvar(26) := 00000000 || fvar(27) := 00000000 || fvar(28) := 00000000 || fvar(29) := 00000000 || 1
trigger1 = fvar(30) := 00000000 || fvar(31) := 00000000 || fvar(32) := 00000000 || fvar(33) := 00000000 || fvar(34) := 00000000 || fvar(35) := 00000000 || 1
trigger1 = fvar(36) := 00000000 || fvar(37) := 00000000 || fvar(38) := 00000000 || fvar(39) := 00000000

[state 5900, Reset Variables at Beginning of First Match]
type = varrangeset
trigger1 = !roundsexisted && matchno = 1
value = 0
[state 5900, Reset Variables at Beginning of First Match]
type = varrangeset
trigger1 = !roundsexisted && matchno = 1
fvalue = 0

[state 5900, Bonus Main Helper]
type = helper
triggerall = name = "Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numhelper(4500)
name = "Bonus Main System"
ID = 4500
stateno = 4500
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1


[State 5900, Time Display helper]
type = Helper
triggerall = name = "Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !NumHelper(4600)
id = 4600
name = "Time display"
pos = 0,0
postype = back
stateno = 4600
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state 5900, System Helper]
type = helper
;triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numhelper(6000)
name = "System"
id = 6000
stateno = 6000
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 5900, Palette]
type = remappal
triggerall = name != "Bonus Stage"
trigger1 = 1
source = 1, 1
dest = 1, cond(palno % 6 > 3, palno % 6 - 3, palno % 6 + 3)
[state 5900, Palette]
type = remappal
triggerall = name = "Bonus Stage"
trigger1 = 1
source = 1,1
dest = 1,1

[State 5900, VarSet] ;Reset Bonus AI Left character
type = VarSet
trigger1 = name = "Bonus Stage"
trigger1 = stagevar(info.name) = "Bonus Stage"
var(24)=0 
[State 5900, VarSet] ;Reset Bonus AI Right character
type = VarSet
trigger1 = name = "Bonus Stage"
trigger1 = stagevar(info.name) = "Bonus Stage"
var(25)=0 

[state 5900, End State] ;Bonus game
type = changestate
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
value = 4000

[state 5900, End State]
type = changestate
trigger1 = name = "Cula" && roundno = 1
trigger1 = stagevar(info.name) = "Italy"
trigger1 = stagevar(info.author) = "Super Fighter Team"
value = cond(p2name = "Cula" && !ishometeam, 190 * (roundno = 1), 192)

[state 5900, End State]
type = changestate
trigger1 = 1
value = 190 * (roundno = 1)

;=========================================================================
; System Helper
;=========================================================================
[Statedef 6000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 6000, Variable Configuration]
type = null
trigger1 = var(52) := root,var(52) || var(53) := root,var(53) || 1
trigger1 = fvar(29) := root,fvar(29) || fvar(30) := root,fvar(30) || fvar(31) := root,fvar(31) || 1
trigger1 = fvar(32) := root,fvar(32) || fvar(33) := root,fvar(33) || fvar(34) := root,fvar(34)
[state 6000, Variable Configuration]
type = varset
trigger1 = 1
sysvar(2) = root,sysvar(2)
[state 6000, Variable Configuration]
type = varset
trigger1 = 1
sysvar(3) = root,sysvar(3)
[state 6000, Variable Configuration]
type = varset
trigger1 = 1
sysfvar(0) = root,sysfvar(0)

[state 6000, Character Specific Text's X-Axis]
type = null
triggerall = 1
trigger1 = root,name = "Lee"
trigger1 = var(0) := 26
trigger2 = root,name = "Yun"
trigger2 = var(0) := 30
trigger3 = root,name = "King"
trigger3 = var(0) := 37
trigger4 = root,name = "Kaori"
trigger4 = var(0) := 42
trigger5 = root,name = "Sheana"
trigger5 = var(0) := 52
trigger6 = root,name = "Madiesha"
trigger6 = var(0) := 71
trigger7 = root,name = "Gerdon"
trigger7 = var(0) := 51
trigger8 = root,name = "Stan"
trigger8 = var(0) := 33
trigger9 = root,name = "Chieshen"
trigger9 = var(0) := 65
trigger10 = root,name = "Dietrich"
trigger10 = var(0) := 57
trigger11 = root,name = "Cula"
trigger11 = var(0) := 34
trigger12 = root,name = "Zhao"
trigger12 = var(0) := 34

;========================< Essential State Controllers >========================

[state 6000, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6000, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -4

[state 6000, Turn]
type = turn
trigger1 = facing != root,facing

;========================< Lifebar Faces >========================

[state 6000, Lifebar Normal Face]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = selfanimexist(9000 + 4 * (teamside = 2))
trigger1 = !numexplod(0)
anim = 9000 + 4 * (teamside = 2)
ID = 0
postype = left
pos = 1 + 318 * (teamside = 2), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 23)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -3

[state 6000, Lifebar Super Face]
type = explod
triggerall = selfanimexist(9001 + 4 * (teamside = 2))
triggerall = !numexplod(1)
trigger1 = (root,stateno = [900, 999]) || (root,stateno = [3000, 3999])
; trigger2 = sysvar(2)
; trigger3 = var(53) && sysvar(3) = sysvar(2)
anim = 9001 + 4 * (teamside = 2)
ID = 1
postype = left
pos = 1 + 318 * (teamside = 2), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 23)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -2
[state 6000, Remove Super Face]
type = removeexplod
triggerall = numexplod(1)
trigger1 = (root,stateno != [900, 999]) && (root,stateno != [3000, 3999])
; trigger1 = !sysvar(2)
; trigger1 = !var(53) || sysvar(3) != sysvar(2)
ID = 1

[state 6000, Lifebar Hurt Face]
type = explod
triggerall = selfanimexist(9002 + 4 * (teamside = 2))
triggerall = root,movetype = H && root,alive
triggerall = root,stateno != [120, 155]
trigger1 = !numexplod(2)
anim = 9002 + 4 * (teamside = 2)
ID = 2
postype = left
pos = 1 + 318 * (teamside = 2), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 23)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -1
[state 6000, Remove Hurt Face]
type = removeexplod
trigger1 = numexplod(2)
trigger1 = root,movetype != H || !root,alive
ID = 2

[state 6000, Lifebar KO'ed Face]
type = explod
triggerall = selfanimexist(9003 + 4 * (teamside = 2))
triggerall = !root,alive
trigger1 = !numexplod(3)
anim = 9003 + 4 * (teamside = 2)
ID = 3
postype = left
pos = 1 + 318 * (teamside = 2), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 23)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -1
[state 6000, Remove KO'ed Face]
type = removeexplod
trigger1 = numexplod(3)
trigger1 = root,alive
ID = 3

[state 6000, Lifebar Text]
type = null ; explod
trigger1 = selfanimexist(9010)
trigger1 = !numexplod(4)
anim = 9010
ID = 4
postype = left
pos = 1 + (318 - var(0)) * (teamside = 2), 67
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -1
ownpal = 1

;========================< Character Shadows >========================

[state 6000, Characters' Shadows]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(5)
anim = F0
ID = 5
postype = left
pos = ceil(root,screenpos x), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (root,screenpos y - root,pos y))
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -5
ownpal = 1

[state 6000, Shadow Default Size]
type = null
trigger1 = fvar(1) := cond(root,fvar(0) / cond(!abs((root,pos y) / 32.0), 1.0, abs((root,pos y) / 32.0)) > root,fvar(0), root,fvar(0), root,fvar(0) / cond(!abs((root,pos y) / 32.0), 1.0, abs((root,pos y) / 32.0))) || 1
trigger1 = fvar(2) := cond(root,fvar(0) / cond(!abs((root,pos y) / 32.0), 1.0, abs((root,pos y) / 32.0)) > root,fvar(0), root,fvar(0), root,fvar(0) / cond(!abs((root,pos y) / 32.0), 1.0, abs((root,pos y) / 32.0)))

[state 6000, Modify Shadow]
type = modifyexplod
trigger1 = numexplod(5)
trigger1 = var(1) := root,var(1) || 1
postype = left
pos = ceil(screenpos x + var(1) * facing), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (screenpos y - pos y))
facing = facing
scale = fvar(1), cond(root,pos y, fvar(2), 2.0)
trans = addalpha
alpha = 256, 200
ID = 5

;========================< Full Power >========================

[state 6000, Remove Full Power Animation]
type = removeexplod
triggerall = numexplod(6)
trigger1 = root,power != var(2)
trigger2 = root,life != var(3)
trigger3 = root,stateno = 900
ID = 6

[state 6000, Full Power Animation]
type =  explod
trigger1 = !numexplod(6)
trigger1 = root,power >= root,powermax * 0.5
; anim = F6000 + (teamside = 2) + 5 * (!sysvar(2) && root,power >= root,powermax && root,life = [1, root,lifemax * sysfvar(0)]) + 10 * (root,power < root,powermax)
anim = F6000 + (teamside = 2) + 10 * (root,power < root,powermax)
ID = 6
postype = left
pos = cond(teamside = 1, 70, 176), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 44)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = -1
ownpal = 0

[state 6000, Remove Full Power Animation]
type = removeexplod
trigger1 = numexplod(6)
trigger1 = root,power < root,powermax * 0.5
ID = 6

;========================< 25% Life >========================

[state 6000, Remove Less Than 25% Life Animation]
type = null ; removeexplod
triggerall = numexplod(7)
trigger1 = root,power != var(2)
trigger2 = root,life != var(3)
trigger3 = root,stateno = 900
ID = 7

[state 6000, Less Than 25% Life Animation]
type = null ; explod
trigger1 = !numexplod(7)
trigger1 = root,life = [1, root,lifemax]
trigger1 = !sysvar(2) && root,power >= root,powermax
anim = F6015 + (teamside = 2) ; + 2 * (!sysvar(2) && root,power >= root,powermax)
ID = 7
postype = left
pos = cond(teamside = 1, 35, 285), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 32)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
scale = cond(teamside = 1, 0.0, 1.0) + root,life * (222.0 / root,lifemax), 1.0
sprpriority = -4
ownpal = 0

[state 6000, Remove Less Than 25% Life Animation]
type = null ; removeexplod
trigger1 = numexplod(7)
trigger1 = root,life != [1, root,lifemax * sysfvar(0)]
ID = 7

;========================< Tough Skill Stocks >========================

[state 6000, Synchronize Tough Skill Bars]
type = varadd
triggerall = !var(10) && !var(11) && !var(12)
triggerall = root,stateno != [900, 999]
trigger1 = var(52) = (sysvar(2) / 3 * 1)
trigger1 = cond(var(8) = var(9), var(10) := 1, 0)
trigger2 = var(52) = (sysvar(2) / 3 * 2)
trigger2 = cond(var(8) = var(9), var(11) := 1, 0)
trigger3 = var(52) = (sysvar(2) / 3 * 3)
trigger3 = cond(var(8) = var(9), var(12) := 1, 0)
var(8) = 1

[state 6000, Remove Tough Skill Stock 1]
type = removeexplod
trigger1 = var(5) || var(8) != var(9)
ID = 8
[state 6000, Scale Tough Skill Stock 1]
type = null
trigger1 = sysvar(2)
trigger1 = fvar(4) := sysvar(2) / 3.0 || 1
trigger1 = fvar(5) := var(52) || 1 ; - cond(var(52) >= 0, 0, var(52)) || 1
trigger1 = fvar(6) := 1.055555555555556 * fvar(5) / fvar(4)
[state 6000, Tough Skill Stock 1]
type = explod
triggerall = !numexplod(8)
trigger1 = sysvar(2) && var(52)
anim = F6020 + (teamside = 2) + 2 * (var(52) < sysvar(2) / 3.0 * 1.0)
ID = 8
postype = left
pos = cond(teamside = 1, 35, 285), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
scale = cond(var(52) >= fvar(4), 1.055555555555556, cond(var(52) >= 0, fvar(6), 0)), 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
sprpriority = -1
ownpal = 0

[state 6000, Remove Tough Skill Stock 2]
type = removeexplod
trigger1 = var(6) || var(8) != var(9)
ID = 9
[state 6000, Scale Tough Skill Stock 2]
type = null
trigger1 = sysvar(2)
trigger1 = fvar(7) := sysvar(2) / 3.0 || 1
trigger1 = fvar(8) := var(52) - cond(var(52) >= fvar(7), fvar(7), var(52)) || 1
trigger1 = fvar(9) := 1.0 * fvar(8) / fvar(7)
[state 6000, Tough Skill Stock 2]
type = explod
triggerall = !numexplod(9)
trigger1 = sysvar(2) && var(52)
anim = F6020 + (teamside = 2) + 2 * (var(52) < sysvar(2) / 3.0 * 2.0)
ID = 9
postype = left
pos = cond(teamside = 1, 55, 265), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
scale = cond(var(52) >= fvar(7) * 2.0, 1.0, cond(var(52) >= fvar(7), fvar(9), 0)), 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
sprpriority = -1
ownpal = 0

[state 6000, Remove Tough Skill Stock 3]
type = removeexplod
trigger1 = var(7) || var(8) != var(9)
ID = 10
[state 6000, Scale Tough Skill Stock 3]
type = null
trigger1 = sysvar(2)
trigger1 = fvar(10) := sysvar(2) / 3.0 || 1
trigger1 = fvar(11) := var(52) - cond(var(52) >= fvar(10) * 2.0, fvar(10) * 2.0, var(52)) || 1
trigger1 = fvar(12) := 1.0 * fvar(11) / fvar(10)
[state 6000, Tough Skill Stock 3]
type = explod
triggerall = !numexplod(10)
trigger1 = sysvar(2) && var(52)
anim = F6020 + (teamside = 2) + 2 * (var(52) < sysvar(2) / 3.0 * 3.0)
ID = 10
postype = left
pos = cond(teamside = 1, 74, 246), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
scale = cond(var(52) >= fvar(10) * 2.0, fvar(12), 0), 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
sprpriority = -1
ownpal = 0

[state 6000, Removal Limiter]
type = null
trigger1 = var(5) := var(52) < (sysvar(2) / 3 * 1) || 1
trigger1 = var(6) := var(52) < (sysvar(2) / 3 * 2) || 1
trigger1 = var(7) := var(52) < (sysvar(2) / 3 * 3) || 1

[state 6000, Synchronize Tough Skill Bars]
type = null
trigger1 = cond(var(8) != var(9), var(9) := var(8), 0) || 1
trigger1 = cond(var(10) && var(52) != (sysvar(2) / 3 * 1), var(10) := 0, 0) || 1
trigger1 = cond(var(11) && var(52) != (sysvar(2) / 3 * 2), var(11) := 0, 0) || 1
trigger1 = cond(var(12) && var(52)  < (sysvar(2) / 3 * 3), var(12) := 0, 0) || 1

;========================< Death Sound >========================

[state 6000, Death Sound]
type = playsnd
triggerall = !var(4) && !root,alive
trigger1 = !root,gethitvar(hitshaketime) && !root,gethitvar(isbound)
trigger1 = cond(root,statetype = L, root,time >= 3, 1)
value = 5150, 0
channel = 0

[state 6000, Death Sound]
type = varset
triggerall = !root,alive
trigger1 = !root,gethitvar(hitshaketime) && !root,gethitvar(isbound)
trigger1 = cond(root,statetype = L, root,time >= 3, 1)
var(4) = 1

[state 6000, Synchronize Tough Skill Bars]
type = varset
trigger1 = var(8) > 65536
var(8) = 0

;========================< Change Detection Variables >========================

[state 6000, Detect Power Change]
type = varset
trigger1 = 1
var(2) = root,power

[state 6000, Detect Life Change]
type = varset
trigger1 = 1
var(3) = root,life

[state 6000, Detect Mortality]
type = varset
trigger1 = var(4)
trigger1 = root,alive
var(4) = 0

;========================< Status Display >========================

[state 6000, Display System]
type = displaytoclipboard
trigger1 = 1
text = "Char = %d, Shadow = %d/%f \n"
params = var(0), var(1), fvar(0)

[state 6000, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;========================< Winner Display >========================
[state 6000, Winner Name]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
triggerall = roundstate=4
trigger1 = root,stateno=180
trigger1 = !NumExplod(9021)
anim = 9021 
id = 9021
postype = left
;pos = 156+16*(root,name = "Madiesha"), 62*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth)) ;100,70
pos = 158+16*(root,name = "Madiesha"), 62*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth)) ;100,70
facing = 1
scale = 1,1
bindtime = -1
removetime = 120 ;-2
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
persistent = 0

[state 6000, WINS text]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
triggerall = roundstate=4
trigger1 = root,stateno=180
trigger1 = !NumExplod(9020)
anim = F9020 
id = 9020
postype = left
;pos = 100, 90*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth)) ;100,70
;pos = 158+16*(root,name = "Madiesha"), 62*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth)) ;100,70
pos = 164+16*(root,name = "Madiesha"), 62*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth)) ;100,70
facing = 1
scale = 1,1
bindtime = -1
removetime = 120 ;-2
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
persistent = 0

;=========================================================================
; Small Score System
;=========================================================================
[Statedef 6001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6001, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6001, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -8

[state 6001, Turn]
type = turn
trigger1 = facing != root,facing

;========================< Increase Score on Hit >========================

[state 6001, Increase Score]
type = parentvaradd
triggerall = stagevar(info.name) != "Bonus Stage"
triggerall = !var(59) && root,var(59)
trigger1 = root,movehit = 1 || root,var(10) != -1
var(2) = 100 * root,var(5) 

;========================< Increase Score on Bonus win >========================

[state 6001, Increase Score]
type = parentvaradd
triggerall = stagevar(info.name) = "Bonus Stage"
triggerall = enemy,name = "Bonus Stage"
trigger1 = enemy,var(43)=1 ;Human win
var(2) = 9900 + 100 * ceil(enemy,var(44)/60.0)
persistent = 0 

;========================< Calculate Score >========================
 
[state 6001, Speed to Reach Actual Score]
type = varset
trigger1 = roundstate < 4
trigger1 = var(2) != root,var(2)
fvar(1) = (root,var(2) - fvar(3)) / 1.0 ; (60.0 - 59.0 * (time < 16))

[state 6001, Incrementally Increase Score]
type = varadd
trigger1 = roundstate < 4 && fvar(3) != root,var(2)
trigger2 = roundstate >= 4 && fvar(3) != root,var(3)
fvar(3) = fvar(1)

[state 6001, Incrementally Increase Score]
type = varset
trigger1 = numhelper(6003)
trigger1 = helper(6003),time >= 80
fvar(3) = helper(6003),var(0)

;========================< Prevent Score from Going out of Bounds >========================

[state 6001, Limit Score]
type = parentvarset
trigger1 = root,var(2) != [0, 99999999] ; 2147483647 - highest number possible
var(2) = cond(root,var(2) > 99999999, 99999999, 0)

[state 6001, Limit Score]
type = varset
trigger1 = fvar(3) > root,var(2)
fvar(3) = root,var(2)

;========================< Detect Place Values >========================

[state 6001, Place Values]
type = null
trigger1 = var(04) := floor(abs(fvar(3)) / 1) % 10 || 1
trigger1 = var(05) := floor(abs(fvar(3)) / 10) % 10 || 1
trigger1 = var(06) := floor(abs(fvar(3)) / 100) % 10 || 1
trigger1 = var(07) := floor(abs(fvar(3)) / 1000) % 10 || 1
trigger1 = var(08) := floor(abs(fvar(3)) / 10000) % 10 || 1
trigger1 = var(09) := floor(abs(fvar(3)) / 100000) % 10 || 1
trigger1 = var(10) := floor(abs(fvar(3)) / 1000000) % 10 || 1
trigger1 = var(11) := floor(abs(fvar(3)) / 10000000) % 10 || 1
trigger1 = var(12) := floor(abs(fvar(3)) / 100000000) % 10 || 1
trigger1 = var(13) := floor(abs(fvar(3)) / 1000000000) % 10 || 1

;========================< Display Small Score on Screen >========================

[state 6001, Reset]
type = removeexplod
; triggerall = roundstate < 4 
trigger1 = !time || root,var(2) || fvar(3)

[state 6001, Ones]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(6)
anim = F50 + var(4)
ID = 6
postype = left
pos = cond(teamside = 1, 94, 262) - 0, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Tens]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(7) && fvar(3) >= 10
anim = F50 + var(5)
ID = 7
postype = left
pos = cond(teamside = 1, 94, 262) - 5, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Hundreds]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(8) && fvar(3) >= 100
anim = F50 + var(6)
ID = 8
postype = left
pos = cond(teamside = 1, 94, 262) - 10, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(9) && fvar(3) >= 1000
anim = F50 + var(7)
ID = 9
postype = left
pos = cond(teamside = 1, 94, 262) - 15, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Ten Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(10) && fvar(3) >= 10000
anim = F50 + var(8)
ID = 10
postype = left
pos = cond(teamside = 1, 94, 262) - 20, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Hundred Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(11) && fvar(3) >= 100000
anim = F50 + var(9)
ID = 11
postype = left
pos = cond(teamside = 1, 94, 262) - 25, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(12) && fvar(3) >= 1000000
anim = F50 + var(10)
ID = 12
postype = left
pos = cond(teamside = 1, 94, 262) - 30, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Ten Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(13) && fvar(3) >= 10000000
anim = F50 + var(11)
ID = 13
postype = left
pos = cond(teamside = 1, 94, 262) - 35, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Hundred Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(14) && fvar(3) >= 100000000
anim = F50 + var(12)
ID = 14
postype = left
pos = cond(teamside = 1, 94, 262) - 40, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

[state 6001, Billions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
; trigger1 = roundstate < 4
trigger1 = !time || root,var(2) || fvar(3)
trigger1 = !numexplod(15) && fvar(3) >= 1000000000
anim = F50 + var(13)
ID = 15
postype = left
pos = cond(teamside = 1, 94, 262) - 45, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 24)
facing = 1
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = -1
sprpriority = 0

;========================< Sounds and Special Effects >========================

[state 6001, Detect Score Change]
type = varset
trigger1 = 1
var(2) = root,var(2)

[state 6001, Reset Controller Limiter]
type = varset
trigger1 = 1
var(59) = 0

[state 6001, Controller Limiter]
type = varset
trigger1 = !var(59) && (root,movehit = 1 || root,var(10) != -1)
var(59) = 1

;========================< Reset Score System >========================

[state 6001, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647
trigger2 = root,ailevel

[state 6001, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647
trigger2 = root,ailevel

;========================< Status Display >========================

[state 6001, Display System]
type = displaytoclipboard
trigger1 = 1
text = "Actual Score = %d, Prev Score = %d, Increment Score = %f/%f  \n"
params = root,var(2), root,var(3), fvar(3), fvar(1)

;=========================================================================
; Dizzy Bar
;=========================================================================
[Statedef 6002]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6002, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6002, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -12 

;========================< Initialize Dizzy Bar >========================

[state 6002, Dizzy Bar Length]
type = varset
trigger1 = root,fvar(15)
fvar(0) = cond(root,stateno != 5300, root,fvar(14), root,fvar(15)) * (64.0 / root,fvar(15)) * 1.0625 
; last number is the raw size of the image bar / 64.0

[state 6002, Dizzy Bar Flag]
type = varset
trigger1 = 1
var(0) = cond(root,stateno != 5300, root,var(4), 1)

;========================< Display Dizzy Bar on Screen >========================

[state 6002, Reset]
type = removeexplod
trigger1 = 1

[state 6002, Dizzy Bar Canvas]
type = explod
trigger1 = !numexplod(0)
anim = F60 + (teamside = 2)
ID = 0
postype = left
pos = cond(teamside = 1, 35, 175), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 43)
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.0, 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
sprpriority = 0

[state 6002, Dizzy Bar Blinker]
type = explod
trigger1 = !numexplod(2) && var(0)
anim = F64 + (teamside = 2)
ID = 2
postype = left
pos = cond(teamside = 1, 69, 251), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 43)
facing = 1 ; -1 + 2 * (teamside = 2)
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.0 * fvar(0), 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
sprpriority = 0

[state 6002, Make Dizzy Bar Blink]
type = removeexplod
trigger1 = numexplod(2)
trigger1 = var(0) && cond(gametime % 4 <= 1, 1, 0) || !var(0)
ID = 2

[state 6002, Dizzy Bar Meter]
type = explod
trigger1 = !numexplod(1) && fvar(0)
anim = F62 + (teamside = 2)
ID = 1
postype = left
pos = cond(teamside = 1, 69, 251), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 43)
facing = 1 ; -1 + 2 * (teamside = 2)
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.0 * fvar(0), 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
sprpriority = 0

;========================< Reset Dizzy Bar >========================

[state 6002, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6002, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;========================< Status Display >========================

[state 6002, Display System]
type = displaytoclipboard
trigger1 = 1
text = "Dizzy: Points = %f, Limit = %f, Flag = %d  \n"
params = root,fvar(14), root,fvar(15), root,var(4)
 
;==================================================================================================================================================
; Win Score
;==================================================================================================================================================
[Statedef 6003]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536
 
;========================< Essential State Controllers >========================
 
[state 6003, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999
 
[state 6003, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, -16
 
[state 6003, Background Effect]
type = null ; bgpalfx
trigger1 = 1
time = 1
mul = 128, 128, 128
add = 0, 0, 0
color = 256
invertall = 0

[state 6003, Press Start]
type = null
trigger1 = root,command = "start"
trigger1 = var(0) := root,var(2) || 1
trigger1 = var(3) := 0 || var(4) := 0 || var(6) := 88
persistent = 0

;========================< Initialize Score >========================

;[state 6003, Calculate Score Bonus] ;display screen values ; Will not impact the small score system
;type = null
;triggerall = !time
;trigger1 = var(1) := 100 * (100 - cond(root,sysfvar(1) > 99, 99, floor(root,sysfvar(1)))) ;time calculation
;trigger1 = var(2) := 100 * root,life || 1 ;blood life calculation
;trigger1 = var(3) := var(1) || 1
;trigger1 = var(4) := var(2) || 1
;trigger1 = var(0) := var(5) := root,var(3) ;get previous scrore from small score system

[state 6003, Calculate Score Bonus] ;display screen values ; Will not impact the small score system
type = null
triggerall = !time
trigger1 = var(1) := Cond((stagevar(info.name)="Bonus Stage"=1),Cond((enemy,name= "Bonus Stage"=1&&enemy,var(43)=1),100 * ceil(enemy,var(44)/60.0),0),(100 * (100 - cond(root,sysfvar(1) > 99, 99, floor(root,sysfvar(1)))))) ;time calculation
trigger1 = var(2) := Cond((stagevar(info.name)="Bonus Stage"=1),Cond((enemy,name= "Bonus Stage"=1&&enemy,var(43)=1),9900,0),(100 * root,life)) || 1 ;blood life calculation
trigger1 = var(3) := var(1) || 1
trigger1 = var(4) := var(2) || 1
;trigger1 = var(0) := var(5) := root,var(3) ;get previous scrore from small score system
trigger1 = var(0) := var(5) := (root,var(3)-Cond(stagevar(info.name)="Bonus Stage"=1,var(1)+var(2),0)) ;get previous scrore from small score system

[State 0, ParentVarSet] ;hack, fails if cancelling outro
type = null;ParentVarSet
triggerall = stagevar(info.name)="Bonus Stage"
trigger1 = !time
var(2)=root,var(2)+var(2)+var(1)
;ignorehitpause = 
persistent = 0 

;========================< Calculate Score >========================

[state 6003, Increase Score No Bonus] ;Total Score
type = varset
;triggerall = stagevar(info.name)!="Bonus Stage"
trigger1 = var(3) >= 0 || var(4) >= 0
trigger1 = time >= 80 && time % 2 = 0
var(0) = var(5) + (var(1) - var(3)) + (var(2) - var(4))

;[state 6003, Increase Score On Bonus] ;Total Score
;type = null;varset
;triggerall = stagevar(info.name)="Bonus Stage"
;trigger1 = var(3) >= 0 || var(4) >= 0
;trigger1 = time >= 80 && time % 2 = 0
;var(0) = var(5) + (var(1) - var(3)) + (var(2) - var(4)) -var(1)-var(2)

[state 6003, Limit Win Score]
type = varset
trigger1 = var(0) != [0, 99999999] ; 2147483647 - highest number possible
var(0) = cond(var(0) > 99999999, 99999999, 0)

[state 6003, Reset]
type = removeexplod
trigger1 = 1
 
;========================< Display Total 3 >========================

[state 6003, Overlay]
type = explod
trigger1 = !numexplod(6035)
anim = F6035
ID = 6035
postype = left
pos = 0, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 0)
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
trans = addalpha
alpha = 256, 128

[state 6003, Total]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(0)
anim = F80
ID = 0
postype = left
pos = 36 - 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (137 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0

[state 6003, Ones]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(1)
anim = F70 + floor(var(0) / 1) % 10
ID = 1
postype = left
pos = 268 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Tens]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(2) && var(0) >= 10
anim = F70 + floor(var(0) / 10) % 10
ID = 2
postype = left
pos = 247 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundreds]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(3) && var(0) >= 100
anim = F70 + floor(var(0) / 100) % 10
ID = 3
postype = left
pos = 228 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(4) && var(0) >= 1000
anim = F70 + floor(var(0) / 1000) % 10
ID = 4
postype = left
pos = 209 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(5) && var(0) >= 10000
anim = F70 + floor(var(0) / 10000) % 10
ID = 5
postype = left
pos = 190 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundred Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(6) && var(0) >= 100000
anim = F70 + floor(var(0) / 100000) % 10
ID = 6
postype = left
pos = 171 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(7) && var(0) >= 1000000
anim = F70 + floor(var(0) / 1000000) % 10
ID = 7
postype = left
pos = 152 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(8) && var(0) >= 10000000
anim = F70 + floor(var(0) / 10000000) % 10
ID = 8
postype = left
pos = 133 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
;========================< Display Time 1 >========================

[state 6003, Time]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(10)
anim = F81
ID = 10
postype = left
pos = 36 - 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (83 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0

[state 6003, Ones]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(11)
anim = F70 + floor(var(3) / 1) % 10
ID = 11
postype = left
pos = 268 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Tens]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(12) && var(3) >= 10
anim = F70 + floor(var(3) / 10) % 10
ID = 12
postype = left
pos = 247 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundreds]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(13) && var(3) >= 100
anim = F70 + floor(var(3) / 100) % 10
ID = 13
postype = left
pos = 228 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(14) && var(3) >= 1000
anim = F70 + floor(var(3) / 1000) % 10
ID = 14
postype = left
pos = 209 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(15) && var(3) >= 10000
anim = F70 + floor(var(3) / 10000) % 10
ID = 15
postype = left
pos = 190 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundred Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(16) && var(3) >= 100000
anim = F70 + floor(var(3) / 100000) % 10
ID = 16
postype = left
pos = 171 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(17) && var(3) >= 1000000
anim = F70 + floor(var(3) / 1000000) % 10
ID = 17
postype = left
pos = 152 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(18) && var(3) >= 10000000
anim = F70 + floor(var(3) / 10000000) % 10
ID = 18
postype = left
pos = 133 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (86 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
;========================< Display Blood 2 >========================

[state 6003, Blood]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(20)
anim = F82
ID = 20
postype = left
pos = 36 - 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (110 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0

[state 6003, Ones]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(21)
anim = F70 + floor(var(4) / 1) % 10
ID = 21
postype = left
pos = 268 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Tens]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(22) && var(4) >= 10
anim = F70 + floor(var(4) / 10) % 10
ID = 22
postype = left
pos = 247 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundreds]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(23) && var(4) >= 100
anim = F70 + floor(var(4) / 100) % 10
ID = 23
postype = left
pos = 228 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(24) && var(4) >= 1000
anim = F70 + floor(var(4) / 1000) % 10
ID = 24
postype = left
pos = 209 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(25) && var(4) >= 10000
anim = F70 + floor(var(4) / 10000) % 10
ID = 25
postype = left
pos = 190 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundred Thousands]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(26) && var(4) >= 100000
anim = F70 + floor(var(4) / 100000) % 10
ID = 26
postype = left
pos = 171 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(27) && var(4) >= 1000000
anim = F70 + floor(var(4) / 1000000) % 10
ID = 27
postype = left
pos = 152 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Millions]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(28) && var(4) >= 10000000
anim = F70 + floor(var(4) / 10000000) % 10
ID = 28
postype = left
pos = 133 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (113 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0

;========================< Display Bonus Score >========================

[state 6003, B.Score]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(4903)
anim = F4903
ID = 4903
postype = left
;pos = 36 - 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (110 + 3))
pos = 81 - 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (110 + 4))
facing = 1
scale = 2,2
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0

[state 6003, Ones]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(1)
anim = F70 + floor(var(0) / 1) % 10
ID = 1
postype = left
;pos = 268 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (140 + 3))
pos = 254 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Tens]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(2) && var(0) >= 10
anim = F70 + floor(var(0) / 10) % 10
ID = 2
postype = left
pos = 233 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundreds]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(3) && var(0) >= 100
anim = F70 + floor(var(0) / 100) % 10
ID = 3
postype = left
pos = 214 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Thousands]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(4) && var(0) >= 1000
anim = F70 + floor(var(0) / 1000) % 10
ID = 4
postype = left
pos = 195 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Thousands]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(5) && var(0) >= 10000
anim = F70 + floor(var(0) / 10000) % 10
ID = 5
postype = left
pos = 176 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Hundred Thousands]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(6) && var(0) >= 100000
anim = F70 + floor(var(0) / 100000) % 10
ID = 6
postype = left
pos = 157 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Millions]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(7) && var(0) >= 1000000
anim = F70 + floor(var(0) / 1000000) % 10
ID = 7
postype = left
pos = 138 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
[state 6003, Ten Millions]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numexplod(8) && var(0) >= 10000000
anim = F70 + floor(var(0) / 10000000) % 10
ID = 8
postype = left
pos = 119 + 4, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (91 + 3))
facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
 
;========================< Sounds and Special Effects >========================

[state 6003, Increase Score Sound]
type = playsnd
trigger1 = var(3) || var(4)
trigger1 = time >= 80 && time % 2 = 0
value = F6003, 0
volumescale = 50

[state 6003, Transfer Score from Time/Blood to Total]
type = null
triggerall = var(3) >= 0 || var(4) >= 0
triggerall = time >= 80 && time % 2 = 0
trigger1 = var(3) := var(3) - cond(var(3), 100, 0) || var(4) := var(4) - cond(var(4), 100, 0)

[state 6003, Score Done Calculating]
type = varadd
trigger1 = !var(3) && !var(4)
var(6) = 1

[state 6003, Still Calculating Score]
type = assertspecial
trigger1 = var(6) < 176
flag = roundnotover

;========================< Reset Score System >========================
 
[state 6003, Destroy Explod]
type = null ; removeexplod
trigger1 = roundstate < 4
 
[state 6003, Destroy Helper]
type = null ; destroyself
trigger1 = roundstate < 4

 
;========================< Debug Information >========================
 
[state 6003, Display System]
type = displaytoclipboard
trigger1 = 1
text = "Bonus = %d / Time=%d / Blood=%d / Timedisp=%d / Blooddisp=%d \n"
params = var(0), var(1), var(2), var(3), var(4)
 
;=========================================================================
; Sound Helper
;=========================================================================
[Statedef 6004]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6004, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6004, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -20

[state 6004, Turn]
type = turn
trigger1 = facing != root,facing

;========================< Calculate Time >========================

[state 6004, Time in Roundstate 4]
type = varadd
trigger1 = roundstate = 4
var(0) = 1

;========================< System Sounds >========================

[state 6004, Time Over]
type = playsnd
trigger1 = var(0) >= 60
trigger1 = root,life && p2life
value = F6000, 0
volumescale = 100
persistent = 0

[state 6004, Draw]
type = playsnd
trigger1 = var(0) >= 136
trigger1 = root,life = p2life
trigger1 = root,life && p2life
value = F6000, 1
volumescale = 100
persistent = 0

[state 6004, Double KO]
type = playsnd
trigger1 = var(0) >= 20
trigger1 = drawgame
trigger1 = root,life <= 0 && p2life <= 0
value = F6000, 2
volumescale = 100
persistent = 0

;========================< Reset Score System >========================

[state 6004, Destroy Helper]
type = destroyself
trigger1 = roundstate < 3

;=========================================================================
; Stage Prop - Leaf
;=========================================================================
[Statedef 6005]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 6005, Duration of Helper]
type = varadd
trigger1 = parent,ishelper
var(10) = 1

[state 6005, Reset Duration of Helper]
type = varset
trigger1 = parent,ishelper
trigger1 = var(10) > 23
var(10) = 0

[state 6005, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6005, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 6005, Invulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 6005, Set Position]
type = posset
triggerall = !parent,ishelper
trigger1 = !time
x = 192.0
y = 0.0

[state 6005, Leaf Helper]
type = helper
triggerall = !parent,ishelper
trigger1 = time % 60 = 0 && random < 500
name = "Leaf Helper"
ID = 0
stateno = 6005
postype = P1
pos = 0, 0
facing = cond(random < 500, -1, 1)
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

;========================< Leaf Falling >========================

[state 6005, Randomize Position]
type = posadd
triggerall = parent,ishelper
trigger1 = !time
x = -80.0 + random % 120
y = -gameheight

[state 6005, Set Velocity]
type = velset
triggerall = parent,ishelper
trigger1 = !time
y = 1.0 + random % 10 * 0.1

[state 6005, Stage Prop - Leaf]
type = explod
triggerall = parent,ishelper
trigger1 = !time
anim = F1 ; (1 + random % 4)
ID = 1
postype = P1
pos = 0, 0
facing = 1 ; cond(random < 500, -1, 1)
vfacing = 1 ; cond(random < 500, -1, 1)
bindtime = -1
removetime = -1
scale = 1.0, 1.0
sprpriority = -5

; 1.1 Code

;[state 6005, Set Velocity]
;type = velset
;trigger1 = parent,ishelper
;trigger1 = cond(!fvar(10), fvar(10) := 0.1 * (5 + random % 5), 0) || 1
;x = fvar(10) * cos(time * pi / 64)

;[state 6005, Add Velocity]
;type = veladd
;triggerall = parent,ishelper
;triggerall = cond(!fvar(11), fvar(11) := 0.0025 * (1 + random % 10), 0) || 1
;trigger1 = !time || vel y
;y = fvar(11)

;[state 6005, Stage Prop - Leaf]
;type = explod
;triggerall = parent,ishelper
;trigger1 = !time
;anim = F1
;id = 1
;space = stage
;pos = 0, 0
;facing = cond(random < 500, -1, 1)
;vfacing = 1 ; cond(random < 500, -1, 1)
;bindid = -1
;bindtime = -1
;sprpriority = -5

;[state 6005, Modify Stage Prop - Leaf]
;type = modifyexplod
;trigger1 = parent,ishelper
;trigger1 = numexplod(1) && vel x
;id = 1
;angle = fvar(12) := -atan(vel y / vel x) * (180 / pi) + 180 * (vel x < 0)

[state 6005, Random Position for End State]
type = varset
triggerall = parent,ishelper
trigger1 = !time
var(11) = 0 - random % 32

[state 6005, End State]
type = changestate
triggerall = parent,ishelper
trigger1 = pos y + vel y > var(11)
value = 6006

;=========================================================================
; Stage Prop - Leaf Land
;=========================================================================
[Statedef 6006]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 6006, Duration of Helper]
type = varadd
trigger1 = parent,ishelper
var(10) = 1

[state 6006, Reset Duration of Helper]
type = varset
trigger1 = parent,ishelper
trigger1 = var(10) > 23
var(10) = 0

[state 6006, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6006, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 6006, Invulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 6006, Destroy Explod]
type = removeexplod
trigger1 = !time

[state 6006, Stage Prop - Leaf Land]
type = explod
trigger1 = !time
anim = F (5 + floor(var(10) / 6))
ID = 1
postype = P1
pos = 0, 0
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.0, 1.0
sprpriority = -5

;1.1 code

;[state 6006, Modify Stage Prop - Leaf]
;type = modifyexplod
;trigger1 = numexplod(1)
;id = 1
;angle = fvar(12) - 45.0 

[state 6006, Destroy Explod]
type = removeexplod
trigger1 = time >= 382

[state 6006, Destroy Helper]
type = destroyself
trigger1 = time >= 382

;=========================================================================
; Stage Prop - Cula
;=========================================================================
[Statedef 6010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 6010, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6010, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 6010, Invulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 6010, Set Position]
type = posset
trigger1 = !time
x = 0.0
y = 0.0

[state 6010, Prevent Layering]
type = removeexplod
trigger1 = !matchover
trigger1 = time % 160 = 0

[state 6010, Stage Prop - Cula - Default]
type = explod
triggerall = !matchover
trigger1 = !time || time % 320 = 0
anim = F10
id = 10
postype = P1
pos = -256, -206
facing = 1
removetime = -2
sprpriority = -65536

[state 6010, Stage Prop - Cula - Random]
type = explod
triggerall = !matchover && roundstate = 2
trigger1 = time % 320 != 0
trigger1 = time % 160 = 0
anim = F11 + random % 3
id = 11
postype = P1
pos = -256, -206
facing = 1
removetime = -2
sprpriority = -65535

[state 6010, Stage Prop - Cula - End Match]
type = explod
trigger1 = matchover ; && numenemy
; trigger1 = root,stateno = 180 || enemy,stateno = 180
anim = F14 + lose
id = 14
postype = P1
pos = -256, -206
facing = 1
removetime = -1
sprpriority = -65534
persistent = 0

[state 6030, Cula Overlay]
type = null ; explod
triggerall = numhelper(6030)
trigger1 = !numexplod(6036)
anim = F6036
ID = 6036
postype = P1
pos = -256, -206
facing = 1
bindtime = -1
removetime = -1
sprpriority = -65533
supermovetime = -1
pausemovetime = -1

[state 6010, Cula Overlay Fade]
type = null
triggerall = numhelper(6030) || cond(numenemy, enemy,numhelper(6030), 0)
triggerall = var(0) := var(0) + 1 || var(1) := 40
trigger1 = fvar(0) := (256.0 / (var(1) * 0.5))
[state 6010, Cula Overlay Fade]
type = null ; modifyexplod
triggerall = numhelper(6030) || cond(numenemy, enemy,numhelper(6030), 0)
trigger1 = numexplod(6036)
trans = addalpha
alpha = 256, cond(var(0) <= ceil(var(1) * 0.5), floor(256 - fvar(0) * var(0)), ceil(fvar(0) * (var(0) - var(1) * 0.5)))
ID = 6036

[state 6010, Background Effect]
type = removeexplod
trigger1 = numhelper(6030) || cond(numenemy, enemy,numhelper(6030), 0)
; trigger1 = !numhelper(6030)
; trigger1 = var(0) := 0 || var(1) := 0 || fvar(0) := 0 || 1
; ID = 6036	

;=========================================================================
; Width Helper
;=========================================================================
[Statedef 6020]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -5

[state 6020, Change Animation]
type = changeanim
trigger1 = root,movetype != H && root,stateno != [5000, 5999]
trigger1 = !root,gethitvar(isbound) && !root,gethitvar(chainid)
value = root,anim
elem = root,animelemno(0)

[state 6020, Special Effect]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[state 6020, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0

[state 6020, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 6020, Invulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 6020, Set State Type]
type = statetypeset
trigger1 = root,statetype = S
statetype = S

[state 6020, Set State Type]
type = statetypeset
trigger1 = root,statetype = C
statetype = C

[state 6020, Set State Type]
type = statetypeset
trigger1 = root,statetype = A
statetype = A

[state 6020, Turn]
type= turn
trigger1 = facing != root,facing

[state 6020, Solidity]
type = playerpush
trigger1 = 1
value = 1

[state 6020, Width]
type = varset
trigger1 = 1
var(0) = 0

; ???
[state 6020, Width]
type = width
trigger1 = name = "???" && root,anim = -1
trigger1 = root,animelemno(0) = -1
player = var(0) := 40, 0

[state 6020, Destroy Helper]
type = destroyself
trigger1 = !var(0) || root,movetype = H || root,stateno = [5000, 5999]
trigger2 = root,gethitvar(isbound) || root,gethitvar(chainid) = 5900

;=========================================================================
; Dust
;=========================================================================
[Statedef 6025]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6025, Parent Bind]
type = varset
trigger1 = !time
fvar(0) = parentdist x + 0 * (fvar(1) := parentdist y)

[state 6025, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6025, Parent Bind]
type = bindtoparent
trigger1 = !time
pos = -fvar(0), -fvar(1)

[state 6025, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

;========================< Hit Ground Dust >========================

[state 6025, Hit Ground Dust]
type = explod
trigger1 = ishelper(60250)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = 0, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.0, -1.5 - (random % 10 / 10)
random = 64, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Skid Dust >========================

[state 6025, Skid Dust]
type = explod
trigger1 = ishelper(60251)
trigger1 = !time
anim = F100
ID = 100
postype = P1
pos = 0, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = -1.5 - (random % 10 / 10), -1.5 - (random % 10 / 10)
random = 16, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Wind Dust >========================

[state 6025, Wind Dust]
type = explod
trigger1 = ishelper(60252)
trigger1 = time % 2 = 0
trigger1 = time < 16
anim = F100
ID = 100
postype = P1
pos = -2 * time, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = -2.0 + (random % 10 / 10), -1.5 - (random % 10 / 10)
random = 16, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Wind Dust 2 >========================

[state 6025, Wind Dust 2]
type = explod
trigger1 = ishelper(60253)
trigger1 = time % 2 = 0
trigger1 = time < 6
anim = F100
ID = 100
postype = P1
pos = -2 * time, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 2.0 + (random % 10 / 10), -0.5 - (random % 15 / 10)
random = 16, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Split Dust >========================

[state 6025, Split Dust]
type = explod
trigger1 = ishelper(60254)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = 8, 0
facing = 1
bindtime = 1
vel = 1.5 - (random % 10 / 10), -1.5 - (random % 10 / 10)
random = 12, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Split Dust]
type = explod
trigger1 = ishelper(60254)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = -8, 0
facing = -1
bindtime = 1
vel = -1.5 - (random % 10 / 10), -1.5 - (random % 10 / 10)
random = 12, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Jump Dust >========================

[state 6025, Jump Dust]
type = null ; explod
triggerall = playeridexist(root,ID)
trigger1 = ishelper(60255)
trigger1 = !time
anim = F100
ID = 100
postype = p1
pos = 0, -4
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.0, 0.0
random = 0, 0
removetime = -2
scale = 2.0, 0.25
sprpriority = -1
supermovetime = 0
pausemovetime = 0

[state 6025, Jump Dust]
type = explod
triggerall = playeridexist(root,ID)
trigger1 = ishelper(60255)
trigger1 = time <= 4 && time % 2 = 0
anim = F100
ID = 100
postype = left
pos = floor(root,screenpos x), floor(root,screenpos y)
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.0, -1.5 - (random % 10 / 10)
random = 0, 0
removetime = -2
scale = 0.25, 0.25
sprpriority = -1
supermovetime = 0
pausemovetime = 0

;========================< Slide Dust >========================

[state 6025, Slide Dust]
type = explod
trigger1 = ishelper(60256) || ishelper(60257)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = time * cond(ishelper(60257), 2, 4), 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.0, -1.5 - (random % 10 / 10)
random = 4, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Poof Dust >========================

[state 6025, Poof Dust]
type = explod
trigger1 = ishelper(60258)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = -4, 0
facing = 1
bindtime = 1
vel = -1.5 - (random % 10 / 10), cond(random < 500, 0.5, -0.5) + cond(random < 500, (random % 10 / 10), -(random % 10 / 10))
random = 0, 12
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Poof Dust]
type = explod
trigger1 = ishelper(60258)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = 0, -4
facing = 1
bindtime = 1
vel = cond(random < 500, 0.5, -0.5) + cond(random < 500, (random % 10 / 10), -(random % 10 / 10)), -1.5 - (random % 10 / 10)
random = 12, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Poof Dust]
type = explod
trigger1 = ishelper(60258)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = 4, 0
facing = 1
bindtime = 1
vel = 1.5 + (random % 10 / 10), cond(random < 500, 0.5, -0.5) + cond(random < 500, (random % 10 / 10), -(random % 10 / 10))
random = 0, 12
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Poof Dust]
type = explod
trigger1 = ishelper(60258)
trigger1 = time <= 6 && time % 2 = 0
anim = F100
ID = 100
postype = P1
pos = 0, 4
facing = 1
bindtime = 1
vel = cond(random < 500, 0.5, -0.5) + cond(random < 500, (random % 10 / 10), -(random % 10 / 10)), 1.5 + (random % 10 / 10)
random = 12, 0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Land Dust >========================

[state 6025, Land Dust]
type = explod
trigger1 = ishelper(60259)
trigger1 = time = 0
anim = F100
ID = 100
postype = P1
pos = -16, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = -0.5, -1.0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Land Dust]
type = explod
trigger1 = ishelper(60259)
trigger1 = time = 0
anim = F100
ID = 100
postype = P1
pos = -8, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = -0.5, -0.5
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Land Dust]
type = explod
trigger1 = ishelper(60259)
trigger1 = time = 0
anim = F100
ID = 100
postype = P1
pos = 8, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.5, -0.5
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Land Dust]
type = explod
trigger1 = ishelper(60259)
trigger1 = time = 0
anim = F100
ID = 100
postype = P1
pos = 16, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.5, -1.0
removetime = -2
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< Jump Land Dust >========================

[state 6025, Jump Land Dust]
type = explod
trigger1 = ishelper(60260)
trigger1 = time = 0
anim = F100
ID = 100
postype = P1
pos = -24, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = -0.5, -0.25
removetime = -2
scale = 0.75, 0.75
sprpriority = 4
supermovetime = 0
pausemovetime = 0

[state 6025, Jump Land Dust]
type = explod
trigger1 = ishelper(60260)
trigger1 = time = 0
anim = F100
ID = 100
postype = P1
pos = 24, 0
facing = cond(random < 500, 1, -1)
bindtime = 1
vel = 0.5, -0.25
removetime = -2
scale = 0.75, 0.75
sprpriority = 4
supermovetime = 0
pausemovetime = 0

;========================< End >========================

[state 6025, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; Super Effect
;=========================================================================
[StateDef 6030]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 6030, Parent Bind]
type = varset
trigger1 = !time
trigger1 = var(0) := parent,stateno || var(1) := root,var(54)
fvar(0) = parentdist x + 0 * (fvar(1) := parentdist y)

[state 6030, Change Animation]
type = changeanim
trigger1 = !time
value = 9999

[state 6030, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = -fvar(0), -fvar(1)

[state 6030, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6030, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 6030, Background Effect]
type = bgpalfx
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(2) := (256.0 / (var(1) * 0.5)) || fvar(3) := (256.0 / (var(1) * 0.5))
time = 1
mul = floor(256 - fvar(2) * 0.75 * time), floor(256 - fvar(2) * 0.75 * time), floor(256 - fvar(2) * 0.75 * time)
add = 0, 0, 0
color = floor(256 - fvar(3) * time)
invertall = 0

[state 6030, Background Effect]
type = bgpalfx
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(2) := (256.0 / (var(1) * 0.5)) || fvar(3) := (256.0 / (var(1) * 0.5))
time = 1
mul = ceil(64 + fvar(2) * 0.75 * (time - var(1) * 0.5)), ceil(64 + fvar(2) * 0.75 * (time - var(1) * 0.5)), ceil(64 + fvar(2) * 0.75 * (time - var(1) * 0.5))
add = 0, 0, 0
color = ceil(fvar(3) * (time - var(1) * 0.5))
invertall = 0

[state 6030, Sound]
type = playsnd
trigger1 = !time && root,stateno != 910
value = F6030, 0
volumescale = 100
channel = 9

[state 6030, Super Charge Circle]
type = null ; explod
trigger1 = !numexplod(6030)
anim = F6030
ID = 6030
postype = P1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -1
sprpriority = 5
pausemovetime = -1
supermovetime = -1
scale = 2.0, 2.0

[state 6030, Continue Root Cornerpush]
type = parentvarset
trigger1 = time >= var(1) || parent,stateno != var(0)
trigger2 = parent,movetype = H || numhelper(6030) > 1
fvar(25) = root,fvar(39)

[state 6030, Destroy Explod]
type = removeexplod
trigger1 = time >= var(1) || parent,stateno != var(0)
trigger2 = parent,movetype = H || numhelper(6030) > 1

[state 6030, Destroy Helper]
type = destroyself
trigger1 = time >= var(1) || parent,stateno != var(0)
trigger2 = parent,movetype = H || numhelper(6030) > 1

;=========================================================================
; Round Helper
;=========================================================================
[Statedef 6050]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 6050, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6050, Invulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 6050, Invulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 6050, Round X]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
triggerall = roundstate=1
trigger1 = !NumExplod(6050)
anim = F6049+roundno
id = 6050
postype = left
pos = 160, 101*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth))
facing = 1
scale = 1,1
bindtime = -1
removetime = -2
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
persistent = 0
[state 6050, Ready Go!]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
triggerall = roundstate=1
trigger1 = !NumExplod(6060)
anim = F6060
id = 6060
postype = left
pos = 160, 101*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth))
facing = 1
scale = 1,1
bindtime = -1
removetime = -2
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
persistent = 0
[state 6050, Bonus Go!]
type = explod
triggerall = stagevar(info.name) = "Bonus Stage"
triggerall = roundstate=1
trigger1 = !numexplod(4900)
anim = F4900
ID = 4900
postype = left
pos = 162, 109*ceil((1.3333333333333333333333333333333 * gameheight / gamewidth))
facing = 1
scale = 2,2
bindtime = -1
removetime = 54 ;-1
pausemovetime = -1
supermovetime = -1
ontop = 1
ownpal = 0
persistent = 0

[state 6050, Round X]
type = playsnd
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = NumExplod(6050)
value = F6050, roundno-1
volumescale = 80
persistent = 0
[state 6050, Ready Go!]
type = playsnd
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = NumExplod(6060)
trigger1 = !NumExplod(6050)
value = F6051, 2
volumescale = 80
persistent = 0

[State 6050, AssertSpecial]
type = AssertSpecial
trigger1 = time<(240-160*stagevar(info.name)="Bonus Stage")
flag = intro
;ignorehitpause = 
;persistent = 

[state 6050, Background Effect]
type = removeexplod
trigger1 = roundstate=2

[State 6050, DestroySelf]
type = DestroySelf
trigger1 = roundstate=2
;ignorehitpause = 
;persistent = 
	

;=========================================================================
; Camera
;=========================================================================
[Statedef 9990]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 9990, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 9990, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 9990, Destroy Helper]
type = destroyself

; 191 - Turns
trigger1 = ishelper(191)
trigger1 = roundstate >= 2 || parent,anim = 48

; 192 - Cula Italy Intro
trigger2 = ishelper(192)
trigger2 = roundstate >= 2 || parent,anim = 192

; 905 - Cula Spirit Portal
trigger3 = ishelper(905)
trigger3 = root,stateno != 905 || root,anim = 907 || root,movetype = H || !root,var(59)

;=========================================================================
[StateDef -2]

;[state -2] ;DEBUG TEST
;type = null;varset
;triggerall = teamside = 1
;trigger1 = !sysvar(3) || sysvar(3) < sysvar(2)
;trigger1 = var(52) := sysvar(2) || 1
;sysvar(3) = 0
;[state -2] ;DEBUG TEST
;type = null;lifeset
;triggerall = teamside = 1
;trigger1 = !sysvar(3) || sysvar(3) < sysvar(2)
;value = lifemax / 2

[state -2, End State] ;Against Bonus game
type = changestate
triggerall = name!="Bonus Stage"
triggerall = roundstate=2
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
value = 4001

[state -2, End State] ;I am Bonus game
type = changestate
triggerall = name="Bonus Stage"
triggerall = roundstate=2
triggerall = stateno!=4010
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
value = 4010

[state -2, Number of bowls] ;Human character
type = explod
triggerall = name="Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
triggerall = stagevar(info.author) = "Super Fighter Team"
trigger1 = NumHelper(4500)
;trigger1 = !numexplod(4700)
anim = 4700+Helper(4500),var(3)
ID = 4700
postype = left
pos = 159,ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 214)
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
supermovetime = -1
pausemovetime = -1

[state -2, Number of bowls] ;AI Left character
type = explod
triggerall = name="Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
triggerall = stagevar(info.author) = "Super Fighter Team"
trigger1 = NumHelper(4510)
;trigger1 = !numexplod(4700)
anim = 4700+Helper(4510),var(3)
ID = 4710
postype = left
pos = 89,ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 214)
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
supermovetime = -1
pausemovetime = -1

[state -2, Number of bowls] ;AI Right character
type = explod
triggerall = name="Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
triggerall = stagevar(info.author) = "Super Fighter Team"
trigger1 = NumHelper(4520)
;trigger1 = !numexplod(4700)
anim = 4700+Helper(4520),var(3)
ID = 4720
postype = left
pos = 229,ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 214)
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
supermovetime = -1
pausemovetime = -1

[State -2, AssertSpecial] ; Make characters not visible
type = AssertSpecial
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
flag = invisible
flag2 = nobardisplay
flag3 = nokoslow
ignorehitpause = 1
;persistent = 

[State 0, PosSet] ;place characters offscreen
type = PosSet
trigger1 = stagevar(info.name) = "Bonus Stage"
trigger1 = stagevar(info.author) = "Super Fighter Team"
y = -500
ignorehitpause = 1
;persistent = 


;=========================================================================
; Precache -2
;=========================================================================

[state -2, Precache: Detect Contact]
type = varset
trigger1 = var(10) < 0
trigger1 = movecontact = 1
var(10) = hitpausetime
ignorehitpause = 1

[state -2, Precache: Character Variable]
type = null
;          Character     || Shadow Axis || Shadow Size     || Weight/Life Percentage
trigger1 = name = "Lee"
trigger1 = var(0) := 1   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 1.00
trigger2 = name = "Yun"
trigger2 = var(0) := 2   || var(1) := 0 || fvar(0) := 2.75 || fvar(27) := 1.05
trigger3 = name = "King"
trigger3 = var(0) := 3   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 0.975
trigger4 = name = "Kaori"
trigger4 = var(0) := 4   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 1.075
trigger5 = name = "Sheana"
trigger5 = var(0) := 5   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 0.925
trigger6 = name = "Madiesha"
trigger6 = var(0) := 6   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 1.10
trigger7 = name = "Gerdon"
trigger7 = var(0) := 7   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 0.95
trigger8 = name = "Stan"
trigger8 = var(0) := 8   || var(1) := 0 || fvar(0) := 2.75 || fvar(27) := 0.85
trigger9 = name = "Chieshen"
trigger9 = var(0) := 9   || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 1.025
trigger10 = name = "Dietrich"
trigger10 = var(0) := 10 || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 0.90
trigger11 = name = "Cula"
trigger11 = var(0) := 11 || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 0.875
trigger12 = name = "Zhao"
trigger12 = var(0) := 12 || var(1) := 0 || fvar(0) := 2.25 || fvar(27) := 1.00
ignorehitpause = 1

[state -2, Precache: Tough Skill Threshold]
type = varset
triggerall = !sysfvar(0)
trigger1 = name = "Lee" || name = "Yun"
trigger2 = name = "King" || name = "Kaori"
trigger3 = name = "Sheana" || name = "Madiesha"
trigger4 = name = "Gerdon" || name = "Stan"
trigger5 = name = "Chieshen" || name = "Dietrich"
trigger6 = name = "Cula" || name = "Zhao"
sysfvar(0) = 0.5 + 0.25 * (name = "Madiesha") + 0.3 * (name = "Chieshen") + 0.35 * (name = "Dietrich") + 0.4 * (name = "Cula")

[state -2, Precache: Cornerpush Target ID]
type = varset
trigger1 = numtarget
trigger1 = !target,ishelper
trigger1 = movecontact = 1 && var(10) = hitpausetime || var(10) = -2 || var(10) = -3 || var(10) = -4 || var(10) = -5
var(55) = target,id
ignorehitpause = 1

[state -2, Precache: Reset Cornerpush Target ID]
type = varset
trigger1 = !var(59)
var(55) = 0
ignorehitpause = 1

[state -2, Precache: Target ID]
type = varset
trigger1 = var(10) = hitpausetime
trigger1 = movecontact = 1 && numtarget
trigger1 = !target,ishelper
var(56) = target,id
ignorehitpause = 1

[state -2, Precache: Control Time]
type = varset
trigger1 = !var(58)
trigger1 = roundstate = 2 && ctrl
var(58) = 1
ignorehitpause = 1

[state -2, Precache: Control Time]
type = varset
trigger1 = roundstate != 2
trigger2 = life <= 0 || p2life <= 0
var(58) = 0
ignorehitpause = 1

[state -2, Precache: Game Time]
type = varset
trigger1 = var(58)
sysfvar(1) = sysfvar(1) + 0.01666666666666666666666666666667
ignorehitpause = 1

;=========================================================================
; Functions -2
;=========================================================================

[state -2, Functions: Reset Trip Flag]
type = varset
triggerall = sysvar(0)
trigger1 = movetype != H || !var(59) || stateno != [5000, 5150]
sysvar(0) = 0

[state -2, Functions: Reset Shadow]
type = varset
trigger1 = !var(59)
var(1) = floor(0 * (fvar(0) := 2.0))

[state -2, Functions: Detect Hits]
type = varadd
trigger1 = var(10) = hitpausetime && movehit = 1
trigger1 = hitdefattr != SCA,AT
trigger2 = var(10) = -2 || var(10) = -4 ; pseudo-hit/pseudo-hit (no sparks)
var(13) = 1
ignorehitpause = 1

[state -2, Functions: Reset Hits]
type = varset
triggerall = var(13)
trigger1 = roundstate >= 4
trigger2 = cond(playeridexist(var(56)), playerid(var(56)),fvar(14) < playerid(var(56)),fvar(15) && !playerid(var(56)),var(4), 1)
trigger2 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno != [5100, 5101]), 0)
trigger3 = cond(playeridexist(var(56)), playerid(var(56)),fvar(14) < playerid(var(56)),fvar(15) && !playerid(var(56)),var(4), 1)
trigger3 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno = [5100, 5101]) && enemynear,time >= 2, 0)
trigger4 = cond(numenemy, enemynear,movetype != H && enemynear,anim != 5300, 0)
trigger5 = !hitpausetime
trigger5 = cond(playeridexist(var(56)), playerid(var(56)),fvar(14) < playerid(var(56)),fvar(15) && !playerid(var(56)),var(4), 1)
trigger5 = var(13) >= 2 && var(18)
var(13) = 0
ignorehitpause = 1

[state -2, Functions: Reset Offset Position]
type = varset
trigger1 = fvar(35) && !var(47)
fvar(35) = 0
ignorehitpause = 1

[state -2, Functions: Reset Offset Flag]
type = varset
trigger1 = var(47)
trigger1 = movetype != H
var(47) = 0
ignorehitpause = 1

[state -2, Functions: Remove After Images on Hit]
type = afterimagetime
trigger1 = movetype = H || !var(59)
time = 0
ignorehitpause = 1

[state -2, Functions: No Air Guard]
type = assertspecial
trigger1 = 1
flag = noairguard
ignorehitpause = 1

[state -2, Functions: No AI Guarding]
type = assertspecial
trigger1 = ailevel
trigger1 = gametime % 4 = 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[state -2, Functions: Target Facing]
type = targetfacing
triggerall = numtarget = 1 && movecontact = 1
trigger1 = !target,hitshakeover && !target,time
trigger1 = !target,hitfall || target,gethitvar(chainid) = [5230, 5235]
value = cond(((target,pos x - pos x) * facing) >= 0, -1, 1)
ignorehitpause = 1

[state -2, Functions: Width]
type = posadd
trigger1 = numhelper(6020)
trigger1 = helper(6020),var(0)
trigger1 = frontedgebodydist < helper(6020),var(0)
x = frontedgebodydist - helper(6020),var(0)
ignorehitpause = 1

[state 1400, Fix Palette] ;fix palette after hit in Celestial Strike
type = null;remappal
triggerall = name = "Yun"
;trigger1 = movetype=H
trigger1 = stateno !=1400
source = 1, 1
dest = 1, cond(palno % 6 > 3, palno % 6 - 3, palno % 6 + 3)
ignorehitpause = 1

[state -2, Functions: Default Palette]
type = remappal
trigger1 = var(45) != (1 + (sysvar(2) > 0 && var(52) >= (sysvar(2) / 3)) + (sysvar(2) && var(52) >= sysvar(2))) + 3 * (name = "Cula" && sysvar(2) && var(53))
trigger2 = name = "Cula" && movetype != H
trigger2 = life > lifemax * sysfvar(0) || power < powermax || sysvar(2)
trigger2 = stateno != [900, 999]
trigger2 = stateno != [3000, 3999]
source = 1, 1
dest = var(45) := (1 + (sysvar(2) > 0 && var(52) >= (sysvar(2) / 3)) + (sysvar(2) && var(52) >= sysvar(2))) + 3 * (name = "Cula" && sysvar(2) && var(53)), cond(palno % 6 > 3, palno % 6 - 3, palno % 6 + 3) + 6 * (name = "Cula" && gametime % 16 < 8 || name = "Stan" && fvar(29) && !var(53))
ignorehitpause = 1

[state -2, Functions: Lifebar Face + Tough Skill + Super Palette]
type = remappal
triggerall = movetype != H
trigger1 = life <= lifemax * sysfvar(0)
trigger1 = power >= powermax && !sysvar(2)
trigger2 = stateno = [900, 999]
trigger2 = cond(name = "Stan" && stateno = 905, animelemtime(4) >= 0, 1)
trigger2 = cond(name = "Dietrich" && (stateno = [913, 914]), 0, 1)
trigger3 = stateno = [3000, 3999]
trigger4 = name ="Yun" && stateno=1400 ;fix for Celestial Strike
trigger4 = animelemtime(3 + 2 * (anim = 1401)) < 0
; trigger5 = var(53) && sysvar(3) = sysvar(2)
source = 1, 1
dest = var(45) := (1 + (gametime % 12 >= 4) + (gametime % 12 >= 8)) + 3 * (name = "Cula" && sysvar(2) && var(53)), cond(palno % 6 > 3, palno % 6 - 3, palno % 6 + 3) + 6 * (name = "Cula" && gametime % 16 < 8 || name = "Stan" && fvar(29) && !var(53))
ignorehitpause = 1

[state -2, Functions: Reset Wall Slam Type]
type = varset
triggerall = fvar(21) || fvar(28)
trigger1 = movetype != H || stateno = 5300
trigger2 = gethitvar(chainid) = [5230, 5235]
fvar(21) = (fvar(28) := 0)
ignorehitpause = 1

;=========================================================================
; System Helpers
;=========================================================================
[state -2, Round Helper]
type = helper
triggerall = TeamSide = 1
trigger1 = roundstate=0
trigger1 = !numhelper(6050)
name = "Round System"
ID = 6050
stateno = 6050
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Bonus Main Helper]
type = helper
triggerall = name = "Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numhelper(4500)
name = "Bonus Main System"
ID = 4500
stateno = 4500
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Bonus AI Left Helper]
type = helper
triggerall = name = "Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numhelper(4510)
name = "Bonus AI Left System"
ID = 4510
stateno = 4510
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Bonus AI Right Helper]
type = helper
triggerall = name = "Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !numhelper(4520)
name = "Bonus AI Right System"
ID = 4520
stateno = 4520
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[State 5900, Time Display helper]
type = Helper
triggerall = name = "Bonus Stage"
triggerall = stagevar(info.name) = "Bonus Stage"
trigger1 = !NumHelper(4600)
id = 4600
name = "Time display"
pos = 160,14
postype = back
stateno = 4600
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, System Helper]
type = helper
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numhelper(6000)
name = "System"
ID = 6000
stateno = 6000
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Score Helper]
type = helper
;triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numhelper(6001) && !ailevel
name = "Score"
ID = 6001
stateno = 6001
postype = P1
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state -2, Dizzy Helper]
type = helper
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numhelper(6002)
name = "Dizzy"
ID = 6002
stateno = 6002
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state -2, Win Score Normal Game]
type = helper
triggerall = stagevar(info.name) != "Bonus Stage"
triggerall = win && !numhelper(6003)
triggerall = stateno = 180 && time > 120
trigger1 = numhelper(6001)
name = "Win Score"
ID = 6003
stateno = 6003
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state -2, Win Score Bonus]
type = helper
triggerall = stagevar(info.name) = "Bonus Stage"
triggerall = enemy,name = "Bonus Stage"
triggerall = enemy,var(43)=1 ;Human win
triggerall = win && !numhelper(6003)
triggerall = stateno = 180 && time > 120
trigger1 = numhelper(6001)
name = "Win Score Bonus"
ID = 6003
stateno = 6003
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state -2, Roundover Sound]
type = helper
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = roundstate >= 3 && !numhelper(6004)
trigger1 = teamside = 1
name = "Roundover Sound"
ID = 6004
stateno = 6004
postype = P1
ownpal = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state -2, Stage Prop - Leaf]
type = helper
triggerall = stagevar(info.name) = "Korea"
triggerall = stagevar(info.author) = "Super Fighter Team"
trigger1 = teamside = 1 && !numhelper(6005)
name = "Stage Prop - Leaf"
ID = 6005
stateno = 6005
postype = left
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state -2, Stage Prop - Cula]
type = helper
triggerall = stagevar(info.name) = "Germany"
triggerall = stagevar(info.author) = "Super Fighter Team"
trigger1 = teamside = 1 && !numhelper(6010)
name = "Stage Prop - Cula"
ID = 6010
stateno = 6010
postype = left
pos = 0, 0
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536
ignorehitpause = 1

;=========================================================================
; Hit Sounds, Sparks
;=========================================================================

[state -2, Hit Sound]
type = playsnd
trigger1 = var(10) = hitpausetime
trigger1 = var(11) >= 0 || var(12) >= 0
trigger1 = movecontact = 1
trigger2 = var(10) = -2 || var(10) = -3 ; pseudo-hit/pseudo-guard
value = F4, cond(movehit || var(10) = -2, var(11), var(12))
channel = 2
ignorehitpause = 1

[state -2, Hit Spark, Guard Spark]
type = explod
triggerall = var(39) >= 0 || var(40) >= 0
trigger1 = var(10) = hitpausetime
trigger1 = movecontact = 1 && cond(!numtarget && hitdefattr = SCA,AP, 0, 1)
trigger2 = var(10) = -2 || var(10) = -3 ; pseudo-hit/pseudo-guard
anim = F(cond(movehit || var(10) = -2, var(39), var(40)))
ID = 200
postype = p1
pos = ceil(cond(p2dist x < 0, 0, cond(p2dist x < var(41), p2dist x, var(41))) * const(size.xscale)), ceil(var(42) * const(size.yscale))
facing = 1
bindtime = 1
scale = 1.0 * const(size.xscale), 1.0  * const(size.yscale)
sprpriority = 5
ignorehitpause = 1

;=========================================================================
; Charge Buffering, Button Tap Buffering
;=========================================================================

;========================< Charge Back >========================
[state -2, Charge: Back Charge Hold Time]
type = varadd
triggerall = !ailevel
trigger1 = fvar(4) < 43 && !fvar(6)
trigger1 = command = "holdback"
fvar(4) = 1 + 42 * (name = "Yun" && var(53)) + 7 * (name = "Chieshen" && var(53))
ignorehitpause = 1

[state -2, Charge: Back Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(4) >= 43
trigger1 = command != "holdback"
fvar(5) = 10 + 0 * (fvar(4) := 42) + 0 * (fvar(6) := 11 + 21 * (name = "Chieshen"))
ignorehitpause = 1
[state -2, Charge: Back Charge Buffer Time]
type = varadd
triggerall = !ailevel
trigger1 = command != "holdback" || fvar(6)
fvar(5) = -1 + 0 * (cond(fvar(6), fvar(6) := fvar(6) - 1, 0))
ignorehitpause = 1
[state -2, Charge: Back Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(5) < 0
fvar(5) = 42 + 0 * (fvar(4) := 0)
ignorehitpause = 1

[state -2, Charge: Reset Back Hold Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(4) >= 42 && fvar(6)
trigger1 = command = "fwd" || command = "holdfwd"
fvar(4) = 0 * (fvar(6) := 11 + 21 * (name = "Chieshen"))
ignorehitpause = 1

;========================< Charge Down >========================
[state -2, Charge: Down Charge Hold Time]
type = varadd
triggerall = !ailevel
trigger1 = fvar(7) < 43 && !fvar(9)
trigger1 = command = "holddown"
fvar(7) = 1 + 42 * (name = "Yun" && var(53)) + 7 * (name = "Chieshen" && var(53))
ignorehitpause = 1

[state -2, Charge: Down Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(7) >= 43
trigger1 = command != "holddown"
fvar(8) = 10 + 0 * (fvar(7) := 42) + 0 * (fvar(9) := 11)
ignorehitpause = 1
[state -2, Charge: Down Charge Buffer Time]
type = varadd
triggerall = !ailevel
trigger1 = command != "holddown" || fvar(9)
fvar(8) = -1 + 0 * (cond(fvar(9), fvar(9) := fvar(9) - 1, 0))
ignorehitpause = 1
[state -2, Charge: Down Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(8) < 0
fvar(8) = 42 + 0 * (fvar(7) := 0)
ignorehitpause = 1

[state -2, Charge: Reset Down Hold Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(7) >= 42 && fvar(9)
trigger1 = command = "up" || command = "holdup"
fvar(7) = 0 * (fvar(9) := 11)
ignorehitpause = 1

;========================< Tap Button >========================
[state -2, Tap Button: Switch Button That's Being Buffered]
type = varset
trigger1 = fvar(11) = [1, 2]
trigger1 = command = "x" || command = "y"
trigger2 = fvar(11) = [3, 4]
trigger2 = command = "a" || command = "b"
fvar(11) = 0 + 0 * (fvar(10) := 0) + 0 * (fvar(12) := 0)
; ignorehitpause = 1

[state -2, Tap Button: Human Buffer Time]
type = null
triggerall = !ailevel
trigger1 = command = "a" || command = "b"
trigger1 = fvar(10) := (fvar(10) + 16) + 0 * (fvar(11) := cond(command = "a", 1, 2)) + 0 * (fvar(12) := cond(command = "b", 12, 16))
trigger2 = command = "x" || command = "y"
trigger2 = fvar(10) := (fvar(10) + 16) + 0 * (fvar(11) := cond(command = "x", 3, 4)) + 0 * (fvar(12) := cond(command = "y", 12, 16))
; ignorehitpause = 1

[state -2, Tap Button: Max Buffer Time]
type = varset
trigger1 = fvar(10) > 43
fvar(10) = 43
; ignorehitpause = 1

[state -2, Tap Button: Buffer Over]
type = varset
trigger1 = fvar(10) && !fvar(12)
fvar(11) = 0 + 0 * (fvar(10) := 0)
; ignorehitpause = 1

[state -2, Tap Button: Buffer Duration]
type = varadd
trigger1 = fvar(12)
fvar(12) = -1
; ignorehitpause = 1

;=========================================================================
; Dizzy System
;=========================================================================

[state -2, Dizzy Bar: Initialize Dizzy Endurance]
type = varset
trigger1 = roundstate < 2
trigger1 = numhelper(6002)
fvar(14) = 0.0 + 0 * (var(4) := 0)
ignorehitpause = 1

[state -2, Dizzy Bar: Max Endurance]
type = null
triggerall = !fvar(15)
trigger1 = name = "Lee"
trigger1 = fvar(15) := 64.0 ; edit this to change the max dizzy endurance
trigger2 = name = "Yun"
trigger2 = fvar(15) := 54.0 ; edit this to change the max dizzy endurance
trigger3 = name = "King"
trigger3 = fvar(15) := 70.0 ; edit this to change the max dizzy endurance
trigger4 = name = "Kaori"
trigger4 = fvar(15) := 51.0 ; edit this to change the max dizzy endurance
trigger5 = name = "Sheana"
trigger5 = fvar(15) := 73.0 ; edit this to change the max dizzy endurance
trigger6 = name = "Madiesha"
trigger6 = fvar(15) := 41.0 ; edit this to change the max dizzy endurance
trigger7 = name = "Gerdon"
trigger7 = fvar(15) := 67.0 ; edit this to change the max dizzy endurance
trigger8 = name = "Stan"
trigger8 = fvar(15) := 96.0 ; edit this to change the max dizzy endurance
trigger9 = name = "Chieshen"
trigger9 = fvar(15) := 57.0 ; edit this to change the max dizzy endurance
trigger10 = name = "Dietrich"
trigger10 = fvar(15) := 76.0 ; edit this to change the max dizzy endurance
trigger11 = name = "Cula"
trigger11 = fvar(15) := 83.0 ; edit this to change the max dizzy endurance
trigger12 = name = "Zhao"
trigger12 = fvar(15) := 64.0 ; edit this to change the max dizzy endurance
ignorehitpause = 1

[state -2, Dizzy Bar: Dizzy Bar Damage Scaling]
type = varadd
trigger1 = numhelper(6002)
trigger1 = var(57) - life > 0
fvar(17) = 1
ignorehitpause = 1

[state -2, Dizzy Bar: Increment Dizzy Endurance by Damage]
type = varadd
trigger1 = cond(name = "Stan" && fvar(29), 0, 1)
trigger1 = alive && numenemy
trigger1 = numhelper(6002) && roundstate = 2
trigger1 = movetype = H && stateno != [120, 155]
trigger1 = var(57) - life > 0
trigger1 = gethitvar(fall.envshake.ampl) > 0 && fvar(17)
fvar(14) = cond(gethitvar(fall.envshake.ampl) / fvar(17) < 1, 1, gethitvar(fall.envshake.ampl) / fvar(17))
ignorehitpause = 1

[state -2, Dizzy Bar: Increment Dizzy Endurance by Damage]
type = varadd
trigger1 = cond(name = "Stan" && fvar(29), 0, 1)
trigger1 = alive && numenemy
trigger1 = numhelper(6002) && roundstate = 2
trigger1 = movetype = H && stateno != [120, 155]
trigger1 = var(57) - life > 0
trigger1 = fvar(16) > 0 && fvar(17)
fvar(14) = cond(fvar(16) - (fvar(17) - 1) < 2, 2, fvar(16) - (fvar(17) - 1))
ignorehitpause = 1

[state -2, Dizzy Bar: Increment Dizzy Endurance by Damage]
type = varadd
trigger1 = alive && numenemy
trigger1 = enemy,name = "Kaori" && enemy,var(53)
trigger1 = numhelper(6002) && roundstate = 2
trigger1 = movetype = H && stateno = [120, 155]
trigger1 = enemy,var(10) = enemy,hitpausetime
fvar(14) = 8
ignorehitpause = 1

[state -2, Dizzy Bar: Decrement Dizzy Endurance]
type = varadd
trigger1 = numhelper(6002) && !gethitvar(hitshaketime)
trigger1 = fvar(14) = (0.0, fvar(15))
trigger1 = gametime % cond(name = "Madiesha" && var(53), 2, 32) = 1
fvar(14) = -1.0 - (name = "Madiesha" && var(53))
ignorehitpause = 1

[state -2, Dizzy Bar: Initialize Dizzy Flag]
type = varset
trigger1 = numhelper(6002) && stateno != 5300
trigger1 = fvar(14) >= fvar(15) && !var(4)
var(4) = 1
ignorehitpause = 1

[state -2, Dizzy Bar: Prevent Dizzy Endurance from Going out of Bounds]
type = varset
trigger1 = numhelper(6002)
trigger1 = fvar(14) != [0.0, fvar(15)]
fvar(14) = cond(fvar(14) < 0.0, 0.0, fvar(15))
ignorehitpause = 1

[state -2, Dizzy Bar: Prevent Dizzy Endurance from Going out of Bounds]
type = varset
trigger1 = fvar(14)
trigger1 = roundstate >= 3
fvar(14) = 0.0 + 0 * (var(4) := 0)
ignorehitpause = 1

[state -2, Dizzy Bar: Dizzy Bar Damage Scaling]
type = varset
triggerall = fvar(17)
triggerall = numhelper(6002)
trigger1 = movetype != H
trigger2 = fvar(14) >= fvar(15) || var(4)
fvar(17) = 0
ignorehitpause = 1

[state -2, Dizzy Bar: Reset Dizzy Damage]
type = varset
triggerall = fvar(16)
trigger1 = movetype != H
fvar(16) = 0
ignorehitpause = 1

[state -2, Dizzy Bar: Hit/Attack Level]
type = varset
triggerall = gethitvar(fall.envshake.time) != 0
trigger1 = var(57) - life > 0
var(5) = floor(gethitvar(fall.envshake.time))
ignorehitpause = 1

[state -2, Dizzy Bar: Reset Hit/Attack Level]
type = varset
triggerall = var(5)
trigger1 = movetype != A && movetype != H
var(5) = 0
ignorehitpause = 1

;=========================================================================
; Juggle
;=========================================================================
; Var(14): Detects opponents who have been air reset.
; Var(15): Amount of juggle points to be accumulated.
; Var(16): Accumulated juggle points.
; Var(17): The Juggle Window. Time Before Opponent Can't be juggled.
; Var(18): Time up, no more juggling.
; var(19): Reflected Jugglepoints to be accumulated.
; var(20): Reflected Jugglepoints time allotment.

; Notes:
; 15 juggle points is the maximum amount of juggle points.
; Opponents that are forced to air recover (air reset) can only be hit by super arts -- and only if the juggle window allows it.
; Some attacks reset juggle points and thus reset juggle window.
; Opponents can only be juggled when var(12) is greater than or equal 0.

[state -2, Ignore Engine's Juggle]
type = assertspecial
trigger1 = 1
flag = nojugglecheck
ignorehitpause = 1

;========================< Juggle Points >========================

[state -2, Reset Juggle Points]
type = varset
trigger1 = movetype != A || time <= 1
var(15) = 0
ignorehitpause = 1

[state -2, Accumulate Juggle Points]
type = varadd
trigger1 = var(15) && movehit = 1
trigger1 = var(10) = hitpausetime
trigger1 = hitdefattr != SCA,AT
trigger2 = var(10) = -2 || var(10) = -4
var(16) = var(15)
ignorehitpause = 1

[state -2, Accumulate Reflective Juggle Points]
type = varadd
trigger1 = numenemy
trigger1 = enemy,var(19) && enemy,var(20)
var(16) = floor(enemy,var(19))
ignorehitpause = 1

[state -2, Restrict Accumulated Juggle Points]
type = varset
trigger1 = var(16) != [0, 15]
var(16) = cond(var(16) < 0 ,0 ,15)
ignorehitpause = 1

[state -2, Flush Accumulated Juggle Points]
type = varset
triggerall = var(16) && numenemy ; = 1
trigger1 = enemynear,stateno != 5040 && enemynear,movetype != H
trigger2 = enemynear,statetype != A && enemynear,statetype != L
trigger2 = !enemynear,gethitvar(yvel)
trigger3 = enemynear,ctrl || enemynear,stateno = [5110, 5150]
var(16) = 0
ignorehitpause = 1

[state -2, Unique Juggle Reset]
type = null ; varset
triggerall = var(16) && movehit = 1
triggerall = var(10) = hitpausetime
trigger1 = stateno = -1 && animelemtime(-1) < 0
var(16) = 0
ignorehitpause = 1

;========================< Juggle Window >========================

[state -2, Set Juggle Window (Real Hit)]
type = null
triggerall = var(15) && movehit = 1
triggerall = var(10) = hitpausetime
triggerall = hitdefattr != SCA,AT
trigger1 = var(16) = [1, 6]
trigger1 = var(17) := 120 - 20 * (var(16) - 1)
trigger2 = var(16) = 7
trigger2 = var(17) := 10
trigger3 = var(16) = 8
trigger3 = var(17) := 4
trigger4 = var(16) = 9
trigger4 = var(17) := 2
trigger5 = var(16) >= 10
trigger5 = var(17) := 1
ignorehitpause = 1

[state -2, Set Juggle Window (Pseudo Hit)]
type = null
triggerall = var(15)
triggerall = var(10) = -2 || var(10) = -4
trigger1 = var(16) = [1, 6]
trigger1 = var(17) := 120 - 20 * (var(16) - 1)
trigger2 = var(16) = 7
trigger2 = var(17) := 10
trigger3 = var(16) = 8
trigger3 = var(17) := 4
trigger4 = var(16) = 9
trigger4 = var(17) := 2
trigger5 = var(16) >= 10
trigger5 = var(17) := 1
ignorehitpause = 1

[state -2, Set Juggle Window (Reflected Projectile Friendly Hit)]
type = null
triggerall = numenemy
triggerall = enemy,var(19) && enemy,var(20)
trigger1 = var(16) = [1, 6]
trigger1 = var(17) := 120 - 20 * (var(11) - 1)
trigger2 = var(16) = 7
trigger2 = var(17) := 10
trigger3 = var(16) = 8
trigger3 = var(17) := 4
trigger4 = var(16) = 9
trigger4 = var(17) := 2
trigger5 = var(16) >= 10
trigger5 = var(17) := 1
ignorehitpause = 1

[state -2, Decrement Juggle Window]
type = varadd
triggerall = var(16) && var(17) >= 0
triggerall = !hitpausetime && !var(54)
triggerall = cond(playeridexist(var(55)), playerid(var(55)),hitshakeover, 1)
trigger1 = name != "Yun" && name != "Gerdon"
trigger2 = cond(name = "Yun", var(53) && gametime % 10 = 0 || !var(53), 0)
trigger3 = cond(name = "Gerdon", fvar(29) && gametime % 4 = 0 || !fvar(29), 0)
var(17) = -1
ignorehitpause = 1

[state -2, Close Juggle Window]
type = varset
trigger1 = var(16) && var(17) < 0
var(18) = 1
ignorehitpause = 1

[state -2, Reset Juggle Window]
type = varset
trigger1 = !var(16)
var(17) = (var(18) := 0)
ignorehitpause = 1

;========================< Air Resetting >========================

[state -2, Detect Air Reset]
type = varset
triggerall = numenemy
trigger1 = enemynear,stateno = 5030 || enemynear,stateno = 5035
trigger1 = enemynear,hitover || enemynear,gethitvar(hittime) < 0
trigger2 = enemynear,stateno = 5040 && !enemynear,ctrl
trigger3 = enemynear,stateno = 5210 && enemynear,time < 15
var(14) = 1
ignorehitpause = 1

[state -2, Revert Air Reset]
type = varset
triggerall = var(14) && numenemy ; = 1
triggerall = cond(enemynear,stateno = 5210, enemynear,time >= 15, 1)
trigger1 = enemynear,stateno != 5040 && enemynear,movetype != H
trigger2 = enemynear,statetype != A || !enemynear,hitshakeover ; && !var(16)
trigger3 = enemynear,ctrl || enemynear,hitfall
var(14) = 0
ignorehitpause = 1

;========================< Manage All Juggling >========================

[state -2, Reset Reflective Juggle Points]
type = varset
trigger1 = !var(20)
var(19) = (var(20) := 0)
ignorehitpause = 1
[state -2, Reset Reflective Juggle Points]
type = varadd
trigger1 = var(20)
var(20) = -1
ignorehitpause = 1

[state -2, Infinite Juggle]
type = null
trigger1 = roundstate > 2
trigger1 = var(14) := 0 || var(15) := 0 || var(16) := 0 || var(17) := 0 || var(18) := 0
ignorehitpause = 1

[state -2, Deactivate Hitdefs]
type = hitdef
triggerall = movetype = A
trigger1 = var(14) || var(18) || var(21) = var(22)
ID = -1 * floor(fvar(26) := 0)
attr = 
hitflag = 
ignorehitpause = 1

;=========================================================================
; Damage Scale
;=========================================================================

[state -2, Detect Damage Scale Hits]
type = varadd
trigger1 = var(10) = hitpausetime && movehit = 1
trigger1 = hitdefattr != SCA,AT
trigger2 = var(10) = -2 || var(10) = -4 ; pseudo-hit/pseudo-hit (no sparks)
fvar(22) = 1
ignorehitpause = 1

[state -2, Reset Damage Scale Hits]
type = varset
triggerall = fvar(22)
trigger1 = roundstate >= 4
trigger2 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno != [5100, 5101]), 0)
trigger3 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno = [5100, 5101]) && enemynear,time >= 2, 0)
trigger4 = cond(numenemy, enemynear,movetype != H, 0)
fvar(22) = 0
ignorehitpause = 1

[state -2, Initialize Damage Scale]
type = varset
trigger1 = 1
fvar(23) = cond(fvar(22) > 0, 1.0 / 2.0 ** (fvar(22) * 0.225), 1.0)
ignorehitpause = 1

[state -2, Life Damage Scale Single]
type = varset
trigger1 = numenemy = 1
trigger1 = enemy,life <= enemy,lifemax * 0.3
fvar(23) = fvar(23) * (1.0 - (0.44 - 0.11 * ceil(10.0 * enemy,life / enemy,lifemax) * (enemy,life > enemy,lifemax * 0.05)))
ignorehitpause = 1

[state -2, Life Damage Scale Simul]
type = varset
trigger1 = numenemy = 2
trigger1 = enemy(0),life + enemy(1),life <= (enemy(0),lifemax + enemy(1),lifemax) * 0.3
fvar(23) = fvar(23) * (1.0 - (0.44 - 0.11 * ceil(10.0 * (enemy(0),life + enemy(1),life) / (enemy(0),lifemax + enemy(1),lifemax)) * ((enemy(0),life + enemy(1),life) > (enemy(0),lifemax + enemy(1),lifemax) * 0.05)))
ignorehitpause = 1

[state -2, Crouching Damage Scale]
type = varset
trigger1 = p2statetype = C
fvar(23) = fvar(23) * 1.25
ignorehitpause = 1

[state -2, Unique Damage Scale]
type = null
trigger1 = name = "Yun" && var(53)
trigger1 = fvar(23) := fvar(23) * 0.66
trigger2 = name = "King" && var(53)
trigger2 = fvar(23) := fvar(23) * 0.75
trigger3 = name = "Gerdon" && fvar(29)
trigger3 = fvar(23) := fvar(23) * 0.5
trigger4 = name = "Madiesha"
trigger4 = fvar(23) := fvar(23) - 0.1 * var(53)
trigger5 = name = "Dietrich"
trigger5 = fvar(23) := fvar(23) + 1.0 * fvar(29)
trigger6 = name = "Cula"
trigger6 = fvar(23) := fvar(23) + 0.25 * var(53)
ignorehitpause = 1

[state -2, Restrict Damage Scale (supers)]
type = varset
trigger1 = stateno = [3000, 3999]
trigger1 = fvar(23) < 0.5
fvar(23) = 0.5
ignorehitpause = 1

[state -2, Sheana: Increase Damage]
type = varset
trigger1 = numenemy
trigger1 = enemy,name = "Sheana"
trigger1 = enemy,var(53)
fvar(23) = fvar(23) * 1.15
ignorehitpause = 1

[state -2, Stan: Halve Damage against Super Armor]
type = varset
trigger1 = numenemy
trigger1 = enemy,name = "Stan"
trigger1 = enemy,fvar(29)
fvar(23) = fvar(23) * 0.5
ignorehitpause = 1

[state -2, Restrict Damage Scale (general)]
type = varset
trigger1 = fvar(23) < 0
fvar(23) = 0.0
ignorehitpause = 1

[state -2, Reset Damage Scale Hits]
type = varset
triggerall = fvar(22)
trigger1 = roundstate >= 4
trigger2 = cond(numenemy, enemynear,stateno = 5300 || enemynear,anim = 5300, 0)
fvar(22) = 0
ignorehitpause = 1

;=========================================================================
; Miniflag
;=========================================================================

[state -2, Mini-Flag: Detect Defeated Character]
type = null
triggerall = numenemy
triggerall = enemy,ishometeam && enemy,ailevel
triggerall = matchover && win
trigger1 = cond(enemy,name = "Lee", var(24) := Cond(matchno>5,matchno-1,matchno), 0) ;Cond(matchno>2,matchno-1,matchno)
trigger2 = cond(enemy,name = "Yun", var(25) := Cond(matchno>5,matchno-1,matchno), 0)
trigger3 = cond(enemy,name = "King", var(26) := Cond(matchno>5,matchno-1,matchno), 0)
trigger4 = cond(enemy,name = "Kaori", var(27) := Cond(matchno>5,matchno-1,matchno), 0)
trigger5 = cond(enemy,name = "Sheana", var(28) := Cond(matchno>5,matchno-1,matchno), 0)
trigger6 = cond(enemy,name = "Madiesha", var(29) := Cond(matchno>5,matchno-1,matchno), 0)
trigger7 = cond(enemy,name = "Gerdon", var(30) := Cond(matchno>5,matchno-1,matchno), 0)
trigger8 = cond(enemy,name = "Stan", var(31) := Cond(matchno>5,matchno-1,matchno), 0)
trigger9 = cond(enemy,name = "Chieshen", var(32) := Cond(matchno>5,matchno-1,matchno), 0)
trigger10 = cond(enemy,name = "Dietrich", var(33) := Cond(matchno>5,matchno-1,matchno), 0)
trigger11 = cond(enemy,name = "Cula", var(34) := Cond(matchno>5,matchno-1,matchno), 0);matchno, 0) ;pending to update
trigger12 = cond(enemy,name = "Zhao", var(35) := Cond(matchno>5,matchno-1,matchno), 0);matchno, 0) ;pending to update
;bonus game set at matchno=6 (TEMPORARY)

[state -2, Mini-Flag: Lee]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(85)
trigger1 = roundstate < 3 && var(24)
anim = F85
ID = 85
postype = left ;-8*(matchno>1)
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(24) - 1), 275 - 8 * (var(24) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Yun]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(86)
trigger1 = roundstate < 3 && var(25)
anim = F86
ID = 86
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(25) - 1), 275 - 8 * (var(25) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: King]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(87)
trigger1 = roundstate < 3 && var(26)
anim = F87
ID = 87
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(26) - 1), 275 - 8 * (var(26) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Kaori]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(88)
trigger1 = roundstate < 3 && var(27)
anim = F88
ID = 88
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(27) - 1), 275 - 8 * (var(27) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Sheana]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(89)
trigger1 = roundstate < 3 && var(28)
anim = F89
ID = 89
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(28) - 1), 275 - 8 * (var(28) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Madiesha]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(90)
trigger1 = roundstate < 3 && var(29)
anim = F90
ID = 90
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(29) - 1), 275 - 8 * (var(29) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Gerdon]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(91)
trigger1 = roundstate < 3 && var(30)
anim = F91
ID = 91
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(30) - 1), 275 - 8 * (var(30) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Stan]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(92)
trigger1 = roundstate < 3 && var(31)
anim = F92
ID = 92
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(31) - 1), 275 - 8 * (var(31) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Chieshen]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(93)
trigger1 = roundstate < 3 && var(32)
anim = F93
ID = 93
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(32) - 1), 275 - 8 * (var(32) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Dietrich]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(94)
trigger1 = roundstate < 3 && var(33)
anim = F94
ID = 94
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(33) - 1), 275 - 8 * (var(33) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Cula]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(95)
trigger1 = roundstate < 3 && var(34)
anim = F95
ID = 95
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(34) - 1), 275 - 8 * (var(34) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

[state -2, Mini-Flag: Zhao]
type = explod
triggerall = stagevar(info.name) != "Bonus Stage"
trigger1 = !numexplod(96)
trigger1 = roundstate < 3 && var(35)
anim = F96
ID = 96
postype = left
pos = cond(teamside = 1, 58, -58) + cond(teamside = 1, 37 + 8 * (var(35) - 1), 275 - 8 * (var(35) - 1)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 52) ; * 60)
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
supermovetime = -1
pausemovetime = -1

;=========================================================================
; Character Abilities
;=========================================================================

;========================< Lee Abilities >========================

; var(52), var(53), sysvar(2), sysvar(3)

[state -2, Lee: Internal Blaze Ready]
type = null ; varset
triggerall = name = "Lee" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 600
ignorehitpause = 1

[state -2, Lee: Internal Blaze Active Meter]
type = varadd
triggerall = name = "Lee" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Lee: Internal Blaze Passive Meter]
type = varadd
triggerall = name = "Lee" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Lee: Internal Blaze Cooldown]
type = varadd
triggerall = name = "Lee" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Lee: Internal Blaze Limiter]
type = varset
triggerall = name = "Lee"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Lee: Internal Blaze Passive Indicator]
type = palfx
triggerall = name = "Lee" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(128 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(64 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0
ignorehitpause = 1

[state -2, Lee: Afterimages]
type = afterimagetime
triggerall = name = "Lee"
trigger1 = stateno = [110, 114]
trigger1 = animelemtime(9) < 0
time = 2
ignorehitpause = 1

;========================< Yun Abilities >========================

; var(52), var(53), sysvar(2), sysvar(3)

[state -2, Yun: Nirvana Reflex Ready]
type = null ; varset
triggerall = name = "Yun" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 420
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Active Meter]
type = varadd
triggerall = name = "Yun" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Passive Meter]
type = varadd
triggerall = name = "Yun" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Cooldown]
type = varadd
triggerall = name = "Yun" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Life Drain]
type = lifeadd
triggerall = name = "Yun" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = sysvar(3) % 60 = 0
value = -8
kill = 0
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Prevent Dizzy]
type = varadd
triggerall = name = "Yun" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = fvar(14)
fvar(14) = -0.5
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Exhaustion]
type = varadd
triggerall = name = "Yun" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = fvar(14) < fvar(15) - 1
fvar(14) = 0.5
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Limiter]
type = varset
triggerall = name = "Yun"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Enhancer]
type = varset
triggerall = name = "Yun" && fvar(29)
trigger1 = stateno != 905 && stateno != [200, 699]
fvar(29) = 0
ignorehitpause = 1

[state -2, Yun: Nirvana Reflex Speed Up Anim (Non-Loop)]
type = changeanim
triggerall = name = "Yun" && var(53)
triggerall = animelemtime(animelemno(0) + 1)
triggerall = animelemtime(animelemno(0)) >= 2 + 8 * (animelemtime(8) >= 0 && anim = [1300, 1301])
trigger1 = (anim = [40, 42]) || (anim = [46, 48])
trigger2 = (anim = [200, 699])
trigger3 = anim = 1000 || (anim = [1100, 1101])
trigger4 = anim = 1200 || (anim = [1300, 1305])
trigger5 = (anim = [1400, 1401])
value = anim
elem = animelemno(0) + 1

[state -2, Yun: Nirvana Reflex Speed Up Anim (Loop)]
type = changeanim
triggerall = name = "Yun" && var(53)
triggerall = animelemtime(animelemno(0)) >= 3
trigger1 = (anim = [20, 21])
value = anim
elem = cond(!animelemtime(animelemno(0) + 1), 1, animelemno(0) + 1)

[state -2, Yun: Nirvana Reflex End Animation]
type = changestate
triggerall = name = "Yun" && var(53)
triggerall = !animelemtime(animelemno(0) + 1)
triggerall = animelemtime(animelemno(0)) >= 2
trigger1 = (anim = [46, 48]) || (anim = [200, 699])
trigger2 = anim = 1000 || (anim = [1100, 1101])
trigger3 = anim = 1200 || (anim = [1300, 1305])
trigger4 = (anim = [1400, 1401])
value = cond(statetype = A, 50, cond(statetype = C, 11, 0))
ctrl = 1

[state -2, Yun: Nirvana Reflex Passive Indicator]
type = palfx
triggerall = name = "Yun" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(32 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(32 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(32 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32))))
ignorehitpause = 1

[state -2, Yun: Afterimages]
type = afterimagetime
triggerall = name = "Yun"
trigger1 = stateno = [110, 114]
trigger2 = stateno = 905 && animelemtime(11) <= 0
trigger3 = var(53)
time = 2
ignorehitpause = 1

;========================< King Abilities >========================

; var(52), var(53), fvar(29), sysvar(2), sysvar(3)

[state -2, King: Sogui Ready]
type = null ; varset
triggerall = name = "King" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 600
ignorehitpause = 1

[state -2, King: Sogui Active Meter]
type = varadd
triggerall = name = "King" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, King: Sogui Passive Meter]
type = varadd
triggerall = name = "King" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, King: Sogui Cooldown]
type = varadd
triggerall = name = "King" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, King: Sogui Limiter]
type = varset
triggerall = name = "King"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, King: Sogui Ghost Hits]
type = helper
triggerall = name = "King" && var(53)
triggerall = var(10) = hitpausetime
triggerall = movecontact = 1 && playeridexist(var(56))
trigger1 = (stateno = [110, 119])  || (stateno = [230, 245]) 
trigger2 = (stateno = [430, 445])|| (stateno = [630, 645])
trigger3 = (stateno = [1000, 1499]) || (stateno = [3000, 3099])
name = "Ghost Hits"
ID = 911
stateno = 911
postype = P2
pos = 0, playerid(var(56)),const(size.mid.pos.y)
ownpal = 0
ignorehitpause = 1

[state -2, King: Sogui Passive Indicator]
type = palfx
triggerall = name = "King" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(32 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(64 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(128 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32))))
ignorehitpause = 1

[state -2, King: Afterimages]
type = afterimagetime
triggerall = name = "King"
trigger1 = stateno = [110, 114]
time = 2
ignorehitpause = 1

;========================< Kaori Abilities >========================

; var(52), var(53), fvar(29), sysvar(2), sysvar(3)

[state -2, Kaori: Kangaroo Jump Ready]
type = null ; varset
triggerall = name = "Kaori" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 420
ignorehitpause = 1

[state -2, Kaori: Kangaroo Jump Active Meter]
type = varadd
triggerall = name = "Kaori" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Kaori: Kangaroo Jump Passive Meter]
type = varadd
triggerall = name = "Kaori" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Kaori: Kangaroo Jump Cooldown]
type = varadd
triggerall = name = "Kaori" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Kaori: Kangaroo Jump Limiter]
type = varset
triggerall = name = "Kaori"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Kaori: Kangaroo Jump Enhancer]
type = varset
triggerall = name = "Kaori" && fvar(29)
trigger1 = stateno != 905 && stateno != [200, 699]
fvar(29) = 0
ignorehitpause = 1

[state -2, Kaori: Kangaroo Jump Indicator]
type = palfx
triggerall = name = "Kaori" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0
ignorehitpause = 1

[state -2, Kaori: Afterimages]
type = afterimagetime
triggerall = name = "Kaori"
trigger1 = stateno = [110, 114]
trigger2 = stateno = 905 && animelemtime(9) <= 0
time = 2
ignorehitpause = 1

;========================< Sheana Abilities >========================

; var(52), var(53), sysvar(2), sysvar(3)

[state -2, Sheana: Ghost Recon Ready]
type = null ; varset
triggerall = name = "Sheana" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 900
ignorehitpause = 1

[state -2, Sheana: Ghost Recon Active Meter]
type = varadd
triggerall = name = "Sheana" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Sheana: Ghost Recon Passive Meter]
type = varadd
triggerall = name = "Sheana" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Sheana: Ghost Recon Cooldown]
type = varadd
triggerall = name = "Sheana" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Sheana: Ghost Recon Limiter]
type = varset
triggerall = name = "Sheana"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Sheana: Ghost Recon Indicator]
type = palfx
triggerall = name = "Sheana" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(64 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0, abs(floor(64 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32))))
ignorehitpause = 1

[state -2, Sheana: Afterimages]
type = afterimagetime
triggerall = name = "Sheana"
trigger1 = stateno = [110, 114]
time = 2
ignorehitpause = 1

[state -2, Sheana: Remove Static Copy]
type = removeexplod
triggerall = numexplod(1005)
trigger1 = anim = 1001 || stateno != 1001
trigger2 = !hitover || !hitshakeover
ID = 1005
ignorehitpause = 1

;========================< Madiesha Abilities >========================

; var(43), var(44), var(52), var(53), sysvar(2), sysvar(3)

[state -2, Madiesha: Prevent Holding Button To Air Jump]
type = varset
triggerall = name = "Madiesha" && var(59) && !var(43)
trigger1 = prevstateno != 45
trigger1 = stateno = 50 || stateno = 120 || stateno = 140 || stateno = 5040 || stateno = 5210
trigger1 = ctrl && time = 2
trigger1 = command = "holdup" || command = "holddown" || command = "holdfwd" || command = "holdback"
var(43) = 1
[state -2, Madiesha: Reset Button Held Detection For Air Jump]
type = varset
triggerall = name = "Madiesha" && var(43)
trigger1 = command != "holdup" && command != "holddown"
trigger1 = command != "holdfwd" && command != "holdback"
var(43) = 0

[state -2, Madiesha: Detect Air Jump]
type = varset
triggerall = name = "Madiesha" && var(59)
trigger1 = stateno = 45 || prevstateno = 45
var(44) = 1
[state -2, Madiesha: Reset Air Jump]
type = varset
triggerall = name = "Madiesha" && var(44)
trigger1 = statetype != A
trigger2 = stateno = 5210 && time <= 1
var(44) = 0

[state -2, Madiesha: Initiate Air Jump]
type = changestate
value = 45
triggerall = name = "Madiesha"
triggerall = !ailevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = !var(43) && !var(44)
trigger1 = ctrl && time >= 2

[state -2, Madiesha: Olympic Pirouette Ready]
type = null ; varset
triggerall = name = "Madiesha" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 420
ignorehitpause = 1

[state -2, Madiesha: Olympic Pirouette Active Meter]
type = varadd
triggerall = name = "Madiesha" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Madiesha: Olympic Pirouette Passive Meter]
type = varadd
triggerall = name = "Madiesha" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Madiesha: Olympic Pirouette Cooldown]
type = varadd
triggerall = name = "Madiesha" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Madiesha: Olympic Pirouette Limiter]
type = varset
triggerall = name = "Madiesha"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Madiesha: Olympic Pirouette Enhancer]
type = varset
triggerall = name = "Madiesha" && fvar(29)
trigger1 = stateno != 905 && stateno != [200, 699]
fvar(29) = 0
ignorehitpause = 1

[state -2, Madiesha: Olympic Pirouette Indicator]
type = palfx
triggerall = name = "Madiesha" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(128 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0, abs(floor(32 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32))))
ignorehitpause = 1

[state -2, Madiesha: Afterimages]
type = afterimagetime
triggerall = name = "Madiesha"
trigger1 = stateno = [110, 114]
trigger2 = stateno = 905 && animelemtime(13) <= 0
time = 2
ignorehitpause = 1

;========================< Gerdon Abilities >========================

; var(52), var(53), fvar(29), fvar(30), fvar(31), fvar(32), sysvar(2), sysvar(3)

[state -2, Gerdon: G(ravity)-Note Ready]
type = null ; varset
triggerall = name = "Gerdon" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 1200
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Active Meter]
type = varadd
triggerall = name = "Gerdon" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !fvar(29) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Passive Meter]
type = varadd
triggerall = name = "Gerdon" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -3
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Cooldown]
type = varadd
triggerall = name = "Gerdon" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Limiter]
type = varset
triggerall = name = "Gerdon"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Reduce Gravity Points]
type = varadd
triggerall = name = "Gerdon" && fvar(29)
triggerall = p2statetype = A
trigger1 = var(10) = hitpausetime && movehit = 1
trigger1 = hitdefattr != SCA,AT
trigger2 = var(10) = -2 || var(10) = -4
fvar(29) = -1
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Reset Gravity Points]
type = varset
triggerall = name = "Gerdon" && fvar(29)
trigger1 = p2statetype != A
fvar(29) = 0
ignorehitpause = 1

[state -2, Gerdon: G(ravity)-Note Float]
type = null
triggerall = name = "Gerdon" && fvar(29)
trigger1 = fvar(30) := 64.0 || 1 ; time
trigger1 = fvar(31) := -8.0 || 1 ; velocity
trigger1 = fvar(32) := (0 - (fvar(31) * fvar(30))) / (fvar(30) ** 2.0 / 2.0) ; acceleration

[state -2, Gerdon: G(ravity)-Note Indicator]
type = palfx
triggerall = name = "Gerdon" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = 0, abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32))))
ignorehitpause = 1

[state -2, Gerdon: Afterimages]
type = afterimagetime
triggerall = name = "Gerdon"
trigger1 = stateno = [110, 114]
trigger2 = stateno = 3000 && animelemtime(6) >= 0 && animelemtime(7) <= 4
time = 2
ignorehitpause = 1

;========================< Stan Abilities >========================

; var(52), var(53), fvar(29), fvar(30), fvar(31), fvar(32), fvar(33), fvar(34), sysvar(2), sysvar(3)

[state -2, Stan: Stone Body Ready]
type = null ; varset
triggerall = name = "Stan" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 1800
ignorehitpause = 1

[state -2, Stan: Stone Body Active Meter]
type = varadd
triggerall = name = "Stan" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !fvar(29) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Stan: Stone Body Passive Meter]
type = varadd
triggerall = name = "Stan" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -3
ignorehitpause = 1

[state -2, Stan: Stone Body Cooldown]
type = varadd
triggerall = name = "Stan" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Stan: Stone Body Limiter]
type = varset
triggerall = name = "Stan"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Stan: Stone Body State]
type = hitoverride
trigger1 = name = "Stan" && fvar(29)
attr = SCA, AA, AP, NT
time = 1
stateno = 906
ignorehitpause = 1

[state -2, Stan: Stone Body State]
type = hitoverride
trigger1 = name = "Stan" && fvar(29)
trigger1 = movetype = H && stateno != [906, 907]
attr = 
time = 1
stateno = 5000
ignorehitpause = 1

[State -2, Stan: Stone Body Vulnerability]
type = hitby
trigger1 = name = "Stan" && fvar(29)
value = SCA, AA, AP, ST, HT
time = 1
ignorehitpause = 1

[State -2, Stan: Stone Body No guard]
type = assertspecial
trigger1 = name = "Stan" && fvar(29)
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[State -2, Stan: Stone Body Specs]
type = null
triggerall = name = "Stan" && fvar(29)
trigger1 = fvar(31) > 0
trigger1 = fvar(31) := fvar(31) - 1
trigger2 = fvar(31) <= 0
trigger2 = fvar(30) := 0
ignorehitpause = 1

[state -2, Stan: Stone Body Won't Get Stuck on Last Frame]
type = varset
triggerall = name = "Stan" && fvar(33)
trigger1 = !fvar(29) || movetype = H && stateno != [906, 907]
trigger2 = prevstateno != 907 && stateno != [906, 907]
fvar(33) = 0
ignorehitpause = 1

[state -2, Stan: Stone Body Passive Effects]
type = assertspecial
triggerall = name = "Stan" && var(53)
trigger1 = stateno = 210 || stateno = 240
trigger2 = stateno = 1000
flag = unguardable
ignorehitpause = 1

[state -2, Stan: Stone Body Indicator]
type = palfx
triggerall = name = "Stan" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0
ignorehitpause = 1

[state -2, Stan: Afterimages]
type = afterimagetime
triggerall = name = "Stan"
trigger1 = stateno = [110, 114]
time = 2
ignorehitpause = 1

;========================< Chieshen Abilities >========================

; var(52), var(53), fvar(29), fvar(30), fvar(31), fvar(32), sysvar(2), sysvar(3)

[state -2, Chieshen: Calm Spirit Ready]
type = null ; varset
triggerall = name = "Chieshen" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 600
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Active Massive]
type = varadd
triggerall = name = "Chieshen" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !fvar(30) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Passive Meter]
type = varadd
triggerall = name = "Chieshen" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Cooldown]
type = varadd
triggerall = name = "Chieshen" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Limiter]
type = varset
triggerall = name = "Chieshen"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Levitation Reset]
type = varset
triggerall = name = "Chieshen" && (fvar(29) || fvar(30))
trigger1 = !sysvar(2)
trigger2 = statetype != A ; || pos y >= 0
fvar(29) = 0 * floor(fvar(30) := 0)
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Levitation Reset]
type = varadd
trigger1 = name = "Chieshen" && fvar(29)
fvar(29) = -1

[state -2, Chieshen: Calm Spirit]
type = playerpush
trigger1 = name = "Chieshen" && fvar(29)
trigger1 = movetype != H
value = 0
ignorehitpause = 1

[state -2, Chieshen: Calm Spirit Life Record]
type = varset
triggerall = name = "Chieshen" ; && var(53)
trigger1 = hitshakeover
fvar(31) = life + 0 * (fvar(32) := fvar(32) * var(53))
ignorehitpause = 1
[state -2, Chieshen: Calm Spirit Life Record]
type = varset
triggerall = name = "Chieshen" ; && var(53)
trigger1 = !hitshakeover
fvar(32) = fvar(31)
ignorehitpause = 1
[state -2, Chieshen: Calm Spirit Life Record]
type = lifeadd
triggerall = name = "Chieshen" && var(53)
trigger1 = alive && movetype != H && hitshakeover
trigger1 = life < fvar(32) && gametime % 2 = 0
value = 1

[state -2, Chieshen: Calm Spirit Indicator]
type = palfx
triggerall = name = "Chieshen" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = 0, abs(floor(72 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0
ignorehitpause = 1

[state -2, Chieshen: Afterimages]
type = afterimagetime
triggerall = name = "Chieshen"
trigger1 = stateno = [110, 114]
time = 2
ignorehitpause = 1

;========================< Dietrich Abilities >========================

; var(52), var(53), fvar(29), sysvar(2), sysvar(3)

[state -2, Dietrich: Magnetic Field Ready]
type = null ; varset
triggerall = name = "Dietrich" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 720
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Active Meter]
type = varadd
triggerall = name = "Dietrich" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Passive Meter]
type = varadd
triggerall = name = "Dietrich" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Cooldown]
type = varadd
triggerall = name = "Dietrich" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0) + 0 * floor(fvar(29) := 0)
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Limiter]
type = varset
triggerall = name = "Dietrich"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Barrier Projectile]
type = helper
triggerall = name = "Dietrich" && var(53)
triggerall = sysvar(2) && sysvar(3) = sysvar(2)
triggerall = var(59) && pos y >= 0 && statetype != A
triggerall = fvar(29) < 4 && stateno != 914
triggerall = animexist(anim + 10000)
trigger1 = !numhelper(911)
name = "Magnetic Barrier Projectile"
ID = 911
stateno = 911
postype = P1
pos = 0, 0
ownpal = 0
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Barrier Player]
type = helper
triggerall = name = "Dietrich" && var(53)
triggerall = sysvar(2) && sysvar(3) = sysvar(2)
triggerall = var(59) && pos y >= 0 && statetype != A
triggerall = fvar(29) < 4 && stateno != 914
triggerall = animexist(anim + 10000) && !numhelper(912)
trigger1 = p2name = "Lee" && p2movetype = A
trigger1 = p2stateno != 1100 && p2stateno = [1000, 1400]
trigger2 = p2name = "Yun" && p2movetype = A
trigger2 = p2stateno = 1000 || p2stateno = 1400 || p2stateno = 3000
trigger3 = p2name = "King" && p2movetype = A
trigger3 = p2stateno = 3000
trigger4 = p2name = "Kaori" && p2movetype = A
trigger4 = p2stateno = 3000 && (enemy,animelemtime(24) >= 0 && enemy,animelemtime(27) < 0 || enemy,animelemtime(42) >= 0 && enemy,animelemtime(60) < 0) || p2stateno = [1100, 1300]
trigger5 = p2name = "Sheana" && p2movetype = A
trigger5 = p2stateno = 3000 || p2stateno = [1200, 1300]
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
trigger12 = p2stateno = 1100 || p2stateno = 1300 || p2stateno = 3000
name = "Magnetic Barrier Player"
ID = 912
stateno = 911
postype = P1
pos = 0, 0
ownpal = 0
ignorehitpause = 1

[State -2, Dietrich: Magnetic Field Barrier No guard]
type = assertspecial
triggerall = name = "Dietrich" && var(53)
triggerall = sysvar(2) && sysvar(3) = sysvar(2)
triggerall = var(59) && pos y >= 0 && statetype != A
triggerall = fvar(29) < 4 && stateno != 914
triggerall = animexist(anim + 10000) && numhelper(912)
trigger1 = p2name = "Lee" && p2movetype = A
trigger1 = p2stateno != 1100 && p2stateno = [1000, 1400]
trigger2 = p2name = "Yun" && p2movetype = A
trigger2 = p2stateno = 1000 || p2stateno = 1400 || p2stateno = 3000
trigger3 = p2name = "King" && p2movetype = A
trigger3 = p2stateno = 3000
trigger4 = p2name = "Kaori" && p2movetype = A
trigger4 = p2stateno = 3000 && (enemy,animelemtime(24) >= 0 && enemy,animelemtime(27) < 0 || enemy,animelemtime(42) >= 0 && enemy,animelemtime(60) < 0) || p2stateno = [1100, 1300]
trigger5 = p2name = "Sheana" && p2movetype = A
trigger5 = p2stateno = 3000 || p2stateno = [1200, 1300]
trigger6 = p2name = "Madiesha" && p2movetype = A
trigger6 = p2stateno = 1400
trigger7 = p2name = "Gerdon" && p2movetype = A
trigger7 = p2stateno = 1200
trigger8 = p2name = "Stan" && p2movetype = A && numenemy
trigger8 = p2stateno = 1000 && enemy,anim = 1005 || p2stateno = 3000
trigger9 = p2name = "Chieshen" && p2movetype = A
trigger9 = p2stateno = 3000
trigger10 = p2name = "Dietrich" && p2movetype = A
trigger10 = p2stateno = 1200
trigger11 = p2name = "Cula" && p2movetype = A
trigger11 = p2stateno = 1100
trigger12 = p2name = "Zhao" && p2movetype = A
trigger12 = p2stateno = 1100 || p2stateno = 1300 || p2stateno = 3000
flag = nostandguard
flag2 = nocrouchguard
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Barrier]
type = hitby
triggerall = name = "Dietrich" && var(53)
triggerall = sysvar(2) && sysvar(3) = sysvar(2)
triggerall = var(59) && pos y >= 0 && statetype != A
triggerall = fvar(29) < 4 && stateno != 914
triggerall = animexist(anim + 10000)
trigger1 = !numhelper(911)
value = SCA, AA, AT, HP
time = 1
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Charged]
type = changestate
triggerall = name = "Dietrich" && var(53)
triggerall = sysvar(2) && sysvar(3) = sysvar(2)
triggerall = var(59) && pos y >= 0 && statetype != A
triggerall = fvar(29) < 4 && animexist(anim + 10000)
triggerall = cond(numhelper(911), cond(helper(911),prevstateno, 1, 0), 0) || cond(numhelper(912), cond(helper(912),prevstateno, 1, 0), 0)
trigger1 = (stateno = [0, 105]) || (stateno = [120, 155])
trigger2 = (stateno = [200, 440]) || stateno = 913
trigger3 = (stateno = [1000, 1200]) || (stateno = [3000, 3999])
trigger4 = (stateno = [5000, 5011])
value = 913
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Overcharged]
type = changestate
triggerall = name = "Dietrich"
triggerall = var(59) && var(53) && fvar(29) >= 4
triggerall = pos y >= 0 && statetype != A
trigger1 = (stateno = [0, 105]) || (stateno = [120, 155])
trigger2 = (stateno = [200, 440]) || stateno = 913
trigger3 = (stateno = [1000, 1200]) || (stateno = [3000, 3999])
trigger4 = (stateno = [5000, 5011])
value = 914
ignorehitpause = 1

[state -2, Dietrich: Magnetic Field Indicator]
type = palfx
triggerall = name = "Dietrich" && var(53)
triggerall = stateno != 913
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = 0, 0, abs(floor(128 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32))))
ignorehitpause = 1

[state -2, Dietrich: Afterimages]
type = afterimagetime
triggerall = name = "Dietrich"
trigger1 = stateno = [110, 114]
time = 2
ignorehitpause = 1

;========================< Cula Abilities >========================

; var(52), var(53), fvar(29) sysvar(2), sysvar(3)

[state -2, Cula: Spirit Portal Ready]
type = null ; varset
triggerall = name = "Cula" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 3600
ignorehitpause = 1

[state -2, Cula: Spirit Portal Active Meter]
type = varadd
triggerall = name = "Cula" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 6
ignorehitpause = 1

[state -2, Cula: Spirit Portal Passive Meter]
type = varadd
triggerall = name = "Cula" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -8
ignorehitpause = 1

[state -2, Cula: Spirit Portal Cooldown]
type = varadd
triggerall = name = "Cula" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -6 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Cula: Spirit Portal Limiter]
type = varset
triggerall = name = "Cula"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Cula: Spirit Portal Defense Breaker]
type = varadd
triggerall = name = "Cula" && var(53)
trigger1 = numtarget && var(10) = hitpausetime
trigger1 = target,gethitvar(guarded) && !target,ctrl
trigger1 = !target,hitover
fvar(29) = 1
ignorehitpause = 1

[state -2, Cula: Spirit Portal Defense Breaker]
type = varset
triggerall = name = "Cula" && fvar(29)
trigger1 = numtarget
trigger1 = !target,gethitvar(guarded) || target,ctrl || target,hitover 
trigger2 = !numtarget || !var(53)
fvar(29) = 0
ignorehitpause = 1

[state -2, Cula: Spirit Portal Defense Breaker]
type = assertspecial
trigger1 = name = "Cula" && var(53) 
trigger1 = fvar(29) && fvar(29) >= 2
flag = unguardable
ignorehitpause = 1

[state -2, Cula: Spirit Portal Defense Breaker]
type = targetstate
triggerall = name = "Cula" && var(53)
triggerall = sysvar(2) && sysvar(3) = sysvar(2)
triggerall = var(10) = hitpausetime && numtarget
triggerall = moveguarded && fvar(29) >= 2
triggerall = target,var(59) && target,stateno = [120, 155]
triggerall = target,pos y >= 0 && target,statetype != A
trigger1 = stateno = 110 || stateno = 210 || stateno = 215
trigger2 = stateno = 240 || stateno = 410 || stateno = 440
trigger3 = stateno = 610 || stateno = 640
trigger4 = stateno = 1100
value = 5310 + 0 * floor(fvar(29) := 0)
ignorehitpause = 1

[state -2, Cula: Afterimages]
type = afterimagetime
triggerall = name = "Cula"
trigger1 = stateno = [110, 114]
time = 2
ignorehitpause = 1

;========================< Zhao Abilities >========================

; var(52), var(53), sysvar(2), sysvar(3)

[state -2, Zhao: External Blaze Ready]
type = null ; varset
triggerall = name = "Zhao" && !sysvar(2)
trigger1 = life <= lifemax * sysfvar(0)
sysvar(2) = 600
ignorehitpause = 1

[state -2, Zhao: External Blaze Active Meter]
type = varadd
triggerall = name = "Zhao" && roundstate = 2
trigger1 = sysvar(2) && var(52) < sysvar(2) && !sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = 1
ignorehitpause = 1

[state -2, Zhao: External Blaze Passive Meter]
type = varadd
triggerall = name = "Zhao" && roundstate = 2
trigger1 = sysvar(2) && var(52) > 0 && sysvar(3)
trigger1 = stateno != [900, 999]
var(52) = -1
ignorehitpause = 1

[state -2, Zhao: External Blaze Cooldown]
type = varadd
triggerall = name = "Zhao" && roundstate = 2
trigger1 = sysvar(2) && var(52) <= 0 && sysvar(3)
trigger1 = stateno != [900, 999]
sysvar(3) = -1 + 0 * (var(53) := 0)
ignorehitpause = 1

[state -2, Zhao: External Blaze Limiter]
type = varset
triggerall = name = "Zhao"
trigger1 = var(52) > sysvar(2)
trigger2 = var(52) < 0
var(52) = cond(var(52) > sysvar(2), sysvar(2), 0)
ignorehitpause = 1

[state -2, Zhao: External Blaze Passive Indicator]
type = palfx
triggerall = name = "Zhao" && var(53)
trigger1 = sysvar(3) = sysvar(2)
time = 1
add = abs(floor(128 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), abs(floor(64 * cos(var(51) * pi / cond(var(52) < sysvar(2) / 3, 8, 32)))), 0
ignorehitpause = 1

[state -2, Zhao: Afterimages]
type = afterimagetime
triggerall = name = "Zhao"
trigger1 = stateno = [110, 114]
trigger1 = animelemtime(8) < 0
time = 2
ignorehitpause = 1

;========================< Post Global Abilities >========================

[state -2, Global: G(ravity)-Note Effects]
type = posadd
triggerall = numenemy && pos y < 0
triggerall = enemy,name = "Gerdon" && enemy,var(53)
trigger1 = stateno = 50 || stateno = [600, 699]
y = 4.0

[state -2 Global: Magnetic Field Effects]
type = palfx
trigger1 = numenemy && movereversed = 1 && gethitvar(chainid) = 911
trigger1 = enemy,name = "Dietrich" && enemy,var(53)
trigger1 = enemy,numhelper(912)
time = 16
add = -128, -128, -128
sinadd = 32, 128, 256, 8
ignorehitpause = 1

[state -2, Global: Passive Skill Indicator]
type = varadd
trigger1 = var(53)
trigger1 = sysvar(3) = sysvar(2)
var(51) = 1
ignorehitpause = 1

[state -2, Global: Passive Skill Indicator]
type = varset
trigger1 = var(51)
trigger1 = sysvar(3) != sysvar(2)
var(51) = 0
ignorehitpause = 1

[state -2, Global: Reset Tough Skill If Round is Over]
type = null
triggerall = !alive || stateno = 180 || !sysvar(2)
trigger1 = var(52) := 0 || var(53) := 0 || 1
trigger1 = fvar(29) := 0 || fvar(30) := 0 ||  fvar(31) := 0 || 1
trigger1 = fvar(32) := 0 || fvar(33) := 0 || fvar(34) := 0

;=========================================================================
; Postcache -2
;=========================================================================

[state -2, Postcache: Reset Movecontact]
type = varset
trigger1 = 1
var(10) = -1

[state -2, Postcache: Re-Initiate Hit Variables]
type = null
triggerall = movetype = I || movetype = H && time
trigger1 = var(10) := -1 || var(11) := -1 || var(12) := -1 || 1
trigger1 = var(39) := -1 || var(40) := -1 || var(41) := -1 || 1
trigger1 = var(42) := -1 || 1
ignorehitpause = 1

[state -2, Postcache: Superart Active]
type = varadd
trigger1 = var(54)
var(54) = -1

[state -2, Postcache: Superart Inactive]
type = varset
triggerall = var(54)
trigger1 = !var(59) || movetype = H
var(54) = 0

[state -2, Postcache: Jumping Variables Reset]
type = null
triggerall = cond(name = "Stan" && statetype = A, (stateno != [906, 907]), 1)
triggerall = movetype = H || statetype != A || !var(59)
trigger1 = fvar(36) := 0 || fvar(37) := 0 || fvar(38) := 0
ignorehitpause = 1

[state -2, Postcache: Hitdef ID]
type = null
trigger1 = name != "Stan"
trigger1 = cond(movetype != A || time <= 1, var(21) := -1 || var(22) := -2, 1)
trigger1 = cond(movecontact = 1 || movereversed = 1, var(22) := var(21), 0)
ignorehitpause = 1

[state -2, Stan: Postcache: Hitdef ID]
type = null
trigger1 = name = "Stan"
trigger1 = cond((stateno != [906, 907]) && (prevstateno != [906, 907]) && (movetype != A || time <= 1), var(21) := -1 || var(22) := -2, 1)
trigger1 = cond(movecontact = 1 || movereversed = 1, var(22) := var(21), 0)
ignorehitpause = 1

[state -2, Postcache: Measure Damage]
type = varset
trigger1 = 1
var(57) = life
ignorehitpause = 1

[state -2, Postcache: In Own State]
type = varset
trigger1 = 1
var(59) = 0
ignorehitpause = 1

;=========================================================================
; Status -2
;=========================================================================

[state -2, Status: System]
type = displaytoclipboard
trigger1 = authorname = "Super Fighter Team"
text = "Reset = %d | Juggle = %d/%d/%d/%d | Scale = %f | RajaaBoy & XGargoyle \n"
params = var(14), var(15), var(16), var(17), var(18), fvar(23)
ignorehitpause = 1

[state -2, Status: System]
type = appendtoclipboard
trigger1 = authorname = "Super Fighter Team"
;text = "Hit Counter = %d/%f | Target ID = %d | Own = %d | v.1.0"
;text = "Hold = %f | Buffer = %f | Command = %f v.1.0"
;text = "Hold = %f | Buffer = %f | Command = %f v.1.0"
text = "Tap = %f | Button = %f | Buffer = %f | %f v.1.0"
; text = "sysvar(2)/sysvar(3)=%d/%d | var(52)/var(53)=%d/%d fvar(29)=%f v.1.0"
;params = var(13), fvar(22), var(56), var(59)
;params = fvar(4), fvar(5), fvar(6)
;params = fvar(7), fvar(8), fvar(9)
params = fvar(10), fvar(11), fvar(12), fvar(13)
;params =  sysvar(2), sysvar(3), var(52), var(53), fvar(29)
ignorehitpause = 1

;=========================================================================
[StateDef -3]

[State -3, Wrong StateType] ;DEBUG
type= null;superpause
triggerall = roundstate=2
trigger1= pos y!=0 && statetype!=A && statetype!=L
time= 99999
ignorehitpause= 1


;=========================================================================
; Precache -3
;=========================================================================

[state -3, Precache: Detect Contact]
type = varset
trigger1 = var(23) < 0
trigger1 = movecontact = 1
var(23) = hitpausetime
ignorehitpause = 1

;=========================================================================
; CornerPush
;=========================================================================
[state -3, CornerPush: Reset]
type = varset
triggerall = playeridexist(var(55))
trigger1 = numtarget
trigger1 = target,ID = playerid(var(55)),ID
trigger1 = target,gethitvar(hitshaketime) && target,time <= 0
trigger2 = playerid(var(55)),ctrl
trigger3 = playerid(var(55)),hitover && playerid(var(55)),statetype != A && !playerid(var(55)),gethitvar(isbound)
; trigger3 = stateno != -1 && stateno != -1 ;  throw reversal states, if any.
trigger4 = playerid(var(55)),movetype != H && playerid(var(55)),stateno != 5040
trigger5 = playerid(var(55)),statetype = L
var(55) = floor((fvar(24) := 0) + (fvar(25) := 0))

[state -3, Initialize Cornerpush Target ID]
type = varset
trigger1 = numtarget
trigger1 = !target,ishelper
trigger1 = movecontact = 1 && var(23) = hitpausetime || var(10) = -2 || var(10) = -3 || var(10) = -4 || var(10) = -5
var(55) = target,id
ignorehitpause = 1
[state -3, Initialize Cornerpush Force]
type = varset
triggerall = playeridexist(var(55))
trigger1 = 0 ; movecontact = 1 && var(23) = hitpausetime || var(10) = -2 || var(10) = -3 || var(10) = -4 || var(10) = -5
trigger2 = playerid(var(55)),gethitvar(hitshaketime) <= 0
fvar(24) = playerid(var(55)),vel x ; gethitvar(xvel) ; * (1.0 + cond(var(13) * 0.05 < 0.5, var(13) * 0.05, 0.5))
ignorehitpause = 1
[state -3, Initialize Cornerpush Duration]
type = varset
trigger1 = playeridexist(var(55))
trigger1 = movecontact = 1 && var(23) = hitpausetime || var(10) = -2 || var(10) = -3 || var(10) = -4 || var(10) = -5
fvar(25) = fvar(26) + 1
ignorehitpause = 1

[state -3, Activate Cornerpush]
type = posadd
triggerall = fvar(24) && fvar(25) >= 0 && playeridexist(var(55)) ; && roundstate <= 2
triggerall = !hitpausetime && playerid(var(55)),gethitvar(hitshaketime) <= 0
triggerall = cond(playerid(var(55)),screenpos x > screenpos x, cond(screenpos x > gamewidth * 0.5, 1, playerid(var(55)),statetype != A || playerid(var(55)),gethitvar(groundtype) = 3), cond(screenpos x < gamewidth * 0.5, 1, playerid(var(55)),statetype != A || playerid(var(55)),gethitvar(groundtype) = 3))
; Front Hit Velocity
trigger1 = playerid(var(55)),frontedgebodydist <= abs(playerid(var(55)),vel x) ; abs(playerid(var(55)),vel x + playerid(var(55)),const(size.ground.front))
trigger1 = playerid(var(55)),gethitvar(xvel) * playerid(var(55)),facing > 0.0
; Back Hit Velocity
trigger2 = playerid(var(55)),backedgebodydist <= abs(playerid(var(55)),vel x) ; abs(playerid(var(55)),vel x - playerid(var(55)),const(size.ground.back))
trigger2 = playerid(var(55)),gethitvar(xvel) * playerid(var(55)),facing < 0.0
; Front Throw Velocity
trigger3 = playerid(var(55)),frontedgebodydist <= abs(playerid(var(55)),vel x) ; abs(playerid(var(55)),vel x + playerid(var(55)),const(size.ground.front))
trigger3 = playerid(var(55)),vel x > 0.0 && !playerid(var(55)),gethitvar(xvel)
trigger3 = playerid(var(55)),movetype = H
; Back Throw Velocity
trigger4 = playerid(var(55)),backedgebodydist <= abs(playerid(var(55)),vel x) ; abs(playerid(var(55)),vel x - playerid(var(55)),const(size.ground.back))
trigger4 = playerid(var(55)),vel x < 0.0 && !playerid(var(55)),gethitvar(xvel)
trigger4 = playerid(var(55)),movetype = H
x = cond((playerid(var(55)),pos x - pos x) * facing > 0, -abs(fvar(24)), abs(fvar(24)))

[state -3, Cornerpush Force]
type = varset
trigger1 = playeridexist(var(55)) && !hitpausetime
trigger1 = playerid(var(55)),gethitvar(hitshaketime) <= 0
fvar(24) = playerid(var(55)),vel x ; * (1.0 + cond(var(13) * 0.05 < 0.5, var(13) * 0.05, 0.5))

[state -3, Cornerpush Duration]
type = varadd
trigger1 = fvar(25) >= 0
trigger1 = playeridexist(var(55)) && !hitpausetime
trigger1 = playerid(var(55)),gethitvar(hitshaketime) <= 0
fvar(25) = -1

[state -3, CornerPush: Reset All]
type = null
trigger1 = fvar(25) <= 0 || !playeridexist(var(55))
trigger1 = fvar(24) := 0 || fvar(25) := -1 || fvar(26) := 0 ; || var(55) := 0

;=========================================================================
; Canceling
;=========================================================================

[state -3, Reset Cancellations]
type = null
trigger1 = var(36) := 0 || var(37) := 0 || var(38) := 0
ignorehitpause = 1

;========================< Lee Cancellations >========================

[state -3, Lee: Misc Cancellations]
type = null
triggerall = name = "Lee"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Lee: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Lee"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = -1), (animelemtime(1) = [4, 8]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [10, 14]), (animelemtime(1) = [10, 19]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = -1), (animelemtime(1) = [2, 8]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = -1), (animelemtime(1) = [10, 17]))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [2, 3]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [10, 11]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = -1
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Lee: Special Move -> Super Cancellations]
type = null
triggerall = name = "Lee"
; Dragon Claw Swipe X
trigger1 = stateno = 1000 && movecontact && var(9) = 1
trigger1 = animelemtime(1) = [12, 19]
trigger1 = var(38) := 50
; Hunting Dragon
trigger2 = stateno = 1500 && numhelper(1505)
trigger2 = animelemtime(1) = [16 + 4 * (anim = 1501), 23 + 4 * (anim = 1501)]
trigger2 = var(38) := 51

;========================< Yun Cancellations >========================

[state -3, Yun: Misc Cancellations]
type = null
triggerall = name = "Yun"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Yun: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Yun"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [4, 10]), (animelemtime(1) = [3, 8]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [8, 16]), (animelemtime(1) = [8, 17]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [3, 9]), (animelemtime(1) = [3, 9]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = -1), (animelemtime(1) = [8, 19]))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [2, 7]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [8, 17]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [4, 10]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Yun: Special Move -> Super Cancellations]
type = null
triggerall = name = "Yun"
; Shaolin Triple Palm
trigger1 = stateno = 1200 && movecontact
trigger1 = (animelemtime(1) = [10, 19]) || (animelemtime(1) = [24, 33]) || (animelemtime(1) = [38, 49])
trigger1 = var(38) := 50
; Celestial Strike
trigger2 = stateno = 1400 && movecontact
trigger2 = animelemtime(1) = [16 + 4 * (anim = 1401), 31 + 4 * (anim = 1401)]
trigger2 = var(38) := 51

;========================< King Cancellations >========================

[state -3, King: Misc Cancellations]
type = null
triggerall = name = "King"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, King: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "King"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [5, 10]), (animelemtime(1) = [4, 9]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = -1), (animelemtime(1) = [8, 15]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [5, 11]), (animelemtime(1) = [4, 9]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = [12, 21]), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [4, 11]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [11, 19]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [6, 11]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, King: Special Move -> Super Cancellations]
type = null
triggerall = name = "King"
; Medium Kick
trigger1 = stateno = 1300 && movecontact && var(9) = 1
trigger1 = (animelemtime(1) = [28, 31]) || (animelemtime(1) = [44, 53])
trigger1 = var(38) := 50
; Combo Kick
trigger2 = stateno = 1400 && movecontact
trigger2 = animelemtime(1) = [16 + 4 * (anim = 1401), 31 + 4 * (anim = 1401)]
trigger2 = var(38) := 51

;========================< Kaori Cancellations >========================

[state -3, Kaori: Misc Cancellations]
type = null
triggerall = name = "Kaori"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Kaori: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Kaori"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [4, 9]), (animelemtime(1) = [3, 8]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = -1), (animelemtime(1) = [8, 11]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [5, 10]), (animelemtime(1) = [4, 9]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = -1), (animelemtime(1) = [9, 17]))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [4, 11]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [12, 23]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [4, 9]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Kaori: Special Move -> Super Cancellations]
type = null
triggerall = name = "Kaori"
; ???
trigger1 = stateno = -1 && movecontact && var(9) = 1
trigger1 = (animelemtime(1) = -1)
trigger1 = var(38) := 50

;========================< Sheana Cancellations >========================

[state -3, Sheana: Misc Cancellations]
type = null
triggerall = name = "Sheana"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Sheana: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Sheana"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [5, 9]), (animelemtime(1) = [3, 6]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = -1), (animelemtime(1) = [10, 11]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = -1), (animelemtime(1) = [4, 9]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [5, 12]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [12, 25]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [4, 11]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Sheana: Special Move -> Super Cancellations]
type = null
triggerall = name = "Sheana"
; Boomerang Kick
trigger1 = stateno = 1200 && movecontact
trigger1 = (animelemtime(1) = [14, 21]) || (animelemtime(1) = [27, 34])
trigger1 = var(38) := 50

;========================< Madiesha Cancellations >========================

[state -3, Madiesha: Misc Cancellations]
type = null
triggerall = name = "Madiesha"
trigger1 = (stateno = [200, 205]) && animelemtime(3) >= 0 && var(6) < 5
trigger1 = var(36) := 1
trigger2 = (stateno = [230, 235]) && animelemtime(5) >= 0 && var(6) < 5
trigger2 = var(36) := 2

[state -3, Madiesha: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Madiesha"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [3, 10]), (animelemtime(1) = [2, 8]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [9, 19]), (animelemtime(1) = [8, 17]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [6, 13]), (animelemtime(1) = [6, 13]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = [8, 16]), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [2, 10]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [12, 25]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [2, 9]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Madiesha: Special Move -> Super Cancellations]
type = null
triggerall = name = "Madiesha"
; ???
trigger1 = stateno = -1 && movecontact && var(9) = 1
trigger1 = (animelemtime(1) = -1)
trigger1 = var(38) := 50

;========================< Gerdon Cancellations >========================

[state -3, Gerdon: Misc Cancellations]
type = null
triggerall = name = "Gerdon"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Gerdon: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Gerdon"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [4, 9]), (animelemtime(1) = -1))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [10, 18]), (animelemtime(1) = [11, 18]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [6, 11]), (animelemtime(1) = [4, 9]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = [15, 17]), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [6, 15]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [12, 13]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [4, 9]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Gerdon: Special Move -> Super Cancellations]
type = null
triggerall = name = "Gerdon"
; Vacuum Knee
trigger1 = stateno = 1105 ; && movecontact
trigger1 = animelemtime(1) = [76, 85]
trigger1 = var(38) := 50
; Sweeper
trigger2 = stateno = 1400 && movecontact
trigger2 = time <= 20
trigger2 = var(38) := 51

;========================< Stan Cancellations >========================

[state -3, Stan: Misc Cancellations]
type = null
triggerall = name = "Stan"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Stan: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Stan"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [7, 14]), (animelemtime(1) = -1))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [18, 21]), (animelemtime(1) = -1))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [8, 15]), (animelemtime(1) = -1))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [6, 11]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [11, 16]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [8, 10]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Stan: Special Move -> Super Cancellations]
type = null
triggerall = name = "Stan"
; ???
trigger1 = stateno = -1 && movecontact
trigger1 = animelemtime(1) = -1
trigger1 = var(38) := 50

;========================< Chieshen Cancellations >========================

[state -3, Chieshen: Misc Cancellations]
type = null
triggerall = name = "Chieshen"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Chieshen: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Chieshen"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [6, 13]), (animelemtime(1) = [4, 11]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [11, 20]), (animelemtime(1) = [9, 18]))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [8, 15]), (animelemtime(1) = -1))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = [8, 13]) || (animelemtime(1) = [20, 25]), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [3, 8]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = -1
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [5, 10]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = [12, 21]
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = [4, 15]), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = [10, 15]), (animelemtime(1) = [10, 19]))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = [6, 11]), (animelemtime(1) = [6, 21]))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = [9, 16]), (animelemtime(1) = [9, 16]))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Chieshen: Special Move -> Super Cancellations]
type = null
triggerall = name = "Chieshen"
; ???
trigger1 = stateno = -1 && movecontact
trigger1 = animelemtime(1) = -1
trigger1 = var(38) := 50

;========================< Dietrich Cancellations >========================

[state -3, Dietrich: Misc Cancellations]
type = null
triggerall = name = "Dietrich"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Dietrich: Normal Move -> Special/Super Cancellations]
type = null
triggerall = name = "Dietrich"
triggerall = movecontact
; S. Weak/Medium Punch
trigger1 = stateno = 200 || stateno = 205
trigger1 = cond(stateno = 200, (animelemtime(1) = [4, 9]), (animelemtime(1) = [6, 11]))
trigger1 = var(37) := cond(stateno = 200, 1, 2) || var(38) := cond(stateno = 200, 1, 2)
; S. Strong/Distinct Punch
trigger2 = stateno = 210 || stateno = 215
trigger2 = cond(stateno = 210, (animelemtime(1) = [11, 20]), (animelemtime(1) = -1))
trigger2 = var(37) := cond(stateno = 210, 3, 4) || var(38) := cond(stateno = 210, 3, 4)
; S. Weak/Medium Kick
trigger3 = stateno = 230 || stateno = 235
trigger3 = cond(stateno = 230, (animelemtime(1) = [5, 12]), (animelemtime(1) = [9, 18]))
trigger3 = var(37) := cond(stateno = 230, 5, 6) || var(38) := cond(stateno = 230, 5, 6)
; S. Strong/Distinct Kick
trigger4 = stateno = 240 || stateno = 245
trigger4 = cond(stateno = 240, (animelemtime(1) = [13, 22]), (animelemtime(1) = -1))
trigger4 = var(37) := cond(stateno = 240, 7, 8) || var(38) := cond(stateno = 240, 7, 8)
; C. Medium Punch
trigger5 = stateno = 400
trigger5 = animelemtime(1) = [6, 13]
trigger5 = var(37) := 9 || var(38) := 9
; C. Strong Punch
trigger6 = stateno = 410
trigger6 = animelemtime(1) = [11, 20]
trigger6 = var(37) := 10 || var(38) := 10
; C. Medium Kick
trigger7 = stateno = 430
trigger7 = animelemtime(1) = [6, 13]
trigger7 = var(37) := 11 || var(38) := 11
; C. Strong Kick
trigger8 = stateno = 440
trigger8 = animelemtime(1) = -1
trigger8 = var(37) := 12 || var(38) := 12
; A. Medium Punch
trigger9 = stateno = 600 || stateno = 605
trigger9 = cond(stateno = 600, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger9 = var(37) := cond(stateno = 600, 13, 14) || var(38) := cond(stateno = 600, 13, 14)
; A. Strong Punch
trigger10 = stateno = 610 || stateno = 615
trigger10 = cond(stateno = 610, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger10 = var(37) := cond(stateno = 610, 15, 16) || var(38) := cond(stateno = 610, 15, 16)
; A. Medium Kick
trigger11 = stateno = 630 || stateno = 635
trigger11 = cond(stateno = 630, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger11 = var(37) := cond(stateno = 630, 17, 18) || var(38) := cond(stateno = 630, 17, 18)
; A. Strong Kick
trigger12 = stateno = 640 || stateno = 645
trigger12 = cond(stateno = 640, (animelemtime(1) = -1), (animelemtime(1) = -1))
trigger12 = var(37) := cond(stateno = 640, 19, 20) || var(38) := cond(stateno = 640, 19, 20)

[state -3, Dietrich: Special Move -> Super Cancellations]
type = null
triggerall = name = "Dietrich"
; Nazi Strike
trigger1 = stateno = 1000 && numhelper(1005)
trigger1 = animelemtime(1) = [15 + 4 * (anim = 1001), 22 + 4 * (anim = 1001)]
trigger1 = var(38) := 50
; Lightning Rush
trigger2 = stateno = 1100 && numhelper(1105) && var(6) >= cond(var(9) = 2, 3, 2)
trigger2 = animelemtime(1) = [12 + 4 * (anim = 1101), 31 + 4 * (anim = 1101)]
trigger2 = var(38) := 51
; Demon Arm
trigger3 = stateno = 1200 && movecontact
trigger3 = animelemtime(8) < 0
trigger3 = var(38) := 52

;========================< Cula Cancellations >========================

[state -3, Cula: Misc Cancellable]
type = null
triggerall = name = "Cula"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Cula: Special Cancellable Normals]
type = null
triggerall = name = "Cula"
; S. Weak Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 9]
trigger1 = var(37) := 1 
; S. Strong Punch
trigger2 = stateno = 210 && movecontact
trigger2 = animelemtime(1) = [14, 23]
trigger2 = var(37) := 2
; S. Weak Kick
trigger3 = stateno = 230 && movecontact
trigger3 = animelemtime(1) = [4, 9]
trigger3 = var(37) := 3
; S. Medium Kick
trigger4 = stateno = 235 && movecontact
trigger4 = animelemtime(1) = [9, 16]
trigger4 = var(37) := 4
; C. Medium Punch
trigger5 = stateno = 400 && movecontact
trigger5 = animelemtime(1) = [6, 13]
trigger5 = var(37) := 5
; C. Strong Punch
trigger6 = stateno = 410 && movecontact
trigger6 = animelemtime(1) = [10, 19]
trigger6 = var(37) := 6
; C. Medium Kick
trigger7 = stateno = 430 && movecontact
trigger7 = animelemtime(1) = [6, 11]
trigger7 = var(37) := 7

[state -3, Cula: Super Cancellable Normals]
type = null
triggerall = name = "Cula"
; S. Weak Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 12]
trigger1 = var(38) := 1 
; S. Strong Punch
trigger2 = stateno = 210 && movecontact
trigger2 = animelemtime(1) = [14, 23]
trigger2 = var(38) := 2
; S. Weak Kick
trigger3 = stateno = 230 && movecontact
trigger3 = animelemtime(1) = [4, 12]
trigger3 = var(38) := 3 
; S. Medium Kick
trigger4 = stateno = 235 && movecontact
trigger4 = animelemtime(1) = [9, 20]
trigger4 = var(38) := 4
; C. Medium Punch
trigger5 = stateno = 400 && movecontact
trigger5 = animelemtime(1) = [6, 13]
trigger5 = var(38) := 5
; C. Strong Punch
trigger6 = stateno = 400 && movecontact
trigger6 = animelemtime(1) = [10, 19]
trigger6 = var(38) := 6
; C. Medium Kick
trigger7 = stateno = 430 && movecontact
trigger7 = animelemtime(1) = [6, 11]
trigger7 = var(38) := 7

[state -3, Cula: Super Cancellable Specials]
type = null
triggerall = name = "Cula"
; Death Slash
trigger1 = stateno = 1100 && movecontact = [1, 8]
trigger1 = (animelemtime(1) = [12 + 4 * (anim = 1101), 23 + 6 * (anim = 1101)]) || (animelemtime(1) = [28 + 6 * (anim = 1101), 39 + 6 * (anim = 1101)])
trigger1= var(38) := 8
; Hell Spirit
trigger2 = stateno = 1200 && numhelper(1205)
trigger2 = animelemtime(1) = [12 + 6 * (anim = 1201), 18 + 6 * (anim = 1201)]
trigger2= var(38) := 9

;========================< Zhao Cancellations >========================

[state -3, Zhao: Misc Cancellable]
type = null
triggerall = name = "Zhao"
trigger1 = stateno = -1 && animelemtime(-1) >= 0
trigger1 = var(36) := 1

[state -3, Zhao: Special Cancellable Normals]
type = null
triggerall = name = "Zhao"
; S. Weak Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 9]
trigger1 = var(37) := 1 
; S. Medium Punch
trigger2 = stateno = 205 && movecontact
trigger2 = animelemtime(1) = [6, 13]
trigger2 = var(37) := 2
; S. Strong Punch
trigger3 = stateno = 210 && movecontact
trigger3 = animelemtime(1) = [11, 18]
trigger3 = var(37) := 3
; S. Distinct Punch
trigger4 = stateno = 215 && movecontact
trigger4 = animelemtime(1) = [12, 21]
trigger4 = var(37) := 4
; S. Weak Kick
trigger5 = stateno = 230 && movecontact
trigger5 = animelemtime(1) = [4, 9]
trigger5 = var(37) := 5
; S. Medium Kick
trigger6 = stateno = 235 && movecontact
trigger6 = animelemtime(1) = [6, 12]
trigger6 = var(37) := 6
; S. Strong Kick
trigger7 = stateno = 240 && movecontact
trigger7 = animelemtime(1) = [12, 18]
trigger7 = var(37) := 7
; C. Medium Punch
trigger8 = stateno = 400 && movecontact
trigger8 = animelemtime(1) = [6, 12]
trigger8 = var(37) := 8
; C. Strong Punch
trigger9 = stateno = 410 && movecontact
trigger9 = animelemtime(1) = [8, 13]
trigger9 = var(37) := 9
; C. Weak Kick
trigger10 = stateno = 430 && movecontact
trigger10 = animelemtime(1) = [4, 9]
trigger10 = var(37) := 10

[state -3, Zhao: Super Cancellable Normals]
type = null
triggerall = name = "Zhao"
; S. Weak Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 9]
trigger1 = var(38) := 1
; S. Medium Punch
trigger2 = stateno = 205 && movecontact
trigger2 = animelemtime(1) = [6, 17]
trigger2 = var(38) := 2
; S. Strong Punch
trigger3 = stateno = 210 && movecontact
trigger3 = animelemtime(1) = [11, 18]
trigger3 = var(38) := 3
; S. Distinct Punch
trigger4 = stateno = 215 && movecontact
trigger4 = animelemtime(1) = [14, 26]
trigger4 = var(38) := 4
; S. Weak Kick
trigger5 = stateno = 230 && movecontact
trigger5 = animelemtime(1) = [4, 9]
trigger5 = var(38) := 5
; S. Medium Kick
trigger6 = stateno = 235 && movecontact
trigger6 = animelemtime(1) = [8, 16]
trigger6 = var(38) := 6
; S. Strong Kick
trigger7 = stateno = 240 && movecontact
trigger7 = animelemtime(1) = [14, 18]
trigger7 = var(38) := 7
; C. Medium Punch
trigger8 = stateno = 400 && movecontact
trigger8 = animelemtime(1) = [8, 15]
trigger8 = var(38) := 8
; C. Strong Punch
trigger9 = stateno = 410 && movecontact
trigger9 = animelemtime(1) = [9, 17]
trigger9 = var(38) := 9
; C. Weak Kick
trigger10 = stateno = 430 && movecontact
trigger10 = animelemtime(1) = [6, 12]
trigger10 = var(38) := 10

[state -3, Zhao: Super Cancellable Specials]
type = null
triggerall = name = "Zhao"
; Serpent Fang Swipe
trigger1 = stateno = 1000 && movecontact = [1, 8]
trigger1 = anim = 1000 && animelemtime(1) = [30, 38]
trigger1= var(38) := 20
; Steady Cut
trigger2 = stateno = 1100 && movecontact = [1, 8]
trigger2 = animelemtime(1) = [11 + 4 * (anim = 1101), 20 + 4 * (anim = 1101)]
trigger2= var(38) := 21
; Preying Serpent
trigger3 = stateno = 1500 && numhelper(1505)
trigger3 = animelemtime(1) = [16 + 4 * (anim = 1501), 23 + 4 * (anim = 1501)]
trigger3 = var(38) := 51

;========================< Reset Cancellations >========================

[state -3, Reset Cancellations]
type = null
triggerall = time <= 1
trigger1 = var(36) := 0 || var(37) := 0 || var(38) := 0
ignorehitpause = 1

;=========================================================================
; Postcache -3
;=========================================================================

[state -3, Postcache: Turn When Control is Granted]
type = null ; changestate
triggerall = stateno != 0 && stateno != 11 && alive && life > 0 && roundstate = [2, 3]
triggerall = hitover && !hitfall && !hitpausetime && hitshakeover
triggerall = movetype != A && statetype != A && statetype != L
triggerall = numenemy = 1 && !vel x && !vel y && !pos y
triggerall = ctrl && p2dist x < 0 ; && !inguarddist
trigger1 = stateno != 12 && stateno != 52 && stateno != 5001 && stateno != 5011
trigger2 = stateno = 12 && time >= 3 ; unique
trigger3 = stateno = 52 && time >= 3 ; unique
trigger4 = stateno = 5001 && animelemtime(1) >= 4 ; unique
trigger5 = stateno = 5011 && animelemtime(1) >= 4 ; unique
anim = 5 + 1 * (statetype = C || command = "holddown")
value = 0 + 11 * (statetype = C || command = "holddown")
ctrl = 1

[state -3, Postcache: Reset Movecontact]
type = varset
trigger1 = 1
var(23) = -1

[state -3, Postcache: In Own State]
type = varset
trigger1 = 1
var(59) = 1
ignorehitpause = 1