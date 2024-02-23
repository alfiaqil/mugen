;-| ＡＩ |--------------------------------------------------------
;------------------------------------------------------
;ビッグベンワイヤーフレーム

[Command]
name = "hp1"
command = ~D, F, D, F, c
time = 30

[Command]
name = "tokei"
command = ~D, F, D, F, z
time = 30

;------------------------------------------------------

[Command]
name = "ven"
command = ~D, F, D, F, x
time = 30
[Command]
name = "ven"
command = ~D, F, D, F, y
time = 30

;[Command]
;name = "dd"
;command = ~D, F, D, F, a
;time = 30
;[Command]
;name = "dd"
;command = ~D, F, D, F, b
;time = 30



;-| 必殺技・覚醒技 |------------------------------------------------------

;[Command]
;name = "set1"
;command = ~D, DF, F, x
;time = 30
;[Command]
;name = "set1"
;command = ~D, DF, F, y
;time = 30

;[Command]
;name = "glider"
;command = ~D, DF, F, x
;time = 30
;[Command]
;name = "glider"
;command = ~D, DF, F, y
;time = 30

;[Command]
;name = "glider2"
;command = x
;[Command]
;name = "glider2"
;command = y

[Command]
name = "sita1b"
command = ~D, DF, F, x
time = 30
[Command]
name = "sita1b"
command = ~D, DF, F, y
time = 30

;[Command]
;name = "set"
;command = ~D, DF, F, a
;time = 30
;[Command]
;name = "sety"
;command = ~D, DF, F, b
;time = 30

[Command]
name = "ido"
command = ~D, DF, F, a
time = 30
[Command]
name = "ido"
command = ~D, DF, F, b
time = 30

;------------------------------------------------------

[Command]
name = "xx"
command = ~D, DF, F, x
time = 30
[Command]
name = "xx"
command = ~D, DF, F, y
time = 30

[Command]
name = "josyo"
command = ~D, DF, F, a
time = 30
[Command]
name = "josyo"
command = ~D, DF, F, b
time = 30

[Command]
name = "cage"
command = ~D, DB, B, a
time = 30
[Command]
name = "cage"
command = ~D, DB, B, b
time = 30

[Command]
name = "ho-"
command = ~D, DB, B, x
time = 30
[Command]
name = "ho-"
command = ~D, DB, B, y
time = 30




;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = ~F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "AFF"
command = ~F, F
time = 8

[Command]
name = "ABB"
command = B, B
time = 8


;-| 2/3 Button Combination |-----------------------------------------------

;受身
[Command]
name = "recovery"
command = x+a
time = 1





;-| Hold Button |-----------------------------------------------------------

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1
;------------------------------------------------------------------------
[Command]
name = "jump" 
command = ~D,$U
time = 5

[Command]
name = "jump2" 
command = /$U
time = 1

[Command]
name = "djump" 
command = /$U
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command =/F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_s"
command = /F,s
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1


;---------------------------------------------------------------------------
; コマンド
[Statedef -1]
;--------------------------------------------------------------------------
 フォースロマンキャンセル

;[State -1]
;type = ChangeState
;value = 2651
;triggerall = command = "ay" && Power >= 500
;triggerall = StateType != A
;triggerall = var(33) <= 1
;triggerall = var(24) <= 1
;trigger1 = stateno =410 && time > 28 && time < 34
;trigger2 = stateno =1500 && time > 12 && time < 17

;---------------------------------------------------------------------------
; ロマンキャンセル（地上）

;[State -1]
;type = ChangeState
;value = 2650
;triggerall = Command = "ay"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

------------------------
;?

[State -1]
type = ChangeState
value = 3700
triggerall = Command = "hp1"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 4800
triggerall = Command = "tokei"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
;投げ（空中）

;[State -1]
;type = ChangeState
;value = IfElse(Command = "z",760,765)
;triggerall = StateType = A && Ctrl = 1
;triggerall = P2MoveType != H && P2StateType = A && P2BodyDist X < 47
;trigger1 = Command = "b"
;trigger1 = Command = "holdfwd" || Command = "holdback" || Command = "holddown"

;---------------------------------------------------------------------------
; 投げ（地上）



;--------------------------------------------------------------------------
;フォルトレスディフェンス
;[State Faultless Defense]
;type = ChangeState
;triggerall = var(33) <= 1
;triggerall = var(24) <= 1
;triggerall = fvar(4) = 1
;triggerall = power > 0 && roundstate = 2
;trigger1 = ctrl
;trigger2 = stateno= 40 
;trigger3 = stateno= 42
;trigger4 = stateno= 100
;trigger5 = stateno= 101
;trigger6 = stateno= 103
;trigger7 = stateno= 107
;trigger8 = stateno= 105
;value = 120

;--------------------------------------------------------------------------
;デッドアングルアタック

;[State -1]
;type = ChangeState
;value = 4500
;triggerall = command = "dd"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;--------------------------------------------------------------------------
;ロマンキャンセル（空中）

;[State -1]
;type = ChangeState
;value = 2652
;triggerall = command = "ay"
;triggerall = power >= 1000
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;--------------------------------------------------------------------------
;ケージ

[State -1]
type = ChangeState
value = 1700
triggerall = Command = "cage"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;------------------------
;ケージ



;---------------------------------------------------------------------------
;ビッグベン

[State -1]
type = ChangeState
value = 3000
triggerall = command = "ven"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ビッグベン

[State -1]
type = ChangeState
value = 3550
triggerall = command = "ven"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;--------------------------------------------------------------------------
;ワイヤー上昇


[State -1]
type = ChangeState
value = 1900
triggerall = Command = "ho-"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1500
triggerall = Command = "josyo"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;--------------------------------------------------------------------------
;ホーミング




;---------------------------------------------------------------------------
; エックス発射

[State -1]
type = ChangeState
value = 1020
triggerall = command = "xx"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; ワイヤーセット

;[State -1]
;type = ChangeState
;value = 1300
;triggerall = command = "set1"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; ワイヤー下

;[State -1]
;type = ChangeState
;value = 1800
;triggerall = command = "sita1"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; ワイヤーセット

;[State -1]
;type = ChangeState
;value = 1000
;triggerall = command = "set"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; ワイヤー下

[State -1]
type = ChangeState
value = 1805
triggerall = command = "sita1b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; ワイヤーセット

;[State -1]
;type = ChangeState
;value = 1005
;triggerall = command = "sety"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; ワイヤー移動

[State -1]
type = ChangeState
value = 1100
triggerall = command = "ido"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; グライダーアタック

;[State -1]
;type = ChangeState
;value = 1305
;triggerall = command = "glider"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
; グライダーアタック

;[State -1]
;type = ChangeState
;value = 1350
;triggerall = command = "glider2"
;triggerall = statetype = A
;trigger1 = stateno = 1300 && time > 12 && time <=22
;trigger2 = stateno = 1305 && time > 12 && time <=22

;---------------------------------------------------------------------------
サイクバースト金

;[State -1]
;type = ChangeState
;value = 3675
;triggerall = command = "burst"
;triggerall = var(15) <= 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = StateNo = 101
;trigger3 = StateNo = 100
;trigger4 = StateNo = 105

;[State -1]
;type = ChangeState
;value = 3676
;triggerall = var(15) <= 1
;triggerall = command = "burst"
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;trigger2 = StateNo = 103
;trigger3 = StateNo = 107
;trigger4 = StateNo = 102

;サイクバースト銀

;[State -1]
;type = ChangeState
;value = 3677
;triggerall = var(15) <= 1
;triggerall = command = "burst"
;trigger1 = statetype = A
;trigger1 = StateNo = 150
;trigger2 = StateNo = 152
;trigger3 = StateNo = 5000
;trigger4 = StateNo = 5001
;trigger5 = StateNo = 5010
;trigger6 = StateNo = 5011
;trigger7 = StateNo = 5001
;trigger8 = StateNo = 5080
;trigger9 = StateNo = 5081
;trigger10 = StateNo = 5100
;trigger11 = StateNo = 5101
;trigger12 = StateNo = 5110
;trigger13 = StateNo = 5120
;trigger14 = StateNo = 5150

;[State -1]
;type = ChangeState
;value = 3678
;triggerall = var(15) <= 1
;triggerall = command = "burst"
;trigger1 = statetype = A
;trigger1 = StateNo = 154 
;trigger2 = StateNo = 5020
;trigger3 = StateNo = 5030
;trigger4 = StateNo = 5035
;trigger5 = StateNo = 5040
;trigger6 = StateNo = 5050
;trigger7 = StateNo = 5070
;trigger8 = StateNo = 5071
;trigger9 = StateNo = 5001

;--------------------------------------------------------

[State -1]
type = ChangeState
value = 700
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 10
triggerall = (p2statetype = S) || (p2statetype = C) 
trigger1 = command = "holdfwd"
trigger1 = (p2movetype != H)
trigger2 = command = "holdback"
trigger2 = (p2movetype != H)
trigger3 = command = "holdfwd"
trigger3 = p2stateno = 4448
trigger4 = command = "holdback"
trigger4 = p2stateno = 4448


;--------------------------------------------------------

;--------------------------------------------------------

;dodge backward
[State -1]
type = ChangeState
value = 122
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1520
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;--------------------------------------------------------

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
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------------
; 空中ダッシュ

[State -1]
type = ChangeState
value = 103
triggerall = var(27) <= 1
triggerall = command = "AFF"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 4000
trigger2 = time > 2
trigger3 = stateno = 642
trigger3 = time > 36

; 空中バックダッシュ
[State -1]
type = ChangeState
value = 107
triggerall = var(27) <= 1
triggerall = command = "ABB"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 4000
trigger2 = time > 2
trigger3 = stateno = 642
trigger3 = time > 36

; ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

; バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ハイジャンプ


;---------------------------------------------------------------------------
;ハイジャンプ

[State Hi Jump]
type = ChangeState
value = 43
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = stateno = 100

[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger1 = stateno = 101

[State -1]
type = ChangeState
value = 45
triggerall = command = "holdup"
trigger1 = stateno = 1150

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

[State -1]
type = ChangeState
value = 600
triggerall = command = "x" || command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact

[State -1]
type = ChangeState
value = 610
triggerall = command = "y" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact



