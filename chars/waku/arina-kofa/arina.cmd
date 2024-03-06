
;-| Super Motions |--------------------------------------------------------

[Command]
name = "acv"
command = ~D,F,D,F,c
time = 30

[Command]
name = "asp"
command = ~D,F,D,F,z
time = 30

[Command]
name = "at_ab"
command = ~D,B,D,B,a
time = 30
[Command]
name = "at_ab"
command = ~D,B,D,B,b
time = 30

[Command]
name = "ab_xy"
command = ~D,F,D,F,x
time = 30
[Command]
name = "ab_xy"
command = ~D,F,D,F,y
time = 30

[Command]
name = "super"
command = ~D,B,D,B,x
time = 30
[Command]
name = "super"
command = ~D,B,D,B,y
time = 30

[Command]
name = "ac_xy"
command = ~D,F,D,F,a
time = 30
[Command]
name = "ac_xy"
command = ~D,F,D,F,b
time = 30


;Special Motions----------------------------------------------------
[Command]
name = "wn"
command = ~D, DF, F, a
time = 30
[Command]
name = "wn"
command = ~D, DF, F, b
time = 30

[Command]
name = "ac_x"
command = ~F, D, DF, x
time = 30
[Command]
name = "ac_y"
command = ~F, D, DF, y
time = 30

[Command]
name = "ab_x"
command = ~D, DB, B, x
time = 30
[Command]
name = "ab_x2"
command = ~D, DB, B, y
time = 30

[Command]
name = "ab_y2"
command = ~D, DF, F, x
time = 30
[Command]
name = "ab_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "at_a"
command = ~D, DB, B, a
time = 30
[Command]
name = "at_b"
command = ~D, DB, B, b
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
name = "tyudan"
command = y+b
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

[Command]
name = "ax"
command = a+x
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
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "longjump"
command = D, $U

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================


;===========================================================================

;�A���[�i�J�[�j�o��
[State -1, ac]
type = ChangeState
value = 3000
triggerall = command = "acv"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------

;===========================================================================
;�A���[�i�N���b�V���d�w
[State -1, ab]
type = ChangeState
value = 4500
triggerall = command = "ac_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ab]
type = ChangeState
value = 4919
triggerall = command = "ac_xy"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;�X�[�p�[��
[State -1, �X�[�p�[]
type = ChangeState
value = 4900
triggerall = command = "super"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�r�[���d�w
[State -1, ab]
type = ChangeState
value = 4300
triggerall = command = "ab_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�r�[���d�w��
[State -1, ab]
type = ChangeState
value = 4310
triggerall = command = "ab_xy"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;�A���[�i�g���l�[�h�d�w
[State -1, at]
type = ChangeState
value = 4995
triggerall = command = "at_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ac]
type = ChangeState
value = 4989
triggerall = command = "asp"
triggerall = power >= 2000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1, ac]
type = ChangeState
value = 4000
triggerall = command = "asp"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;______________________________________________________________----------


;�킭�킭����
[State -1, Kung Fu Throw]
type = ChangeState
value = 880
triggerall = command = "wn"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�N���b�V��
[State -1, ab]
type = ChangeState
value = 1400
triggerall = command = "ac_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ab]
type = ChangeState
value = 1499
triggerall = command = "ac_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�A���[�i�r�[����
[State -1, ab]
type = ChangeState
value = 1000
triggerall = command = "ab_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�r�[����
[State -1, ab]
type = ChangeState
value = 1003
triggerall = command = "ab_x2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�r�[����
[State -1, ab]
type = ChangeState
value = 1010
triggerall = command = "ab_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�r�[����
[State -1, ab]
type = ChangeState
value = 1014
triggerall = command = "ab_y2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�r�[�����
[State -1, ab]
type = ChangeState
value = 1020
triggerall = command = "ab_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;�A���[�i�r�[�����
[State -1, ab]
type = ChangeState
value = 1024
triggerall = command = "ab_x2"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;�A���[�i�r�[������
[State -1, ab]
type = ChangeState
value = 1030
triggerall = command = "ab_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;�A���[�i�r�[������
[State -1, ab]
type = ChangeState
value = 1035
triggerall = command = "ab_y2"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;__________________________________________________________________________
;�A���[�i�g���l�[�h��
[State -1, at]
type = ChangeState
value = 1200
triggerall = command = "at_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�A���[�i�g���l�[�h��
[State -1, at]
type = ChangeState
value = 1290
triggerall = command = "at_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�o����
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;�j����
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;�󒆓���
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 850
;triggerall = command = "y"
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 30
;trigger1 = p2statetype = A
;trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;����[���[��
[State -1, ���i]
type = ChangeState
value = 711
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 799
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 740
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 730
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 201
triggerall = p2bodydist X <= 10
triggerall = command = "x"
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
value = 401
triggerall = p2bodydist X <= 10
triggerall = command = "x"
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

;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;�󒆋��o
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl

;�󒆋��o
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�j
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 995
triggerall = statetype = S
triggerall = stateno != 995 && ctrl
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 =  command = "start"

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
value = 995;195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Range]
type = ChangeState
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel > random
triggerall = p2bodydist x > 200 && statetype != A
triggerall = Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 730
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
value = 880
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------