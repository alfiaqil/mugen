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

;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "MAX2"
command = ~D, F, D, F, c
time = 30

[Command]
name = "アークエネミー"
command = ~D, B, D, B, c
time = 30

[Command]
name = "弱バンカーバスター"
command = ~D, F, D, F, z
time = 30

[Command]
name = "リベンジャー"
command = ~D, F, D, F, x
time = 30
[Command]
name = "リベンジャー"
command = ~D, F, D, F, y
time = 30

[Command]
name = "マキシマリベンジャー"
command = ~D, F, D, F, a
time = 30
[Command]
name = "マキシマリベンジャー"
command = ~D, F, D, F, b
time = 30




;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "マキシマビーム"
command = ~D, DB, B, a
time = 30
[Command]
name = "マキシマビーム"
command = ~D, DB, B, b
time = 30

[Command]
name = "デンジャラスアーチ"
command = x+y
time = 30

[Command]
name = "マキシマリフト"
command = ~D, DF, F, a
time = 30
[Command]
name = "マキシマリフト"
command = ~D, DF, F, b
time = 30

[Command]
name = "ブリッツキャノン"
command = ~F, D, DF, a
time = 30
[Command]
name = "ブリッツキャノン"
command = ~F, D, DF, b
time = 30

[Command]
name = "弱ミサイルキャノン"
command = ~F, D, DF, x
time = 30
[Command]
name = "強ミサイルキャノン"
command = ~F, D, DF, y
time = 30

[Command]
name = "弱マキシマスクランブル"
command = ~D, DF, F, x
time = 30
[Command]
name = "強マキシマスクランブル"
command = ~D, DF, F, y
time = 30

[Command]
name = "弱ベイパーキャノン"
command = ~D, DB, B, x
time = 30
[Command]
name = "強ベイパーキャノン"
command = ~D, DB, B, y
time = 30

[Command]
name = "ふっとばし" ;必須コマンド名
command = y+b
time = 1

[Command]
name = "ふっとばし"
command = c
time = 1

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "前方回避"
command = x+a
time = 1

[Command]
name = "後方回避"
command = /$B,x+a
time = 1

[Command]
name = "MAX発動"
command = y+a
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "セントリープレス"
command = /$F,a
time = 1

[Command]
name = "セントーンプレス"
command = /$F,b
time = 1

[Command]
name = "セントーンプレス"
command = /$B,a
time = 1

[Command]
name = "セントーンプレス"
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
;-| ボタン単発 |---------------------------------------------------------------

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
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
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

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;==============================================================================
; AI関係
;==============================================================================
[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。
[State -1, AI起動用ヘルパー]
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

;念のため↓も付けておく
[State -1, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(20000)
trigger1= ishelper(20000+root,id)
trigger1= stateno!=20000
value=20000
;==============================================================================

;==============================================================================
; 以下コマンド
;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;MAX2エンドオブワールド
[State -1, エンドオブワールド]
type = ChangeState
value = 3500
triggerall = command = "MAX2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;アークエネミー
[State -1, アークエネミー]
type = ChangeState
value = 3400
triggerall = command = "アークエネミー"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;マキシマ･リベンジャー
[State -1,マキシマ]
type = ChangeState
value = 3300
triggerall = command = "リベンジャー"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;マキシマ･リベンジャー
[State -1, マキシマ･リベンジャー]
type = ChangeState
value = 3000
triggerall = command = "マキシマリベンジャー"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;弱バンカーバスター
[State -1, バンカーバスター]
type = ChangeState
value = 3100
triggerall = command = "弱バンカーバスター"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;M2型マキシマビーム
[State -1, M2型マキシマビーム]
type = ChangeState
value = 3200
triggerall = command = "マキシマビーム"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;M19型ブリッツキャノン
[State -1, M19型ブリッツキャノン]
type = ChangeState
value = 1800
triggerall = command = "ブリッツキャノン"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;M11型デンジャラス･アーチ
[State -1, M11型デンジャラス･アーチ]
type = ChangeState
value = 1700
triggerall = command = "デンジャラスアーチ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;SYSTEM3：マキシマ･リフト
[State -1, SYSTEM3：マキシマ･リフト]
type = ChangeState
value = 1500
triggerall = command = "マキシマリフト"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;弱M4型改ミサイルキャノン
[State -1, M4型改ミサイルキャノン]
type = ChangeState
value = 1100
triggerall = command = "弱ミサイルキャノン"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;強M4型改ミサイルキャノン
[State -1, M4型改ミサイルキャノン]
type = ChangeState
value = 1110
triggerall = command = "強ミサイルキャノン"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ;------------------------------------------------------------------------------
;ブルドッグプレス(ダブルボンバー派生)
[State -1, ブルドッグプレス]
type = ChangeState
value = ifelse(command = "弱マキシマスクランブル",1400,1450)
triggerall = command = "弱マキシマスクランブル" || command = "強マキシマスクランブル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;------------------------------------------------------------------------------
;ダブルボンバー(スクランブル派生)
[State -1, ダブルボンバー]
type = ChangeState
value = 1300
triggerall = command = "弱マキシマスクランブル" || command = "強マキシマスクランブル"
;triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;弱SYSTEM1?：マキシマ･スクランブル
[State -1, SYSTEM1?：マキシマ･スクランブルン]
type = ChangeState
value = 1200
triggerall = command = "弱マキシマスクランブル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;強SYSTEM1?：マキシマ･スクランブル
[State -1, SYSTEM1?：マキシマ･スクランブル]
type = ChangeState
value = 1210
triggerall = command = "強マキシマスクランブル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;弱M4型ベイパーキャノン
[State -1, M4型ベイパーキャノン]
type = ChangeState
value = 1000
triggerall = command = "弱ベイパーキャノン"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;強M4型ベイパーキャノン
[State -1, M4型ベイパーキャノン]
type = ChangeState
value = 1010
triggerall = command = "強ベイパーキャノン"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 後方回避]
type = ChangeState
value = 701
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 前方回避]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
triggerall = var(59)=0
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = Command = "recovery" || Command = "z"
value = 5200

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
;ダイナマイトドロップ
[State -1, ダイナマイトドロップ];投げ技
type = ChangeState
value = 800
triggerall = var(59)=0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command != "holddown"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;チョーキングバイス
[State -1, チョーキングバイス];投げ技
type = ChangeState
value = 802
triggerall = var(59)=0
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
;ふっとばし
[State -1, ふっとばし]
type = ChangeState
value = 590
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;空中ふっとばし
[State -1, 空中ふっとばし]
type = ChangeState
value = 690
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



;------------------------------------------------------------------------------
;==============================================================================
; 通常攻撃技
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
;ジャンプ弱パンチ
[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59)=0
triggerall = command = "x"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;ジャンプ強パンチ
[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "y"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;ジャンプ弱キック
[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;ジャンプ強キック
[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

