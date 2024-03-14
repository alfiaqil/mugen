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
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;-| Special Motions |------------------------------------------------------
[Command]
name = "UPPER_x"
command = ~F, D, DF, x

[Command]
name = "UPPER_y"
command = ~F, D, DF, y

[Command]
name = "UPPER_z"
command = ~F, D, DF, z

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
name = "QCF_b"
command = ~D, DF, F, b

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
name = "DD_x"
command = ~D, D, x

[Command]
name = "DD_y"
command = ~D, D, y

[Command]
name = "DD_z"
command = ~D, D, z

[Command]
name = "xxxx"
command = ~x, x, x, x
time = 20

[Command]
name = "yyyy"
command = ~y, y, y, y
time = 20

[Command]
name = "zzzz"
command = ~z, z, z, z
time = 20

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

[Command]
name = "holda";Required (do not remove)
command = /a
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]
var(1) = 1
ignorehitpause = 1

;===========================================================================
;---------------------------------------------------------------------------
[State -1, QCF_x+y]
type = ChangeState
value = 3000
triggerall = command = "QCF_x" && command = "QCF_y"
triggerall = statetype != A
triggerall = (100*life/const(data.life))<=30
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, QCF_y+z]
type = ChangeState
value = 3010
triggerall = command = "QCF_y" && command = "QCF_z"
triggerall = statetype != A
triggerall = (100*life/const(data.life))<=30
trigger1 = var(1)

;===========================================================================
;---------------------------------------------------------------------------
[State -1, UPPER_x]
type = ChangeState
value = 1010
triggerall = command = "UPPER_x"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, UPPER_y]
type = ChangeState
value = 1011
triggerall = command = "UPPER_y"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, UPPER_z]
type = ChangeState
value = 1012
triggerall = command = "UPPER_z"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, QCF_x]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, QCF_y]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, QCF_z]
type = ChangeState
value = 1002
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, QCB_xyz]
type = ChangeState
value = 1020
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-0 Three Way Beamer]
type = ChangeState
value = 1030
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-1 Voltage Crack]
type = ChangeState
value = 1032
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 1
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-2 Trick Star Kick]
type = ChangeState
value = 1034
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 2
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-3 Catain Smasher]
type = ChangeState
value = 1035
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 3
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-4 Fire Tube]
type = ChangeState
value = 1036
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 4
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-5 Spirit Hair]
type = ChangeState
value = 1038
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 5
triggerall = Numhelper(1039) = 0
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-6 Graviton Thunder]
type = ChangeState
value = 1053
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 6
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-7 Illusion Grapple]
type = ChangeState
value = 1055
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 7
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-8 Shadow Sharper]
type = ChangeState
value = 1059
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 8
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-9 Double Brider Kick]
type = ChangeState
value = 1061
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 9
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-10 Madness Ball Boy]
type = ChangeState
value = 1063
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 10
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-11 Ambush Lifter]
type = ChangeState
value = 1067
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 11
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, A-12]
type = ChangeState
value = 1068
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(59) = 12
trigger1 = var(1)
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Stand Light Attack Close]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 35
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Stand Light Attack ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Stand medium Attack Close]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Stand medium Attack]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 215
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Stand Strong Attack Close]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x < 90
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 215
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Stand Strong Attack]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 215 || stateno = 225
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Crouching Light Attack Close]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2bodydist x < 35
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205 || stateno = 405
;---------------------------------------------------------------------------
[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205 || stateno = 405
;---------------------------------------------------------------------------
[State -1, Crouching Medium Attack Close]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = p2bodydist x < 80
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205 || stateno = 405
;---------------------------------------------------------------------------
[State -1, Crouching Medium Attack]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205 || stateno = 215 || stateno = 405 || stateno = 415
;---------------------------------------------------------------------------
[State -1, Crouching Strong Attack Close]
type = ChangeState
value = 425
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = p2bodydist x < 90
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205 || stateno = 215 || stateno = 405 || stateno = 415
;---------------------------------------------------------------------------
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 405 || stateno = 415 || stateno = 425
;---------------------------------------------------------------------------
[State -1, Croucghing Replect Guard]
type = ChangeState
value = 304
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Attack]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 600
;---------------------------------------------------------------------------
[State -1, Jump Medium Attack]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 600

;---------------------------------------------------------------------------
[State -1, Jump Strong Attack]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 600 || stateno = 610


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

[State -1, AI Helper]
type = ChangeState
value = 1038
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = statetype != A
triggerall = Numhelper(1039) = 0
trigger1 = ctrl

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 200 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Escape]
type = ChangeState
value = 1034
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2> random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl

[State -1, AI LowHit]
type = ChangeState
value = 400
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = statetype != A
trigger1 = ctrl
trigger2 = p2movetype = H && animtime >= 0

[State -1, AI MediumHit]
type = ChangeState
value = 210
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = statetype != A
trigger1 = ctrl
trigger2 = p2movetype = H && animtime >= 0

[State -1, AI FollowUp]
type = ChangeState
value = 1030
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = statetype != A
trigger1 = p2movetype = H && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------