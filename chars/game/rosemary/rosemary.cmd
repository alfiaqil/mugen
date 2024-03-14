[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Super Motions |--------------------------------------------------------
[Command]
name = "mb"
command = ~D, D, x+a+b
time = 30

[Command]
name = "mb"
command = ~D, D, y+x
time = 30

[Command]
name = "mb"
command = ~D, D, y+a
time = 30

[Command]
name = "mb"
command = ~D, D, y+b
time = 30

[Command]
name = "first"
command = ~D, DF, F, D, DF, F, x
time = 40

[Command]
name = "first"
command = ~D, DF, F, D, DF, F, a
time = 40

[Command]
name = "first"
command = ~D, DF, F, D, DF, F, b
time = 40

[Command]
name = "second"
command = ~D, DB, B, D, DB, B, x
time = 40

[Command]
name = "second"
command = ~D, DB, B, D, DB, B, a
time = 40

[Command]
name = "second"
command = ~D, DB, B, D, DB, B, b
time = 40

;-| Extra Motions |--------------------------------------------------------
[Command]
name = "EXdemon"
command = ~F, D, DF, y

[Command]
name = "EXdemon"
command = ~F, D, DF, x+a

[Command]
name = "EXdemon"
command = ~F, D, DF, x+b

[Command]
name = "EXdemon"
command = ~F, D, DF, a+b

[Command]
name = "EXevil"
command = ~D, DF, F, y

[Command]
name = "EXevil"
command = ~D, DF, F, x+a

[Command]
name = "EXevil"
command = ~D, DF, F, x+b

[Command]
name = "EXevil"
command = ~D, DF, F, a+b

[Command]
name = "EXroses"
command = ~D, DB, B, y

[Command]
name = "EXroses"
command = ~D, DB, B, x+a

[Command]
name = "EXroses"
command = ~D, DB, B, x+b

[Command]
name = "EXroses"
command = ~D, DB, B, a+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "demon"
command = ~F, D, DF, x

[Command]
name = "demon"
command = ~F, D, DF, a

[Command]
name = "demon"
command = ~F, D, DF, b

[Command]
name = "evil"
command = ~D, DF, F, x

[Command]
name = "evil"
command = ~D, DF, F, a

[Command]
name = "evil"
command = ~D, DF, F, b

[Command]
name = "roses"
command = ~D, DB, B, x

[Command]
name = "roses"
command = ~D, DB, B, a

[Command]
name = "roses"
command = ~D, DB, B, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = x+b
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "2btn"
command = y
time = 1

[Command]
name = "2btn"
command = x+a
time = 1

[Command]
name = "2btn"
command = x+b
time = 1

[Command]
name = "2btn"
command = a+b
time = 1

[Command]
name = "3btn"
command = x+a+b
time = 1

[Command]
name = "3btn"
command = y+x
time = 1

[Command]
name = "3btn"
command = y+a
time = 1

[Command]
name = "3btn"
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

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
; �~���[�W�������t�B�X�g
[State -1]
type = ChangeState
value = 3900
triggerall = command = "mb" && power >= 3000
triggerall = var(1) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; �����t�B�X�g�E�Z�J���h
[State -1]
type = ChangeState
value = 3600
triggerall = power >= 2000
triggerall = command = "second"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; �����t�B�X�g
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 2000
triggerall = command = "first"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; EX���[�[�X�t�F�C�N
[State -1]
type = ChangeState
value = 3200
triggerall = !AILevel
triggerall = power >= 1000
triggerall = command = "EXroses"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; EX�f�������C�U�[
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "EXdemon"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; EX�G�r���n�[�P��
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "EXevil"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

[State -1]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "EXevil"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1110
trigger3 = (stateno = 600 || stateno = 610 || stateno = 620) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;�@�{�^�����m
[State -1]
type = Varset
trigger1 = command = "x" || command = "y" || command = "z" || command = "c"
trigger1 = stateno < 1000
var(2) = 0

[State -1]
type = Varset
trigger1 = command = "a"
trigger1 = stateno < 1000
var(2) = 1

[State -1]
type = Varset
trigger1 = command = "b"
trigger1 = stateno < 1000
var(2) = 2

;===========================================================================
;---------------------------------------------------------------------------
; ���[�[�X�t�F�C�N
[State -1]
type = ChangeState
value = 1200
triggerall = command = "roses"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; �f�������C�U�[
[State -1]
type = ChangeState
value = 1100
triggerall = command = "demon"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; �G�r���n�[�P��
[State -1]
type = ChangeState
value = 1000
triggerall = command = "evil"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

[State -1]
type = ChangeState
value = 1050
triggerall = command = "evil"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1110
trigger3 = (stateno = 600 || stateno = 610 || stateno = 620) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;�_�b�V��
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

;��ރ_�b�V��
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

;---------------------------------------------------------------------------
; ����
[State -1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && (p2bodydist X < 3) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdback" && (p2bodydist X < 5) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 805
triggerall = command = "a"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && (p2bodydist X < 3) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 806
triggerall = command = "a"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdback" && (p2bodydist X < 5) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

;===========================================================================
; �����΂��U��
[State -1]
type = ChangeState
value = 240
triggerall = command = "3btn"
triggerall = var(1) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; �󒆂ӂ��Ƃ΂�
[State -1]
type = ChangeState
value = 630
triggerall = command = "2btn"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

; �ӂ��Ƃ΂�
[State -1]
type = ChangeState
value = 230
triggerall = command = "2btn"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; ������
[State -1]
type = ChangeState
value = 200
triggerall = (command = "x" || command = "y" || command = "z" || command = "c") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = stateno = 200 && time > 6

;---------------------------------------------------------------------------
; ������
[State -1]
type = ChangeState
value = 210
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact

;---------------------------------------------------------------------------
; ������
[State -1]
type = ChangeState
value = 220
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�
[State -1]
type = ChangeState
value = 400
triggerall = (command = "x" || command = "y" || command = "z" || command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250

;---------------------------------------------------------------------------
;���Ⴊ�ݒ�
[State -1]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact

;---------------------------------------------------------------------------
;���Ⴊ�݋�
[State -1]
type = ChangeState
value = 420
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact

;---------------------------------------------------------------------------
; �󒆎�
[State -1]
type = ChangeState
value = 600
triggerall =  command = "x" || command = "y" || command = "z" || command = "c"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 600
trigger2 = statetime >= 10

;---------------------------------------------------------------------------
; �󒆒�
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
; �󒆋�
[State -1]
type = ChangeState
value = 620
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact


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

[State -1, AI Range]
type = ChangeState
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * 2 > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI Aerial]
type = ChangeState
value = 610
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = statetype = A
trigger1 = ctrl

[State -1, AI LowHit]
type = ChangeState
value = 400
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
value = 1100
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------