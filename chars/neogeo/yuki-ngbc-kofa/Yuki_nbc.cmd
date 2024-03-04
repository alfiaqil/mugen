;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "合体変身!チェンジ・アトミックガイ・ネオス"
command = ~D,F,D,F, z
time = 30

[Command]
name = "超ド級MAX330メガビーム"
command = ~D,F,D,F, c
time = 30

[Command]
name = "超ド級ネオジオ乱舞"
command = ~D,B,D,B, z
time = 30

[Command]
name = "超ド級ステータスアップ"
command = ~D,F,D,F, b
time = 30
[Command]
name = "超ド級ステータスアップ"
command = ~D,F,D,F, a
time = 30

[Command]
name = "超ド級100メガビーム"
command = ~D,F,D,F, y
time = 30
[Command]
name = "超ド級100メガビーム"
command = ~D,F,D,F, x
time = 30


;-| 必殺技 |------------------------------------------------------

[Command]
name = "ファイヤースープレックスホールド"
command = ~D,DF,F, a
time = 30
[Command]
name = "ファイヤースープレックスホールド"
command = ~D,DF,F, b
time = 30

[Command]
name = "ライディングヒーロー"
command = ~D,DB,B, y
time = 30
[Command]
name = "ライディングヒーロー"
command = ~D,DB,B, x
time = 30

[Command]
name = "雷神拳"
command = ~D,DB,B, b
time = 30
[Command]
name = "雷神拳"
command = ~D,DB,B, a
time = 30

[Command]
name = "SE・N・GO・KU伝承"
command = ~D,DB,B, b
time = 30
[Command]
name = "SE・N・GO・KU伝承"
command = ~D,DB,B, a
time = 30

[Command]
name = "サブマリンスクリュー"
command = ~F,D,DF, y
time = 30
[Command]
name = "サブマリンスクリュー"
command = ~F,D,DF, x
time = 30

[Command]
name = "ビーストバスター"
command = ~D,DF,F, y
time = 30
[Command]
name = "ビーストバスター"
command = ~D,DF,F, x
time = 30




[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, b

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, y

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, a

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, x


[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "メガトンスパーク"
command = x+y+a
time = 1

[Command]
name = "メガトンスパーク"
command = c+z
time = 1

[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "龍殺脚"
command = /$F,a
time = 1

[Command]
name = "怒号層拳"
command = /$F,y
time = 1

[Command]
name = "コンビネーション1"
command = /$F,x
time = 1

[Command]
name = "コンビネーション2"
command = /$DF,y
time = 1

[Command]
name = "コンビネーション3"
command = /$B,a
time = 1

[Command]
name = "コンビネーション4"
command = /$F,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;基本コマンド
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;合体変身!チェンジ・アトミックガイ・ネオス
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2400
triggerall = command = "合体変身!チェンジ・アトミックガイ・ネオス"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;超ド級ステータスアップ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "超ド級ステータスアップ"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超ド級MAX330メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "超ド級MAX330メガビーム"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超ド級ネオジオ乱舞
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "超ド級ネオジオ乱舞"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;超ド級100メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "超ド級100メガビーム"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;ファイヤースープレックスホールド
[State -1, a]
type = ChangeState
value = 1600
triggerall = command = "ファイヤースープレックスホールド"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;爆裂拳
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "ライディングヒーロー"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ライディングヒーロー
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "ライディングヒーロー"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;強化版雷神拳
[State -1, a]
type = ChangeState
value = 1350
triggerall = command = "雷神拳"
triggerall = var(23) >= 1
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;雷神拳
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "雷神拳"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;強化版SE・N・GO・KU伝承
[State -1, a]
type = ChangeState
value = 1250
triggerall = command = "SE・N・GO・KU伝承"
triggerall = var(21) >= 1
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;SE・N・GO・KU伝承
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "SE・N・GO・KU伝承"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;強化版サブマリンスクリュー
[State -1, a]
type = ChangeState
value = 1150
triggerall = command = "サブマリンスクリュー"
triggerall = var(22) >= 1
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;サブマリンスクリュー
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "サブマリンスクリュー"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;強化版ビーストバスター
[State -1, a]
type = ChangeState
value = 1050
triggerall = command = "ビーストバスター"
triggerall = var(20) >= 1
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ビーストバスター
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "ビーストバスター"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;メモリーカードスラッシュ
[State -1, a]
type = ChangeState
value = 1990
triggerall = command = "メモリーカードスラッシュ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand_CD
[State -1]
type = ChangeState
value = 590
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jumping_CD
[State -1]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------

;Roll back
[State -1]
type = ChangeState
value = 705
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;タクティカルステップ
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = command = "緊急回避前"

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;フロントステップ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ファイヤースープレックス
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 101
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;triggerall = command = "投げ"
;triggerall = statetype != A
;trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------

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
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

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
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------