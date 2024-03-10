;---------------------------------------------------------------------------
; 1. Command definition
;---------------------------------------------------------------------------
;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 30
command.buffer.time = 1

;-| Super Moves |--------------------------------------------------------
[Command]
name = "QCF2+k"
command = ~D,DF,F,D,DF,F,a
time = 25

[Command]
name = "QCF2+k"
command = ~D,DF,F,D,DF,F,b
time = 25

[Command]
name = "DU2+P"
command = ~D,DF,F,D,DF,F,x
time = 60

[Command]
name = "DU2+P"
command = ~D,DF,F,D,DF,F,y
time = 60

;-| Special Moves |------------------------------------------------------
[Command]
name = "DU+xy"
command = ~35$D,$U,x+y
time = 20

[Command]
name = "DU+x"
command = ~35$D,$U,x
time = 20

[Command]
name = "DU+y"
command = ~35$D,$U,y
time = 20

[Command]
name = "HCF+xy"
command = ~DB,D,DF,x+y
time = 20

[Command]
name = "HCF+x"
command = ~DB,D,DF,x
time = 20

[Command]
name = "HCF+y"
command = ~DB,D,DF,y
time = 20

[Command]
name = "DD+p"
command = ~D,D,x
time = 10

[Command]
name = "DD+p"
command = ~D,D,y
time = 10

[Command]
name = "QCB+ab"
command = ~D,DB,B,a+b
time = 15

[Command]
name = "QCB+a"
command = ~D,DB,B,a
time = 15

[Command]
name = "QCB+b"
command = ~D,DB,B,b
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;-| Misc |------------------------------------------------------------------
[Command]
name = "HighJump"
command = $D,$U
time = 10

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
; Shinshinmumyou Togihotaru
[State -1, Shinshinmumyou Togihotaru]
type = ChangeState
value = 3000
triggerall = command = "QCF2+k"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact
trigger4 = (StateNo = [1200,1299]) && Movecontact

; Tenraigin Kuchinawaichigo
[State -1, Tenraigin Kuchinawaichigo]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = command = "DU2+P"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi EX
[State -1, Saiunricchu Mozuotoshi EX]
type = ChangeState
value = 1020
triggerall = !AILevel
triggerall = command = "DU+xy"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl || stateno = 40
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi X
[State -1, Saiunricchu Mozuotoshi X]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = command = "DU+x"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi X
[State -1, Saiunricchu Mozuotoshi Y]
type = ChangeState
value = 1010
triggerall = !AILevel
triggerall = command = "DU+y"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Kikkajyunikou Jibashiri EX
[State -1, Kikkajyunikou Jibashiri EX]
type = ChangeState
value = 1120
triggerall = !AILevel
triggerall = command = "HCF+xy"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Kikkajyunikou Jibashiri X
[State -1, Kikkajyunikou Jibashiri X]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "HCF+x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Kikkajyunikou Jibashiri Y
[State -1, Kikkajyunikou Jibashiri Y]
type = ChangeState
value = 1110
triggerall = !AILevel
triggerall = command = "HCF+y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Utsusemi
[State -1, Utsusemi]
type = ChangeState
value = 1150
triggerall = command = "DD+p" && statetype = A && var(2) = 3
trigger1 = ctrl

;---------------------------------------------------------------------------
; Gekkouippa Makigeri EX
[State -1, Gekkouippa Makigeri EX]
type = ChangeState
value = 1220
triggerall = command = "QCB+ab"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Gekkouippa Makigeri A
[State -1, Gekkouippa Makigeri A]
type = ChangeState
value = 1200
triggerall = command = "QCB+a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Gekkouippa Makigeri B
[State -1, Gekkouippa Makigeri B]
type = ChangeState
value = 1210
triggerall = command = "QCB+b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,269]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Forward Dash
[State -1, Forward Dash]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Back Dash
[State -1, Back Dash]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "ax" || (command = "holdfwd" || command = "holdback") && command = "ax"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100

;---------------------------------------------------------------------------
; Leap Attack
[State -1, Leap Attack]
type = ChangeState
value = 900
triggerall = command = "xy"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard Break Attack
[State -1, Guard Break Attack]
type = ChangeState
value = 950
triggerall = !AILevel
triggerall = command = "by"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Lunging Side Kick
[State -1, Lunging Side Kick]
type = ChangeState
value = 260
triggerall = command = "holdfwd" && (command = "a" || command = "z" || command = "c")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 240 && Movecontact && Anim = Var(5)+240
trigger3 = StateNo = 400 && Movecontact
trigger4 = StateNo = 410 && Movecontact

;---------------------------------------------------------------------------
; High Roundhouse Kick
[State -1, High Roundhouse Kick]
type = ChangeState
value = 270
triggerall = command = "holdfwd" && command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Hip Lauch
[State -1, Hip Lauch]
type = ChangeState
value = 285
triggerall = command = "ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" 
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && Movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" || command = "z" || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && Movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Sweep
[State -1, Sweep]
type = ChangeState
value = 450
triggerall = command = "holddown" && command = "holdfwd"
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" || command = "z" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Light Dive Kick
[State -1, Light Dive Kick]
type = ChangeState
value = 650
triggerall = command = "holddownfwd" && (command = "a" || command = "z" || command = "c") && statetype = A && pos y <= -50
trigger1 = Anim != Var(5)+43
trigger1 = ctrl

;---------------------------------------------------------------------------
; Strong Dive Kick
[State -1, Strong Dive Kick]
type = ChangeState
value = 660
triggerall = command = "holddownfwd" && command = "b" && statetype = A && pos y <= -50
trigger1 = Anim != Var(5)+43
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" 
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && Movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" || command = "z" || command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Wall Jump
[State -1, Wall Jump]
type = ChangeState
value = 60
triggerall = ctrl
triggerall = statetype = A
triggerall = command = "holdup"
trigger1 = command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger2 = command = "holdback"
trigger2 = FrontEdgeBodyDist <= 0

;---------------------------------------------------------------------------
; Jump Cancel
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = command = "HighJump"
triggerall = (StateNo = 1210 && MoveHit && Time = 13) || (StateNo = 1220 && MoveHit && Time = 26) || (StateNo = 3000 && MoveHit && Time = 83)
trigger1 = statetype != A


;---------------------------------------------------------------------------
;JAMBU AI
;---------------------------------------------------------------------------
[State -1, AI Guard]
type = ChangeState
value = 120
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = InGuardDist
trigger1 = ctrl

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 1100
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

;uniq, always grab
[State -1, AI Grab]
type = ChangeState
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2> random
triggerall = p2bodydist x < 20 && statetype != A
trigger1 = ctrl

;uniq move contact
[State -1, AI FollowUp]
type = ChangeState
value = 1200
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movecontact && animtime >= 0

[State -1, AI LowHit]
type = ChangeState
value = 440
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl
trigger2 = movehit && animtime >= 0

[State -1, AI MediumHit]
type = ChangeState
value = 240
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl
trigger2 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------