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
trigger1=var(59)=0
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

;==============================================================================
;�ϐ��Ǘ�
;v56 VarRandom (0-19)
;v57 Facing
;v58 Tag
;v59 AI

;fv37 Coefficient of Friction
;fv39 Combo
;==============================================================================
[State -1, AI]
Type = VarSet
TriggerAll = Var(59) >= 1	;AI���Z�b�g���ꂽ���
Trigger1 = RoundState = 4	;���E���h�I����
Trigger2 = Win = 1			;�������Ƃ�
Trigger3 = Lose = 1			;�������Ƃ�
Trigger4 = DrawGame = 1		;�����������Ƃ�
V = 59
Value = -Var(59)

[State -1, AI]
Type = VarSet
TriggerAll = Var(59) <= -1	;AI���~���������
Trigger1 = RoundState = 2	;���E���h�J�n
V = 59
Value = -Var(59)

[State -1, �^�b�O�p��������]
Type = VarSet
triggerall = var(59)>0
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear(0),life > 0
var(58) = 0
IgnoreHitPause = 1

[State -1, �^�b�O�p��������]
Type = VarSet
triggerall = var(59)>0
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear(0),life <= 0
var(58) = 1
IgnoreHitPause = 1
;==============================================================================
;���C�v�Z
[State -2, Facing]
type = VarSet
trigger1 = 1
var(57) = -(Facing)*(EnemyNear(var(58)),Facing)
ignorehitpause = 1

[State -1, ���薀�C�W��]
Type = VarSet
Trigger1 = 1
fvar(37) = IfElse(enemynear(var(58)),StateType=C,(EnemyNear(var(58)),Const(movement.crouch.friction)),(EnemyNear(var(58)),Const(movement.stand.friction)))
IgnoreHitPause = 1
;==============================================================================
;�R���{�֌W
[State -1, �ϐ����Z�b�g]
Type = VarSet
triggerall = var(59) >= 1
trigger1 = RoundState = 4
trigger2 = stateno = 5120 || movetype = H
trigger3 = fvar(39)!=3
trigger3 = EnemyNear,StateNo = [5070,5120]
trigger4 = stateno=1200 || stateno=1210 || stateno=3000
trigger5 = fvar(39)=3
trigger5 = !(EnemyNear,StateNo = [5050,5120])
trigger6 = stateno = 400 || stateno = 205; || stateno = 1210
trigger7 = fvar(39)=7
trigger7 = stateno = 1000
fvar(39) = 0
IgnoreHitPause = 1

[State -1, �ϐ��Z�b�g];J�U��
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 640 && movecontact
trigger1 = enemynear(var(58)),statetype!=A
trigger2 = stateno = 660 && moveguarded
fvar(39) = 1
IgnoreHitPause = 1

[State -1, �ϐ��Z�b�g];���P�b�g�o�Y�[�J����
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 1301; && movecontact
fvar(39) = 2
IgnoreHitPause = 1

[State -1, �ϐ��Z�b�g];�n���}�[�p���`��
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 1010
fvar(39) = 3
IgnoreHitPause = 1

[State -1, �ϐ��Z�b�g];�w�C���[
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 660 && movehit
fvar(39) = 4
IgnoreHitPause = 1

[State -1, �ϐ��Z�b�g];�󒆋�P
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 610 && movehit
fvar(39) = 5
IgnoreHitPause = 1

[State -1, �ϐ��Z�b�g]���[���[���^�b�N��contact
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 1460 && movecontact
fvar(39) = 7
IgnoreHitPause = 1
;==============================================================================
;�����_���ϐ�
[State -1,VarRandom]
Type = VarRandom
TriggerAll = Var(59) >= 1
Trigger1 = Time = 1
Trigger2 = Time%60 = 1
Trigger2 = MoveType != I
Trigger3 = Time%1 = 0
Trigger3 = MoveType = I
V = 56
Range = 0,19
IgnoreHitPause = 1
;==============================================================================
[State -1, �K�g�����O���[�U�[]
type = ChangeState
value = ifelse(p2bodydist x >120,3110,3100)
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = Power >= 2000
TriggerAll = StateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll = (enemynear(var(58)),MoveType=A);||(enemynear(var(58)),Ctrl)
triggerall = p2bodydist x = [50,155]
triggerall = p2bodydist y >=-135
;triggerall = enemynear(var(58)),vel y >= 0
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = enemynear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
Trigger1 = random<var(59)*10

;�X�v���b�g�A�^�b�N
[State -1, �X�v���b�g�A�^�b�N]
type = ChangeState
value = 3200
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = Power >= 2000
TriggerAll = StateType != A
TriggerAll = enemynear(var(58)),StateType != L
;TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll = (enemynear(var(58)),MoveType=A)||(enemynear(var(58)),Ctrl)
triggerall = p2bodydist x <= 70
triggerall = enemynear(var(58)),backedgebodydist <= 40
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = enemynear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
triggerall = random<var(59)*12
Trigger1 = random<var(59)*10
Trigger2 = PrevStateNo = [120, 159]
Trigger3 = PrevStateNo = [5000, 5210]
trigger4 = NumEnemy>1
trigger5 = NumPartner
trigger5 = Partner,Alive
;------------------------------------------------------------------------------
;�D�揇�ʍ�����
;------------------------------------------------------------------------------
;�ǌ��҂�
[State -1,�҂�]
type = ChangeState
value = 0
TriggerAll = Var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
trigger1 = frontedgebodydist>60
trigger1 = (ctrl || stateno=19 || stateno=21 || stateno = 99)
trigger1 = fvar(39) = 2
trigger2 = (ctrl || stateno=19 || stateno=21 || stateno = 99)
trigger2 = fvar(39) = 4
ctrl = 0

;�_�E���ǂ�����
;���n���}�[�p���`
[State -1, ���n���}�[�p���`]
type = ChangeState
value = 1010
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = L
triggerall = EnemyNear(var(58)),movetype != A
TriggerAll = !InGuardDist
trigger1 = p2bodydist x >= 140
trigger1 = fvar(39)!=3
;trigger1 = EnemyNear(var(58)),stateno=5100
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99

;�N���U��
;�K�g�����O���[�U�[
[State -1, �K�g�����O���[�U�[]
type = ChangeState
value = 3100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=2000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
;triggerall = EnemyNear(var(58)),movetype = H
trigger1 = (p2bodydist x <=70) || (p2bodydist x =[100,120])
trigger1 = EnemyNear(var(58)),stateno=5120
trigger1 = EnemyNear(var(58)),animtime<=-10
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = random<=var(59)*20

;���P�b�g�o�Y�[�J
[State -1, ���P�b�g�o�Y�[�J]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),statetype != A
;triggerall = EnemyNear(var(58)),movetype = H
trigger1 = p2bodydist x <= 20
trigger1 = EnemyNear(var(58)),prevstateno=5120
trigger1 = EnemyNear(var(58)),animtime<-(12+6)
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = random<=var(59)*25

;���p���`
[State -1, ���p���`]
type = ChangeState
value = 210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),statetype != A
;triggerall = EnemyNear(var(58)),movetype = H
trigger1 = p2bodydist x = [16,60]
trigger1 = EnemyNear(var(58)),prevstateno=5120
trigger1 = EnemyNear(var(58)),animtime=[-(3+14),-(3+5)]
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = random<=var(59)*25

;�����W�����v
[state -1, �W�����v]
Type = Changestate
Value = 42
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
Triggerall = (ctrl || stateno=19 || stateno=21 || stateno = 99)
trigger1 = prevstateno != [5100,5120]
;Trigger1 = enemynear(var(58)),stateType = L
trigger1 = enemynear(var(58)),stateno = [5120,5129]
trigger1 = enemynear(var(58)),animtime = [-23,-18]
trigger1 = P2bodydist X = [40,70]
trigger1 = random<=200
trigger1 = fvar(39):=6

;�G�A�E�u���[�L
[State -1, �G�A�E�u���[�L]
type = ChangeState
value = 650
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
;triggerall = enemynear(var(58)),statetype != L
triggerall = stateno != 105
triggerall = ctrl
triggerall = fvar(39) = 6
trigger1 = enemynear(var(58)),prevstateno = [5120,5129]
trigger1 = random<=var(59)*20
trigger2 = enemynear(var(58)),stateno = [5120,5129]
trigger2 = enemynear(var(58)),animtime>=-5
trigger2 = random<=var(59)*15

;�X�e�b�v��
;�t���C���O�g���l�[�h
[State -1, �t���C���O�g���l�[�h]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X = [-5,20]
triggerall = var(56)=[0,var(59)+7]
trigger1 = stateno=1450 && animtime=0

;���P�b�g�o�Y�[�J
[State -1, ���P�b�g�o�Y�[�J]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X = [-3,22]
triggerall = var(56)=[0,var(59)+7]
trigger1 = stateno=1450 && animtime=0

;�����Đڋ�
;�^�N�e�B�J���X�e�b�v
[State -1,�^�N�e�B�J���X�e�b�v]
type = ChangeState
value = 700
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = enemynear(var(58)),StateType != A
triggerall = enemynear(var(58)),movetype = A
trigger1 = P2BodyDist X = [20,80]
Trigger1 = enemynear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = enemynear(var(58)),AnimTime <= -15
trigger1 = random <= var(59)*5 || (random <= var(59)*18 && EnemyNear,HitDefAttr = SCA,NP,SP)
;==============================================================================
; �����E���A
;==============================================================================
;�{�f�B�[�X����
[State -1, �{�f�B�[�X����];�����Z
type = ChangeState
value = ifelse(backedgebodydist<=80,800,802)
triggerall = var(59) >= 1
triggerall = RoundState = 2 
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21)||(stateno=700&&animtime=0)
triggerall = stateno!=[99,100]
triggerall = EnemyNear(var(58)),stateno != 5120
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
triggerall = EnemyNear(var(58)),statetype != A
triggerall = p2bodydist x = [-3,15]
Trigger1 = Random <= var(59)*13
Trigger2 = EnemyNear(var(58)),StateNo=[120,159]

;�t���C���O�g���l�[�h
[State -1, �t���C���O�g���l�[�h]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(59) >= 1
triggerall = RoundState = 2 
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21)||(stateno=700&&animtime=0)
triggerall = stateno!=[99,100]
triggerall = EnemyNear(var(58)),stateno != 5120
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
triggerall = EnemyNear(var(58)),statetype != A
triggerall = p2bodydist x = [-3,18]
Trigger1 = Random <= var(59)*15
Trigger2 = EnemyNear(var(58)),StateNo=[120,159]

[State -1, �n���g]
type = ChangeState
value = 5200
triggerall = var(59) >= 1
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
TriggerAll = Alive || Life>0
triggerall = CanRecover
TriggerAll = StateNo = 5050
trigger1   = Random < var(59)*5
trigger2   = var(56) = [0,7]
trigger2   = EnemyNear(var(58)),hitdefattr = SC, AA, AT, AP
;==============================================================================
; ���
;==============================================================================
;�^�N�e�B�J���X�e�b�v
[State -1,�^�N�e�B�J���X�e�b�v]
type = ChangeState
value = 700
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = power>=1000
;triggerall = Life<=LifeMax*0.5
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21 || stateno=99)
triggerall = !(StateNo=700&&PrevStateNo=700)
TriggerAll = P2BodyDist X<=15+75||(EnemyNear(var(58)),AnimTime<=-29&&!EnemyNear(var(58)),Ctrl)
TriggerAll = EnemyNear(var(58)),HitDefAttr = SCA,AA
TriggerAll = InGuardDist
TriggerAll = Random<=var(59)*40||var(59)>9
TriggerAll = EnemyNear(var(58)),Time>=30||(!Time&&var(59)>7)||var(59)>9||EnemyNear(var(58)),Ctrl
triggerall = enemynear(var(58)),prevstateno!=[5100,5120]
Trigger1 = EnemyNear(var(58)),Time>=50||var(59)>9
Trigger2 = PrevStateNo = [120,159]
Trigger3 = EnemyNear(var(58)),Ctrl
trigger4 = EnemyNear,AnimTime = [-25,-20]

;�o�b�N�X�e�b�v
[State -1, �o�b�N�X�e�b�v]
type = changestate
value = 105
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
triggerall = stateno!=105
triggerall = backedgebodydist > 80
TriggerAll = EnemyNear(var(58)),Time>=30||(!Time&&var(59)>7)||var(59)>9||EnemyNear(var(58)),Ctrl
triggerall = facing*(enemynear(numenemy>=2),pos x-pos x)>0
Trigger1 = EnemyNear(var(58)),Time>=50||(var(59)>9&&random<50);||(random<ifelse(EnemyNear(var(58)),movetype=A,150,50))
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = EnemyNear(var(58)),statetype!= L
trigger1 = EnemyNear(var(58)),vel x > 0
trigger1 = EnemyNear(var(58)),Pos Y <= -30
Trigger2 = EnemyNear(var(58)),Time>=50||(var(59)>7&&random<50)||var(59)>9;||(random<ifelse(EnemyNear(var(58)),movetype=A,150,50))
trigger2 = EnemyNear(var(58)),statetype!= L
Trigger2 = EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = (PrevStateNo = [5000,5270]) || (PrevStateNo = [120,159]) || random<50

;==============================================================================
; �΋�
;==============================================================================
;���t���C���O�p���[�{��
[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99 || (stateno = 700 && animtime=0)
triggerall = EnemyNear(var(58)),statetype = A 
triggerall = EnemyNear(var(58)),statetype!= L
;triggerall = EnemyNear(var(58)),movetype != H
;TriggerAll =!InGuardDist
triggerall = P2BodyDist X - (enemynear(var(58)),vel x * 6)= [10,120]
triggerall = enemynear(var(58)),vel x > 0
triggerall = p2bodydist y = [-140,-50]
Trigger1 = EnemyNear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = random <= var(59)*15

;���Ⴊ�݋��p���`
[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 410
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99 || (stateno = 700 && animtime=0)
triggerall = EnemyNear(var(58)),statetype = A 
triggerall = EnemyNear(var(58)),statetype!= L
triggerall = EnemyNear(var(58)),movetype != H
TriggerAll =!InGuardDist
triggerall = P2BodyDist X - (enemynear(var(58)),vel x * 9)= [50,90]
;triggerall = enemynear(var(58)),vel x > 0
triggerall = p2bodydist y = [-140,-50]
TriggerAll = EnemyNear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = random <= var(59)*10

;==============================================================================
; ��э��ݍU��
;==============================================================================
;�W�����v���L�b�N
[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
;triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = vel y >=0
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-20,60+vel x*7+EnemyNear(var(58)),vel x*7]
triggerall = p2bodydist y + vel y*7 = [-40,75]
trigger1 = random<=var(59)*50
;==============================================================================
; �K�[�h�֌W
;==============================================================================
;�K�[�h
[State -1,�����K�[�h]
Type = ChangeState
Value = 120
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
TriggerAll = StateNo!=[120,155]
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = inguarddist
Trigger1 = Random <= var(59)*80 || var(59)>9
Trigger2 = P2BodyDist X > 90 || EnemyNear(var(58)),Time > 50
Trigger2 = Random <= var(59)*150

;==============================================================================
; �n��
;==============================================================================
;�~�T�C���A�^�b�N
[State -1, �~�T�C���A�^�b�N]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = fvar(39) = 4
trigger1 = ctrl = 0 && stateno = 0
trigger1 = EnemyNear(var(58)),vel y > 0
Trigger1 = P2BodyDist Y + EnemyNear(var(58)),const(movement.yaccel) / 2 * 36 + (EnemyNear(var(58)),Vel y * 6) = [-65,10]

;���t���C���O�p���[�{��
[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = fvar(39) = 4
trigger1 = ctrl = 0 && stateno = 0
trigger1 = EnemyNear(var(58)),vel y > 0
Trigger1 = P2BodyDist Y + EnemyNear(var(58)),const(movement.yaccel) / 2 * 36 + (EnemyNear(var(58)),Vel y * 6) = [-80,-30]
trigger2 = EnemyNear(var(58)),statetype = A
trigger2 = fvar(39) = 5
trigger2 = random<=250

[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 3310
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = fvar(39) = 4
trigger1 = ctrl = 0 && stateno = 0
trigger1 = EnemyNear(var(58)),vel y > 0
Trigger1 = P2BodyDist Y + EnemyNear(var(58)),const(movement.yaccel) / 2 * 36 + (EnemyNear(var(58)),Vel y * 6) = [-80,-30]
trigger2 = EnemyNear(var(58)),statetype = A
trigger2 = fvar(39) = 5
trigger2 = random<=250

;�~�T�C���A�^�b�N
[State -1, �~�T�C���A�^�b�N]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = EnemyNear(var(58)),stateno=1304
;trigger1 = frontedgebodydist>60
trigger1 = ctrl = 0 && stateno = 0
trigger1 = fvar(39)=2
trigger2 = stateno = 1000 && movehit && animelemtime(7)<0
trigger3 = stateno = 1010 && movehit && animelemtime(7)<0
trigger4 = EnemyNear(var(58)),statetype = A
trigger4 = EnemyNear(var(58)),statetype != L
trigger4 = NumTarget(1001)
trigger4 = p2bodydist x <= 100
trigger4 = (ctrl || stateno=19 || stateno=21) || stateno=99

;���t���C���O�p���[�{��
[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),stateno=1304
;trigger1 = frontedgebodydist>60
trigger1 = fvar(39)=2
trigger1 = ctrl = 0 && stateno = 0

;���n���}�[�p���`
[State -1, ���n���}�[�p���`]
type = ChangeState
value = 1010
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),stateno=1304
trigger1 = frontedgebodydist<=60
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = fvar(39)=2

;��n���}�[�p���`
[State -1, ��n���}�[�p���`]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
triggerall = random<=var(59)*30
trigger1 = stateno = 245 && movecontact
trigger2 = stateno = 215 && moveguarded
trigger3 = stateno = 440 && moveguarded
trigger4 = stateno = 400 && moveguarded
trigger4 = p2bodydist x >=43
trigger5 = stateno = 400 && movehit
trigger5 = p2bodydist x >=81
trigger6 = EnemyNear(var(58)),statetype != A
trigger6 = fvar(39)=7
trigger6 = stateno = 1460 && animtime=0

;�t���C���O�g���l�[�h
[State -1, �t���C���O�g���l�[�h]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 0
trigger1 = (stateno=241&&animtime=0)
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]
trigger2 = (stateno=241&&animtime=0)
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]

;���P�b�g�o�Y�[�J
[State -1, ���P�b�g�o�Y�[�J]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 6
trigger1 = (stateno=400)||(stateno=215)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=35
trigger2 = (stateno=400)||(stateno=215)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=35

;���Ⴊ�ݎ�p���`
[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 6
trigger1 = (stateno=400)
trigger1 = movecontact
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[36,78]
trigger2 = (stateno=400)
trigger2 = movecontact
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[37,78]

;���Ⴊ�ݎ�p���`
[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 6
trigger1 = (stateno = 430 && animelemtime(7)<0)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=80
trigger2 = (stateno = 430 && animelemtime(7)<0)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=80

;�ߋ���������p���`
[State -1, ������p���`(close)]
type = ChangeState
value = 205
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 5
trigger1 = (stateno=205)
trigger1 = movecontact
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>6),0,(6-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=20
trigger2 = (stateno=205)
trigger2 = movecontact
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>6),0,(6-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=20

;��n���}�[�p���`
[State -1, ��n���}�[�p���`]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 12
trigger1 = (stateno=205)
trigger1 = movecontact
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
trigger2 = (stateno=205)
trigger2 = movecontact
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20

;���[���[�_�b�V��
[State -1, ���[���[�_�b�V��]
type = ChangeState
value = 1400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 4
trigger1 = (stateno=440)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
trigger2 = (stateno=440)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
;trigger1 = (stateno=205)
;trigger1 = moveguarded
;Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
;Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
;trigger2 = (stateno=205)
;trigger2 = moveguarded
;Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
;Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20

;�t���C���O�g���l�[�h
[State -1, �t���C���O�g���l�[�h]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 0
trigger1 = (stateno=205)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]
trigger2 = (stateno=205)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]

;���t���C���O�p���[�{��
[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 205 || stateno = 215 || (stateno = 235&& animelemtime(5)>=0 && animelemtime(6)<0) || stateno = 245
trigger1 = movehit

;��t���C���O�p���[�{��
[State -1, �t���C���O�p���[�{��]
type = ChangeState
value = 1200
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 410
trigger1 = movehit

;���t���C���O�p���[�{��
[State -1, ���t���C���O�p���[�{��]
type = ChangeState
value = 3310
TriggerAll = var(59) >= 1
triggerall = roundstate = 2 && power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 205 || stateno = 215 || (stateno = 235&& animelemtime(5)>=0 && animelemtime(6)<0) || stateno = 245
trigger1 = movehit

;��t���C���O�p���[�{��
[State -1, �t���C���O�p���[�{��]
type = ChangeState
value = 3300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2 && power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 410
trigger1 = movehit

;�V�����_�[�^�b�N��
[State -1, �V�����_�[�^�b�N��]
type = ChangeState
value = 250
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
trigger1 = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),stateno=[120,159]
trigger1 = Numtarget(1001)=1
trigger1 = stateno = 1000 && animtime=0
trigger1 = p2bodydist x <= 69
trigger1 = random<=var(59)*20||var(59)>9
;------------------------------------------------------------------------------
; �n��
;------------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X <= 50 ;48
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = var(56)=[1,2]
trigger2 = var(56)=[2,4]
trigger2 = fvar(39)=1

;�ߋ���������p���`
[State -1, ������p���`(close)]
type = ChangeState
value = ifelse(p2bodydist x<20,205,200)
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != C
;triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X <= 90
triggerall = p2bodydist y >= -50
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = var(56)=[0,1]
trigger2 = var(56)=[5,7]
trigger2 = fvar(39)=1

;���Ⴊ�ݎ�L�b�N
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X = [40,61] ;48
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = enemynear(var(58)),animtime<-10
trigger1 = var(56)=[3,4]

;�������L�b�N
[State -1, �������L�b�N]
type = ChangeState
value = ifelse(p2bodydist x<20,240,245)
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = p2bodydist x <= 50
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = var(56)=[5,6]

;==============================================================================
; ��
;==============================================================================
;�W�����v���p���`
[State -1, �W�����v���p���`]
type = ChangeState
value = 610
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
;triggerall = vel y > 0
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-20,80+vel x*6+EnemyNear(var(58)),vel x*6]
triggerall = p2bodydist y + vel y*6 = [-55,70]
trigger1 = random<=var(59)*50

;�W�����v���L�b�N
[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = vel y > -1
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-5,70+vel x*7+EnemyNear(var(58)),vel x*7]
triggerall = p2bodydist y + vel y*7 = [-40,70]
trigger1 = random<=var(59)*50

;�G�A�E�u���[�L
[State -1, �G�A�E�u���[�L]
type = ChangeState
value = 650
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x - enemynear(var(58)),vel x*6 = [50,110]
triggerall = pos y <= -70
trigger1 = random<=var(59)*50
trigger2 = enemynear(var(58)),movetype=A
trigger2 = random<=var(59)*15

;==============================================================================
; �������
;==============================================================================
;������
[State -1, Walk_back] 
type = ChangeState 
value = 21
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
Triggerall = EnemyNear(var(58)),MoveType != H
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
trigger1 = random%3<=1
trigger1 = EnemyNear(var(58)),statetype = L
trigger1 = EnemyNear(var(58)),StateNo=[5100,5120]
trigger1 = p2bodydist x <= 50
trigger2 = random%3<=1
trigger2 = backedgebodydist>=50
trigger2 = p2bodydist x <= 60

;������
[State -1, Walk_back] 
type = ChangeState 
value = 21
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
trigger1 = random%3<=1
trigger1 = EnemyNear(var(58)),stateType = A
trigger1 = EnemyNear(var(58)),moveType = H
trigger1 = p2bodydist x <= -5

;�����O
[State -1, Walk_fwd] 
type = ChangeState 
value = 19
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
trigger1 = p2bodydist x >= 90
trigger1 = random%3<=1
trigger2 = p2bodydist x >= 135
trigger2 = EnemyNear(var(58)),StateType = L
trigger2 = EnemyNear(var(58)),StateNo=[5110,5120]
trigger2 = random%3<=1

[State -1,�o�b�N�X�e�b�v]
Type     = ChangeState
Value    = 105
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
Triggerall = enemynear(var(58)),MoveType != H
Triggerall = EnemyNear(var(58)),StateType != A
Triggerall = enemynear(var(58)),Stateno != [120,159]
Triggerall = statetype = S
Triggerall = backedgebodydist > 50
triggerall = (ctrl || stateno=19 || stateno=21) && (stateno != 20 && stateno != 11)
triggerall = facing*(enemynear(numenemy>=2),pos x-pos x)>0
triggerall = fvar(39)=0
Trigger1 = enemynear(var(58)),StateType != L
Trigger1 = P2BodyDist X <= 50
trigger1 = Random <= var(59)*13
Trigger2 = enemynear(var(58)),StateType != L
trigger2 = p2bodydist X =[-10,110]
trigger2 = random < (15-var(59))*3
Trigger3 = enemynear(var(58)),StateType != L
Trigger3 = P2BodyDist X <= 30
trigger3 = random <= var(59)*7

[state -1,�_�b�V��]
type = ChangeState
value = 99
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = statetype = S
triggerall = (ctrl || stateno=19 || stateno=21) && (stateno != [99,100]) && (stateno != 10) && (stateno != 12) && (stateno!=[105,106])
triggerall = EnemyNear(var(58)),stateno!=5120
triggerall = EnemyNear(var(58)),stateType != L
triggerall = EnemyNear(var(58)),stateType != A
trigger1 = !inguarddist
trigger1 = Random<=var(59)*25
trigger1 = EnemyNear(var(58)),MoveType != A
trigger1 = p2bodydist X >= 125

[state -1, �W�����v]
Type = Changestate
Value = 41
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
Triggerall = (ctrl || stateno=19 || stateno=21 || stateno = 99)
triggerall = prevstateno != [5100,5120]
Triggerall = enemynear(var(58)),stateType != L
triggerall = (enemynear(var(58)),stateno!=[5100,5120]);&&(enemynear(var(58)),stateno!=[5030,5060])&&(enemynear(var(58)),stateno!=1451)
triggerall = (enemynear(var(58)),statetype != A)
triggerall = P2bodydist X > 50+30*(stateno = 99)+(EnemyNear(var(35)),vel X*5)
trigger1 = !inguarddist
Trigger1 = enemynear(var(58)),MoveType != A
;Trigger1 = P2BodyDist X = [50,125]
;trigger1 = Random <= var(59)*25
trigger1 = random < 65+20*(stateno = 99)+20*(P2bodydist X > 65 && vel X > 0)+100*(stateno = 99 && time < 3)+50*(stateno != 100 && P2bodydist X = [70,110])
trigger1 = enemynear(var(58)),stateNo != [120,159]
Trigger2 = InGuardDist
trigger2 = enemynear(var(58)),MoveType = A
trigger2 = HitDefAttr = SCA, NT, ST, HT
Trigger2 = P2BodyDist X >= 0
Trigger2 = P2BodyDist Y = [-30,0]
trigger2 = Random <= var(59) * 40
trigger3 = enemynear(var(58)),MoveType = A
trigger3 = enemynear(var(58)),StateType = C
Trigger3 = P2BodyDist X = [-3,80]
trigger3 = Random <= var(59) * 30


;==============================================================================
; ����
;==============================================================================
;���Ⴊ�ݎ�p���`
[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,50]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[0,2]

;�������p���`
[State -1, �������p���`]
type = ChangeState
value = ifelse(p2bodydist x<20,215,210)
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
;TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,60]
triggerall = p2bodydist y >= -55
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[0,2]

;���Ⴊ�ݎ�L�b�N
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,66]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[3,4]

;���Ⴊ�݋��L�b�N
[State -1, ���Ⴊ�݋��L�b�N]
type = ChangeState
value = 440
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [45,75]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[4,6]

;��n���}�[�p���`
[State -1, ��n���}�[�p���`]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X >=150
triggerall = enemynear(var(58)),NumProj=0
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = random<=var(59)*20

;��n���}�[�p���`
[State -1, ��n���}�[�p���`]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
;TriggerAll = enemynear(var(58)),MoveType != H
;TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X >= 120
;TriggerAll =(enemynear(var(58)),StateNo != [120,159])
triggerall = NumEnemy >= 2
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = random<var(59)*6
trigger2 = enemynear(var(58)),MoveType = A
trigger2 = random<=50

;���[���[�_�b�V��
[State -1, ���[���[�_�b�V��]
type = ChangeState
value = 1400
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = enemynear(var(58)),numproj=0
TriggerAll = P2BodyDist X = [65,85]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = random<=60

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
triggerall = var(59) = 0

;-------------------------------------------------------------Roll from falling
[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = command = "recovery" || command = "z"
value = 5201

;-------------------------------------------------------------Roll
[State -1�������ر�]
type = ChangeState
value = ifelse(command = "holdback",710,700)
triggerall = var(59) = 0
triggerall = command = "recovery" || command = "z"
triggerall = statetype != A && winko = 0
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = (stateno = [150,153]) && power >= 1000

;------------------------------------------------------------------------------
[State -1, ����]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; ����Z
;==============================================================================
;------------------------------------------------------------------------------
[State -1, �{�f�B�[�X����];�����Z
type = ChangeState
value = 800
triggerall =var(59) = 0
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
triggerall = var(59)=0
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
triggerall = var(59)=0
triggerall = command = "x"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v���p���`]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "y"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v��L�b�N]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, ����]
type = ChangeState
value = 195
triggerall = var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
