;==============================================================================
; Win�Ő�p�p�[�g
;==============================================================================
;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|----------------------------------------

[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;-| �f�t�H���g�ݒ� |-----------------------------------------------------------

[Defaults]
command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[���B

;============================================================================== 
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================
;==============================================================================
; �ŗL�Z
;==============================================================================
;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "�V����"
command = ~F, DF, D, DB, B, F, z+a
time = 24

;------------------------------------------------------------------------------

[Command]
name = "��"
command = ~D, DF, F, x+y

;------------------------------------------------------------------------------

[Command]
name = "�S��㇗�"
command = ~D, DB, B, x+y

;-| �K�E�Z |-------------------------------------------------------------------

[Command]
name = "���q��" ; ���O
command = ~D, DF, F, x

[Command]
name = "���q��" ; ���O
command = ~D, DF, F, y

[Command]
name = "���q��" ; ���O
command = ~D, DF, F, z

;------------------------------------------------------------------------------

[Command]
name = "���S����"
command = ~F, D, DF, x

[Command]
name = "���S����"
command = ~F, D, DF, y

[Command]
name = "���S����"
command = ~F, D, DF, z

;------------------------------------------------------------------------------

[Command]
name = "�֎�"
command = ~B, D, DB, x

[Command]
name = "�֋�"
command = ~B, D, DB, y

[Command]
name = "�֋�"
command = ~B, D, DB, z

;------------------------------------------------------------------------------

[Command]
name = "�����"
command = ~D, DB, B, x

[Command]
name = "���璆"
command = ~D, DB, B, y

[Command]
name = "���狭"
command = ~D, DB, B, z

;------------------------------------------------------------------------------

[Command]
name = "�[��"
command = ~F, D, DF, a

;==============================================================================
; �V�X�e��
;==============================================================================
;-| �U�� |---------------------------------------------------------------------

;-| �h�� |---------------------------------------------------------------------

[Command]
name = "�e��,���n���"
command = ~D, DF, F, c

;-| �ړ� |---------------------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;-| ���̑� |-------------------------------------------------------------------

[Command]
name = "����̂Ē���"
command = s, s, s
time = 20

[Command]
name = "����"
command = ~B, F, DF, D, s
time = 24

[Command]
name = "�ґz"
command = /c

;==============================================================================
; ��{
;==============================================================================
;-| �{�^���P�� |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]     ;�֗��{�^��
name = "b"    ;""�̒��̃A���t�@�x�b�g��Ή��������R�}���h�ɕύX���ĉ������B
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

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+y+z
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

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
; �X�e�[�g�G���g���[�p�[�g
;==============================================================================

[Statedef -1]

;==============================================================================

[State -1, �{�蔚��]
type = ChangeState
value = 840
triggerall = Alive
triggerall = (StateNo = 0) + (Ctrl = 0) < 2
triggerall = RoundState = 2
triggerall = NumHelper(10050)
triggerall = !NumHelper(10150)
triggerall = var(2) = 0
triggerall = var(52) != 2
triggerall = command = "x"
triggerall = command = "y"
triggerall = command = "z"
triggerall = (statetype != A)
trigger1 = Ctrl
trigger2 = MoveType = H
;�e����L�����Z��
trigger3 = (StateNo = 235) && (time >= 10)
trigger4 = (StateNo = 430) && (time >= 10)

[State -1, ���̋��n]
type = ChangeState
value = 850
triggerall = NumHelper(10050)
triggerall = !NumHelper(10150)
triggerall = var(52) != 2
triggerall = var(55) = 1
triggerall = var(54) > var(31)
triggerall = command = "a"
triggerall = command = "c"
trigger1 = (StateType != A) && (Ctrl)

;==============================================================================
; ���K�E�Z
;==============================================================================

[State -1, �S��㇗�]
type = ChangeState
value = 860
triggerall = var(2) = 0
triggerall = var(52) >= 2
triggerall = var(54) > Enemy,Life
triggerall = var(56) = 1
triggerall = NumHelper(10050)
triggerall = StateType != A
triggerall = command = "�S��㇗�"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ��M]
type = ChangeState
value = 855
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = NumHelper(10150)
triggerall = command = "a"
triggerall = command = "c"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, �V����]
type = ChangeState
value = ifelse(var(43)=1,831,830)
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "�V����"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ��]
type = ChangeState
value = 845
triggerall = var(52) >= 1
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "��"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;==============================================================================
; �K�E�Z
;==============================================================================

[State -1, �[��]
type = ChangeState
value = 825
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "�[��"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, ���S����]
type = ChangeState
value = 807
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���S����"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ���S����]
type = ChangeState
value = 806
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���S����"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ���S����]
type = ChangeState
value = 805
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���S����"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, �֋�]
type = ChangeState
value = 814
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "�֋�"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, �֎�]
type = ChangeState
value = 813
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "�֎�"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, ���O]
type = ChangeState
value = 810
triggerall = var(2) = 0
triggerall = StateType = A
triggerall = (command = "���q��") || (command = "���q��") || (command = "���q��")
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, ���q��]
type = ChangeState
value = 802
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���q��"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ���q�~]
type = ChangeState
value = 801
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���q��"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ���q��]
type = ChangeState
value = 800
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���q��"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, ���狭]
type = ChangeState
value = 821
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���狭"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, ���璆]
type = ChangeState
value = 819
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "���璆"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, �����]
type = ChangeState
value = 815
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "�����"
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;==============================================================================
; �ړ��֘A
;==============================================================================

[State -1, ���ݍ���]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, ��������]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �O�ړ��N���オ��]
type = ChangeState
value = 750
triggerall = (StateNo = 5110) && (time >= 10)
triggerall = Alive
trigger1 = command = "holdfwd"

[State -1, ��ړ��N���オ��]
type = ChangeState
value = 755
triggerall = (StateNo = 5110) && (time >= 10)
triggerall = Alive
trigger1 = command = "holdback"

;==============================================================================
; ����s��
;==============================================================================

[State -1, �e�����n���]
type = ChangeState
value = ifelse(var(2)=1,785,780)
triggerall = command = "�e��,���n���"
trigger1 = (StateType != A) && (Ctrl)

[State -1, �O�]]
type = ChangeState
value = 715
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = (StateType != A) && (Ctrl)

[State -1, ��]]
type = ChangeState
value = 720
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command = "holddown"
trigger1 = (StateType != A) && (Ctrl)

[State -1, ��э���]
type = ChangeState
value = 710
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = (StateType != A) && (Ctrl)

[State -1, ���i����]
type = ChangeState
value = 705
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdback"
trigger1 = (StateType != A) && (Ctrl)

[State -1, ����]
type = ChangeState
value = 700
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (StateType != A) && (Ctrl)

[State -1, �ґz]
type = ChangeState
value = 740
triggerall = var(50) = 4
triggerall = var(51) > 0
triggerall = var(52) = 0
triggerall = command = "c"
trigger1 = (StateType != A) && (Ctrl)

[State -1, ����]
type = ChangeState
value = 795
triggerall = command = "����"
triggerall = StateType != A
trigger1 = Ctrl
;�����ʏ�Z�L�����Z��
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;���ݒʏ�Z�L�����Z��
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;���ݍ��ݒʏ�U���L�����Z��
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;�s�ӑł��L�����Z��
trigger15= (StateNo = 680) && (time = [3, 18])
;�ǂ������L�����Z��
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;���ݍ��݁A�������݃L�����Z��
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;���n�L�����Z��
trigger19 = StateNo = 52
;���ꓮ��L�����Z��
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;�e����L�����Z��
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;==============================================================================
; �h�����
;==============================================================================

[State -1, �˂���΂�]
type = ChangeState
value = 730
triggerall = (command = "y") && (command = "z")
triggerall = (command = "holdfwd") || (command = "fwd")
triggerall = (P2BodyDist X <= 16)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52

[State -1, ��������]
type = ChangeState
value = 732
triggerall = (command = "y") && (command = "z")
triggerall = (command = "holdback") || (command = "back")
triggerall = (P2BodyDist X <= 16)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52

;==============================================================================
; ����
;==============================================================================

[State -1, ����̂Ē���]
type = ChangeState
value = 195
triggerall = var(2) = 0
triggerall = command = "����̂Ē���"
trigger1 = (StateType != A) && (Ctrl)

[State -1, ����E��]
type = ChangeState
value = 196
triggerall = var(2) = 1
triggerall = NumHelper(195) 
triggerall = command = "x"
triggerall = ScreenPos X = [(Helper(195),ScreenPos X-15),(Helper(195),ScreenPos X+40)]
trigger1 = (StateType != A) && (Ctrl)

;==============================================================================
; ����U��
;==============================================================================

[State -1, �ǂ�������]
type = ChangeState
value = 760
triggerall = var(50) = 4
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = (command = "x") || (command = "y")
trigger1 = (StateType != A) && (Ctrl)

[State -1, �ǂ�������(�ʏ�)]
type = ChangeState
value = 765
triggerall = var(2) = 0
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = (command = "z")
trigger1 = (StateType != A) && (Ctrl)

[State -1, �ǂ�������(�ۍ�)]
type = ChangeState
value = 770
triggerall = var(2) = 1
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = (command = "z")
trigger1 = (StateType != A) && (Ctrl)

[State -1, �s�ӑł�]
type = ChangeState
value = 680
triggerall = var(50) = 4
triggerall = (StateType != A) && (Ctrl)
trigger1 = (command = "z") && (command = "a")

;==============================================================================
; �ʏ�U���Z(���ݍ���)
;==============================================================================

[State -1, �ۍ����ݍ��ݍU��]
type = ChangeState
value = 300
triggerall = var(2) = 1
triggerall = StateNo = [99, 100]
triggerall = statetype = S
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, ���ݍ��݋��U��]
type = ChangeState
value = 320
triggerall = var(2) = 0
triggerall = command = "z"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;-------------------------------------------------------------------------------

[State -1, ���ݍ��ݒ��U��]
type = ChangeState
value = 310
triggerall = var(2) = 0
triggerall = command = "y"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;-------------------------------------------------------------------------------

[State -1, ���ݍ��ݎ�U��]
type = ChangeState
value = 300
triggerall = var(2) = 0
triggerall = command = "x"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;------------------------------------------------------------------------------

[State -1, ���ݍ��ݏR��]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;==============================================================================
; �ʏ�U���Z(����)
;==============================================================================

[State -1, �ۍ����U��]
type = ChangeState
value = 201
triggerall = var(2) = 1
triggerall = command != "holddown"
triggerall = (statetype = S) && (ctrl)
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, �ߗ����U��]
type = ChangeState
value = 225
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, �������U��]
type = ChangeState
value = 210
triggerall = var(2) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;-------------------------------------------------------------------------------

[State -1, �ߗ����U��]
type = ChangeState
value = 206
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35 || StateNo = 100
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, �������U��]
type = ChangeState
value = 205
triggerall = var(2) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;-------------------------------------------------------------------------------

[State -1, �ߗ���U��]
type = ChangeState
value = 201
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35 || StateNo = 100
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, ������U��]
type = ChangeState
value = 200
triggerall = var(2) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;------------------------------------------------------------------------------

[State -1, �����o�R��]
type = ChangeState
value = 245
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, ���R��]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;==============================================================================
; �ʏ�U���Z(���Ⴊ��)
;==============================================================================

[State -1, �ۍ����U��]
type = ChangeState
value = 405
triggerall = var(2) = 1
triggerall = command = "holddown"
triggerall = ((statetype = C) && (ctrl)) || (StateNo = 52)
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, ����U��]
type = ChangeState
value = 420
triggerall = var(2) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;-------------------------------------------------------------------------------

[State -1, �����U��]
type = ChangeState
value = 410
triggerall = var(2) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;------------------------------------------------------------------------------

[State -1, �ߋ���U��]
type = ChangeState
value = 405
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, ������U��]
type = ChangeState
value = 400
triggerall = var(2) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;------------------------------------------------------------------------------

[State -1, �����o�R��U��]
type = ChangeState
value = 445
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, ���R��U��]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;==============================================================================
; �ʏ�U���Z(�W�����v)
;==============================================================================

[State -1, �W�����v�ۍ��U��]
type = ChangeState
value = 600
triggerall = var(2) = 1
triggerall = (statetype = A) && (ctrl)
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, �W�����v��U��]
type = ChangeState
value = 620
triggerall = var(2) = 0
triggerall = command = "z"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------

[State -1, �W�����v���U��]
type = ChangeState
value = 610
triggerall = var(2) = 0
triggerall = command = "y"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------

[State -1, �W�����v��U��]
type = ChangeState
value = 600
triggerall = var(2) = 0
triggerall = command = "x"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------

[State -1, �W�����v�R��]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
