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

;------------------------------------------------------------------------------

;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "�X�v���b�g�A�^�b�N"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "MBW-1"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "MBW-2"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "�K�g�����O���[�U�[2"
command = ~D, F, D, F, z
time = 30

[Command]
name = "�K�g�����O���[�U�[3"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "�K�g�����O���[�U�[4"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "�~�T�C���A�^�b�N"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "�~�T�C���A�^�b�N"
command = ~D, DF, F, D, DF, F, y
time = 30

;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------

[Command]
name = "���[���[�_�b�V��"
command = ~D, DF, F, a
time = 30

[Command]
name = "���[���[�_�b�V��"
command = ~D, DF, F, b
time = 30

[Command]
name = "���P�b�g�o�Y�[�J"
command = ~F, D, B, F, a
time = 30

[Command]
name = "���P�b�g�o�Y�[�J"
command = ~F, D, B, F, b
time = 30

[Command]
name = "��t���C���O�p���[�{��"
command = ~F, D, DF, a
time = 30

[Command]
name = "���t���C���O�p���[�{��"
command = ~F, D, DF, b
time = 30

[Command]
name = "�t���C���O�g���l�[�h"
command = ~F, D, B, F, x
time = 30

[Command]
name = "�t���C���O�g���l�[�h"
command = ~F, D, B, F, y
time = 30

[Command]
name = "�n���}�[��"
command = ~D, DF, F, x
time = 30

[Command]
name = "�n���}�[��"
command = ~D, DF, F, y
time = 30

;---------------------------

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+a
time = 1

[Command]
name = "recovery" ;�K�{�R�}���h��
command = z
time = 1

[Command]
name = "�O�����"
command = x+a
time = 1

[Command]
name = "CDattack"
command = y+b
time = 1

[Command]
name = "CDattack"
command = c
time = 1
;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

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

;---------------------------
;(�u�p���[���߁v�p�ɃR�}���h��ǉ����Ă܂�)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1

;==============================================================================
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
;==============================================================================
;============================================================================== ��S��
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
;==============================================================================
;------------------------------------------------------------------------------
[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B
;------------------------------------------------------------------------------
[State -1, AI�N���p�w���p�[]
type=helper
trigger1=!NumHelper(40000+id)
;trigger1=RoundState=2
Trigger1=RoundState<2||(RoundState=2&&Ctrl&&Stateno=0)
trigger1=alive
Trigger1=(PrevStateNo=[190,193])||PrevStateNo=5900||PrevStateNo=0
;Trigger1=Ctrl&&Stateno=0
Trigger1=!IsHelper
helpertype=normal
name="AI"
stateno=40000
ID=40000+id
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;�O�̂��߁����t���Ă���
[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type=changestate
trigger1= ishelper(40000)
trigger1= ishelper(40000+root,id)
trigger1= stateno!=40000
value=40000

;------------------------------------------------------------------------------
;==============================================================================
; ���K�E�Z
;==============================================================================
;------------------------------------------------------------------------------
[State -1, �X�v���b�g�A�^�b�N]
type = ChangeState
value = 3200
triggerall = command = "�X�v���b�g�A�^�b�N"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;�K�g�����O���[�U�[1
;[State -1, �K�g�����O���[�U�[]
;type = ChangeState
;value = 3100
;triggerall = command = "�K�g�����O���[�U�[1"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;�K�g�����O���[�U�[2
[State -1, �K�g�����O���[�U�[]
type = ChangeState
value = 3110
triggerall = command = "�K�g�����O���[�U�[2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
[State -1, MBW-1]
type = ChangeState
value = 3300
triggerall = command = "MBW-1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, MBW-1]
type = ChangeState
value = 3310
triggerall = command = "MBW-2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;�~�T�C���A�^�b�N
[State -1, �~�T�C���A�^�b�N]
type = ChangeState
value = 3000
triggerall = command = "�~�T�C���A�^�b�N"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
; �K�E�Z
;==============================================================================
;------------------------------------------------------------------------------
;���P�b�g�o�Y�[�J
[State -1, ���P�b�g�o�Y�[�J]
type = ChangeState
value = 1300
triggerall = !AILevel
triggerall = command = "���P�b�g�o�Y�[�J"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;��t���C���O�p���[�{��
[State -1, ��t���C���O�p���[�{��]
type = ChangeState
value = 1200
triggerall = command = "��t���C���O�p���[�{��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;���t���C���O�p���[�{��
[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 1210
triggerall = command = "���t���C���O�p���[�{��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;�t���C���O�g���l�[�h
[State -1, �t���C���O�g���l�[�h]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "�t���C���O�g���l�[�h"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;���[���[�_�b�V��
[State -1, ���[���[�_�b�V��]
type = ChangeState
value = 1400
triggerall = command = "���[���[�_�b�V��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;��n���}�[�p���`
[State -1, ��n���}�[�p���`]
type = ChangeState
value = 1000
triggerall = command = "�n���}�[��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;���n���}�[�p���`
[State -1, ���n���}�[�p���`]
type = ChangeState
value = 1010
triggerall = command = "�n���}�[��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;==============================================================================
; �ړ��֘A
;==============================================================================
;------------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 970
triggerall = command = "CDattack"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 670
triggerall = command = "CDattack"
triggerall = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------Roll from falling
[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = command = "recovery" || command = "z"
value = 5201

;-------------------------------------------------------------Roll
[State -1�������ر�]
type = ChangeState
value = ifelse(command = "holdback",710,700)
triggerall = command = "recovery" || command = "z"
triggerall = statetype != A && winko = 0
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = (stateno = [150,153]) && power >= 1000

;------------------------------------------------------------------------------
[State -1, ����]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; ����Z
;==============================================================================
;------------------------------------------------------------------------------
[State -1, �{�f�B�[�X����];�����Z
type = ChangeState
value = 800
triggerall = command = "y"||command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;------------------------------------------------------------------------------


;�G�A�E�u���[�L
[State -1, �G�A�E�u���[�L]
type = ChangeState
value = 650
triggerall = command = "�O�����" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;==============================================================================
; �ʏ�U���Z
;==============================================================================
;------------------------------------------------------------------------------
;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
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





;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 235
triggerall = p2bodydist X <= 10
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

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

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 246
triggerall = (Command = "b") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 245
triggerall = p2bodydist X <= 10
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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

;------------------------------------------------------------------------------

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

;------------------------------------------------------------------------------
[State -1, �W�����v��p���`]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v���p���`]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v��L�b�N]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, ����]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


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

[State -1, AI Forward]
type = ChangeState
value = 1400
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI Grab]
type = ChangeState
value = 1300
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 20 && statetype != A
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