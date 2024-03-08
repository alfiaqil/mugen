;���ƃV���Ƃ��낢��@�R�}���h�t�@�C�� 
;kinu �@commandfile
;kinucommand.cmd

;-| ���K�E�Z |--------------------------------------------------------

[Command]
name = "hmag1"
command = ~D, F, D, F, c
time = 30

[Command]
name = "oni_w"
command = ~D, F, D, F, z
time = 30

[Command]
name = "si_w"
command = ~D, B, D, B, a
time = 30
[Command]
name = "si_w"
command = ~D, B, D, B, b
time = 30

[Command]
name = "bird_s"
command = ~D, B, D, B, x
time = 30
[Command]
name = "bird_s"
command = ~D, B, D, B, y
time = 30

[Command]
name = "si_s"
command = ~D, F, D, F, a
time = 30
[Command]
name = "si_s"
command = ~D, F, D, F, b
time = 30

[Command]
name = "si_s2"
command = ~D, B, D, B, z
time = 30


[Command]
name = "bird_w2"
command = ~D, F, D, F, x
time = 30
[Command]
name = "bird_m2"
command = ~D, F, D, F, y
time = 30

;-| �K�E�Z |------------------------------------------------------

[Command]
name = "si_w2"
command = ~F, D, DF, x
time = 30
[Command]
name = "si_w2"
command = ~F, D, DF, y
time = 30

[Command]
name = "mag1"     
command = ~D, DF, F, x
time = 30
[Command]
name = "mag2"     
command = ~D, DF, F, y
time = 30

[Command]
name = "bird_w"
command = ~D, DB, B, x
time = 30
[Command]
name = "bird_w"
command = ~D, DB, B, y
time = 30


[Command]
name = "ted1"     
command = ~D, DF, F, a
time = 30
[Command]
name = "ted1"     
command = ~D, DF, F, b
time = 30

[Command]
name = "ted2"
command = ~D, DB, B, a
time = 30
[Command]
name = "ted2"
command = ~D, DB, B, b
time = 30

[Command]
name = "ted3"
command = ~B, D, DB, a
time = 30
[Command]
name = "ted3"
command = ~B, D, DB, b
time = 30


;-| �Q�񉟂��Z |-----------------------------------------------------------












[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = c
time = 1
;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
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

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;=======�K�E�Z====================================================================

[state -1, hmag1 ]; ���E�ԗ�
type = changestate
value = 4000
triggerall = command = "hmag1"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[state -1, hmag1 ]
type = changestate
value = 1400
triggerall = command = "oni_w"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




[state -1, bird s]; ���񂹁@��  ���E�����񂹁E�J���C�V�`�J�b�v 
type = changestate
value =  1160;ifelse(var(1), 1190,1160)
triggerall = command = "bird_s"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[state -1, shiro s ex];    ���E�S��
type = changestate
value = 3600
triggerall = command = "si_s"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


[state -1, shiro s];����̃��[�����O�A�^���N�@�@�@ ���E�S��
type = changestate
value =  1500
triggerall = command = "si_s2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[state -1, bird w]; ���E����
type = changestate
value = 3300
triggerall = command = "bird_w2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[state -1, bird m]; ���E����
type = changestate
value = 3400
triggerall = command = "bird_m2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


[state -1, shiro w]; �V���̂��݂�   ���E�X�n
type = changestate
value =  1550
triggerall = command = "si_w"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact















 
;-------------�T�}�[�\���g�L�b�N--------------------------------------


[state -1, shiro w ex];    ���E�X�n
type = changestate
value =  3500
triggerall = command = "si_w2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




;------��------------------------------


;-------����------------------------------
[state -1, bird w]; ���񂹁@�� ���E����
type = changestate
value = 1100
triggerall = command = "bird_w"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact





;------------------------------------------------


;------------------------------------------------


;------------------------------------------------




[state -1, magic1];����
type = changestate
value = 1600
triggerall = command = "mag1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[state -1, magic2];�~��
type = changestate
value = 1700
triggerall = command = "mag2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�V���@�U��
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "ted3"
triggerall = statetype != A
trigger1 = ctrl


;������V���@�Ђ�����
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "ted2"
triggerall = statetype != A
trigger1 = ctrl

;�������V���@������
[State -1, Standing Strong Kick f]
type = ChangeState
value = 235;
triggerall = command = "ted1"
triggerall = statetype != A
trigger1 = ctrl

;�������V���@������
[State -1, Standing Strong Kick f]
type = ChangeState
value = 630
triggerall = command = "ted1"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�󒆋�
[State -1, Jump s�@slash]
type = ChangeState
value = 620
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;-------------------------
;����n�W�� c �n��
[state -1, aboid ground]
type = changestate
value = 900
triggerall = (command = "x" && command = "a") || command = "z"
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
;���a��i�R��ɕύX�H�j���� 
[State -1, z Throw]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;==�ʏ�U��=========================================================================


;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch Close
[State -1, Stand Medium Punch Close]
type = ChangeState
value = 215
triggerall = p2bodydist X <= 10
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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
;---------------------------------------------------------------------------

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
value = 241
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
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = 1
triggerall = command = "start"
trigger1 = statetype != A && ctrl

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
value = 431
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 441
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
;�󒆎�
[State -1, Jump Light slash]
type = ChangeState
value = 600
triggerall = command = "x" || command ="a"
trigger1 = statetype = A && ctrl

;�󒆒�
[State -1, Jump m�@slash]
type = ChangeState
value = 610
triggerall = command = "y" || command ="b"
trigger1 = statetype = A && ctrl
