;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;==============================================================================
; 固有技
;==============================================================================
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "遊蝶華"
command = ~F, DF, D, DB, B, F, z+a
time = 24

;------------------------------------------------------------------------------

[Command]
name = "葵"
command = ~D, DF, F, x+y

;------------------------------------------------------------------------------

[Command]
name = "百花繚乱"
command = ~D, DB, B, x+y

;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "撫子弱" ; 牡丹
command = ~D, DF, F, x

[Command]
name = "撫子中" ; 牡丹
command = ~D, DF, F, y

[Command]
name = "撫子強" ; 牡丹
command = ~D, DF, F, z

;------------------------------------------------------------------------------

[Command]
name = "白百合弱"
command = ~F, D, DF, x

[Command]
name = "白百合中"
command = ~F, D, DF, y

[Command]
name = "白百合強"
command = ~F, D, DF, z

;------------------------------------------------------------------------------

[Command]
name = "椿弱"
command = ~B, D, DB, x

[Command]
name = "椿強"
command = ~B, D, DB, y

[Command]
name = "椿強"
command = ~B, D, DB, z

;------------------------------------------------------------------------------

[Command]
name = "朝顔弱"
command = ~D, DB, B, x

[Command]
name = "朝顔中"
command = ~D, DB, B, y

[Command]
name = "朝顔強"
command = ~D, DB, B, z

;------------------------------------------------------------------------------

[Command]
name = "夕顔"
command = ~F, D, DF, a

;==============================================================================
; システム
;==============================================================================
;-| 攻撃 |---------------------------------------------------------------------

;-| 防御 |---------------------------------------------------------------------

[Command]
name = "弾き,白刃取り"
command = ~D, DF, F, c

;-| 移動 |---------------------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;-| その他 |-------------------------------------------------------------------

[Command]
name = "武器捨て挑発"
command = s, s, s
time = 20

[Command]
name = "自決"
command = ~B, F, DF, D, s
time = 24

[Command]
name = "瞑想"
command = /c

;==============================================================================
; 基本
;==============================================================================
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]     ;便利ボタン
name = "b"    ;""の中のアルファベットを対応したいコマンドに変更して下さい。
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
name = "recovery" ;必須コマンド名
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

;============================================================================== 
; ステートエントリーパート
;==============================================================================

[Statedef -1]

;==============================================================================

[State -1, 怒り爆発]
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
;弾かれキャンセル
trigger3 = (StateNo = 235) && (time >= 10)
trigger4 = (StateNo = 430) && (time >= 10)

[State -1, 無の境地]
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
; 超必殺技
;==============================================================================

[State -1, 百花繚乱]
type = ChangeState
value = 860
triggerall = var(2) = 0
triggerall = var(52) >= 2
triggerall = var(54) > Enemy,Life
triggerall = var(56) = 1
triggerall = NumHelper(10050)
triggerall = StateType != A
triggerall = command = "百花繚乱"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 一閃]
type = ChangeState
value = 855
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = NumHelper(10150)
triggerall = command = "a"
triggerall = command = "c"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 遊蝶華]
type = ChangeState
value = ifelse(var(43)=1,831,830)
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "遊蝶華"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 葵]
type = ChangeState
value = 845
triggerall = var(52) >= 1
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "葵"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;==============================================================================
; 必殺技
;==============================================================================

[State -1, 夕顔]
type = ChangeState
value = 825
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "夕顔"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, 白百合強]
type = ChangeState
value = 807
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "白百合強"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 白百合中]
type = ChangeState
value = 806
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "白百合中"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 白百合弱]
type = ChangeState
value = 805
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "白百合弱"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, 椿強]
type = ChangeState
value = 814
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "椿強"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 椿弱]
type = ChangeState
value = 813
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "椿弱"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, 牡丹]
type = ChangeState
value = 810
triggerall = var(2) = 0
triggerall = StateType = A
triggerall = (command = "撫子弱") || (command = "撫子中") || (command = "撫子強")
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, 撫子強]
type = ChangeState
value = 802
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "撫子強"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 撫子厨]
type = ChangeState
value = 801
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "撫子中"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 撫子弱]
type = ChangeState
value = 800
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "撫子弱"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;------------------------------------------------------------------------------

[State -1, 朝顔強]
type = ChangeState
value = 821
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "朝顔強"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 朝顔中]
type = ChangeState
value = 819
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "朝顔中"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

[State -1, 朝顔弱]
type = ChangeState
value = 815
triggerall = var(2) = 0
triggerall = StateType != A
triggerall = command = "朝顔弱"
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;==============================================================================
; 移動関連
;==============================================================================

[State -1, 踏み込み]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 引き込み]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 前移動起き上がり]
type = ChangeState
value = 750
triggerall = (StateNo = 5110) && (time >= 10)
triggerall = Alive
trigger1 = command = "holdfwd"

[State -1, 後移動起き上がり]
type = ChangeState
value = 755
triggerall = (StateNo = 5110) && (time >= 10)
triggerall = Alive
trigger1 = command = "holdback"

;==============================================================================
; 特殊行動
;==============================================================================

[State -1, 弾き白刃取り]
type = ChangeState
value = ifelse(var(2)=1,785,780)
triggerall = command = "弾き,白刃取り"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 前転]
type = ChangeState
value = 715
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 後転]
type = ChangeState
value = 720
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command = "holddown"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 飛び込み]
type = ChangeState
value = 710
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 下段避け]
type = ChangeState
value = 705
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holdback"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 伏せ]
type = ChangeState
value = 700
triggerall = var(50) = 4
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 瞑想]
type = ChangeState
value = 740
triggerall = var(50) = 4
triggerall = var(51) > 0
triggerall = var(52) = 0
triggerall = command = "c"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 自決]
type = ChangeState
value = 795
triggerall = command = "自決"
triggerall = StateType != A
trigger1 = Ctrl
;立ち通常技キャンセル
trigger2 = (StateNo = 201) && ((time = [0, 1])||(time = [4, 11]))
trigger3 = (StateNo = 205) && (time = [23, 36])
trigger4 = (StateNo = 206) && (time = [16, 35])
trigger5 = (StateNo = 225) && (time = [30, 33])
trigger6 = (StateNo = 240) && (time = [0, 11])
trigger7 = (StateNo = 245) && (time = [28, 37])
;屈み通常技キャンセル
trigger8 = (StateNo = 400) && (time = [3, 8])
trigger9 = (StateNo = 405) && (time = [0, 16])
trigger10= (StateNo = 410) && ((time = [0, 3])||(time = [5, 9]))
trigger11= (StateNo = 420) && (time = [22, 25])
trigger12= (StateNo = 445) && (time = [25, 27])
;踏み込み通常攻撃キャンセル
trigger13= (StateNo = 300) && (time = [0, 2])
trigger14= (StateNo = 310) && ((time = [6, 13])||(time = [15, 17]))
;不意打ちキャンセル
trigger15= (StateNo = 680) && (time = [3, 18])
;追い討ちキャンセル
trigger16= (StateNo = 760) && ((time = [0, 2])||(time = [20, 39]))
;踏み込み、引き込みキャンセル
trigger17 = StateNo = [98, 99]
trigger18 = (StateNo = 105) && (time = [1, 19])
;着地キャンセル
trigger19 = StateNo = 52
;特殊動作キャンセル
trigger20 = (StateNo = 700) && (time = [20, 25])
trigger21 = (StateNo = 715) && (time = [20, 25])
trigger22 = (StateNo = 720) && (time = [3, 27])
;弾かれキャンセル
trigger23 = (StateNo = 235) && (time >= 10)
trigger24 = (StateNo = 430) && (time >= 10)

;==============================================================================
; 防御崩し
;==============================================================================

[State -1, 突き飛ばし]
type = ChangeState
value = 730
triggerall = (command = "y") && (command = "z")
triggerall = (command = "holdfwd") || (command = "fwd")
triggerall = (P2BodyDist X <= 16)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52

[State -1, 引っ張り]
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
; 挑発
;==============================================================================

[State -1, 武器捨て挑発]
type = ChangeState
value = 195
triggerall = var(2) = 0
triggerall = command = "武器捨て挑発"
trigger1 = (StateType != A) && (Ctrl)

[State -1, 武器拾い]
type = ChangeState
value = 196
triggerall = var(2) = 1
triggerall = NumHelper(195) 
triggerall = command = "x"
triggerall = ScreenPos X = [(Helper(195),ScreenPos X-15),(Helper(195),ScreenPos X+40)]
trigger1 = (StateType != A) && (Ctrl)

;==============================================================================
; 特殊攻撃
;==============================================================================

[State -1, 追い討ち小]
type = ChangeState
value = 760
triggerall = var(50) = 4
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = (command = "x") || (command = "y")
trigger1 = (StateType != A) && (Ctrl)

[State -1, 追い討ち大(通常)]
type = ChangeState
value = 765
triggerall = var(2) = 0
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = (command = "z")
trigger1 = (StateType != A) && (Ctrl)

[State -1, 追い討ち大(丸腰)]
type = ChangeState
value = 770
triggerall = var(2) = 1
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = (command = "z")
trigger1 = (StateType != A) && (Ctrl)

[State -1, 不意打ち]
type = ChangeState
value = 680
triggerall = var(50) = 4
triggerall = (StateType != A) && (Ctrl)
trigger1 = (command = "z") && (command = "a")

;==============================================================================
; 通常攻撃技(踏み込み)
;==============================================================================

[State -1, 丸腰踏み込み攻撃]
type = ChangeState
value = 300
triggerall = var(2) = 1
triggerall = StateNo = [99, 100]
triggerall = statetype = S
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, 踏み込み強攻撃]
type = ChangeState
value = 320
triggerall = var(2) = 0
triggerall = command = "z"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;-------------------------------------------------------------------------------

[State -1, 踏み込み中攻撃]
type = ChangeState
value = 310
triggerall = var(2) = 0
triggerall = command = "y"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;-------------------------------------------------------------------------------

[State -1, 踏み込み弱攻撃]
type = ChangeState
value = 300
triggerall = var(2) = 0
triggerall = command = "x"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;------------------------------------------------------------------------------

[State -1, 踏み込み蹴り]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = StateNo = [99, 100]
trigger1 = statetype = S

;==============================================================================
; 通常攻撃技(立ち)
;==============================================================================

[State -1, 丸腰立攻撃]
type = ChangeState
value = 201
triggerall = var(2) = 1
triggerall = command != "holddown"
triggerall = (statetype = S) && (ctrl)
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, 近立強攻撃]
type = ChangeState
value = 225
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, 遠立強攻撃]
type = ChangeState
value = 210
triggerall = var(2) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;-------------------------------------------------------------------------------

[State -1, 近立中攻撃]
type = ChangeState
value = 206
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35 || StateNo = 100
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, 遠立中攻撃]
type = ChangeState
value = 205
triggerall = var(2) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;-------------------------------------------------------------------------------

[State -1, 近立弱攻撃]
type = ChangeState
value = 201
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35 || StateNo = 100
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, 遠立弱攻撃]
type = ChangeState
value = 200
triggerall = var(2) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;------------------------------------------------------------------------------

[State -1, 立レバ蹴り]
type = ChangeState
value = 245
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, 立蹴り]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 52)

;==============================================================================
; 通常攻撃技(しゃがみ)
;==============================================================================

[State -1, 丸腰屈攻撃]
type = ChangeState
value = 405
triggerall = var(2) = 1
triggerall = command = "holddown"
triggerall = ((statetype = C) && (ctrl)) || (StateNo = 52)
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, 屈大攻撃]
type = ChangeState
value = 420
triggerall = var(2) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;-------------------------------------------------------------------------------

[State -1, 屈中攻撃]
type = ChangeState
value = 410
triggerall = var(2) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;------------------------------------------------------------------------------

[State -1, 近屈弱攻撃]
type = ChangeState
value = 405
triggerall = var(2) = 0
triggerall = P2BodyDist X <= 35
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, 遠屈弱攻撃]
type = ChangeState
value = 400
triggerall = var(2) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;------------------------------------------------------------------------------

[State -1, 屈レバ蹴り攻撃]
type = ChangeState
value = 445
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

[State -1, 屈蹴り攻撃]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 52)

;==============================================================================
; 通常攻撃技(ジャンプ)
;==============================================================================

[State -1, ジャンプ丸腰攻撃]
type = ChangeState
value = 600
triggerall = var(2) = 1
triggerall = (statetype = A) && (ctrl)
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"

;-------------------------------------------------------------------------------

[State -1, ジャンプ大攻撃]
type = ChangeState
value = 620
triggerall = var(2) = 0
triggerall = command = "z"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = var(2) = 0
triggerall = command = "y"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------

[State -1, ジャンプ弱攻撃]
type = ChangeState
value = 600
triggerall = var(2) = 0
triggerall = command = "x"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------

[State -1, ジャンプ蹴り]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = (statetype = A) && (Ctrl)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
