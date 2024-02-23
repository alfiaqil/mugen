;===========================================================================
; Intelligence Artificiel
;===========================================================================


;===========================================================================
; Button Remapping
;===========================================================================

[Remap]
a = a
b = b
c = c
x = x
y = y
z = z
s = s

;===========================================================================
; Default Values
;===========================================================================

[Defaults]
command.time = 15
command.buffer.time = 1

;===========================================================================
; AI DETECTE
;===========================================================================

;===========================================================================
; Hyper Motions
;===========================================================================

[Command]
name = "illusion2"
command = ~D, F, D, F, c
time = 30

[Command]
name = "illusion3"
command = ~D, B, D, B, c
time = 30

[Command]
name = "Esmeralda"
command = ~D, F, D, F, z
time = 30

;[Command]
;name = "Ken"
;command = ~D, F, D, B, c
;time = 30

;[Command]
;name = "Ultime Phoenix"
;command = ~D, B, D, B, c
;time = 30

;[Command]
;name = "Strong Hô yoku ten shô"
;command = ~D, F, D, F, z
;time = 30
;[Command]
;name = " Strong air Hô yoku ten shô"
;command = ~D, F, D, F, z
;time = 30

;===========================================================================
; Super Motions
;===========================================================================


[Command]
name = "Light Hô yoku ten shô"
command = ~D, F, D, F, a
time = 30
[Command]
name = "Light Hô yoku ten shô"
command = ~D, F, D, F, b
time = 30

;[Command]
;name = "Light air Hô yoku ten shô"
;command = ~D, F, D, F, a
;time = 30
;[Command]
;name = "Light air Hô yoku ten shô"
;command = ~D, F, D, F, b
;time = 30

[Command]
name = "illusion1"
command = ~D, F, D, F, x
time = 30
[Command]
name = "illusion1"
command = ~D, F, D, F, y
time = 30

;[Command]
;name = "illusion4"
;command = ~D, F, D, F, y
;time = 30



;===========================================================================
; Special Motions
;===========================================================================

;Light Super Kick Jump
;[Command]
;name = "Light Super_kick"
;command = ~D, DB, B, x
;time = 30

;SHUN
[Command]
name = "super kik shun"
command = a+y

[Command]
name = "Light MULTI-Punch"
command = ~F, DF, F, x
time = 30
[Command]
name = "Strong MULTI-Punch"
command = ~F, DF, F, y
time = 30

[Command]
name = "médium Super_kick"
command = ~D, DF, F, a
time = 30
[Command]
name = "Strong Super_kick"
command = ~D, DF, F, b
time = 30

[Command]
name = "médium Plongeon"
command = ~D, DB, B, x
time = 30
[Command]
name = "Strong Plongeon"
command = ~D, DB, B, y
time = 30

[Command]
name = "médium fly away phoenix"
command = ~D, DF, F, a
time = 30
[Command]
name = "Strong fly away phoenix"
command = ~D, DF, F, b
time = 30

[Command]
name ="médium Wings"
command = ~D, DF, F, x
time = 30
[Command]
name ="Strong Wings"
command = ~D, DF, F, y
time = 30

[Command]
name = "médium Air_Wings"
command = ~D, DF, F, x
time = 30
[Command]
name = "Strong Air_Wings"
command = ~D, DF, F, y
time = 30

[Command]
name = "médium Fireball_y"
command = ~D, DB, B, x
time = 30
[Command]
name = "Strong Fireball_z"
command = ~D, DB, B, y
time = 30


;=========================

;Light Plongeon du phénix
;[Command]
;name = "Light Plongeon"
;command = ~D, DB, B, a
;time = 30



;=========================

;[Command]
;name = "Light fly away phoenix"
;command = ~D, DF, F, x
;time = 30



;===========================================================================
; Launch Projectile
;===========================================================================

;Light Wings
;[Command]
;name ="Light Wings"
;command = ~D, DF, F, a
;time = 30



;===========================================================================

;Light Air Wings
;[Command]
;name = "Light Air_Wings"
;command = ~D, DF, F, a
;time = 30



;===========================================================================

;FIREBALL
;[Command]
;name = "Light FIREBALL_x"
;command = ~D, DB, B, a
;time = 30



;===========================================================================
; HELPER
;===========================================================================



;===========================================================================
; Combo Motions
;===========================================================================



;===========================================================================
; DEFANCE Motions
;===========================================================================

[Command]
name = "expolsion"
command = ~B, c
time = 15

;=========================

;dimention trensendantall
[Command]
name = "trensdimention1"
command = x+y
time = 10

[Command]
name = "trensdimention2"
command = y+z
time = 10

;===========================================================================
; Throw Motions
;===========================================================================

;throw
[Command]
name = "throw" 
command = /F, c
time = 10

;===========================================================================
; Button combination
;===========================================================================

[Command]
name = "holdpowercosmos z" ;Required (do not remove)
command = /z
time = 1

[Command]
name = "holdpowercosmos c" ;Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_a" ;Required (do not remove)
command = $a
time = 1

[Command]
name = "hold_b" ;Required (do not remove)
command = $b
time = 1

[Command]
name = "hold_c" ;Required (do not remove)
command = $c
time = 1

[Command]
name = "hold_x" ;Required (do not remove)
command = $x
time = 1

[Command]
name = "hold_y" ;Required (do not remove)
command = $y
time = 1

[Command]
name = "hold_z" ;Required (do not remove)
command = $z
time = 1

;Recover
[Command]
name = "recovery"
command = a+x
time = 10

;===========================================================================
; Dir + button
;===========================================================================

;Coup de Coude
[Command]
name = "fwd_a"
command = /F, a
time = 1

;Fast Punch
[Command]
name = "fwd_b"
command = /F, b
time = 1

;Coup de Genou
[Command]
name = "fwd_x"
command = /F, x
time = 1

;Double Coup de Genou
[Command]
name = "fwd_y"
command = /F, y
time = 1

;Fast Kick
[Command]
name = "fwd_z"
command = /F, z
time = 1

;===========================================================================
; Single button
;===========================================================================

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;===========================================================================
;Double Tap
;===========================================================================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;===========================================================================
;Hold Dir
;===========================================================================

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdfwd"
command = /F
time = 1

[Command]
name = "holdback"
command = /B
time = 1

[Command]
name = "holdup"
command = /U
time = 1

[Command]
name = "holddown"
command = /D
time = 1

;--------------------------------------------------------------------------
;-| Player Variable |------------------------------------------------------
;--------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;===========================================================================
;============================SAINT FINISH===================================

;[Hôvo gen ma ken 2]
[State -1,Hôvo gen ma ken2]
type = ChangeState
value = 3034
triggerall = command = "illusion2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;=====================================
;[Hôvo gen ma ken 3]
[State -1,Hôvo gen ma ken3]
type = ChangeState
value = 3038
triggerall = command = "illusion3"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;===========================================================================
;[Souvenir d'Esméralda "contre]
[State -1,Souvenir d'Esmérald]
type = ChangeState
value = 4402;4400
triggerall = command = "Esmeralda"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===============================
;[Ultime Phoenix]
;[State -1,Ultime Phoenix]
;type = ChangeState
;value = 4050
;triggerall = command = "Ultime Phoenix"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;===============================
;[Phoenix no Ken]
;[State -1,Phoenix no Ken]
;type = ChangeState
;value = 3100
;triggerall = command = "Ken"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;===========================================================================
;===========================================================================
; ============================FURY==========================================
;===========================================================================
;===========================================================================


;==========================================================================
;=====================Hô yoku==============================================
;==========================================================================
                 ;========================
                 ;===========SATAND;=====
                 ;========================
;[Stand Hô yoku ten shô niveux1]
[State -1,Light Hô yoku ten shô]
Type = ChangeState
triggerall = command = "Light Hô yoku ten shô"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
value = 3000
;=========================================
;[Stand Hô yoku ten shô niveaux2]
;[State -1,Strong Hô yoku ten shô]
;Type = ChangeState
;triggerall = command = "Strong Hô yoku ten shô"
;triggerall = power >= 2000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;value = 3002
;===========================================================================
                 ;========================
                 ;=========AIRE;==========
                 ;========================
;[air Hô yoku ten shô niveaux1]
;[State -1,Light air Hô yoku ten shô]
;type = ChangeState
;triggerall = command = "Light air Hô yoku ten shô"
;triggerall = power >= 1000
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact
;value =  3007
;=========================================

; [air Hô yoku ten shô niveaux2]
;[State -1,Strong air Hô yoku ten shô]
;type = ChangeState
;value =  3008
;triggerall = command = " Strong air Hô yoku ten shô"
;triggerall = power >= 2000
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact
;==========================================================================
;=====================GEN MA KEN===========================================
;==========================================================================
;[Hôvo gen ma ken 1]
[State -1,Hôvo gen ma ken]
type = ChangeState
value = 3030
triggerall = command = "illusion1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;=====================================
;[Hôvo gen ma ken Tux]
;[State -1,Hôvo gen ma ken Tux]
;type = ChangeState
;value = 3046
;triggerall = command = "illusion4"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;=====================================

;===========================================================================
;===========================================================================
;============================ATTAQUES=======================================
;===========================================================================
;===========================================================================

[State -1,helper1]
type = ChangeState
value = 2000
triggerall = command = "super kik shun"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;MULTI-Punch
[State -1,LightMULTI-Punch]
type = ChangeState
value = 1060
triggerall = command = "Light MULTI-Punch"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;MULTI-Punch
[State -1,Strong MULTI-Punch]
type = ChangeState
value = 1061
triggerall = command = "Strong MULTI-Punch"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===========================================================================
;============================ Fireballs=====================================
;===========================================================================
;[Light Fireball]
;[State -1, Light Fireball]
;type = ChangeState
;triggerall = var(59) = 0
;triggerall = StateType = S
;triggerall = command = "Light FIREBALL_x"
;triggerall = !NumProjID(1000)
;triggerall = !NumProjID(1010)
;triggerall = !NumProjID(1020)
;trigger1 = ctrl
;trigger2= time =6
;trigger3 = (stateno = 200) &&  movecontact
;trigger4 = (stateno = 210) &&  movecontact
;trigger5= (stateno = 220) &&  movecontact
;trigger6= (stateno = 230) &&  movecontact
;trigger7 = (stateno = 240) &&  movecontact
;value = 1000
;=========================================
;[medium Fireball]
[State -2, medium Fireball]
type = ChangeState
triggerall = command = "médium Fireball_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
value = 1010
;=========================================
;[Strong  Fireball]
[State -3, Strong  Fireball]
type = ChangeState
triggerall = command = "Strong Fireball_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
value = 1020
;===========================================================================
;==========================Envol du phénix==================================
;===========================================================================
;[Light fly away phoenix]
;[State -1,Light fly away phoenix]
;type = ChangeState
;value = 1030
;triggerall = var(59) = 0
;trigger1 = command = "Light fly away phoenix"
;trigger1 = statetype = s
;trigger1 = ctrl = 1
;===============================
;  médium fly away phoenix
[State -1,médiumfly away phoenix]
type = ChangeState
value = 1032
triggerall = command = "médium fly away phoenix"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===============================
; Strong fly away phoenix
[State -1,Strongfly away phoenix]
type = ChangeState
value = 1034
triggerall = command = "Strong fly away phoenix"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===========================================================================
;======================Plongeon du phénix===================================
;===========================================================================
;Light Plongeon du phénix
;[State -1, Plongeon du phénix]
;type = ChangeState
;value =1040
;triggerall = var(59) = 0
;trigger1 = command = "Light Plongeon"
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;===============================
;médium  Plongeon du phénix
[State -2,Plongeon du phénix]
type = ChangeState
value =1042
triggerall = command = "médium Plongeon"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;===============================
;Stronga Plongeon du phénix
[State -3, Plongeon du phénix]
type = ChangeState
value =1043
triggerall = command = "Strong Plongeon"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;===========================================================================
;====================PSuper Kick Jump Depuis Air============================
;===========================================================================
;Super Kick Jump Depuis Air
;[State -1,Light Super_kick]
;type = ChangeState
;value = 1050
;triggerall = var(59) = 0
;trigger1 = command = "Light Super_kick"
;trigger1 = statetype = A
;trigger1 = StateNo != 1051
;trigger1 = ctrl = 1
;===============================
[State -2,médium Super_kick]
type = ChangeState
value = 1051
triggerall = command = "médium Super_kick"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;===============================
 [State -3,Strong Super_kick]
type = ChangeState
value = 1052
triggerall = command = "Strong Super_kick"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;===========================================================================
;====================stand écaille phénix===================================
;===========================================================================
;Light stand écaille  phénix
;[State -1,Light stand écaille du phénix]
;type = ChangeState
;value = 1070
;triggerall = var(59) = 0
;triggerall = !NumProjID(1070)
;triggerall = !NumProjID(1071)
;triggerall = !NumProjID(1072)
;triggerall = !NumProj || ProjContactTime(1070) = [1,15]
;triggerall = !NumProj || ProjContactTime(1071) = [1,15]
;triggerall = !NumProj || ProjContactTime(1072) = [1,15]
;trigger1 = command = "Light Wings" && statetype != A && ctrl
;===============================
; médium stand écaille du phénix
[State -1,médium stand écaille du phénix]
type = ChangeState
value = 1071
triggerall = command = "médium Wings"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===============================
;Strong stand écaille  phénix
[State -1,Strong stand écaille du phénix]
type = ChangeState
value = 1072
triggerall = command = "Strong Wings"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===========================================================================
;====================aire écaille phénix====================================
;===========================================================================
;Light aire écaille du phénix
;[State -1,Light Air_Wings]
;type = ChangeState
;triggerall = var(59) = 0
;triggerall =statetype =A
;triggerall = !NumProjID(1050)
;triggerall = !NumProjID(1051)
;triggerall = !NumProjID(1052)
;triggerall = !NumProj || ProjContactTime(1070) = [1,15]
;triggerall = !NumProj || ProjContactTime(1071) = [1,15]
;triggerall = !NumProj || ProjContactTime(1072) = [1,15]
;trigger1 = command = "Light Air_Wings" &&ctrl
;;trigger1 = p2bodydist X > 50
;value = 1750
;===============================
;médium aire écaille du phénix
[State -1,médium Air_Wings]
type = ChangeState
triggerall = command = "médium Air_Wings"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
value = 1751
;===============================
;Strong aire écaille du phénix
[State -1,Strong Air_Wings]
type = ChangeState
triggerall = command = "Strong Air_Wings"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
value = 1752
;===========================================================================
;===========================================================================
;=====================BONNUS ATTAQUES=======================================
;===========================================================================
;===========================================================================

;===========================================================================
;==================== MULTI-Punch===========================================
;===========================================================================

;===========================================================================
;=======================EXPLOSION===========================================
;===========================================================================
;Combo Punch Rapide Genou / Hupercut
;[State -1,EXPLOSION]
;type = ChangeState
;value = 1080
;triggerall = var(59) = 0
;triggerall = command ="expolsion"
;trigger1 = statetype = s
;trigger1 = ctrl =1
;===========================================================================
;=======================TRENCDIMENTION======================================
;===========================================================================
;TRENCDIMENTION1
;[State -1,TRENCDIMENTION1]
;type = ChangeState
;value = 1084
;triggerall = var(59) = 0
;triggerall = command ="trensdimention1"
;trigger1 = statetype = s
;trigger1 = ctrl = 1
;===============================
;TRENCDIMENTION2
;[State -1,TRENCDIMENTION2]
;type = ChangeState
;value = 1085
;triggerall = var(59) = 0
;triggerall = command ="trensdimention2"
;trigger1 = statetype = s
;trigger1 = ctrl = 1
;===========================================================================
;===========================================================================
;=======================Throw Motions=======================================
;===========================================================================
;===========================================================================


;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)!=1
triggerall = roundstate=2
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;===========================================================================
;=======================Combo condition=====================================
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
;[State -1, Combo condition Reset]
;type = VarSet
;trigger1 = 1
;var(1) = 0
;===============================
;[State -1, Combo condition Check]
;type = VarSet
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;var(1) = 1
;===============================
;[State -1, Combo condition Check]
;type = VarSet
;trigger1 = statetype != S
;trigger1 = ctrl
;trigger2 = (stateno = [600,620]) || (stateno = [630,409])
;var(1) = 1
;===========================================================================
;===========================================================================
;=======================Extra mouve======================================
;===========================================================================
;===========================================================================

;==========================================================================
;=======================Cosmos Charge======================================
;==========================================================================
;power (cosmos )
;[State -1, power cosmos]
;type = ChangeState
;value = 1960
;triggerall = var(59) = 0
;trigger1 = command = "holdpowercosmos z"
;trigger1 = command = "holdpowercosmos c"
;trigger1 = Power < 3000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger1 = StateNo != 2000
;trigger1 = StateNo != 20
;trigger1 = StateNo != 21
;===============================
;7M CENSE
;[State -1, life add]
;type = ChangeState
;value = 2100
;triggerall = var(59) = 0
;triggerall = Var(48) < 3
;triggerall = PrevStateNo != 1980
;trigger1 = command = "hold_a"
;trigger1 = command = "hold_x"
;triggerall = power >= 3000
;triggerall = ctrl = 1
;trigger1 = StateNo != 2000
;trigger1 = statetype != A
;recover (life)
;==========================================================================
;=======================helper===============================
;==========================================================================



;===========================================================================
;===========================================================================
;======================= mouve de base======================================
;===========================================================================
;===========================================================================



;==========================================================================
;=======================DEPLASEMENT RAPID==================================
;==========================================================================
;Course
[State -1,Course]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;===============================
;Bond Arrière
[State -1,Bond Arrière]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===============================
;wall jump
;[State -1, WallJump]
;type = ChangeState
;value = 45
;triggerall = (statetype = A) && (ctrl)
;trigger1 = ((command = "holdup") && (command = "holdfwd") && (backedgebodydist <= 10) && (backedgebodydist > -10))
;trigger2 = ((command = "holdup") && (command = "holdback") && (frontedgebodydist <= 10) && (frontedgebodydist > -10))
;===========================================================================
;=========================PROVOCATION=======================================
;===========================================================================
;Provocation1
[State -1, Taunt]
type = ChangeState
value = 1990
triggerall = command = "start"
trigger1 = StateType = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


;------------------------------------------------

;dodge backward
[State -1]
type = ChangeState
value = 122
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;dodge forward
[State -1]
type = ChangeState
value = 112
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------


;CD attack
[State -1]
type = ChangeState
value = 500
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------------




;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch Close
[State -1, Stand Medium Punch Close]
type = ChangeState
value = 216
triggerall = p2bodydist X <= 10
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick Fwd
;[State -1, Stand Light Kick Fwd]
;type = ChangeState
;value = 236
;triggerall = (Command = "a") && (Command = "holdfwd")
;triggerall = command != "holddown"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,209])&& movecontact
;trigger3 = (stateno = [400,409])&& movecontact
;trigger4 = stateno = 100

;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 235
triggerall = p2bodydist X <= 10
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 245
triggerall = p2bodydist X <= 10
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact 

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 445
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100    

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  






;===========================================================================
;Single Button Air
;===========================================================================

;Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl

;----------------------------------------
;Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------
;Air Strong Punch
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------
;Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (MoveContact)

;----------------------------------------
;Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


