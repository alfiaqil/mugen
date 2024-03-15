;==============================================================================
;------------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;------------------------------------------------------------------------------
[Defaults]
command.time = 15 
command.buffer.time = 1 

;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "MAX2"
command = ~D, F, D, F, c
time = 30

[Command]
name = "�A�[�N�G�l�~�["
command = ~D, B, D, B, c
time = 30

[Command]
name = "��o���J�[�o�X�^�["
command = ~D, F, D, F, z
time = 30

[Command]
name = "���x���W���["
command = ~D, F, D, F, x
time = 30
[Command]
name = "���x���W���["
command = ~D, F, D, F, y
time = 30

[Command]
name = "�}�L�V�}���x���W���["
command = ~D, F, D, F, a
time = 30
[Command]
name = "�}�L�V�}���x���W���["
command = ~D, F, D, F, b
time = 30




;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------
[Command]
name = "�}�L�V�}�r�[��"
command = ~D, DB, B, a
time = 30
[Command]
name = "�}�L�V�}�r�[��"
command = ~D, DB, B, b
time = 30

[Command]
name = "�f���W�����X�A�[�`"
command = x+y
time = 30

[Command]
name = "�}�L�V�}���t�g"
command = ~D, DF, F, a
time = 30
[Command]
name = "�}�L�V�}���t�g"
command = ~D, DF, F, b
time = 30

[Command]
name = "�u���b�c�L���m��"
command = ~F, D, DF, a
time = 30
[Command]
name = "�u���b�c�L���m��"
command = ~F, D, DF, b
time = 30

[Command]
name = "��~�T�C���L���m��"
command = ~F, D, DF, x
time = 30
[Command]
name = "���~�T�C���L���m��"
command = ~F, D, DF, y
time = 30

[Command]
name = "��}�L�V�}�X�N�����u��"
command = ~D, DF, F, x
time = 30
[Command]
name = "���}�L�V�}�X�N�����u��"
command = ~D, DF, F, y
time = 30

[Command]
name = "��x�C�p�[�L���m��"
command = ~D, DB, B, x
time = 30
[Command]
name = "���x�C�p�[�L���m��"
command = ~D, DB, B, y
time = 30

[Command]
name = "�ӂ��Ƃ΂�" ;�K�{�R�}���h��
command = y+b
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = c
time = 1

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
name = "recovery"
command = x+a
time = 1

[Command]
name = "�O�����"
command = x+a
time = 1

[Command]
name = "������"
command = /$B,x+a
time = 1

[Command]
name = "MAX����"
command = y+a
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "�Z���g���[�v���X"
command = /$F,a
time = 1

[Command]
name = "back_a"
command = /$F,b
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_a"
command = /$B,b
time = 1

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

;============================================================================== ��S��
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
;==============================================================================
;==============================================================================
; AI�֌W
;==============================================================================
[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B
[State -1, AI�N���p�w���p�[]
type=helper
trigger1=!NumHelper(20000+id)
;trigger1=RoundState=2
Trigger1=RoundState<2||(RoundState=2&&Ctrl&&Stateno=0)
trigger1=alive
trigger1=var(59)=0
Trigger1=(PrevStateNo=[190,194])||PrevStateNo=5900||PrevStateNo=0
;Trigger1=Ctrl&&Stateno=0
Trigger1=!IsHelper
helpertype=normal
name="AI"
stateno=20000
ID=20000+id
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;�O�̂��߁����t���Ă���
[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type=changestate
trigger1= ishelper(20000)
trigger1= ishelper(20000+root,id)
trigger1= stateno!=20000
value=20000
;==============================================================================

;==============================================================================
; �ȉ��R�}���h
;==============================================================================
; ���K�E�Z
;==============================================================================
;------------------------------------------------------------------------------
;MAX2�G���h�I�u���[���h
[State -1, �G���h�I�u���[���h]
type = ChangeState
value = 3500
triggerall = command = "MAX2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;�A�[�N�G�l�~�[
[State -1, �A�[�N�G�l�~�[]
type = ChangeState
value = 3400
triggerall = command = "�A�[�N�G�l�~�["
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;�}�L�V�}����x���W���[
[State -1,�}�L�V�}]
type = ChangeState
value = 3300
triggerall = command = "���x���W���["
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;�}�L�V�}����x���W���[
[State -1, �}�L�V�}����x���W���[]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = command = "�}�L�V�}���x���W���["
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;��o���J�[�o�X�^�[
[State -1, �o���J�[�o�X�^�[]
type = ChangeState
value = 3100
triggerall = command = "��o���J�[�o�X�^�["
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
; �K�E�Z
;==============================================================================
;------------------------------------------------------------------------------
;M2�^�}�L�V�}�r�[��
[State -1, M2�^�}�L�V�}�r�[��]
type = ChangeState
value = 3200
triggerall = command = "�}�L�V�}�r�[��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;M19�^�u���b�c�L���m��
[State -1, M19�^�u���b�c�L���m��]
type = ChangeState
value = 1800
triggerall = command = "�u���b�c�L���m��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;M11�^�f���W�����X��A�[�`
[State -1, M11�^�f���W�����X��A�[�`]
type = ChangeState
value = 1700
triggerall = !AILevel
triggerall = command = "�f���W�����X�A�[�`"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;SYSTEM3�F�}�L�V�}����t�g
[State -1, SYSTEM3�F�}�L�V�}����t�g]
type = ChangeState
value = 1500
triggerall = command = "�}�L�V�}���t�g"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;��M4�^���~�T�C���L���m��
[State -1, M4�^���~�T�C���L���m��]
type = ChangeState
value = 1100
triggerall = command = "��~�T�C���L���m��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;��M4�^���~�T�C���L���m��
[State -1, M4�^���~�T�C���L���m��]
type = ChangeState
value = 1110
triggerall = command = "���~�T�C���L���m��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ;------------------------------------------------------------------------------
;�u���h�b�O�v���X(�_�u���{���o�[�h��)
[State -1, �u���h�b�O�v���X]
type = ChangeState
value = ifelse(command = "��}�L�V�}�X�N�����u��",1400,1450)
triggerall = command = "��}�L�V�}�X�N�����u��" || command = "���}�L�V�}�X�N�����u��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;------------------------------------------------------------------------------
;�_�u���{���o�[(�X�N�����u���h��)
[State -1, �_�u���{���o�[]
type = ChangeState
value = 1300
triggerall = command = "��}�L�V�}�X�N�����u��" || command = "���}�L�V�}�X�N�����u��"
;triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;��SYSTEM1?�F�}�L�V�}��X�N�����u��
[State -1, SYSTEM1?�F�}�L�V�}��X�N�����u����]
type = ChangeState
value = 1200
triggerall = command = "��}�L�V�}�X�N�����u��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;��SYSTEM1?�F�}�L�V�}��X�N�����u��
[State -1, SYSTEM1?�F�}�L�V�}��X�N�����u��]
type = ChangeState
value = 1210
triggerall = command = "���}�L�V�}�X�N�����u��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;��M4�^�x�C�p�[�L���m��
[State -1, M4�^�x�C�p�[�L���m��]
type = ChangeState
value = 1000
triggerall = command = "��x�C�p�[�L���m��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;��M4�^�x�C�p�[�L���m��
[State -1, M4�^�x�C�p�[�L���m��]
type = ChangeState
value = 1010
triggerall = command = "���x�C�p�[�L���m��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
; �ړ��֘A
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ������]
type = ChangeState
value = 701
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, �O�����]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = Command = "recovery" || Command = "z"
value = 5200

[State -1, ����]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; ����Z
;==============================================================================
;------------------------------------------------------------------------------
;�_�C�i�}�C�g�h���b�v
[State -1, �_�C�i�}�C�g�h���b�v];�����Z
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command != "holddown"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;�`���[�L���O�o�C�X
[State -1, �`���[�L���O�o�C�X];�����Z
type = ChangeState
value = 802
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command != "holddown"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;------------------------------------------------------------------------------



;------------------------------------------------------------------------------






;------------------------------------------------------------------------------
;�ӂ��Ƃ΂�
[State -1, �ӂ��Ƃ΂�]
type = ChangeState
value = 590
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�󒆂ӂ��Ƃ΂�
[State -1, �󒆂ӂ��Ƃ΂�]
type = ChangeState
value = 690
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



;------------------------------------------------------------------------------
;==============================================================================
; �ʏ�U���Z
;==============================================================================
;------------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 206
triggerall = (Command = "x") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

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

;---------------------------------------------------------------------------

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
value = 415
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

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

;------------------------------------------------------------------------------
;�W�����v��p���`
[State -1, �W�����v��p���`]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;�W�����v���p���`
[State -1, �W�����v���p���`]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;�W�����v��L�b�N
[State -1, �W�����v��L�b�N]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;�W�����v���L�b�N
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
value = 700
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI Grab]
type = ChangeState
value = 1700
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * 2> random
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
value = 3200
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------