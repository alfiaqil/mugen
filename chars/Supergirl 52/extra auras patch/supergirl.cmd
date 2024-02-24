; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1
;
; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------
;----|Throw Motions|---------------------------------------
;Throw, F/B + z
;Throw, F/B + c


;[Command]
;name = "Forward Slam"  ;while standing
;command = ~B,F,z


;Toss
;[Command]
;name = "Toss"
;command = ~B,F,y
;-| AI |-------------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+z

[Command]
name = "QCF_xy"
command = ~D, DF, F, y+z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+z

[Command]
name = "QCB_xy"
command = ~D, DB, B, y+z

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

;-| IceStorm |------------------------------------------------------
[Command]
name = "QCF_cz"
command = ~D, DF, F, c+z
;--------------------------------------------------------------------

;-| Red Rage | ----------------------------------------------------
[Command]
name = "QCB_cz"
command = ~D, DB, B, c+z


;-| Ring Beam | ----------------------------------------------------
[Command]
name = "PPP"
command = x+y

;-| Blood Spitting | ----------------------------------------------------
[Command]
name = "KKK"
command = a+b

;-| Teleport | ----------------------------------------------------
[Command]
name = "back_a"
command = B, a

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

;[Command]
;name = "3x"
;command = x, x, x
;time = 20

;[Command]
;name = "3y"
;command = y, y, y
;time = 15

[Command]
name = "charge"
command = /x
time = 1

[Command]
name = "charge"
command = /y
time = 1

[Command]
name = "charge"
command = /z
time = 1

[Command]
name = "SuperJump"
command = $D, $U
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1
;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
[Statedef -1]


[State -1, AIActivate]
type = VarSet
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1


;

[State -1,AI]
type = Varset
trigger1 = !Var(56)
var(56) = 99

;-------------------------------------------------------------------------------
; Optional combo var
;-------------------------------------------------------------------------------


;--|-AI Defense-|-----------------------------------------------------------
[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155]); && !var(54)
triggerall =!(enemynear,hitdefattr=SCA,AT)
;triggerall = statetype != A
triggerall = inguarddist
trigger1 = ctrl
value = 120

;

[State -1,Guard]
type = ChangeState
triggerall = NumHelper(8600)
triggerall = !var(59) && (stateno != [120,155]) ;&& Helper(8600),Numenemy
;triggerall = statetype != A
triggerall = p2bodydist x > 80
triggerall = enemynear,movetype = A ;inguarddist || Helper(8600),inguarddist
triggerall = command = "holdback" 
trigger1 = ctrl
value = 120

;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;Super Jump follow
[State -1, super_jump]
type = ChangeState
value = 9004
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 9000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = numenemy > 0
trigger1 = (enemynear, Vel X >= 4) && ctrl

;---------------------------------------------------------------------------
; AI Standing basics
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1) && (Random <= 500)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
trigger1 = ctrl
trigger2 = (stateno = 9004) && (vel y > -6) && (random < 600)
trigger2 = ctrl
trigger3 = stateno = 1200
trigger3 = p2dist X < 60 && (p2dist Y > -5 && p2dist Y < 5)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact && (random < 600)
trigger2 = stateno = 630 && movecontact && (random < 300)


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact && (random < 100)
trigger2 = stateno = 610 && movecontact && (random < 800)
trigger3 = stateno = 630 && movecontact && (random < 100)
trigger4 = stateno = 640 && movecontact && (random < 500)

; (throw attempt)
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 13)
triggerall = p2statetype != L && p2statetype !=A
trigger1 = Random <= 987 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

trigger5 = ctrl
trigger5 = p2bodydist X < 13
trigger5 = p2dist Y > -5 && p2dist Y < 5
trigger5 = random < 987

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)
trigger2 = (stateno = 9004) && (vel y > -6)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact && (random < 400)
trigger3 = (stateno = 610) && movecontact && (random < 800)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Air D-Hard Kick
[State -1, Air D-Hard Kick]
type = ChangeState
value = 655
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 650 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)


;---------------------------------------------------------------------------
; AI Special Attempt
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,150])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-60 && p2bodydist y <60 
value = 1000

[State -1]
type = ChangeState
triggerall = palno = 5 || palno = 6 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-60 && p2bodydist y <60 
value = 1000

[State -1, Ring Beam]
type = ChangeState
triggerall = palno = 5 || palno = 6 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,200])
trigger1 = p2bodydist x >= 65
value = 11186

[State -1, Blood Spitting]
type = ChangeState
triggerall = palno = 5 || palno = 6 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,400])
trigger1 = p2bodydist x <= 45
value = 666


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1002

[State -1, megaBeam]
type = ChangeState
value = 1030
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x > 70 && random < 100


[State -1, megaBeam]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120])&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x>=15) && (p2bodydist y=[-70,5])
trigger1 = ctrl && (Random<200)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<150)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<150)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)
value = 1020

[State -1, megaBeam]
type = ChangeState
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall= (enemy,stateno!=[120,155])&&(enemy,stateno!=[5100,5120])&&(enemynear,statetype!=L)&&(enemynear,Statetype!=A)
triggerall= (enemynear,stateno!=40) && (p2bodydist x>=15) && (p2bodydist y=[-70,5])
trigger1 = ctrl && (Random<200)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<150)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<150)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)
value = 1020
;----------------------------------------------------------------------------
; AI Air Specials
;----------------------------------------------------------------------------

[State -1, megaBeam]
type = ChangeState
value = 1031
triggerall = var(59) && (var(10) = 1)
triggerall = StateType = A && MoveType != H && RoundState = 2
trigger1 = (stateno = [1200,1205])
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x > 70 && random < 50
trigger2 = (stateno = [600,699])
trigger2 = movecontact

[State -1, divekick]
type = ChangeState
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && random < 150
trigger1 = p2bodydist x < 50
value = 1100

[State -1, divekick]
type = ChangeState
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && random < 40
trigger1 = p2bodydist x > 30 && p2bodydist x < 100
value = 1102

[State -1, divekick]
type = ChangeState
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && random < 40
trigger1 = p2bodydist x > 70
value = 1104

[State -1, air-divekick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Statetype = A) && (random = [0,100])
trigger1 = (p2bodydist x < 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = p2bodydist y > 20
trigger1 = Ctrl
trigger2 = stateno = 1200
trigger2 = p2bodydist y > 20
value = 1103

[State -1, air-dashpunch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Statetype = A) && random < 200
;trigger1 = (p2bodydist x < 50)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = p2bodydist y > 30 && p2bodydist y < 70
trigger1 = Ctrl
trigger2 = stateno = 1200
trigger2 = p2bodydist y > 30 && p2bodydist y < 70
value = 1150




;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
[State -1] ;Super Combo
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Statetype = S) && (p2statetype != L)
triggerall = (power >= 1000) && (numproj = 0)
triggerall = random = [0,300]
trigger1 = p2dist Y > -100
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = ctrl
trigger2 = stateno = 220 || (stateno = [240, 250]) || (stateno = [1000, 1002])
trigger2 = movehit
value = 3000

[State -1] ;Icestorm
type = ChangeState
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Statetype = S) && (p2statetype != L)
triggerall = (power >= 1000) && (numproj = 0)
triggerall = random = [0,400]
trigger1 = p2bodydist x >= 60
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = ctrl
trigger2 = stateno = 220 || (stateno = [240, 250]) || (stateno = [1000, 1002])
trigger2 = movehit
value = 3400

[State -1] ;Power Punch
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = (power >= 1000) && (numproj = 0)
triggerall = random = [0,300]
trigger1 = (prevstateno != 5120) && (statetype != A)
value = 3100

[State -1] ;Red Rage
type = ChangeState
triggerall = palno = 5 || palno = 6 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = (power >= 1000) && (numproj = 0)
triggerall = random = [0,300]
trigger1 = (prevstateno != 5120) && (statetype != A)
value = 30000

[State -1] ;Air Combo
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Statetype = A) && (p2statetype != L)
triggerall = (power >= 1000) && (numproj = 0)
trigger1 = (prevstateno != 5120) && (statetype = A)
trigger1 = p2dist X < 150 && (p2dist Y > -3 && p2dist Y < 20)
trigger1 = p2bodydist x > 0
trigger1 = random = [0,250]
trigger1 = ctrl
trigger2 = stateno = 620 || (stateno = [630, 650]) || stateno = 1101 || stateno = 1103 || stateno = 1105
trigger2 = movehit
trigger2 = p2dist X < 150 && (p2dist Y > -3 && p2dist Y < 20)
trigger2 = random = [0,350]
value = 3200

[State -1] ;Flight
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2statetype != L)
triggerall = (power >= 1000) && (numproj = 0)
triggerall = random = [0,400]
triggerall = stateno != 1200
triggerall = var(10) = 0
trigger1 = (prevstateno != 5120) && (statetype != A)
value = 1205




;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Supercombo (1 super bar)
[State -1, Supercombo]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "QCF_xy"
;triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = stateno != 211 ;forward hard punch
trigger2 = HitDefAttr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Powerpunch (1 super bar)
[State -1, Powerpunch]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "QCB_xy"
;triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = stateno != 211 ;forward hard punch
trigger2 = HitDefAttr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Aircombo (1 super bar)
[State -1, Aircombo]
type = ChangeState
value = 3200
triggerall = !var(59)
triggerall = command = "QCF_xy"
;triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = stateno != 211 ;forward hard punch
trigger2 = HitDefAttr = A, NA, SA
trigger2 = movecontact
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
;Icestorm (1 super bar)
[State -1, Icestorm]
type = ChangeState
value = 3400
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9 
triggerall = !var(59)
triggerall = command = "QCF_cz"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, Red Rage]
type = ChangeState
value = 30000
triggerall = palno = 5 || palno = 6 
triggerall = var(50) = 0
triggerall = command = "QCB_cz"
triggerall = power >= 1000 
triggerall = stateno != [30000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;---------------------------------------------------------------------------
;Flight (1/3 super bar)
[State -1, Flight]
type = ChangeState
value = 1205
triggerall = !var(59)
triggerall = command = "QCB_ab"
triggerall = power >= 300
triggerall = var(10) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Flightstop
[State -1, Flightstop]
type = ChangeState
value = 51
trigger1 = command = "QCB_ab"
trigger1 = var(10) = 1
trigger1 = stateno = 1200

;---------------------------------------------------------------------------
;Pushblock (stand)
[State -1, Pushblock (stand)]
type = ChangeState
value = 710
trigger1 = stateno = 150
trigger1 = command = "recovery"

;---------------------------------------------------------------------------
;Pushblock (crouch)
[State -1, Pushblock (crouch)]
type = ChangeState
value = 711
trigger1 = stateno = 152
trigger1 = command = "recovery"

;---------------------------------------------------------------------------
;Pushblock (air)
[State -1, Pushblock (air)]
type = ChangeState
value = 712
trigger1 = stateno = 154
trigger1 = command = "recovery"
;---------------------------------------------------------------------------
;Dashpunch l
[State -1, Dashpunch l]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Dashpunch m
[State -1, Dashpunch m]
type = ChangeState
value = 1001
triggerall = !var(59)
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Dashpunch h
[State -1, Dashpunch h]
type = ChangeState
value = 1002
triggerall = !var(59)
triggerall = command = "QCF_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Heatvision l
[State -1, Heatvision l]
type = ChangeState
value = 1030
triggerall = !var(59)
triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Heatvision m
[State -1, Heatvision m]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = command = "QCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
Heatvision h
[State -1, Heatvision h]
type = ChangeState
value = 1025
triggerall = !var(59)
triggerall = command = "QCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

[State -1, Ring Beam]
type = ChangeState
triggerall = palno = 5 || palno = 6 
value = 11186
triggerall = !var(59)
triggerall = command = "PPP"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

[State -1, Blood Spitting]
type = ChangeState
value = 666
triggerall = palno = 5 || palno = 6 
triggerall = !var(59)
triggerall = command = "KKK"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

[State -1, Blood Spitting]
type = ChangeState
value = 666
triggerall = palno = 5 || palno = 6 
triggerall = !var(59)
triggerall = command = "KKK"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

[State -1, TelePort]
type = ChangeState
value = 1500
triggerall = palno = 10 || palno = 11 || palno = 12
triggerall = !var(59)
triggerall = command = "back_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
Heatvision air
[State -1, Heatvision h]
type = ChangeState
value = 1031
triggerall = !var(59)
triggerall = (command = "QCB_x") || (command = "QCB_y") || (command = "QCB_z")
trigger1 = (stateno = [1200,1205])
trigger2 = (stateno = [600,699])
trigger2 = var(10) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
Air Dashpunch
[State -1, Air Dashpunch]
type = ChangeState
value = 1150
triggerall = !var(59)
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
Air Divekick
[State -1, Air Divekick]
type = ChangeState
value = 1103
triggerall = !var(59)
triggerall = (command = "QCF_a") || (command = "QCF_b") || (command = "QCF_c")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
Divekick l
[State -1, Divekick l]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "upper_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
Divekick m
[State -1, Divekick m]
type = ChangeState
value = 1102
triggerall = !var(59)
triggerall = command = "upper_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
Divekick h
[State -1, Divekick h]
type = ChangeState
value = 1104
triggerall = !var(59)
triggerall = command = "upper_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; SuperJump
[State -1, Superjump]
type = ChangeState
value = 9000
triggerall = !var(59)
triggerall = StateType != A
triggerall = ctrl
trigger1 = command = "SuperJump"
trigger2 = command = "a" && command = "b"
trigger3 = command = "b" && command = "c"
trigger4 = command = "a" && command = "b" && command = "c"
trigger5 = Stateno = 420

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z" && command = "y"
triggerall = P2BodyDist X <= 25
triggerall = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = p2statetype != L && p2statetype != A && p2movetype != H && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 25]) && (p2dist y = [-25, 72])
triggerall = random < 987
trigger1 = p2bodydist y = [-25,25]    
trigger1 = ctrl
trigger1 = stateno = 150
trigger2 = enemynear,moveguarded





;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)


;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = palno = 5 || palno = 6 
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl


;
[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = palno = 5 || palno = 6 
triggerall = Var(59)
triggerall = ctrl
triggerall = StateType = S
triggerall = random <= 950
trigger1 = p2statetype = L
trigger1 = p2bodydist x > 150
 

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
;Dash Punch
;[State -1, Dash Punch]
;type = ChangeState
;value = 615
;triggerall = (command = "x") || (command = "y")
;triggerall = stateno = 100
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630
trigger4 = stateno = 1200

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640
trigger4 = stateno = 1200

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
;Dive Kick
[State -1, Dive Kick]
;type = ChangeState
type = Null
value = 641
triggerall = command = "b" && !Var(59)
triggerall = command = "holddown"
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
trigger4 = stateno = 1200

;---------------------------------------------------------------------------
;Jump Strong D-Kick
[State -1, Jump Strong D-Kick]
type = ChangeState
value = 655
triggerall = command = "c" && !Var(59)
triggerall = command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640 || stateno = 650
trigger4 = stateno = 1200

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640
trigger4 = stateno = 1200



;-|-AI Combo Attempt-|----------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28) && (random <= 750)
trigger1 = (stateno = 240) && movecontact && (random = [100,400])
trigger2 = (stateno = 241) && movecontact && (random = [100,400])
value = 251

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 240) && movecontact && (random = [100,400])
trigger2 = (stateno = 241) && movecontact && (random = [100,400])
value = 250

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28)
trigger1 = (stateno = 210) && movecontact && (random = [401,700])
trigger2 = (stateno = 211) && movecontact && (random = [401,700])
trigger3 = (stateno = 230) && movecontact && (random = [401,700])
value = 241

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28)
trigger1 = (stateno = 210) && movecontact && (random = [401,700])
trigger2 = (stateno = 211) && movecontact && (random = [401,700])
trigger3 = (stateno = 230) && movecontact && (random = [100,400])
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 25)
trigger1 = (stateno = 200) && movecontact && (random = [100,400])
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28)
trigger1 = (stateno = 210) && movecontact && (random = [100,400])
trigger2 = (stateno = 211) && movecontact && (random = [100,400])
trigger3 = (stateno = 240) && movecontact && (random = [401,700])
trigger4 = (stateno = 241) && movecontact && (random = [401,700])
value = 221

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 210) && movecontact && (random = [100,400])
trigger2 = (stateno = 211) && movecontact && (random = [100,400])
trigger3 = (stateno = 240) && movecontact && (random = [401,700])
trigger4 = (stateno = 241) && movecontact && (random = [401,700])
value = 220

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28) && (random <= 750)
trigger1 = (stateno = 200) && movecontact && (random = [200,700])
trigger2 = (stateno = 230) && movecontact && (random = [401,700])
value = 211

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 200) && movecontact && (random = [200,700])
trigger2 = (stateno = 230) && movecontact && (random = [401,700])
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist x <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 430) && movecontact
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 440) && movecontact
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 400) && movecontact
trigger2 = (stateno = 430) && movecontact
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
trigger1 = (p2bodydist x <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 7000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 640) && movecontact && (random = [401,700])
value = 650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 610) && movecontact && (random = [401,700])
trigger2 = (stateno = 630) && movecontact && (random = [401,700])
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 600) && movecontact && (random = [401,700])
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 610) && movecontact && (random = [100,400])
trigger2 = (stateno = 640) && movecontact && (random = [100,400])
value = 620

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 600) && movecontact && (random = [100,400])
trigger2 = (stateno = 630) && movecontact && (random = [100,400])
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist x <= 25) && (random <= 750)
value = 600




[State -1, ]
type = assertspecial
triggerall = life <=500
triggerall = palno = 5 || palno = 6 || palno = 7
trigger1 = 1 ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this trigger as is.
flag = noairguard
flag2 = nostandguard
flag3 = nocrouchguard

[State -1, Player_NotHit_During_Armor]
type = HitBy
triggerall = life <=500
triggerall = palno = 5 || palno = 6 || palno = 7 
trigger1 = NumHelper(9393) || NumHelper(9394) ;<---Player (YOU) are only hitby the below parameters when these helpers (the actual armor) is active.
;trigger2 = var(30)=1 ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this trigger as nulled.
value = SCA,AT

[State -1, SprPriority_During_Armor_When_Idle]
type = SprPriority
triggerall = life <=500
triggerall = palno = 5 || palno = 6 || palno = 7 
trigger1 = movetype=I ;<----YOUR sprite priority is the below parameter if your movetype is idle
;trigger2 = var(30)=1 ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this trigger as nulled.
value = -1

[State -1, Attack_Taker]
type = Helper ;<-----acts as the bodyguard of YOU. The actual armor.....a helper.
triggerall = life <=500
triggerall = palno = 5 || palno = 6 || palno = 7 
triggerall = !NumHelper(9393) ;&& var(30)=1  ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this portion of this trigger nulled.
trigger1 = MoveType != H 
stateno = 9393 ;<----stateno of helper definitions
id = 9393

[State -1, damage_during_armor] 
type = LifeAdd
triggerall = life <=500
triggerall = palno = 5 || palno = 6 || palno = 7 
trigger1 = NumHelper(9393)
trigger1 = Helper(9393),gethitvar(hitcount)=1 ;<----cannot be on the same line as the 1st trigger1 for some odd reason...
value = -Helper(9393),GetHitVar(Damage) ;<----gives damage that the helper bodyguard takes to YOU
kill = 1 ;<----controls whether you can be killed when above helper is active



;

[State -1, ]
type = assertspecial
triggerall = life <=400
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9 
trigger1 = 1 ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this trigger as is.
flag = noairguard
flag2 = nostandguard
flag3 = nocrouchguard

[State -1, Player_NotHit_During_Armor]
type = HitBy
triggerall = life <=400
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9  
 trigger1 = NumHelper(9393) || NumHelper(9394) ;<---Player (YOU) are only hitby the below parameters when these helpers (the actual armor) is active.
;trigger2 = var(30)=1 ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this trigger as nulled.
value = SCA,AT

[State -1, SprPriority_During_Armor_When_Idle]
type = SprPriority
triggerall = life <=400
triggerall = palno = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9  
trigger1 = movetype=I ;<----YOUR sprite priority is the below parameter if your movetype is idle
;trigger2 = var(30)=1 ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this trigger as nulled.
value = -1

[State -1, Attack_Taker]
type = Helper ;<-----acts as the bodyguard of YOU. The actual armor.....a helper.
triggerall = life <=400
triggerall = palno = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9  
triggerall = !NumHelper(9393) ;&& var(30)=99  ;<----Mode variable goes here. If Armor is active all the time or if you do not have a mode var, keep this portion of this trigger nulled.
trigger1 = MoveType != H 
stateno = 9393 ;<----stateno of helper definitions
id = 9393

[State -1, damage_during_armor] 
type = LifeAdd
triggerall = life <=400
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 8 || palno = 9  
trigger1 = NumHelper(9393)
trigger1 = Helper(9393),gethitvar(hitcount)=1 ;<----cannot be on the same line as the 1st trigger1 for some odd reason...
value = -Helper(9393),GetHitVar(Damage) ;<----gives damage that the helper bodyguard takes to YOU
kill = 1 ;<----controls whether you can be killed when above helper is active


;----------------------------- Amazon AEGIS "beta" A.I. projectile detection



[State -1, Pushblock (stand)]
type = ChangeState
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 5 || palno = 6 || palno = 7 || palno = 8 || palno = 9 
triggerall = Var(59)>=1 && (StateType != A) && (inguarddist) && !(enemynear,hitdefattr = SCA,HA);&& !(enemynear,hitdefattr = SCA,HA)
trigger1 =  (enemynear, vel x=0) && (P2MoveType = A)&& (enemynear,time=[0,4]) && (enemynear, NumHelper > 99) && (ctrl) ;&& (P2bodydist X >= 80) 
trigger2 = (ctrl) && (p2movetype!=A) 
trigger3 = (p2movetype!=A)  && (stateno = 100) ;cancel
trigger4 = (p2movetype!=A)  && (stateno = [200,450]);cancel
value = 710
ignorehitpause = 1

[State -1, Pushblock (crouch)]
type = ChangeState
triggerall = palno = 1 || palno = 2 || palno = 3 || palno = 4 || palno = 5 || palno = 6 || palno = 7 || palno = 8 || palno = 9 
triggerall = Var(59)>=1 && (enemynear, numproj != 0) && (StateType != A)
trigger1 =  ctrl ;&& inguarddist
trigger2 =(stateno = [200,450]);cancel
trigger3 = stateno = 100
value = 710
ignorehitpause = 1
;
[State -1, ]
type = ChangeState
triggerall = palno = 10 || palno = 11 || palno = 12
triggerall = Var(59)>=1 && (StateType != A) && (inguarddist) && !(enemynear,hitdefattr = SCA,HA);&& !(enemynear,hitdefattr = SCA,HA)
trigger1 =  (enemynear, vel x=0) && (P2MoveType = A)&& (enemynear,time=[0,4]) && (enemynear, NumHelper > 99) && (ctrl) ;&& (P2bodydist X >= 80) 
trigger2 = (ctrl) && (p2movetype!=A) 
trigger3 = (p2movetype!=A)  && (stateno = 100) ;cancel
trigger4 = (p2movetype!=A)  && (stateno = [200,450]);cancel
value = 1500
ignorehitpause = 1

[State -1, ]
type = ChangeState
triggerall = palno = 10 || palno = 11 || palno = 12 
triggerall = Var(59)>=1 && (enemynear, numproj != 0) && (StateType != A)
trigger1 =  ctrl ;&& inguarddist
trigger2 =(stateno = [200,450]);cancel
trigger3 = stateno = 100
value = 1500
ignorehitpause = 1

[State -1, megaBeam]
type = ChangeState
value = 1500
triggerall = palno = 10 || palno = 11 || palno = 12 
triggerall = var(59) && (var(10) = 1)
triggerall = StateType = A && MoveType != H && RoundState = 2
trigger1 = (stateno = [1200,1205])
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x > 40 && random < 950
trigger2 = (stateno = [600,699])
trigger2 = movecontact

[State -1, Reversal]
type = null;ChangeState
value = 7970
triggerall = stateno = 1500
triggerall = palno = 10 || palno = 11 || palno = 12 
triggerall = Var(59)
triggerall = var(56) > 0
triggerall = p2movetype = A
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, hitdefattr = SCA, NA, SA, HA, AA,AP, NT, ST,HT, NP, SP, HP
trigger1 = p2bodydist X >= 40
trigger1 = random < 950

[State -1, Reversal]
type = null;ChangeState
value = 7970
triggerall = stateno = 800
triggerall = palno = 10 || palno = 11 || palno = 12 
triggerall = Var(59)
triggerall = var(56) > 0
triggerall = p2movetype = A
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, hitdefattr = SCA, NA, SA, HA, AA,AP, NT, ST,HT, NP, SP, HP
trigger1 = p2bodydist X <= 25
trigger1 = random < 950

;-----------------------------
 
[state ]
type=playerpush
trigger1=(statetype!=a||sysfvar(1))&&p2dist y<-40
trigger2=statetype=a
trigger2=enemynear,statetype!=a&&(sysfvar(4)<0||pos y<-20)&&anim!=1400
trigger3=var(1)&1024
value=99
;--------------画面端でめくられない、めくらない
[state ]
type=width
trigger1=!(var(1)&1024)
trigger2=numtarget
trigger2=var(1)&1024
trigger2=target,backedgebodydist<=5||target,frontedgebodydist<=5
edge=15,-3
;--------------星取りリセット
[state ]
type=null
trigger1=!numtarget
trigger1=var(7)!=anim||movetype!=a||animelem=1,=1||!animtime
trigger1=var(2):=0||var(5):=0
[state ]
type=null
triggerall=fvar(1)>0
triggerall=movehit=1
triggerall=var(5)<3
trigger1=anim=200&&!(var(2)&1)&&var(1)&2048
trigger1=fvar(1):=fvar(1)-1||var(2):=(var(2)+1)||var(5):=var(5)+1
trigger2=anim=205&&!(var(2)&2)&&var(1)&2048
trigger2=fvar(1):=fvar(1)-1||var(2):=(var(2)+2)||var(5):=var(5)+1
trigger3=anim=210&&!(var(2)&4)&&var(1)&2048
trigger3=fvar(1):=fvar(1)-1||var(2):=(var(2)+4)||var(5):=var(5)+1
trigger4=anim=215&&!(var(2)&8)&&var(1)&2048
trigger4=fvar(1):=fvar(1)-1||var(2):=(var(2)+8)||var(5):=var(5)+1
trigger5=anim=220&&!(var(2)&16)&&var(1)&2048
trigger5=fvar(1):=fvar(1)-1||var(2):=(var(2)+16)||var(5):=var(5)+1
trigger6=anim=225&&!(var(2)&32)&&var(1)&2048
trigger6=fvar(1):=fvar(1)-1||var(2):=(var(2)+32)||var(5):=var(5)+1
trigger7=anim=230&&!(var(2)&64)&&var(1)&2048
trigger7=fvar(1):=fvar(1)-1||var(2):=(var(2)+64)||var(5):=var(5)+1
trigger8=anim=235&&!(var(2)&128)&&var(1)&2048
trigger8=fvar(1):=fvar(1)-1||var(2):=(var(2)+128)||var(5):=var(5)+1
trigger9=anim=400&&!(var(2)&256)&&var(1)&2048
trigger9=fvar(1):=fvar(1)-1||var(2):=(var(2)+256)||var(5):=var(5)+1
trigger10=anim=410&&!(var(2)&512)&&var(1)&2048
trigger10=fvar(1):=fvar(1)-1||var(2):=(var(2)+512)||var(5):=var(5)+1
trigger11=anim=420&&!(var(2)&1024)&&var(1)&2048
trigger11=fvar(1):=fvar(1)-1||var(2):=(var(2)+1024)||var(5):=var(5)+1
trigger12=anim=430&&!(var(2)&2048)&&var(1)&2048
trigger12=fvar(1):=fvar(1)-1||var(2):=(var(2)+2048)||var(5):=var(5)+1
trigger13=anim=600&&!(var(2)&4096)&&var(1)&2048
trigger13=fvar(1):=fvar(1)-1||var(2):=(var(2)+4096)||var(5):=var(5)+1
trigger14=anim=610&&!(var(2)&8192)&&var(1)&2048
trigger14=fvar(1):=fvar(1)-1||var(2):=(var(2)+8192)||var(5):=var(5)+1
trigger15=anim=620&&!(var(2)&16384)&&var(1)&2048
trigger15=fvar(1):=fvar(1)-1||var(2):=(var(2)+16384)||var(5):=var(5)+1
trigger16=anim=630&&!(var(2)&32768)&&var(1)&2048
trigger16=fvar(1):=fvar(1)-1||var(2):=(var(2)+32768)||var(5):=var(5)+1
trigger17=anim=700&&!(var(2)&65536)&&var(1)&2048
trigger17=fvar(1):=fvar(1)-1||var(2):=(var(2)+65536)||var(5):=var(5)+1
trigger18=anim=710&&!(var(2)&131072)&&var(1)&2048
trigger18=fvar(1):=fvar(1)-1||var(2):=(var(2)+131072)||var(5):=var(5)+1
trigger19=anim=725&&animelem=7,<0&&var(1)&2048
trigger19=fvar(1):=fvar(1)-1||var(5):=var(5)+1
trigger20=anim=730&&!(var(2)&262144)
trigger20=1||var(6):=!!(var(1)&2048)*(var(5)<=1)
trigger20=fvar(1):=fvar(1)-1-var(6)||var(2):=(var(2)+262144)||var(5):=var(5)+1+var(6)
trigger21=anim=740
trigger21=fvar(1):=fvar(1)-1-!!(var(1)&2048)
trigger22=anim=750&&!(var(2)&524288)&&var(1)&2048
trigger22=fvar(1):=fvar(1)-1||var(2):=(var(2)+524288)||var(5):=var(5)+1
trigger23=anim=760&&!(var(2)&1048576)
trigger23=1||var(6):=!!(var(1)&2048)*(var(5)<=1)
trigger23=fvar(1):=fvar(1)-1-var(6)||var(2):=(var(2)+1048576)||var(5):=var(5)+1+var(6)
trigger24=anim=765&&!(var(2)&2097152)
trigger24=1||var(6):=!!(var(1)&2048)*(var(5)<=1)
trigger24=fvar(1):=fvar(1)-1-var(6)||var(2):=(var(2)+2097152)||var(5):=var(5)+1+var(6)
trigger25=anim=770&&var(1)&2048
trigger25=fvar(1):=fvar(1)-1
trigger26=anim=1050&&!(var(2)&8388608)
trigger26=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=1)
trigger26=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=1)
trigger26=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=1)
trigger26=fvar(1):=fvar(1)-1-var(6)||var(2):=(var(2)+8388608)||var(5):=var(5)+1+var(6)
trigger27=anim=1100&&!(var(2)&16777216)
trigger27=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=1)
trigger27=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=1)
trigger27=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=1)
trigger27=fvar(1):=fvar(1)-1-var(6)||var(2):=(var(2)+16777216)||var(5):=var(5)+1+var(6)
trigger28=anim=1150
trigger28=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger28=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger28=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger28=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger28=fvar(1):=fvar(1)-var(6)||var(5):=var(5)+var(6)||var(7):=anim
trigger29=anim=1200&&!(var(2)&33554432)
trigger29=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger29=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger29=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger29=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger29=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+33554432)||var(5):=var(5)+var(6)||var(7):=anim
trigger30=anim=1200&&animelem=7,>0&&!(var(2)&67108864)
trigger30=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger30=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger30=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger30=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger30=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+67108864)||var(5):=var(5)+var(6)||var(7):=anim
trigger31=anim=1250
trigger31=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger31=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger31=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger31=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger31=fvar(1):=fvar(1)-var(6)||var(5):=var(5)+var(6)||var(7):=anim
trigger32=anim=1300&&!(var(2)&134217728)
trigger32=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger32=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger32=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger32=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger32=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+134217728)||var(5):=var(5)+var(6)
trigger33=anim=1400&&!(var(2)&268435456)
trigger33=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger33=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger33=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger33=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger33=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+268435456)||var(5):=var(5)+var(6)
trigger34=anim=1500&&!(var(2)&536870912)
trigger34=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger34=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger34=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger34=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger34=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+536870912)||var(5):=var(5)+var(6)
trigger35=anim=1750
trigger35=var(1)&256&&!(var(1)&512)||var(1)&2048||var(4)
trigger35=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=2)
trigger35=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=2)
trigger35=fvar(1):=fvar(1)-var(6)||var(5):=var(5)+var(6)
trigger36=anim=2200
trigger36=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=1)
trigger36=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=1)
trigger36=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=1)
trigger36=fvar(1):=fvar(1)-1-var(6)||var(5):=var(5)+var(6)
[state ]
type=null
triggerall=var(5)<3
trigger1=!projhittime(1010)&&!(var(2)&4194304)&&var(4)
trigger1=fvar(1):=fvar(1)-1||var(2):=(var(2)+4194304)||var(5):=var(5)+1
trigger2=!projhittime(1011)&&!(var(2)&4194304)
trigger2=1||var(6):=(var(5)<=2)
trigger2=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger2=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+4194304)||var(5):=var(5)+var(6)
trigger3=!projhittime(1012)&&!(var(2)&4194304)
trigger3=1||var(6):=(var(5)<=2)
trigger3=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger3=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+4194304)||var(5):=var(5)+var(6)
trigger4=!projhittime(1013)&&!(var(2)&4194304)
trigger4=1||var(6):=(var(5)<=1)+(var(5)<=2)
trigger4=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=2)
trigger4=fvar(1):=fvar(1)-var(6)||var(2):=(var(2)+4194304)||var(5):=var(5)+var(6)
trigger5=!projhittime(2000)&&!(var(2)&1073741824)
trigger5=1||var(6):=(var(1)&256&&!(var(1)&512))*(var(5)<=1)
trigger5=1||var(6):=var(6)+!!(var(1)&2048)*(var(5)+var(6)<=1)
trigger5=1||var(6):=var(6)+!!var(4)*(var(5)+var(6)<=1)
trigger5=fvar(1):=fvar(1)-1-var(6)||var(2):=(var(2)+1073741824)||var(5):=var(5)+1+var(6)||var(7):=anim
[state ]
type=varset
trigger1=fvar(1)<0
fvar(1)=0



