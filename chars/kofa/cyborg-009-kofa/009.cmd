;-| Super Motions |--------------------------------------------------------

[Command]
name = "max-3"
command = ~D, F, D, F, c
time = 30

[Command]
name = "s-blast-1"
command = ~D, F, D, F, x
time = 30
[Command]
name = "s-blast-1"
command = ~D, F, D, F, y
time = 30

[Command] 
name = "s-blast-2"   
command = ~D, F, D, F, z
time = 30

[Command]
name = "sv-attack-2"
command = ~D, B, D, B, z
time = 30

;atque veloz
[Command]
name = "sv-attack-1"
command = ~D, F, D, F, a
time = 30
;atque veloz
[Command]
name = "sv-attack-1"
command = ~D, F, D, F, b
time = 30

[Command]
name = "hp1"
command = ~D, B, D, B, x
time = 30
[Command]
name = "hp1"
command = ~D, B, D, B, y
time = 30



;-| Special Motions |------------------------------------------------------

[Command]
name = "taiku_x"
command = ~F, D, DF, x
time = 30
[Command]
name = "taiku_y"
command = ~F, D, DF, y
time = 30

[Command]
name = "taiku_a"
command = ~F, D, DF, a
time = 30
[Command]
name = "taiku_b"
command = ~F, D, DF, b
time = 30

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 30
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 30

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 30
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 30



[Command]
name = "codo_d"
command = ~D, DB, B, x
time = 30
[Command]
name = "codo_f"
command = ~D, DB, B, y
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 30

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 30

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "roll"
command = x+a
time = 1

; max on mode
[Command]
name = "change_s"
command = a+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]  ;giu
name = "fwd_x"
command = /F,x
time = 1

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

;-| Hold button |--------------------------------------------------------------
[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1


;------------------|kof long jump|-------------------------------------------------------------
 
;longjump
[Command]
name = "longjump"
command = D, $U
time = 18

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;max 3
[State -1,max 3]
type = ChangeState
value = 3000
triggerall = command = "max-3"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;----------------------------------------- lvl 2 ----------------------------------


;super caida lvl2
[State -1, s-cai-2]
type = ChangeState
value = 2120
triggerall = command = "s-blast-2"
triggerall = power >= 2000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;ataque super veloz vl2 
[State -1, sv-attack-2]
type = ChangeState
value = 2100
triggerall = command = "sv-attack-2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;super blast vl2 
[State -1, s-blast2]
type = ChangeState
value = 2110
triggerall = command = "s-blast-2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




;--------------------------------------- lvl 1 -------------------------------------------------

;ataque super veloz 
[State -1,sv-attack-1]
type = ChangeState
value = 2000
triggerall = command = "sv-attack-1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;super blast lvl 1
[State -1, s-blast1]
type = ChangeState
value = 2010
triggerall = command = "s-blast-1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;super caida lvl1
[State -1, s-cai-1]
type = ChangeState
value = 2020
triggerall = command = "s-blast-1"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;
;hombro arriba ex
[State -1, hombro arriba]
type = ChangeState
value = 2510
triggerall = command = "hp1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;�u�Ԉړ��㏸
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = !AiLevel
triggerall = command = "taiku_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;�u�Ԉړ��㏸
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1650
triggerall = !AiLevel
triggerall = command = "taiku_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




;�΋�-------------------------------------------------
[State -1, hombro arriba]
type = ChangeState
value = 1215
triggerall = command = "taiku_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;fuerte
[State -1, hombro arriba]
type = ChangeState
value = 1200
triggerall = command = "taiku_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------





;codo debil
[State -1, codo fuerte]
type = ChangeState
value = 1300
triggerall = command = "codo_d"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;codo fuerte
[State -1, codo debil]
type = ChangeState
value = 1305
triggerall = command = "codo_f"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------





;�p�����C�U�[��
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�p�����C�U�[��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact







[State -1, ]
type = ChangeState
value = 1900
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



[State -1, ]
type = ChangeState
value = 1910
triggerall = command = "QCF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;�u�Ԉړ��n
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;�u�Ԉړ��n
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1510
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




[State -1, ]
type = ChangeState
value = 1700
triggerall = !AiLevel
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


[State -1, ]
type = ChangeState
value = 1750
triggerall = !AiLevel
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;===========================================================================



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Fwd]
type = ChangeState
value = 500
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Run Fwd]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;   KOF STATES
;---------------------------------------------------------------------------

;dodge backward
[State -1]
type = ChangeState
value = 705;122
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;dodge forward
[State -1]
type = ChangeState
value = 700;112
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-----------------------------------------------------------------------------

;llave comun pu�o
[State -1]
type = ChangeState
value = 800
triggerall=command="y"
triggerall=command ="holdfwd"
triggerall = P2bodydist x < 10
triggerall = P2Statetype != A
triggerall = P2Stateno != [5000,5999]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100 


;llave comun patada
[State -1]
type = ChangeState
value = 805;810
triggerall=command="b"
triggerall=command ="holdfwd"
triggerall = P2bodydist x < 10
triggerall = P2Statetype != A
triggerall = P2Stateno != [5000,5999]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100

;-----------------------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 551
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump CD
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 206
triggerall = (Command = "x") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

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

;---------------------------------------------------------------------------

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
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Kick
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

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

;uniq, combo trigger
[State -1, AI Range]
type = ChangeState
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = statetype != A
trigger1 = stateno = 1500 && animtime >= 0
trigger2 = stateno = 1510 && animtime >= 0

[State -1, AI Forward]
type = ChangeState
value = 1510;1500
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
value = 1215
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------