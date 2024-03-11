[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "Last Resort"
command = ~D, B, D, B, x
time = 30

[Command]
name = "Last Resort"
command = ~D, B, D, B, y
time = 30

[Command]
name = "Joy Joy Party"
command = ~D, F, D, F, x
time = 30

[Command]
name = "Joy Joy Party"
command = ~D, F, D, F, y
time = 30

[Command]
name = "ASO II - Last Guardian"
command = ~D, F, D, F, c
time = 30

[Command]
name = "Double Assault"
command = ~D, F, D, F, z
time = 30



;-| Special Motions |------------------------------------------------------


[Command]
name = "Joy Joy Block"
command = ~D, DF, F, x
time = 30

[Command]
name = "Joy Joy Block"
command = ~D, DF, F, y
time = 30


[Command]
name = "Baseball Stars"
command = c
time = 30


[Command]
name = "Baseball Stars 2"
command = ~D, DB, B, x
time = 30
[Command]
name = "Baseball Stars 2"
command = ~D, DB, B, y
time = 30

[Command]
name = "2020 Super Catch"
command = ~D, DB, B, a
time = 30

[Command]
name = "2020 Super Catch"
command = ~D, DB, B, b
time = 30

[Command]
name = "Bushin Ken"
command = ~D, DF, F, a
time = 30

[Command]
name = "Bushin Ken"
command = ~D, DF, F, b
time = 30

[Command]
name = "Joy Joy Balloon"
command = a+b
time = 5

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


;-| Hold Button |--------------------------------------------------------
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
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdstart"
command = /s
time = 1


;-| CPU |--------------------------------------------------------
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
command = x+a
time = 1



[Command]
name = "longjump"
command = ~$D,$U
time = 30


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
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
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

;===========================================================================
; 2. State entry
;===========================================================================
[Statedef -1]




;===========================================================================
; Skill Section
;===========================================================================


;Last Resort
[State -1, Last Resort]
type = ChangeState
value = 3100
triggerall = command = "Last Resort"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Joy Joy Party
[State -1, Joy Joy Party]
type = ChangeState
value = 3000
triggerall = command = "Joy Joy Party"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ASO II - Last Guardian
[State -1, ASO II - Last Guardian]
type = ChangeState
value = 3500
triggerall = command = "ASO II - Last Guardian"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Double Assault
[State -1, Double Assault]
type = ChangeState
value = 3700
triggerall = command = "Double Assault"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1100
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
; Joy Joy Block
[State -1, Joy Joy Block]
type = ChangeState
value = 1000
triggerall = command = "Joy Joy Block"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; Baseball Stars 2
[State -1, Baseball Stars 2]
type = ChangeState
value = 1101
triggerall = command = "Baseball Stars 2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; 2020 Super Catch
[State -1, 2020 Super Catch]
type = ChangeState
value = 1200
triggerall = command = "2020 Super Catch"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; Bushin Ken
[State -1, Bushin Ken]
type = ChangeState
value = 1300
triggerall = command = "Bushin Ken"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; Joy Joy Balloon
[State -1, Joy Joy Balloon]
type = ChangeState
value = 1400
triggerall = command = "Joy Joy Balloon"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; Joy Joy Balloon (air)
[State -1, Joy Joy Balloon (air)]
type = ChangeState
value = 1410
triggerall = command = "Joy Joy Balloon"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; Joy Joy Balloon (cancel)
[State -1, Joy Joy Balloon (cancel)]
type = ChangeState
value = 1460
triggerall = Stateno = 1415 || stateno = 1416
trigger1 = command = "b"

;---------------------------------------------------------------------------
; Coma
[State -1, Coma]
type = ChangeState
value = 1470
triggerall = roundstate = 2
triggerall = Stateno = 1460 && time >= 4
trigger1 = command = "x" || command = "y"

;---------------------------------------------------------------------------
; Moonsalt
[State -1, Moonsalt]
type = ChangeState
value = 1480
triggerall = roundstate = 2
triggerall = Stateno = 1460 && time >= 4
trigger1 = command = "a" || command = "b"

;---------------------------------------------------------------------------
; Lighting Ball
[State -1, Lighting Ball]
type = ChangeState
value = 1450
triggerall = Stateno = 1415 || stateno = 1416
trigger1 = command = "Joy Joy Balloon"

;---------------------------------------------------------------------------
; Joy Joy Block (Balloon)
[State -1, Joy Joy Block (Balloon)]
type = ChangeState
value = 1440
triggerall = Stateno = 1415 || stateno = 1416
triggerall = numhelper(1001) = 0
triggerall = numhelper(1120) = 0
triggerall = numprojid(1440) = 0
trigger1 = command = "Joy Joy Block"

;---------------------------------------------------------------------------
; Joy Joy Treasure
[State -1, Joy Joy Treasure]
type = ChangeState
value = 1420
triggerall = Stateno = 1415 || stateno = 1416
triggerall = numhelper(1550) = 0
trigger1 = command = "x" || command = "y"

;---------------------------------------------------------------------------
; Joy Joy Kick
[State -1, Joy Joy Kick]
type = ChangeState
value = 1430
triggerall = Stateno = 1415 || stateno = 1416
trigger1 = command = "a"

;----------------------------------------------------------------------------

;dodge backward
[State -1]
type = ChangeState
value = 122
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Tatical Step
[State -1, Tactical Step]
type = ChangeState
value = 900
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------


;----------------------------------------------------------------------------
; Tactical Step Guard Cancel
[State -1, Tactical Step Guard Cancel]
type = ChangeState
value = 900
triggerall = Command = "FF"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)

;----------------------------------------------------------------------------
; Guard Cancel
;[State -1, Guard Cancel]
;type = ChangeState
;value = 910
;triggerall = Command = "c"
;triggerall = Power >= 1000 && StateType != A
;trigger1 = (stateno = 150 || stateno = 152)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Top Hunting Throw
[State -1, Top Hunting Throw]
type = ChangeState
value = 800
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
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Robo Arm
[State -1, Robo Arm]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl  

;---------------------------------------------------------------------------
;Hyper Tackle
[State -1, Hyper Tackle]
type = ChangeState
value = 445
triggerall = command = "b"
triggerall = (command = "holddown" && command = "holdfwd") || (command = "holddown" && command = "holdback")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;---------------------------------------------------------------------------
;Whirlwind fist
[State -1, Whirlwind fist]
type = ChangeState
value = 215
triggerall = command = "holdfwd" && command = "y" || command = "holdback" && command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100


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

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
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

;---------------------------------------------------------------------------

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000



;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000




;---------------------------------------------------------------------------
JAMBU AI
;---------------------------------------------------------------------------
[State -1, AI Guard]
type = ChangeState
value = 120
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = InGuardDist
trigger1 = ctrl

;uniq, dist 200
[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 200 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

;uniq, spam
[State -1, AI Range]
type = ChangeState
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel> random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

;uniq, knock back
[State -1, AI FollowUp]
type = ChangeState
value = 1100
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0

[State -1, AI LowHit]
type = ChangeState
value = 430
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl
trigger2 = movehit && animtime >= 0

[State -1, AI MediumHit]
type = ChangeState
value = 210
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl
trigger2 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------