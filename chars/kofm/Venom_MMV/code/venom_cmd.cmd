; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
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


;-----------------------------------------------------

;---------------------------------------------------------------------------
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1



;---------------------------------------------------------------------------
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
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


[Command]
name = "holdstart"
command = /s
time = 1

[Command]
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Command]
name = "Hyper 1"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, x+z
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, x+z
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, y+z
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, a+b
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, b+c
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, a+c
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, c+a
time = 40

[Command]
name = "Hyper 4"
command = ~D, DF, F, z+c
time = 40

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Command]
name = "Special 1"
command = ~D,DF,F, x
time = 20

[Command]
name = "Special 2"
command = ~D,DF,F, y
time = 20

[Command]
name = "Special 3"
command = ~D,DF,F, z
time = 20

[Command]
name = "slash"
command = ~D,DB,B, x
time = 20

[Command]
name = "slash2"
command = ~D,DB,B, y
time = 20

[Command]
name = "slash3"
command = ~D,DB,B, z
time = 20

[Command]
name = "tendril1"
command = ~D,DB,B, a
time = 20

[Command]
name = "tendril2"
command = ~D,DB,B, b
time = 20

[Command]
name = "tendril3"
command = ~D,DB,B, c
time = 20

[Command]
name = "pound 1"
command = ~D,DF,F, a
time = 20

[Command]
name = "pound 2"
command = ~D,DF,F, b
time = 20

[Command]
name = "pound 3"
command = ~D,DF,F, c
time = 20

[Command]
name = "camo"
command = x+a
time = 20

[Command]
name = "counter"
command = z+c
time = 20

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


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

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1


;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;===================<DIR>===================
[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

[Statedef -1]


;===========================================================================

[State -1, AIhelper]
type=changestate
trigger1=ishelper(9741)
value=9741


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
var(0) = 1

[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(0) = 1 && stateno = [5000,5300]
trigger2 = movetype != A
v = 48
range = 0,4 ;<---- Here, change the 7 to however many combos you have - Yin

[State -1]
type = ChangeState
triggerall = Var(0)>=1 && Ctrl && (stateno!=100) && statetype != A && (Random <= 600)&& (p2movetype!=A)
trigger1 = (P2bodydist X >= 110)
value = 100


[State -1]
type = ChangeState
triggerall = var(0) >=1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0




[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1 )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1 )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1)
triggerall = p2movetype = A
triggerall = stateno = 150 || stateno = 151
trigger1 = (p2bodydist X <= 135) && p2bodydist X >= 1 && (random <= 500)
value = 950

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1)
triggerall = p2movetype = A
triggerall = stateno = 152
trigger1 = (p2bodydist X <= 135) && p2bodydist X >= 1 && (random <= 500)
value = 951

;-------------------------------------------------------------------


[State -1, ChangeState]
type = ChangeState
triggerall = var(0) >=1 && StateType != A && Ctrl && !(enemynear,hitdefattr = SCA,HA)&& RoundState = 2
trigger1 = P2StateType = S && P2BodyDist X <= 15 && P2BodyDist y >= -120
value = ifelse(Random <= 400,800,820)


[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 600
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-5, 50]) && random > 335
trigger2 = stateno = 100
trigger2 = random <= 400
trigger2 = P2BodyDist X = [0,75]

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 205
triggerall = var(0) >=1 && var(48) = 0 && statetype != A && RoundState = 2
triggerall = (p2bodydist x = [-40, 50])
trigger1 = (stateno = 200) && movecontact && time = 3
trigger2 = random <= 50
trigger2 = P2BodyDist X = [0,30]


; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = (p2bodydist x = [-40, 45])
trigger1 = (stateno = 200) && movecontact
trigger2 = stateno = 100
trigger2 = random <= 425
trigger2 = P2BodyDist X = [0,75]

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 215
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = (p2bodydist x = [-40, 45])
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 210) && movecontact && time = 3
trigger3 = stateno = 100
trigger3 = random <= 425
trigger3 = P2BodyDist X = [0,75]

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 210) && movecontact
trigger2 = stateno = 100
trigger2 = random <= 400
trigger2 = P2BodyDist X = [0,80]

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 225
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 58
trigger1 = (stateno = 210) && movecontact
trigger2 = stateno = 100
trigger2 = random <= 400
trigger2 = P2BodyDist X = [0,80]


;-------------------------------------------------------------------------------
; Stand light kick
[State -1, Combo 2]
type = ChangeState
value = 230
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 50]) && random > 400
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400
trigger3 = stateno = 100
trigger3 = random <= 450
trigger3 = P2BodyDist X = [0,85]

[State -1, Combo 2]
type = ChangeState
value = 235
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 50]) && random > 400
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400
trigger3 = (stateno = 230) && movecontact

; Stand Med kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = (p2bodydist x = [-40, 55])
trigger1 = (stateno = 230) && movecontact
trigger2 = stateno = 100
trigger2 = random <= 425
trigger2 = P2BodyDist X = [0,85]

[State -1, Stand Hard Kick]
type = ChangeState
value = 245
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 55
trigger1 = (stateno = 240) && movecontact


; Stand Hard kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(0) >=1 && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 240) && movecontact
trigger2 = stateno = 100
trigger2 = random <= 400
trigger2 = P2BodyDist X = [0,85]

; Stand Med Kick
[State -1, Combo 3]
type = Changestate
value = 240
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-5, 55]) && random > 280
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,80]
trigger2 = random <= 400

; Stand ligh Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-5, 40])
trigger1 = (stateno = 240) && movecontact

; Stan Medium Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-5, 45])
trigger1 = (stateno = 200) && movecontact

; Stand light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact
trigger1 = (stateno = 235) && movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 225
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact
trigger1 = (stateno = 235) && movecontact

; Stand Strong kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-50, 60])
trigger1 = (stateno = 220) && movecontact

; Special 1
[State -1, Special 1]
type = ChangeState
value = 1000
triggerall = NumprojID(1001) = 0
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 250) && movecontact
trigger1 = time > 3

;------------------------------------------------------------------------------
; Stand Med Punch
[State -1, Combo 4]
type = Changestate
value = 210
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 45]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,45]
trigger2 = random <= 400

; Stand light kick
[State -1, Stand Light kick]
type = ChangeState
value = 230
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-5, 40])
trigger1 = (stateno = 210) && movecontact

; Stan Medium kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

[State -1, Stand Med kick]
type = ChangeState
value = 245
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stand light punch
[State -1, Stand Light punch]
type = ChangeState
value = 200
triggerall = var (0) >=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 45])
trigger1 = (stateno = 240) && movecontact

; Stand Strong kick
[State -1, Stand Strong kick]
type = ChangeState
value = 250
triggerall = Var(0)>=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Strong punch
[State -1, Stand Strong punch]
type = ChangeState
value = 225
triggerall = Var(0)>=1 && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [0, 40])
trigger1 = (stateno = 250) && movecontact

;-------------------------------------------------
[State -1, AI Slug]
type = ChangeState
value = 1000
triggerall = NumprojID(1001) = 0
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,40])
trigger1 =  p2bodydist x >= 75
trigger2 = (stateno = 220) && movecontact

[State -1, AI Web Ball]
type = ChangeState
value = 1010
triggerall = NumprojID(1001) = 0
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,40])
triggerall = p2stateno != 1015
trigger1 =  p2bodydist x >= 75
trigger2 = (stateno = 220) && movecontact

[State -1, AI Mass]
type = ChangeState
value = 1020
triggerall = NumprojID(1001) = 0
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,40])
trigger1 = (p2bodydist x = [50, 350])
trigger2 = (stateno = 220) && movecontact
;-------------------------------------------------

;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------


[State -1, hard Crouch punch]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = Var(0)>=1 && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 35 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 35 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = roundstate = 2
triggerall = Var(0)>=1
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = var (0) >=1
triggerall = stateno != [800, 820]
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  p2bodydist x = [-1, 25]
triggerall =  p2bodydist y = [10, 115]
trigger1 = Random <= 200 && (statetype = S) && var(0) >=1
trigger1 = ctrl = 1


[State -1, throw ai]
type = ChangeState
value = 820
triggerall = var (0) >=1
triggerall = stateno != [800, 820]
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  p2bodydist x = [-1, 25]
triggerall =  p2bodydist y = [10, 115]
trigger1 = Random <= 200 && (statetype = S) && var(0) >=1
trigger1 = ctrl = 1

[State -1, air throw ai]
type = ChangeState
value = 850
triggerall = var (0) >=1
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
trigger1 = Random <= 200 && (statetype = A) && Var(0)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var (0) >=1 && var(48) = 6 && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var (0) >=1 && var(48) = 6 && RoundState = 2 && statetype != A
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 50 && enemynear, movetype != A && Random <= 200)
trigger1 = prevstateno = 200

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)
trigger1 = (stateno = 205) && (movecontact = 1)

;------------------------------------------------------------

[State -1, alt Stand Medium Punch]
type = ChangeState
value = 215
triggerall = var(0) >=1 && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
; (chain combos)
trigger1 = (stateno = 210) && (movecontact = 1)


;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = statetype != A
triggerall = (p2bodydist x = [-20, 55])
triggerall = p2dist y >= -140
; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
trigger2 = ((stateno = 205) || (stateno = 215)) && (movecontact = 1)

;-------------------------------------------------------------------------

[State -1, alt Stand Hard Punch]
type = ChangeState
value = 225
triggerall = var(0) >=1 && var(48) = 6 && RoundState = 2
triggerall = statetype != A
triggerall = (p2bodydist x = [-20, 55])
triggerall = p2dist y >= -140
; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
trigger2 = ((stateno = 205) || (stateno = 215)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype != A) && var(0) >=1 && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(0) >=1 && p2statetype != L && RoundState = 2
triggerall = statetype != A

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(0) >=1 && enemynear, statetype != L && RoundState = 2
triggerall = statetype != A

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
triggerall = var(0) >=1 && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(0) >=1 && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(0) >=1 && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(0) >=1 && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(0) >=1 && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(0) >=1 && statetype != A && RoundState = 2
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
triggerall = var(0) >=1 && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(0) >=1 && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(0) >=1 && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 650 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(0) >=1 && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(0) >=1 && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(0) >=1&& RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;---------------------------------------------------------------------

[State -1, Air Hard Kick]
type = ChangeState
value = 655
triggerall = var(0) >=1&& RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = var(0) >=1 && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = var(0) >=1 && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)



;---------------------------------------------------------------------------
; AI Super Attempt
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,40])
trigger1 = p2bodydist x > 60 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80
trigger2 =  stateno = 220 && movecontact && random < 100
value = 1000


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,40])
triggerall = p2stateno != 1015
trigger1 = p2bodydist x > 100 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80
value = 1010

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,38])
trigger1 = p2bodydist x > 150 && p2bodydist x < 350 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <10
trigger2 =  stateno = 1100 && movecontact && random < 150
trigger3 =  stateno = 1101 && movecontact && random < 150
trigger4 =  stateno = 1102 && movecontact && random < 150
value = 1020

;-----------------------------------------------
[State -1]
;web throw
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,48])
trigger1 = p2bodydist x > 80 && p2bodydist x < 300 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-65 && p2bodydist y <5
trigger2 = random < 100
trigger2 = p2bodydist x > 80 && p2bodydist x < 130
trigger2 = p2bodydist y >-65 && p2bodydist y <5
value = 1100

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,45])
trigger1 = p2bodydist x > 70 && p2bodydist x < 185 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-140 && p2bodydist y <-105 && p2statetype = A
value = 1101

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,45])
trigger1 = p2bodydist x > -5 && p2bodydist x < 80 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-190 && p2bodydist y <105 && p2statetype = A
value = 1102

;--------------------------------------------------

[State -1]
;web throw
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,35])
trigger1 = p2bodydist x > 80 && p2bodydist x < 300 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-65 && p2bodydist y <5
trigger2 = random < 45
trigger2 = p2bodydist x > 80 && p2bodydist x < 130
trigger2 = p2bodydist y >-65 && p2bodydist y <5
value = 1200

[State -1]
;web throw
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,30])
trigger1 = p2bodydist x > 80 && p2bodydist x < 300 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-65 && p2bodydist y <5
trigger2 = random < 40
trigger2 = p2bodydist x > 80 && p2bodydist x < 130
trigger2 = p2bodydist y >-65 && p2bodydist y <5
value = 1210

[State -1]
;web throw
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,25])
trigger1 = p2bodydist x > 80 && p2bodydist x < 300 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-65 && p2bodydist y <5
trigger2 = random < 35
trigger2 = p2bodydist x > 80 && p2bodydist x < 130
trigger2 = p2bodydist y >-65 && p2bodydist y <5
value = 1220


;----------------------------------------------

[State -1]
;ground pound
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,55])
trigger1 = p2bodydist x > 60 && p2bodydist x < 150 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <10
trigger2 =  stateno = 220 && movecontact && random < 100
value = 1300


[State -1]
;ground pound
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,55])
trigger1 = p2bodydist x > 100 && p2bodydist x < 225 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <10
value = 1302

[State -1]
;ground pound
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,55])
trigger1 = p2bodydist x > 150 && p2bodydist x < 350 && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <10
trigger2 =  stateno = 1100 && movecontact && random < 150
trigger3 =  stateno = 1101 && movecontact && random < 150
trigger4 =  stateno = 1102 && movecontact && random < 150
value = 1304

;------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,65])
trigger1 =(prevstateno != 5120)
trigger1 = p2bodydist y >40 && p2bodydist x > 40 && p2bodydist x < 150
value = 1005

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,65])
trigger1 =(prevstateno != 5120)
trigger1 = p2bodydist y >10 && p2bodydist y <40 && p2bodydist x > 50
value = 1011


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,65])
trigger1 =(prevstateno != 5120)
trigger1 = p2bodydist y >-10 && p2bodydist y <22 && p2bodydist x > 50
value = 1021

;-----------------------------------------

;[State -1]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(0) != 0) && numprojid(1001) = 0
;triggerall = (Ctrl) && (Statetype = A) && (random = [0,70])
;trigger1 =(prevstateno != 5120)
;trigger1 = p2bodydist y >40 && p2bodydist x > 50
;value = 1000

;[State -1]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(0) != 0) && numprojid(1001) = 0
;triggerall = (Ctrl) && (Statetype = A) && (random = [0,70])
;trigger1 =(prevstateno != 5120)
;trigger1 = p2bodydist y >25 && p2bodydist y <40 && p2bodydist x > 50
;value = 1000


;[State -1]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(0) != 0) && numprojid(1001) = 0
;triggerall = (Ctrl) && (Statetype = A) && (random = [0,70])
;trigger1 =(prevstateno != 5120)
;trigger1 = p2bodydist y >10 && p2bodydist y <25 && p2bodydist x > 50
;value = 1000

;-------------------------------------------------------------------

;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
;
[State -1, AI symbiote coffin]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1)
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
triggerall = power >= 1000
trigger1 = p2bodydist x > 40 && p2bodydist y > -200
trigger1 = random <135
trigger2 =  stateno = 1300 && movecontact && random < 255
trigger3 =  stateno = 1302 && movecontact && random < 255
trigger4 =  stateno = 1304 && movecontact && random < 255
value = 3000

;------------------------------------------------
;
[State -1, AI Varnage]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1)
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
triggerall = p2bodydist x > 2 && p2bodydist x < 225
triggerall = power >= 2000
trigger1 = (power >= 2500) && (random = [0,200])
trigger2 = p2bodydist x > 80 && p2bodydist x < 185
trigger2 = random <265
trigger3 =  stateno = 1010 && movecontact && random < 295
trigger4 =  p2stateno = 1015 && random < 295
value = 3200

;----------------------------------------------

[State -1,AI Madness]
type = ChangeState
triggerall = (roundstate = 2) && var(0) >=1
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
;triggerall = p2bodydist x > 200 && p2bodydist x < 200
triggerall = (power >= 3000) && (random = [0,900])
trigger1 = p2bodydist x > 5 && random <350
value = 3300

;----------------------------------------------------------

[State -1, AI web impaler]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1)
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
triggerall = power >= 1000
trigger1 = p2bodydist x > 50 && p2bodydist y > -190
trigger1 = random <140
value = 3500

;-----------------------------------------------------

[State -1, AI venom frenzy]
type = ChangeState
triggerall = (roundstate = 2) && var(0) >=1
triggerall = (Ctrl) && (statetype = A)
triggerall = (prevstateno != 5120)
triggerall = p2bodydist x > -200 && p2bodydist x < 230
trigger1 = (power =[1000,2999]) && (random = [0,290])
value = 3400

;---------------------------------------------

;[State -1]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(0) != 0)
;triggerall = (Ctrl) && (statetype != A)
;triggerall = (prevstateno != 5120)
;trigger1 = (power >= 1000) && (random = [0,230])
;value = 3100


;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------
[State -1, Venom Frenzy]
type = ChangeState
value = 3400
triggerall = (var(0)<=0)
triggerall = command = "Hyper 1"
triggerall = power >= 1000
trigger1 = Statetype = A & ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Symbiote Coffin]
type = ChangeState
value = 3500
triggerall = (var(0)<=0)
triggerall = command = "Hyper 2"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Symbiote Coffin]
type = ChangeState
value = 3000
triggerall = (var(0)<=0)
triggerall = command = "Hyper 1"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Varnage]
type = ChangeState
value = 3200
triggerall = (var(0)<=0)
triggerall = command = "Hyper 3"
triggerall = power >= 2000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Madness]
type = ChangeState
value = 3300
triggerall = (var(0)<=0)
triggerall = command = "Hyper 4"
triggerall = power >= 3000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
[State -1, Symbiote Slug]
type = ChangeState
value = 1000
triggerall = (var(0)<=0)
triggerall = command = "Special 1"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1,  Symbiote Slug air]
type = ChangeState
value = 1005
triggerall = var(0) <=0
triggerall = command = "Special 1"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype = A && ctrl
trigger1 = Statetype != S && ctrl
trigger1 = Statetype != C && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != S) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != C) && (HitdefAttr = SC, NA) && (MoveContact)




;------------------------------------------------------

[State -1, Web Ball]
type = ChangeState
value = 1010
triggerall = (var(0)<=0)
triggerall = command = "Special 2"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Web Ball air ]
type = ChangeState
value = 1011
triggerall = (var(0)<=0)
triggerall = command = "Special 2"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype = A && ctrl
trigger1 = Statetype != S && ctrl
trigger1 = Statetype != C && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != S) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != C) && (HitdefAttr = SC, NA) && (MoveContact)


;---------------------------------------------------------------

[State -1, symbiote mass]
type = ChangeState
value = 1020
triggerall = (var(0)<=0)
triggerall = command = "Special 3"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Symbiote Mass air ]
type = ChangeState
value = 1021
triggerall = (var(0)<=0)
triggerall = command = "Special 3"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype = A && ctrl
trigger1 = Statetype != S && ctrl
trigger1 = Statetype != C && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != S) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != C) && (HitdefAttr = SC, NA) && (MoveContact)


;-------------------------------------------------

[State -1, Web throw L]
type = ChangeState
value = 1100
triggerall = (var(0)<=0)
triggerall = command = "slash"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Web throw M]
type = ChangeState
value = 1101
triggerall = (var(0)<=0)
triggerall = command = "slash2"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Web throw H]
type = ChangeState
value = 1102
triggerall = (var(0)<=0)
triggerall = command = "slash3"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)






[State -1, Tendril Grab L]
type = ChangeState
value = 1200
triggerall = (var(0)<=0)
triggerall = command = "tendril1"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Tendril Grab M]
type = ChangeState
value = 1210
triggerall = (var(0)<=0)
triggerall = command = "tendril2"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Tendril Grab H]
type = ChangeState
value = 1220
triggerall = (var(0)<=0)
triggerall = command = "tendril3"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Ground Pound L]
type = ChangeState
value = 1300
triggerall = (var(0)<=0)
triggerall = command = "pound 1"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Ground Pound M]
type = ChangeState
value = 1302
triggerall = (var(0)<=0)
triggerall = command = "pound 2"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Ground Pound H]
type = ChangeState
value = 1304
triggerall = (var(0)<=0)
triggerall = command = "pound 3"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Camo]
type = ChangeState
value = 1400
triggerall = Var(24)=0
;triggerall = Var(26)=0
triggerall = (var(0)<=0)
triggerall = command = "camo"
;triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Shield Counter S]
type = ChangeState
value = 950
triggerall = (roundstate = 2) && (var(0)<=0)
trigger1 = command = "counter"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 150
trigger1 = time < 11

[State -1, Shield Counter C]
type = ChangeState
value = 951
triggerall = (roundstate = 2) && (var(0)<=0)
triggerall = command = "counter"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 152
trigger1 = time < 11

[State -1, Shield Counter A]
type = ChangeState
value = 952
triggerall = (roundstate = 2) && (var(0)<=0)
triggerall = command = "counter"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 154
trigger1 = time < 11
;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------
;Remove the ; if you want to use Flight Mode
;[State -1, Flight Mode]
;type = ChangeState
;value = ifelse((stateno >2000) && (stateno <2500),70,2000)
;triggerall=var(0)  != 1
;trigger1 = command = "Flight"
;trigger1 = ctrl

;[State -1, Flight Mode]
;type = ChangeState
;value =70
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;trigger1 = command = "Flight"

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(0) <=0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Slam]
type = ChangeState
value = 820
triggerall = var(0) <=0
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = var(0) <=0
triggerall = command = "holdfwd"
triggerall = (command = "c") || (command = "z")
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50



[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = var(0) <=0
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = var(0) <=0
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

[State -1, web swing fwd]
type = ChangeState
value = 107
triggerall = (roundstate = 2) && (var(0)<=0)
triggerall = StateType = A
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "FF"

[State -1, web swing bck]
type = ChangeState
value = 108
triggerall = (roundstate = 2) && (var(0)<=0)
triggerall = StateType = A
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(0) <=0
triggerall = stateno != 195
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = var(0) <=0
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 220
value = 700

;---------------------------------------------------------------------------
; Standing basics
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "x") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl

;Alt Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = (command = "x") && (command = "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "x") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;Alt Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 215
triggerall = (command = "y") && (command = "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)
trigger6 = movecontact
trigger6 = (stateno = 210)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;Alt Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 225
triggerall = (command = "z") && (command = "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && Var(0)<=0
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

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

[State -1,Alt Stand Light Kick]
type = ChangeState
value = 235
triggerall = (command = "a") && (command = "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)
trigger4 = movecontact
trigger4 = (stateno = 230)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

[State -1,Alt Stand Medium Kick]
type = ChangeState
value = 245
triggerall = (command = "b") && (command = "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)
trigger6 = movecontact
trigger6 = (stateno = 240)

;---------------------------------------------------------------------------
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)


[State -1,Alt Stand Hard Kick]
type = ChangeState
value = 255
triggerall = (command = "c") && (command = "holdfwd") && (statetype != A) && Var(0)<=0
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && Var(0)<=0
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
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype = C) && Var(0)<=0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype = C) && Var(0)<=0
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
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype = C) && Var(0)<=0
trigger1 = ctrl = 1
; (chain combos)
trigger2 = ((stateno = [200, 440])) && movecontact = 1 && stateno != 420 && stateno !=220 && stateno !=250 && var(18) < 7


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype = C) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype = C) && Var(0)<=0
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
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype = C) && Var(0)<=0
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
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && Var(0)<=0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = command != "holddown"
triggerall = (command = "c") && (statetype = A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

; Air Hard Kick
[State -1, Alt Air Hard Kick]
type = ChangeState
value = 655
triggerall = command = "holddown"
triggerall = (command = "c") && (statetype = A) && Var(0)<=0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(0)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(0)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


;Extra stuff if you want to use just remove the ;
;[State -1, FM Dash Forward]
;type = ChangeState
;value = 2005
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2500)
;trigger1 = Command = "FF"

;[State -1, FM Dash Back]
;type = ChangeState
;value = 2006
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2999)
;trigger1 = Command = "BB"

;[State -1, FM LP]
;type = ChangeState
;value = 2010
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "x"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MP]
;type = ChangeState
;value = 2011
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "y"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SP]
;type = ChangeState
;value = 2012
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "z"
;trigger1= Movetype = I

;[State -1, FM LK]
;type = ChangeState
;value = 2013
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "a"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MK]
;type = ChangeState
;value = 2014
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "b"
;trigger1= (Movetype = I)
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SK]
;type = ChangeState
;value = 2015
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "c"
;trigger1= Movetype = I

;[State -1, Guard Push Stand]
;type = ChangeState
;value = 6300
;triggerall = command = "guardpush" && statetype = S
;trigger1 = stateno = [150,153]

;[State -1, Guard Push Crouch]
;type = ChangeState
;value = 6310
;triggerall = command = "guardpush" && statetype = C
;trigger1 = stateno = [150,153]

