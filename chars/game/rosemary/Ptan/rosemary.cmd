[Remap]
x = a
y = x
z = y
a = b
b = c
c = z
s = s

;-| AI |--------------------------------------------------------
[Command]
Name = "AI_00"
Command = U, U, D, D, B, F, B, F, b, a
Time = 0

[Command]
Name = "AI_01"
Command = U, U, D, D, B, F, B, F, a, a
Time = 0

[Command]
Name = "AI_02"
Command = U, U, D, D, B, F, B, F, b, b
Time = 0

[Command]
Name = "AI_03"
Command = U, U, D, D, B, F, B, F, c, c
Time = 0

[Command]
Name = "AI_04"
Command = U, U, D, D, B, F, B, F, x, x
Time = 0

[Command]
Name = "AI_05"
Command = U, U, D, D, B, F, B, F, y, y
Time = 0

[Command]
Name = "AI_06"
Command = U, U, D, D, B, F, B, F, z, z
Time = 0

[Command]
Name = "AI_07"
Command = U, U, D, D, B, F, B, F, s, s
Time = 0

[Command]
Name = "AI_08"
Command = U, U, D, D, B, F, B, F, a, b
Time = 0

[Command]
Name = "AI_09"
Command = U, U, D, D, B, F, B, F, a, c
Time = 0

[Command]
Name = "AI_10"
Command = U, U, D, D, B, F, B, F, a, x
Time = 0

[Command]
Name = "AI_11"
Command = U, U, D, D, B, F, B, F, a, y
Time = 0

[Command]
Name = "AI_12"
Command = U, U, D, D, B, F, B, F, a, z
Time = 0

[Command]
Name = "AI_13"
Command = U, U, D, D, B, F, B, F, a, s
Time = 0

[Command]
Name = "AI_14"
Command = U, U, D, D, B, F, B, F, b, c
Time = 0

[Command]
Name = "AI_15"
Command = U, U, D, D, B, F, B, F, b, x
Time = 0

[Command]
Name = "AI_16"
Command = U, U, D, D, B, F, B, F, b, y
Time = 0

[Command]
Name = "AI_17"
Command = U, U, D, D, B, F, B, F, b, z
Time = 0

[Command]
Name = "AI_18"
Command = U, U, D, D, B, F, B, F, b, s
Time = 0

[Command]
Name = "AI_19"
Command = U, U, D, D, B, F, B, F, c, a
Time = 0

[Command]
Name = "AI_20"
Command = U, U, D, D, B, F, B, F, c, b
Time = 0

[Command]
Name = "AI_21"
Command = U, U, D, D, B, F, B, F, c, x
Time = 0

[Command]
Name = "AI_22"
Command = U, U, D, D, B, F, B, F, c, y
Time = 0

[Command]
Name = "AI_23"
Command = U, U, D, D, B, F, B, F, c, z
Time = 0

[Command]
Name = "AI_24"
Command = U, U, D, D, B, F, B, F, c, s
Time = 0

[Command]
Name = "AI_25"
Command = U, U, D, D, B, F, B, F, s, a
Time = 0

[Command]
Name = "AI_26"
Command = U, U, D, D, B, F, B, F, s, b
Time = 0

[Command]
Name = "AI_27"
Command = U, U, D, D, B, F, B, F, s, c
Time = 0

[Command]
Name = "AI_28"
Command = U, U, D, D, B, F, B, F, s, x
Time = 0

[Command]
Name = "AI_29"
Command = U, U, D, D, B, F, B, F, s, y
Time = 0

[Command]
Name = "AI_30"
Command = U, U, D, D, B, F, B, F, s, z
Time = 0

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
; ミラージュメルフィスト
[State -1]
type = ChangeState
value = 3900
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "mb" && power >= 3000
triggerall = var(1) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; メルフィスト・セカンド
[State -1]
type = ChangeState
value = 3600
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = command = "second"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; メルフィスト
[State -1]
type = ChangeState
value = 3500
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = command = "first"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; EXローゼスフェイク
[State -1]
type = ChangeState
value = 3200
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "EXroses"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; EXデモンレイザー
[State -1]
type = ChangeState
value = 3100
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "EXdemon"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; EXエビルハーケン
[State -1]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "EXevil"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

[State -1]
type = ChangeState
value = 3010
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "EXevil"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1110
trigger3 = (stateno = 600 || stateno = 610 || stateno = 620) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;　ボタン感知
[State -1]
type = Varset
trigger1 = command = "x" && var(59) <= 0
trigger1 = stateno < 1000
var(2) = 0

[State -1]
type = Varset
trigger1 = command = "a" && var(59) <= 0
trigger1 = stateno < 1000
var(2) = 1

[State -1]
type = Varset
trigger1 = command = "b" && var(59) <= 0
trigger1 = stateno < 1000
var(2) = 2

;===========================================================================
;---------------------------------------------------------------------------
; ローゼスフェイク
[State -1]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "roses"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; デモンレイザー
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "demon"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; エビルハーケン
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "evil"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

[State -1]
type = ChangeState
value = 1050
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "evil"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1110
trigger3 = (stateno = 600 || stateno = 610 || stateno = 620) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = var(59) <= 0
triggerall = roundstate = 2
trigger1 = command = "FF" && statetype = S && ctrl

;後退ダッシュ
[State -1]
type = ChangeState
value = 105
triggerall = var(59) <= 0
triggerall = roundstate = 2
trigger1 = command = "BB" && statetype = S && ctrl

;---------------------------------------------------------------------------
; 投げ
[State -1]
type = ChangeState
value = 800
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && (p2bodydist X < 3) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 801
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdback" && (p2bodydist X < 5) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 805
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && (p2bodydist X < 3) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 806
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdback" && (p2bodydist X < 5) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)

;===========================================================================
; 武器飛ばし攻撃
[State -1]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "3btn"
triggerall = var(1) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; 空中ふっとばし
[State -1]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "2btn"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

; ふっとばし
[State -1]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "2btn"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400 || stateno = 220) && movecontact
trigger4 = (stateno = 210 || stateno = 410 || stateno = 420) && movecontact

;---------------------------------------------------------------------------
; 立ち弱
[State -1]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = stateno = 200 && time > 6

;---------------------------------------------------------------------------
; 立ち中
[State -1]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact

;---------------------------------------------------------------------------
; 立ち強
[State -1]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱
[State -1]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250

;---------------------------------------------------------------------------
;しゃがみ中
[State -1]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact

;---------------------------------------------------------------------------
;しゃがみ強
[State -1]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100 || stateno = 105 || stateno = 3250
trigger3 = (stateno = 200 || stateno = 400) && movecontact
trigger4 = (stateno = 210 || stateno = 410) && movecontact

;---------------------------------------------------------------------------
; 空中弱
[State -1]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 600
trigger2 = statetime >= 10

;---------------------------------------------------------------------------
; 空中中
[State -1]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
; 空中強
[State -1]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

