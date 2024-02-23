;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;------------------------------------------------------------------------------
;AI�p�R�}���h


;-| Super Motions |--------------------------------------------------------
[Command]
name = "�▽���`"
command = ~D, F, D, F, c
time = 30

[Command]
name = "MAX�E�`�~�����̓{��"
command = ~D, F, D, F, z
time = 30


[Command]
name = "�E�`�~�����̓{��"
command = ~D, F, D, F, x
time = 30
[Command]
name = "�E�`�~�����̓{��"
command = ~D, F, D, F, y
time = 30

[Command]
name = "�~�g�D���`�̍ق�"
command = ~D, F, D, F, a
time = 30
[Command]
name = "�~�g�D���`�̍ق�"
command = ~D, F, D, F, b
time = 30



;-| Special Motions |------------------------------------------------------

[Command]
name = "sp6"
command = ~F, DF, F, x
time = 30
[Command]
name = "sp6"
command = ~F, DF, F, y
time = 30

[Command]
name = "sp3"
command = ~B, D, DF, x
time = 30
[Command]
name = "sp3"
command = ~B, D, DF, y
time = 30

[Command]
name = "�V�j�}�u�C�̒Q��1"
command = ~F, D, DF, a
time = 30
[Command]
name = "�V�j�}�u�C�̒Q��2"
command = ~F, D, DF, b
time = 30

[Command]
name = "sp1"
command = ~D, DF, F, x
time = 30
[Command]
name = "sp2"
command = ~D, DF, F, y
time = 30

[Command]
name = "sp4"
command = ~D, DB, B, x
time = 30
[Command]
name = "sp5"
command = ~D, DB, B, y
time = 30

[Command];air
name = "sp7"
command = ~D, DF, F, a
time = 30
[Command]
name = "sp7"
command = ~D, DF, F, b
time = 30

[Command]
name = "�n�|�S1"
command = ~D, DB, B, a
time = 30
[Command]
name = "�n�|�S1"
command = ~D, DB, B, b
time = 30

[Command]
name = "�V�|�S"
command = ~D, DF, F, a
time = 30
[Command]
name = "�V�|�S"
command = ~D, DF, F, b
time = 30









[Command]
name = "�X���K���̗U��"
command = x+y

[Command]
name = "�X���K���̌}��"
command = a+b










[Command]
name = "�ً}���O"
command = x+a
time = 1



[Command]
name = "�ً}�����"
command = /$B,x+a
time = 1



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
name = "Z"
command = z
time = 1

[Command]
name = "�ӂ���΂�"
command = y+b
time = 1

[Command]
name = "MAX"
command = y+a
time = 1

[Command]
name = "�������ςȂ�x"
command = /$x
time = 1

[Command]
name = "�������ςȂ�y"
command = /$y
time = 1

[Command]
name = "�������ςȂ�a"
command = /$a
time = 1

[Command]
name = "�������ςȂ�b"
command = /$b
time = 1

[Command]
name = "�������ςȂ�z"
command = /$z
time = 1

[Command]
name = "�������ςȂ�c"
command = /$c
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
name = "DU"
command = D, U
time = 20



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;�`�h����
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;�v���C���[����
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�j�����J�i���̎���
[State ERROR]
type = ChangeState
value = 2500
triggerall = command = "�▽���`"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;MAX�E�`�~�����̓{��
[State Chain Slide Touch]
type = ChangeState
value = 2050
triggerall = command = "MAX�E�`�~�����̓{��"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�E�`�~�����̓{��
[State Chain Slide Touch]
type = ChangeState
value = 2000
triggerall = command = "�E�`�~�����̓{��"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�~�g�D���`�̍ق�
[State Twister Drive]
type = ChangeState
value = 2100
triggerall = command = "�~�g�D���`�̍ق�"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;���Ⴊ�݋��p���`(�|��)
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = command = "sp6"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "sp3"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�V�j�}�u�C�̒Q��(�ǂ��L����)
[State Scramble Dash]
type = ChangeState
value = 1300
triggerall = command = "�V�j�}�u�C�̒Q��1" || command = "�V�j�}�u�C�̒Q��2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;�V�|�S(�ǂ��L����)
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = command = "�V�|�S"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�X���K���̗U��(�ǂ��L����)
[State Scramble Dash]
type = ChangeState
value = 1200
triggerall = command = "�X���K���̗U��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�X���K���̌}��(�ǂ��L����)
[State Scramble Dash]
type = ChangeState
value = 1210
triggerall = command = "�X���K���̌}��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�n�|�S(�ǂ��L����)
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = command = "�n�|�S1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;������������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "sp1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "sp2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;���Ⴊ�ݎ�p���`(�|��)
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "sp4"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;���Ⴊ�ݒ��p���`(�|��)
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "sp5"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "sp1" || command = "sp2"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "sp4" || command = "sp5"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�J�W�t�`
[State -1, Jump Light Punch]
type = ChangeState
value = 660
triggerall = command = "sp7"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------




;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;���R�J�E���^�[
;[State -1]
;type = varset
;triggerall = var(32) = 0
;triggerall = var(59) <= 0
;triggerall = command = "�ӂ���΂�" && command = "holdup"
;triggerall = numhelper(20000)
;triggerall = helper(20000),stateno != 20106
;triggerall = helper(20000),stateno < 20150
;triggerall = alive && life > 0
;triggerall = !(EnemyNear(Var(53)),HitDefAttr = SCA, HA,HT,HP) && Enemynear,stateno != [2000,3999]
;trigger1 = (stateno = [5000,5999]) || (stateno = [120,159])
;trigger1 = movetype = H
;var(32) = 1

;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ӂ���΂��U��
;[State -1, 290]
;type = ChangeState
;value = 291
;triggerall = var(59) <= 0
;triggerall = command = "�ӂ���΂�" && command != "holdup"
;triggerall = power >= 500
;trigger1 = stateno = 150
;trigger2 = stateno = 151

;---------------------------------------------------------------------------
;MAX����
;[State -1, Jump Strong Kick]
;type = ChangeState
;value = 900
;triggerall = var(59) <= 0
;triggerall = command = "MAX"
;triggerall = statetype != A
;triggerall = power >= 1000
;trigger1 = var(20) = 0
;trigger1 = ctrl

;---------------------------------------------------------------------------
;�N�C�b�NMAX
;[State -1, Jump Strong Kick]
;type = ChangeState
;value = 901
;triggerall = var(59) <= 0
;triggerall = command = "MAX"
;triggerall = statetype != A
;triggerall = power >= 2000
;trigger1 = var(20) = 0
;trigger1 = stateno = [200,499]
;trigger1 = movecontact

;===========================================================================


;---------------------------------------------------------------------------
;�_�E�����
;[State -1, Taunt]
;type = ChangeState
;value = 702
;triggerall = var(59) <= 0
;triggerall = command = "�ً}���O"
;triggerall = alive
;triggerall = stateno = 5050
;triggerall = pos y >=-40
;triggerall = vel y > 1
;trigger1 = canrecover
;trigger2 = Pos Y >= -5 && Vel Y > 3
;trigger2 = Enemynear,movetype != A

;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�͂ݎa��E�O
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 800
;triggerall = var(59) <= 0
;triggerall = command = "z"
;triggerall = command = "holdfwd" || command = "holdback"
;triggerall = command != "holddown"
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = p2bodydist X < 20
;trigger1 = p2statetype != A
;trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;�͂ݎa��E���
[State -1, Kung Fu Throw]
type = ChangeState
value = 820
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H






;===========================================================================
;---------------------------------------------------------------------------


;�ً}�����
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�ً}���O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 525
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 651
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact






;===========================================================================
;---------------------------------------------------------------------------




;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 215
triggerall = var(59) != 1
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
triggerall = var(59) != 1
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
triggerall = var(59) != 1
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
value = 199
triggerall = var(59) <= 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 415
triggerall = var(59) != 1
triggerall = command = "holdfwd"
triggerall = command = "y"
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
triggerall = var(59) != 1
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
triggerall = var(59) != 1
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
triggerall = var(59) != 1
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
value = 601
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 611
triggerall = var(59) != 1
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
value = 631
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 641
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;���Ⴊ�ݒ��p���`�E�L�����Z����(�|��)
;[State -1, Crouching Light Punch]
;type = ChangeState
;value = 414
;triggerall = var(59) <= 0
;triggerall = command = "y"
;triggerall = command = "holddown" && command = "holdfwd"
;triggerall = statetype != A
;trigger1 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 230 || stateno = 240
;trigger1 = movecontact
;trigger2 = stateno = 405 || stateno = 415 || stateno = 430 || stateno = 440
;trigger2 = movecontact

