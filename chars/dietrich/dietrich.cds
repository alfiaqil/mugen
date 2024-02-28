; Super Fighter Team

;====================< Default Values >====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;====================< Single Button >====================

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

;====================< Hold Button >====================

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

;====================< Hold Direction >====================

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

;====================< Single Direction >====================

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

;====================< Negative Edge >====================

[Command]
name = "NE_fwd"
command = ~$F
time = 1

[Command]
name = "NE_back"
command = ~$B
time = 1

[Command]
name = "NE_up"
command = ~$U
time = 1

[Command]
name = "NE_down"
command = ~$D
time = 1

[Command]
name = "NE_x"
command = ~x
time = 1

[Command]
name = "NE_y"
command = ~y
time = 1

[Command]
name = "NE_a"
command = ~a
time = 1

[Command]
name = "NE_b"
command = ~b
time = 1

;====================< Super Motions >====================

[Command]
name = "236236P"
command = ~D, DF, F, D, DF, F, x
time = 32
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, F, ~x
time = 32
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, F, y
time = 32
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, F, ~y
time = 32

;====================< Special Motions >====================

[command]
name = "236P"
command = ~D, DF, F, x
time = 16
[command]
name = "236P"
command = ~D, DF, F, ~x
time = 16
[command]
name = "236P"
command = ~D, DF, F, y
time = 16
[command]
name = "236P"
command = ~D, DF, F, ~y
time = 16

[command]
name = "214P"
command = ~D, DB, B, x
time = 16
[command]
name = "214P"
command = ~D, DB, B, ~x
time = 16
[command]
name = "214P"
command = ~D, DB, B, y
time = 16
[command]
name = "214P"
command = ~D, DB, B, ~y
time = 16

[command]
name = "623P"
command = ~F, D, DF, x
time = 16
[command]
name = "623P"
command = ~F, D, DF, ~x
time = 16
[command]
name = "623P"
command = ~F, D, DF, y
time = 16
[command]
name = "623P"
command = ~F, D, DF, ~y
time = 16

;====================< Double Tap >====================-

[Command]
name = "FF"
command = F, F
time = 16

[Command]
name = "BB"
command = B, B
time = 16

;====================< Other >====================

[Command]
name = "tskill"
command = z
time = 1
[Command]
name = "holdtskill"
command = /z
time = 1
[Command]
name = "pskill"
command = /c, z
time = 1
[Command]
name = "dskill"
command = c
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;=========================================================================
[Statedef -1]
;=========================================================================

;=========================================================================
; Status -1
;=========================================================================

[state -1, Status: In Own State]
type = varset
trigger1 = 1
var(59) = 1
ignorehitpause = 1

[state -1, Status: Count Command Buffering]
type = varadd
trigger1 = fvar(1)
fvar(1) = cond(fvar(1) < 0, 1, -1)
ignorehitpause = 1
[state -1, Status: Reset Command State Number]
type = varset
trigger1 = fvar(2) || fvar(3)
trigger1 = fvar(1) <= 0
trigger2 = stateno = fvar(2)
trigger2 = time <= 1 && !ctrl
fvar(2) = (fvar(3) := 0)
ignorehitpause = 1

[state -1, Status: Change to Dizzy State]
type = changestate
triggerall = numhelper(6002)
trigger1 = fvar(14) >= fvar(15) || var(4)
trigger1 = ctrl || movetype != H && stateno != 5120
trigger1 = statetype != A && stateno != [5200, 5210]
trigger1 = fvar(14) := 0 || var(4) := 0 || 1
value = 5300
ignorehitpause = 1

;=========================================================================
; SUPER MOVES
;=========================================================================

[state -1, Nazi Overkill]
type = varset
triggerall = !ailevel
triggerall = command = "236236P"
triggerall = statetype != A
triggerall = power >= powermax
triggerall = !fvar(2) && !sysvar(2)
trigger1 = fvar(3) := 4
fvar(2) = 3000 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Nazi Overkill]
type = changestate
value = 3000
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 3000
triggerall = statetype != A
triggerall = power >= powermax
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 905 && animelemtime(5) >= 0
trigger2 = var(38) ; cancel

;=========================================================================
; SPECIALS
;=========================================================================

[state -1, Demon Arm]
type = varset
triggerall = !ailevel
triggerall = command = "623P"
triggerall = statetype != A
triggerall = !fvar(2)
trigger1 = cond(command = "y" || command = "NE_y", 1 * (fvar(3) := 2), 0)
trigger2 = cond(command = "x" || command = "NE_x", 1 * (fvar(3) := 1), 0)
fvar(2) = 1200 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Demon Arm]
type = changestate
value = 1200
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 1200
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 905 && animelemtime(5) >= 0
trigger2 = var(37) ; cancel

[state -1, Lightning Rush]
type = varset
triggerall = !ailevel
triggerall = command = "214P"
triggerall = statetype != A
triggerall = !fvar(2)
trigger1 = cond(command = "y" || command = "NE_y", 1 * (fvar(3) := 2), 0)
trigger2 = cond(command = "x" || command = "NE_x", 1 * (fvar(3) := 1), 0)
fvar(2) = 1100 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Lightning Rush]
type = changestate
value = 1100
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 1100
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 905 && animelemtime(5) >= 0
trigger2 = var(37) ; cancel

[state -1, Nazi Strike]
type = varset
triggerall = !ailevel
triggerall = command = "236P"
triggerall = statetype != A
triggerall = !numhelper(1005) || cond(numhelper(1005) = 1, helper(1005),stateno % 50 = 10 || helper(1005),prevstateno % 50 = 10, 0)
triggerall = !fvar(2)
trigger1 = cond(command = "y" || command = "NE_y", 1 * (fvar(3) := 2), 0)
trigger2 = cond(command = "x" || command = "NE_x", 1 * (fvar(3) := 1), 0)
fvar(2) = 1000 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Nazi Strike]
type = changestate
value = 1000
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 1000
triggerall = statetype != A
triggerall = !numhelper(1005) || cond(numhelper(1005) = 1, helper(1005),stateno % 50 = 10 || helper(1005),prevstateno % 50 = 10, 0)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 905 && animelemtime(5) >= 0
trigger2 = var(37) ; cancel

;=========================================================================
; SYSTEM
;=========================================================================

[state -1, Dash Forward]
type = varset
triggerall = !ailevel
triggerall = command = "FF"
triggerall = cond(numenemy, cond(enemy,name = "Gerdon", !enemy,var(53), 1), 1)
trigger1 = !fvar(2)
fvar(2) = 100 + 0 * (fvar(1) := 8 + 4 * (stateno = 100))
ignorehitpause = 1
[state -1, Dash Forward]
type = changestate
value = 100 + 5 * (p2dist x < 0)
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 100
triggerall = statetype != A && stateno != 100
triggerall = cond(numenemy, cond(enemy,name = "Gerdon", !enemy,var(53), 1), 1)
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, Dash Backward]
type = varset
triggerall = !ailevel
triggerall = command = "BB"
triggerall = cond(numenemy, cond(enemy,name = "Gerdon", !enemy,var(53), 1), 1)
trigger1 = !fvar(2)
fvar(2) = 105 + 0 * (fvar(1) := 8 + 4 * (stateno = 105))
ignorehitpause = 1
[state -1, Dash Backward]
type = changestate
value = 105 - 5 * (p2dist x < 0)
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 105
triggerall = statetype != A && stateno != 105
triggerall = cond(numenemy, cond(enemy,name = "Gerdon", !enemy,var(53), 1), 1)
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, Throw]
type = varset
triggerall = !ailevel
triggerall = command = "x" && command = "a" || command = "x" && command = "y" || command = "x" && command = "b"
; triggerall = command = "fwd" || command = "back" || command = "holdfwd" || command = "holdback"
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && p2movetype != A && (p2movetype != H || p2stateno = 5300)
triggerall = p2bodydist x = [-8, 24]
triggerall = !fvar(2)
trigger1 = cond(command = "back" || command = "holdback", fvar(3) := 2, fvar(3) := 1)
fvar(2) = 800 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Throw]
type = changestate
value = 800
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 800
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0
trigger2 = stateno = [200, 499]
trigger2 = time <= 4

[state -1, Magnetic Field]
type = varset
triggerall = !ailevel
triggerall = command = "tskill"
triggerall = statetype != A && stateno != [900, 999]
trigger1 = !fvar(2) && sysvar(2) && var(52) >= (sysvar(2) / 3) && !var(53)
fvar(2) = 905 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Magnetic Field]
type = changestate
value = 905 + 5 * (command = "pskill" && var(52) >= sysvar(2))
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 905
triggerall = statetype != A && stateno != [900, 999]
triggerall = sysvar(2) && var(52) >= (sysvar(2) / 3) && !var(53)
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = var(38) ; cancel

[state -1, Tough Skill]
type = varset
triggerall = !ailevel
triggerall = command = "tskill"
triggerall = statetype != A
triggerall = life <= lifemax * sysfvar(0)
triggerall = power >= powermax
trigger1 = !fvar(2) && !sysvar(2)
fvar(2) = 900 + 0 * (fvar(1) := 8)
ignorehitpause = 1
[state -1, Tough Skill]
type = changestate
value = 900
triggerall = !ailevel
triggerall = fvar(1) > 0 && fvar(2) = 900
triggerall = statetype != A
triggerall = life <= lifemax * sysfvar(0)
triggerall = power >= powermax
trigger1 = ctrl || stateno = 40 || stateno = 52

[state -1, Aerial Recovery]
type = null ; changestate
value = 5210
trigger1 = !ailevel
trigger1 = command = "recovery"
trigger1 = alive && canrecover && stateno = 5050
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = pos y + vel y < const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = fvar(14) < fvar(15) && !var(4)

;=========================================================================
; NORMALS
;=========================================================================

[state -1, S. Weak/Medium Punch]
type = changestate
value = 200 + 5 * (command = "fwd" || command = "holdfwd")
triggerall = !ailevel
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, S. Strong/Distinct Punch]
type = changestate
value = 210 + 5 * (command = "fwd" || command = "holdfwd")
triggerall = !ailevel
triggerall = command = "y" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, S. Weak/Medium Kick]
type = changestate
value = 230 + 5 * (command = "fwd" || command = "holdfwd")
triggerall = !ailevel
triggerall = command = "a" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, S. Strong/Distinct Kick]
type = changestate
value = 240 + 5 * (command = "fwd" || command = "holdfwd")
triggerall = !ailevel
triggerall = command = "b" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, C. Medium Punch]
type = changestate
value = 400
triggerall = !ailevel
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, C. Strong Punch]
type = changestate
value = 410
triggerall = !ailevel
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, C. Medium Kick]
type = changestate
value = 430
triggerall = !ailevel
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, C. Strong Kick]
type = changestate
value = 440
triggerall = !ailevel
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 905 && animelemtime(5) >= 0

[state -1, A. Medium Punch]
type = changestate
value = 600
triggerall = !ailevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[state -1, A. Strong/Distinct Punch]
type = changestate
value = 610
triggerall = !ailevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[state -1, A. Medium Kick]
type = changestate
value = 630
triggerall = !ailevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

[state -1, A. Strong/Crossup Kick]
type = changestate
value = 640
triggerall = !ailevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;===========================================================================
; ARTIFICIAL INTELLIGENCE (ORDERED BY ARBITRARY PREFERENCE)
;===========================================================================

[state -1, AI Jump]
type = changestate
value = 40
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A && stateno != 40
triggerall = ctrl
; condition
trigger1 = inguarddist && enemynear,hitdefattr = SC,AT
trigger1 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(17) := 1 ; action
; condition
trigger2 = enemy,var(14) = 1 || enemy,var(14) = 2 || enemy,var(14) = 4
trigger2 = enemy,fvar(6) = [64, 128]
trigger2 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(17) := 2 ; action
; condition
trigger3 = backedgedist > frontedgedist && enemy,stateno = 5120 && enemy,anim >= -8
trigger3 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(17) := 3 ; action

[state -1, AI Guard]
type = changestate
value = 120
triggerall = ailevel && numenemy && roundstate = 2 
triggerall = ctrl && inguarddist && stateno != [120, 155]
triggerall = enemynear,hitdefattr != SCA,AT && enemynear,time < 72
; condition
trigger1 = enemy,var(13) && (enemy,pos x - pos x) * facing = [0, enemy,var(13) + 24]
trigger1 = random < cond(statetype = A, 0, cond(statetype != A && p2statetype = A, 496, 896)) * (ailevel ** 2 / 64.0) ; probability
; condition
trigger2 = enemy,var(14) && enemy,fvar(6) = [0, 80]
trigger2 = random < cond(statetype = A, 0, 896) * (ailevel ** 2 / 64.0) ; probability

[state -1, AI Grab]
type = changestate
value = 800
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && p2movetype != A  && (p2movetype != H || p2stateno = 5300)
triggerall = (p2bodydist x = [-8, 16]) && (p2dist y = [-72, 8])
; condition
trigger1 = ctrl
trigger1 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Magnetic Field]
type = changestate
value = 905
triggerall = (statetype != A || pos y < -32) && (stateno != [900, 999]) && prevstateno != 905
triggerall = ailevel && numenemy && roundstate = 2
triggerall = !fvar(2) && sysvar(2) && var(52) >= (sysvar(2) / 3) && !var(53)
; condition
trigger1 = ctrl
trigger1 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Nazi Overkill]
type = changestate
value = 3000
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = power >= powermax
; condition
trigger1 = ctrl || stateno = 52 && time > 3
trigger1 = (p2bodydist x = [-56, 56]) && (p2dist y = [-96, 8])
trigger1 = !enemy,var(14)
trigger1 = random < (48 + 496 * enemy,movetype = I && enemy,animtime < -8 && enemy,stateno = [1000, 3999]) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl || stateno = 52 && time > 3
trigger2 = (p2bodydist x = [-8, 72]) && (p2dist y = [-96, 8])
;trigger2 = p2stateno = 5300 && p2life > 30 && !enemy,var(14)
trigger2 = random < 244 * (ailevel ** 2.0 / 64.0) ; probability

;[state -1, AI Thunder Roar]
;type = changestate
;value = 3100
;triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
;triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
;triggerall = statetype != A
;; triggerall = enemy,name != "Onimaru"
;; triggerall = cond(enemy,name = "Phoenix", enemy,statetype != C, 1)
;triggerall = power >= 124 && !var(14)
;; condition
;trigger1 = ctrl || stateno = 52 && time > 3
;trigger1 = p2bodydist x > 48 && (p2dist y = [-96, 8])
;trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Standing Punch]
type = changestate
value = 200+ 5*(random<500)
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 32]) && (p2dist y = [-72, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Standing Strong/Distinct Punch]
type = changestate
value = 210 + 5*(random<500)
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 32]) && (p2dist y = [-72, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Standing Kick]
type = changestate
value = 230+ 5*(random<500)
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 28]) && (p2dist y = [-96, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Strong/Distinct Kick]
type = changestate
value = 240+ 5*(random<500)
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 28]) && (p2dist y = [-96, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Crouching Punch]
type = changestate
value = 400+ 10*(random<500)
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 28]) && (p2dist y = [-56, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Crouching Kick]
type = changestate
value = 430+ 10*(random<500)
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 68]) && (p2dist y = [-56, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Lightning Rush]
type = changestate
value = 1100
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 && time > 3
trigger1 = (p2bodydist x = [-8, 160]) && (p2dist y = [-96, 8])
trigger1 = !enemy,var(14)
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl || stateno = 52 && time > 3
trigger2 = (p2bodydist x = [-8, 160]) && (p2dist y = [-96, 8])
trigger2 = enemy,hitdefattr = SC,AT && enemy,vel x >= 0 || p2stateno = 430
trigger2 = random < 600 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = ctrl || stateno = 52 && time > 3
trigger3 = (p2bodydist x = [-8, 160]) && (p2dist y = [-96, 8])
trigger3 = p2stateno = 5300 
trigger3 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Nazi Strike]
type = changestate
value = 1000
triggerall = ailevel && numenemy && roundstate = 2 && !var(4)
triggerall = p2statetype != L && p2stateno != 5201 || p2stateno = 5120 && p2bodydist x > 200
triggerall = statetype != A
triggerall = !var(14) && enemy,var(14) != 8
triggerall = !numhelper(1005) || cond(numhelper(1005) = 1, helper(1005),stateno % 50 = 10 || helper(1005),prevstateno % 50 = 10, 0)
; condition
trigger1 = ctrl || stateno = 52 && time > 3
trigger1 = p2bodydist x > 48 && (p2dist y = [-96, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl || stateno = 52 && time > 3
trigger2 = p2bodydist x > 96 && (p2dist y = [-96, 8])
trigger2 = enemy,var(14) = 2 && enemy,fvar(6) > 112
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Demon Arm]
type = changestate
value = 1200
triggerall = ailevel && numenemy && roundstate = 2 && !var(4) ; && var(9) > 16
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201 || enemy,stateno = 5120 && enemy,animtime > -8
triggerall = statetype != A || stateno = 50 && time < 6
; condition
trigger1 = ctrl || stateno = 52 && time > 3
trigger1 = (p2bodydist x = [-8, 96]) && (p2dist y = [-96, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl || stateno = 52 && time > 3
trigger2 = (p2bodydist x = [-8, 96]) && (p2dist y = [-96, 8])
trigger2 = enemy,movetype = A && enemy,var(12) = 1
trigger2 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = ctrl || stateno = 52 && time > 3
trigger3 = (p2bodydist x = [-8, 128]) && (p2dist y = [-96, 8])
trigger3 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability

;[state -1, AI Extra Attack]
;type = changestate
;value = 700
;triggerall = ailevel && numenemy && roundstate = 2
;triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
;triggerall = statetype = A && pos y < -40 && vel y <= 1
;; condition
;trigger1 = ctrl
;trigger1 = (p2bodydist x = [64, 128]) && (p2dist y > -24)
;trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Aerial Punch - Motionless]
type = changestate
value = 600+ 10*(random<500)
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A; && !vel x
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 32]) && (p2dist y = [-80, 48 + 32 * (vel y > 2.0)])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && ailevel >= 6
trigger2 = (p2bodydist x = [-8, 32]) && (p2dist y = [-96, 24 + 32 * (vel y > 2.0)])
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability

;[state -1, AI Aerial Punch - Motional]
;type = changestate
;value = 605
;triggerall = ailevel && numenemy && roundstate = 2
;triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
;triggerall = statetype = A && vel x
;; condition
;trigger1 = ctrl
;trigger1 = (p2bodydist x = [-8, 32 + 8 * vel x * (vel x > 0)]) && (p2dist y = [-80, 48 + 32 * vel y * (vel y > 0)])
;trigger1 = random < 72 * (ailevel ** 2.0 / 64.0) ; probability
;; condition
;trigger2 = ctrl && ailevel >= 6
;trigger2 = vel y > 0 && p2bodydist x > 0 && p2dist y > -64 && abs(p2dist y) = [p2dist x, p2dist x + 72]
;trigger2 = p2statetype != A
;trigger2 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Aerial Kick - Motionless]
type = changestate
value = 630+ 10*(random<500)
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A; && !vel x
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 40]) && (p2dist y = [-96, 24 + 32 * (vel y > 2.0)])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

;[state -1, AI Aerial Kick - Motional]
;type = changestate
;value = 635
;triggerall = ailevel && numenemy && roundstate = 2
;triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
;triggerall = statetype = A && vel x
;; condition
;trigger1 = ctrl
;trigger1 = (p2bodydist x = [-8, 40 + 8 * vel x * (vel x > 0)]) && (p2dist y = [-96, 24 + 32 * vel y * (vel y > 0)])
;trigger1 = random < 72 * (ailevel ** 2.0 / 64.0) ; probability
;; condition
;trigger2 = ctrl && ailevel >= 6
;trigger2 = vel y > 0 && p2bodydist x > 0 && p2dist y > -80 && abs(p2dist y) = [p2dist x, p2dist x + 72]
;trigger2 = p2statetype != A
;trigger2 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability