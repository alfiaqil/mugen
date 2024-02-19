;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃
;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1


;-| 超必殺 |------------------------------------------------------

[Command]
name = "hpc"
command = ~D, F, D, F, c
time = 30

[Command]
name = "236236Y"
command = ~D, F, D, F, z
time = 30

[Command]
name = "632146Y"
command = ~D, F, D, F, x
time = 30
[Command]
name = "632146Y"
command = ~D, F, D, F, y
time = 30

[Command]
name = "214Bbb"
command = ~D, F, D, F, a
time = 30
[Command]
name = "214Bbb"
command = ~D, F, D, F, b
time = 30

[Command]
name = "214Abb"
command = ~D, B, D, B, a
time = 30
[Command]
name = "214Abb"
command = ~D, B, D, B, b
time = 30

[Command]
name = "623Abb"
command = ~D, B, D, B, x
time = 30
[Command]
name = "623Bbb"
command = ~D, B, D, B, y
time = 30

;-| 必殺技 |------------------------------------------------------

[Command]
name = "236X"
command = ~F, D, DF, x
time = 30
[Command]
name = "236X"
command = ~F, D, DF, y
time = 30

[Command]
name = "214Y"
command = ~B, D, DB, x
time = 30
[Command]
name = "214Y"
command = ~B, D, DB, y
time = 30

[Command]
name = "214B"
command = ~F, D, DF, a
time = 30
[Command]
name = "214B"
command = ~F, D, DF, b
time = 30

[Command]
name = "214YY"
command = ~B, D, DB, a
time = 30
[Command]
name = "214YY"
command = ~B, D, DB, b
time = 30

[Command]
name = "623A"
command = ~D, DB, B, a
time = 30
[Command]
name = "623B"
command = ~D, DB, B, b
time = 30

[Command]
name = "214X"
command = ~D, DB, B, x
time = 30
[Command]
name = "214X"
command = ~D, DB, B, y
time = 30

[Command]
name = "214A"
command = ~D, DF, F, a
time = 30
[Command]
name = "214A"
command = ~D, DF, F, b
time = 30

[Command]
name = "236Y"
command = ~D, DF, F, x
time = 30
[Command]
name = "236Y"
command = ~D, DF, F, y
time = 30

[Command]
name = "236Xair"
command = ~D, DB, B, x
time = 30
[Command]
name = "236Xair"
command = ~D, DB, B, y
time = 30


;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "UU"     
command = U, U
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "counter"
command = b+c
time = 1

[Command]
name = "gottui"
command = b+y
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-|etc|----------------------------------------------------------------------------
[Command]
name = "Kaihi"
command = D
time = 5

[Command]
name = "HJ"
command = D, $U
time = 10

[Command]
name = "dodge"
command = a+x

[Command]
name = "GC"
command = b+y

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
name = "s"
command = s
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

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y" 
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

;-|for dizzy|-------------------------------------------------------------------------
[command]
name="F"
command=F
time=1
[command]
name="B"
command=B
time=1
[command]
name="U"
command=U
time=1
[command]
name="D"
command=D
time=1

;-|for AI helper|-------------------------------------------------------------------------
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;---------------------------------------------------------------------------

;必勝の御殿手
[state -1, 必勝の御殿手];
type  = ChangeState
value = 3600
TriggerAll =  command = "hpc"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;必勝の御殿手
[state -1, 必勝の御殿手];
type  = ChangeState
value = 2100
TriggerAll =  command = "236236Y"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;唐手乱舞
[state -1, 唐手乱舞];新コマンド
type  = ChangeState
value = 2000
TriggerAll = command = "632146Y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ダッシュチンクチ
[state -1, ダッシュチンクチ]
type  = ChangeState
value = 1170
TriggerAll = command = "623Abb" || command = "623Bbb"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ダッシュフェーサ
[state -1, ダッシュフェーサ]
type  = ChangeState
value = 1370
TriggerAll = command = "214Bbb"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ダッシュフェーサ
[state -1, ダッシュフェーサ]
type  = ChangeState
value = 1380
TriggerAll = command = "214Abb"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

[state -1, 3B]
type  = ChangeState
value = 1299;290
TriggerAll = command = "214YY"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[state -1, 弱・ムチミ]
type  = ChangeState
value = 1420
TriggerAll = command = "214Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;弱・アティフヮ
[state -1, 弱・アティフヮ]
type  = ChangeState
value = 1200
TriggerAll = command = "236X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;弱・フェーサ
[state -1, 弱・フェーサ]
type  = ChangeState
value = 1320
TriggerAll = command = "214B"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;弱・チンクチ
[state -1, 弱・チンクチ]
type  = ChangeState
value = 1100
TriggerAll = command = "623A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;弱・チンクチ
[state -1, 弱・チンクチ]
type  = ChangeState
value = 1120
TriggerAll = command = "623B"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;弱・空中アティフヮ
[state -1, 弱・アティフヮ]
type  = ChangeState
value = 1250
TriggerAll = command = "236Xair"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;弱・ムチミ
[state -1, 弱・ムチミ]
type  = ChangeState
value = 1400
TriggerAll = command = "214X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;弱・フェーサ
[state -1, 弱・フェーサ]
type  = ChangeState
value = 1300
TriggerAll = command = "214A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;弱・空中アティフヮ
[state -1, 弱・アティフヮ]
type  = ChangeState
value = 1260
TriggerAll = command = "236Y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;弱・アティフヮ
[state -1, 弱・アティフヮ]
type  = ChangeState
value = 1220
TriggerAll = command = "236Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;空中ジャンプ
[State -1, High Jump]
type = ChangeState
value = 48
triggerall = var(59)<=0
triggerall = var(5)=0
triggerall = (command = "holdup")
triggerall = statetype = A
;通常
trigger1 = ctrl&&var(6)
trigger2 = stateno = 600||stateno = 610||stateno = 630||stateno = 640
trigger2 = movecontact = [1,10]

;---------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, High Jump]
type = ChangeState
value = 40
triggerall = var(59)<=0
triggerall = (command = "holdup")
triggerall = statetype != A
;通常
trigger1 = stateno = 450
trigger1 = movecontact = [1,10]

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;taunt
[State -1, taunt]
type = ChangeState
value = 195
triggerall = var(59)<=0
trigger1 = command  != "holddown"
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, dodge]
type = ChangeState
value = 705
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;dodge
[State -1, dodge]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

[state -1, 800]
type  = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[state -1, 820]
type  = ChangeState
value = 820
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 560
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
;特殊-----------------------------------------------------------------------

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

[state -1, 600]
type  = ChangeState
value = 600
TriggerAll = (command = "x")
TriggerAll = statetype = A
Trigger1   = Ctrl

[state -1, 610]
type  = ChangeState
value = 610
TriggerAll = (command = "y")
TriggerAll = statetype = A
Trigger1   = Ctrl

;---------------------------------------------------------------------------

[state -1, 630]
type  = ChangeState
value = 630
TriggerAll = (command = "a")
TriggerAll = statetype = A
Trigger1   = Ctrl

[state -1, 640]
type  = ChangeState
value = 640
TriggerAll = (command = "b")
TriggerAll = statetype = A
Trigger1   = Ctrl


