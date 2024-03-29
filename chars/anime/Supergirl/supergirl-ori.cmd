
;-| AI Commands |----------------------------------------------------------

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

[Command]
name = "QCF_xy"
command = ~D, DF, F,D, DF, F, x+y
time = 20

[Command]
name = "QCB_xyz"
command = ~D,B,D,B, x+y
time = 20

[Command]
name = "QCB_xy"
command = ~D,F,D,F, a
time = 20
[Command]
name = "QCB_xy"
command = ~D,F,D,F, b
time = 20

[Command]
name = "beamS"
command = ~D,B,D,B, a
time = 20
[Command]
name = "beamS"
command = ~D,B,D,B, b
time = 20


;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b


[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y


[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, b

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

[Command]
name = "longjump"
command = D, $U

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
name = "CD";Required (do not remove)
command = b+y
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
type = null;VarSet
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

;-------------------------------------------------------------------------------
; Optional combo var
;-------------------------------------------------------------------------------
;[State -1, Combo Chooser]
;type = VarRandom
;trigger1 = var(59) = 1 && stateno = [5000,5300]
;trigger2 = movetype != A
;v = 48
;range = 0,4 ;<---- Here, change the 7 to however many combos you have - Yin



;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = Random <= 150
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

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
;[State -1, super_jump]
;type = ChangeState
;value = 9004
;triggerall = var(59)
;triggerall = roundstate = 2
;triggerall = statetype!=A
;trigger1 = MoveHit
;trigger1 = stateno = 420

;Super Jump
;[State -1, super_jump]
;type = ChangeState
;value = 9000
;triggerall = var(59)
;triggerall = roundstate = 2
;triggerall = statetype!=A
;trigger1 = numenemy > 0
;trigger1 = (enemynear, Vel X >= 4) && ctrl


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
trigger5 = ctrl
trigger5 = p2bodydist X < 13
trigger5 = p2dist Y > -5 && p2dist Y < 5
trigger5 = random < 800

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
;[State -1, ChangeState]
;type = ChangeState
;triggerall = var(59) && StateType = A
;trigger1 = (StateNo = [600,620]) && (MoveContact)
;value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
;persistent = 0

;[State -1, ChangeState]
;type = ChangeState
;triggerall = var(59) && StateType = A
;trigger1 = (StateNo = [630,640]) && (MoveContact)
;value = IfElse(StateNo = 630,610,620)


;---------------------------------------------------------------------------
; AI Special Attempt
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Numhelper(1050) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1001

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
value = 1020
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType = C && p2bodydist x > 70 && random < 100

[State -1, megaBeam]
type = ChangeState
value = 1025
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType = A && p2bodydist x > 100 && random < 100

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
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && random < 40
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
triggerall = (Statetype = A) && random < 20
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
;[State -1] ;Super Combo
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Statetype = S) && (p2statetype != L)
;triggerall = (power >= 1000) && (numproj = 0)
;triggerall = random = [0,300]
;trigger1 = p2dist Y > -100
;trigger1 = (prevstateno != 5120) && (statetype != A)
;trigger1 = ctrl
;trigger2 = stateno = 220 || (stateno = [240, 250]) || (stateno = [1000, 1002])
;trigger2 = movehit
;value = 3000

;[State -1] ;Flight
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (p2statetype != L)
;triggerall = (power >= 1000) && (numproj = 0)
;triggerall = random = [0,200]
;triggerall = stateno != 1200
;triggerall = var(10) = 0
;trigger1 = (prevstateno != 5120) && (statetype != A)
;value = 1205



;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Supercombo (1 super bar)
[State -1, Supercombo]
type = ChangeState
value = 3000
triggerall = command = "QCF_xy"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && statetype = S


;---------------------------------------------------------------------------
;Powerpunch (1 super bar)
[State -1, Powerpunch]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "QCB_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && statetype = S
trigger3 = stateno = [1000,1999]
trigger3 = movecontact && statetype = S
trigger4 = stateno = 1020 || stateno = 1025 || stateno = 1030

[State -1, Powerpunch]
type = ChangeState
value = 3666
triggerall = command = "beamS"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && statetype = S
trigger3 = stateno = [1000,1999]
trigger3 = movecontact && statetype = S
trigger4 = stateno = 1020 || stateno = 1025 || stateno = 1030

[State -1, Powerpunch]
type = ChangeState
value = 3102
triggerall = command = "QCB_xyz"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && statetype = S
trigger3 = stateno = 3100
trigger3 = movecontact
trigger4 = stateno = [1000,1999]
trigger4 = movecontact && statetype = S
trigger5 = stateno = 1020 || stateno = 1025 || stateno = 1030 || stateno = 3666
;---------------------------------------------------------------------------
;Aircombo (1 super bar)
;[State -1, Aircombo]
;type = ChangeState
;value = 3200
;triggerall = !var(59)
;triggerall = command = "QCF_xy"
;triggerall = numproj = 0
;triggerall = power >= 1000
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = stateno != 211 ;forward hard punch
;trigger2 = HitDefAttr = A, NA, SA
;trigger2 = movecontact
;trigger3 = stateno = 1200
;

;---------------------------------------------------------------------------
;Pushblock (stand)
;[State -1, Pushblock (stand)]
;type = ChangeState
;value = 710
;trigger1 = stateno = 150
;trigger1 = command = "recovery"

;---------------------------------------------------------------------------
;Pushblock (crouch)
;[State -1, Pushblock (crouch)]
;type = ChangeState
;value = 711
;trigger1 = stateno = 152
;trigger1 = command = "recovery"

;---------------------------------------------------------------------------
;Pushblock (air)
;[State -1, Pushblock (air)]
;type = ChangeState
;value = 712
;trigger1 = stateno = 154
;trigger1 = command = "recovery"


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
;Heatvision h
[State -1, Heatvision h]
type = ChangeState
value = 1025
triggerall = !var(59)
triggerall = command = "QCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Heatvision air
[State -1, Heatvision h]
type = ChangeState
value = 1031
triggerall = !var(59)
triggerall = (command = "QCB_x") || (command = "QCB_y")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Air Dashpunch
[State -1, Air Dashpunch]
type = ChangeState
value = 1150
triggerall = !var(59)
triggerall = (command = "QCF_x") || (command = "QCF_y")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
;Air Divekick
[State -1, Air Divekick]
type = ChangeState
value = 1103
triggerall = !var(59)
triggerall = (command = "QCF_a") || (command = "QCF_b")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
;Divekick l
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
;Divekick m
[State -1, Divekick m]
type = ChangeState
value = 1102
triggerall = !var(59)
triggerall = command = "upper_b"
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
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


[State -1]
type = ChangeState
value = 899
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 100

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "x" && command = "holdfwd"  && p2bodydist X < 25
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,219]
trigger2 = movecontact && statetype = S
trigger3 = stateno = [221,499]
trigger3 = movecontact && statetype = S

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && !Var(59)
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100

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
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState  ;shana
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [150,151]
trigger2 = power >= 1000
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "CD"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [150,151]
trigger2 = power >= 1000

[State -1, RF]
type = ChangeState
value = 700
triggerall = command = "z"&& !Command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && Power >= 1000
trigger2 = statetype = S
trigger3 = stateno = [150,151]
trigger3 = Power >= 1000

[State -1, RB]
type = ChangeState
value = 705
triggerall = command = "z" && Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = [150,151]
trigger2 = Power >= 1000
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = stateno != 195
trigger1 = ctrl

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

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

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

