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
[Statedef -1]

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

;---------------------------------------------------------------------------
;Dashpunch l
[State -1, Dashpunch l]
type = ChangeState
value = 1000
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
triggerall = command = "y" 
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" 
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
triggerall = command = "b" 
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
triggerall = command = "x" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" 
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
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" 
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y" 
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
triggerall = command = "a" 
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dive Kick
[State -1, Dive Kick]
;type = ChangeState
type = Null
value = 641
triggerall = command = "b" 
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
triggerall = command = "b" 
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c" 
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640
trigger4 = stateno = 1200

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

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Range]
type = ChangeState
value = 1030
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel > random
triggerall = p2bodydist x > 200 && statetype != A
triggerall = Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 1150
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

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

[State -1, AI FollowUp]
type = ChangeState
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------