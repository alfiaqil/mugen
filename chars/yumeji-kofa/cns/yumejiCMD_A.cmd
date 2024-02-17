; The CMD file.
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "ougi"
command = ~D, F, D, F, z
time = 30

[Command]
name = "ougi2"
command = ~D, B, D, B, z
time = 30

[Command]
name = "mu"
command = ~D, F, D, F, c
time = 30

[Command]
name = "issen"
command = ~D, B, D, B, c
time = 30

[Command]
name = "ama"
command = ~D, F, D, F, x
time = 30
[Command]
name = "ama"
command = ~D, F, D, F, y
time = 30

[Command]
name = "ssm_3"
command = ~D, F, D, F, a
time = 30
[Command]
name = "ssm_3"
command = ~D, F, D, F, b
time = 30

;[Command]
;name = "bakuhatu"
;command = ~D, DF, F, s
;time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "fui"
command = ~D, DF, F, a
time = 30
[Command]
name = "fui"
command = ~D, DF, F, b
time = 30

[Command]
name = "kage_1"
command = ~D, DF, F, x
time = 30
[Command]
name = "kage_1"
command = ~D, DF, F, y
time = 30

[Command]
name = "ssm_1"
command = ~D, DB, B, x
time = 30
[Command]
name = "ssm_1"
command = ~D, DB, B, y
time = 30

[Command]
name = "hibari"
command = ~D, DB, B, a
time = 30
[Command]
name = "hibari"
command = ~D, DB, B, b
time = 30

[Command]
name = "sousatu_3"
command = ~D, DF, F, x
time = 30
[Command]
name = "sousatu_3"
command = ~D, DF, F, y
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
command = x+y
time = 1





[Command]
name = "x+a"
command = x+a
time = 1

[Command];���ǂ��ł�
name = "oiuchi_1"
command = /$D,a+b
time = 5

[Command];��ǂ��ł�
name = "oiuchi_2"
command =/$U,a+b
time = 5

[Command];��ǂ��ł�
name = "holda"
command = /$a
time = 1

[Command];��ǂ��ł�
name = "holdb"
command = /$b
time = 1





[Command];sp
name = "spnage"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "holdup2" ;Required (do not remove)
command = /U
time = 1

[Command];�O�]
name = "zen"
command = /$DF,y
time = 1

[Command];��]
name = "kou"
command = /$DB,y
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
name = "Fb"
command = /$F,b
time = 1

[Command]
name = "debug"
command = D,D,s
time = 15

[Command]
name = "cyouhatu"
command = s
time = 15

;-| Single Button |---------------------------------------------------------
[Command]; �p���[����
name = "pow"
command = /$y
time = 1

[Command];�ƒ�p�▽�����E���R�}���h
name = "zetumei2"
command = /$s
time = 1

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


;===========================================================================
[Statedef -1]
;===========================================================================

;---------------------------------------------------------------------------
;��M
[State -1, Stand Strong Punch]
type = ChangeState
value = 12500;13000
triggerall = command = "issen"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------


;------------------------------------------------------
;���n�o�O
;------------------------------------------------------


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;�▽���` �i�f�o�b�N�j
[State -1, Stand Strong Punch]
type = ChangeState
value = 27000
triggerall = command = "mu"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;---------------------------------------------------------------------------
;�{�蔚��1
;[State -1, Stand Strong Punch]
;type = ChangeState
;value = 12500
;triggerall = command = "bakuhatu"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�_���z�꓁�����`�@��_�� �i�o�r�Q�Łj
[State -1, Stand Strong Punch]
type = ChangeState
value = 4550
triggerall = command = "ougi"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;�_���z�꓁�����`�@��_��
[State -1, Stand Strong Punch]
type = ChangeState
value = 8100
triggerall = command = "ougi2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�錕 �V��
[State -1, Stand Strong Punch]
type = ChangeState
value = 2500
triggerall = command = "ama"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�錕�E�����߂䂫�M �i���j
[State -1, Stand Strong Punch]
type = ChangeState
value = 1202
triggerall = command = "ssm_3"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;�s�ӑł�
[State -1, Sand Strong Punch]
type = ChangeState
value = 1380
triggerall = command = "fui"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;�錕�E�����߂䂫�M �i��j
[State -1, Stand Strong Punch]
type = ChangeState
value = 1200
triggerall = command = "ssm_1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;�錕�E�z�� �i��j
[State -1, Stand Strong Punch]
type = ChangeState
value = 1000
triggerall = command = "kage_1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�_��
[State -1, Stand Strong Punch]
type = ChangeState
value = 1400
triggerall = command = "hibari"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===========================================================================
;�錕�E�o�E�c�o���Ԃ��i���j
[State -1, Stand Strong Punch]
type = ChangeState
value = 1602
triggerall = command = "sousatu_3"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact




;---------------------------------------------------------------------------
;�˂���΂�
[State -1, Throwsp]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;��������
[State -1, Throwsp]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;===========================================================================

;===========================================================================

;===========================================================================


;----------------------------------------------------------------------------------------------------------


;CD attack
[State -1]
type = ChangeState
value = 511
triggerall = command = "holddown"
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1]
type = ChangeState
value = 510
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1]
type = ChangeState
value = 620
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;----------------------------------------------------------------------------------------------------------

;����
[State -1, Run Back]
type = ChangeState
value = 320
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;��]
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================

;===========================================================================

;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
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

;----------------------------------------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 231
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
;Taunt
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;----------------------------------------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
triggerall = p2bodydist X <= 10
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;----------------------------------------------------------------------------------------------------------

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

;----------------------------------------------------------------------------------------------------------

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------

[State -1, Standing Strong Kick]
type = ChangeState
value = 650
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Standing Strong Kick]
type = ChangeState
value = 655
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
