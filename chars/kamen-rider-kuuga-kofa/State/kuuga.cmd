
[Remap]
x = x      ;Ｘボタ?の入力判定を実際に?すボタ?に?り?てる。
y = y      ;Ｙボタ?　　　　　　　　　〃
z = z      ;Ｚボタ?　　　　　　　　　〃
a = a      ;Ａボタ?　　　　　　　　　〃
b = b      ;Ｂボタ?　　　　　　　　　〃
c = c      ;Ｃボタ?　　　　　　　　　〃
s = s      ;スタートボタ?　　　　　　〃

[Defaults]
command.time = 15	;標?のコマ?ド入力受付?間。
command.buffer.time = 1	;標?のコマ?ド入力記憶?間。


;-------------------------------------------------------------

[Command]
name	= "Ultimate"
command	= ~D,F,D,F,c
time = 30

[Command]
name	= "Gourum_Attack"
command	= ~D,F,D,F,z
time = 30

;-------------------------------------------------------------

[Command]
name	= "Rider_Kick_x"
command	= ~D,F,D,F,x
time = 30
[Command]
name	= "Rider_Kick_y"
command	= ~D,F,D,F,y
time = 30

[Command]
name	= "Splash_Dragon_x"
command	= ~D,B,D,B,x
time = 30
[Command]
name	= "Splash_Dragon_y"
command	= ~D,B,D,B,y
time = 30

[Command]
name	= "Splash_Dragon_a"
command	= ~D,F,D,F,a
time = 30
[Command]
name	= "Splash_Dragon_a"
command	= ~D,F,D,F,b
time = 30

[Command]
name = "bike2"
command	= ~D,B,D,B,a
time = 30
[Command]
name = "bike2"
command	= ~D,B,D,B,b
time = 30


;-------------------------------------------------------------

[Command]
name	= "Syoryu_x"
command	= ~F,D,DF,x
time = 30
[Command]
name	= "Syoryu_y"
command	= ~F,D,DF,y
time = 30

[Command]
name	= "Takaiwa_x"
command	= ~D,DF,F,x
time = 30
[Command]
name	= "Takaiwa_y"
command	= ~D,DF,F,y
time = 30

[Command]
name	= "Eitoku_a"
command	= ~D,DF,F,a
time = 30
[Command]
name	= "Eitoku_b"
command	= ~D,DF,F,b
time = 30

[Command]
name	= "Osikawa_a"
command	= ~D, DB, B, a
time = 30
[Command]
name	= "Osikawa_b"
command	= ~D, DB, B, b
time = 30

[Command]
name	= "Tackle_x"
command	= ~D, DB, B, x
time = 30
[Command]
name	= "Tackle_y"
command	= ~D, DB, B, y
time = 30

[Command]
name	= "dashzfwd"
command	= ~D,DF,F,z
time = 30

;-------------------------------------------------------------

[Command];air
name	= "Air_Mighty_a"
command	= ~D, DF, F, a
time = 30
[Command]
name	= "Air_Mighty_b"
command	= ~D, DF, F, b
time = 30



;-------------------------------------------------------------
;-------------------------------------------------------------

;[Command]
;name	= "Splash_Dragon_b"
;command	= ~D,F,D,F,b
;time = 30

;[Command]
;name	= "Gouram"
;command	= ~D,F,D,F,x
;time = 30
;[Command]
;name	= "Gouram"
;command	= ~D,F,D,F,y
;time = 30

;[Command]
;name	= "Calamity_Titan"
;command	= ~D,B,D,B,a
;time	= 30
;[Command]
;name	= "Calamity_Titan"
;command	= ~D,B,D,B,b
;time	= 30

;[Command]
;name	= "Ultimateform"
;command	= ~D,F,D,B,c
;time = 30

;-------------------------------------------------------------

[Command]
name	= "recovery"
command	= x+y
time = 1

[Command]
name	= "Roll/Dodge"
command	= a+b
time = 1

[Command]
name	= "downback"
command	= DB
time = 1

[Command]
name	= "Focus_FF"
command	= F, F
time = 30

[Command]
name	= "Focus_BB"
command	= B, B
time = 30

;-------------------------------------------------------------

[Command]
name	= "FF"       ;必須コマ?ド名
command	= F, F
time = 10

[Command]
name	= "BB"       ;必須コマ?ド名
command	= B, B
time = 10

;-------------------------------------------------------------

[Command]
name	= "down_a"
command	= /$D, a
time = 1

[Command]
name	= "down_b"
command	= /$D, b
time = 1

[Command]
name	= "Long Jump"
command	= D, $U
time = 18

;-------------------------------------------------------------

[Command]
name	= "a"
command	= a
time = 1

[Command]
name	= "b"
command	= b
time = 1

[Command]
name	= "c"
command	= c
time = 1


[Command]
name	= "x"
command	= x
time = 1

[Command]
name	= "y"
command	= y
time = 1

[Command]
name	= "z"
command	= z
time = 1

[Command]
name	= "start"
command	= s
time = 1

[Command]
name	= "hold_A"
command = /a
time = 1

[Command]
name	= "hold_B"
command	= /b
time	= 1


[Command]
name	= "hold_X"
command	= /x
time = 1

[Command]
name	= "hold_Y"
command = /y
time = 1

;-------------------------------------------------------------

[Command]
name	= "holdfwd"   ;必須コマ?ド名
command	= /$F
time = 1

[Command]
name	= "holdback"  ;必須コマ?ド名
command	= /$B
time = 1

[Command]
name	= "holdup"    ;必須コマ?ド名
command	= /$U
time = 1

[Command]
name	= "holddown"  ;必須コマ?ド名
command	= /$D
time = 1

[Command]
name	= "holdupfwd"
command	= /UF
time = 1

[Command]
name	= "holdupback"
command	= /UB
time = 1

[Command]
name	= "holddownfwd"
command	= /DF
time = 1

;-------------------------------------------------------------

[Command]
name	="fwd"
Command	= F
time = 1

[Command]
name	="back"
Command	= B
time = 1

[Command]
name	="up"
Command	= U
time = 1

[Command]
name	="down"
Command	= D
time = 1

;-------------------------------------------------------------
;-------------------------------------------------------------
[Statedef -1]
;-------------------------------------------------------------
;-------------------------------------------------------------

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 3201
;triggerAll = Command = "y" && Command = "z"
;triggerAll = StateType != A
;triggerAll = var(32) = 1
;trigger1 = Ctrl 

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 3208
;triggerAll = Command = "x" && Command = "y"
;triggerAll = StateType != A
;triggerAll = var(32) = 1
;trigger1 = Ctrl 

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 3206
;triggerAll = Command = "y" && Command = "z"
;triggerAll = StateType != A
;triggerAll = var(32) = 2
;trigger1 = Ctrl 

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 3207
;triggerAll = Command = "x" && Command = "z"
;triggerAll = StateType != A
;triggerAll = var(32) = 2
;trigger1 = Ctrl 

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 30195
;triggerAll = Command = "x" && Command = "z"
;triggerAll = StateType != A
;triggerAll = var(32) = 0
;trigger1 = Ctrl 

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 20195
;triggerAll = Command = "x" && Command = "y"
;triggerAll = StateType != A
;triggerAll = var(32) = 0
;trigger1 = Ctrl 

;-------------------------------------------------------------
;-------------------------------------------------------------

[State -1, ChangeState]
type	= ChangeState
value	= 4000
triggerall = Command = "Ultimate"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ダークホッパー
[State -1,]
type	= ChangeState
value	= 43300
triggerall = command = "bike2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



[State -1, ChangeState_ゴウ??アタック]
type	= ChangeState
value	= 3800
triggerAll =(Command = "Gourum_Attack")
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_超マイティキック]
type	= ChangeState
value	= 3000
triggerAll =(Command = "Rider_Kick_x")||(Command = "Rider_Kick_y")
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
type	= ChangeState
value	= 3200
triggerAll =(Command = "Splash_Dragon_x")||(Command = "Splash_Dragon_y")
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
type	= ChangeState
value	= 12299;12300
triggerAll =(Command = "Splash_Dragon_a")
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;-------------------------------------------------------------
;-------------------------------------------------------------

[State -1, ChangeState_富永シ?ドウ・弱]
type	= ChangeState
value	= 1100
triggerAll = Command = "Syoryu_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_富永シ?ドウ・強]
type	= ChangeState
value	= 1120
triggerAll = Command = "Syoryu_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_?岩アッパー・弱]
type	= ChangeState
value	= 1000
triggerAll = Command = "Takaiwa_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_?岩アッパー・強]
type	= ChangeState
value	= 1050
triggerAll = Command = "Takaiwa_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_永徳キック・弱]
type	= ChangeState
value	= 1200
triggerAll = Command = "Eitoku_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_永徳キック・強]
type	= ChangeState
value	= 1250
triggerAll = Command = "Eitoku_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_?川ヒー?・弱]
type	= ChangeState
value	= 1300
triggerAll = Command = "Osikawa_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_?川ヒー?・強]
type	= ChangeState
value	= 1350
triggerAll = Command = "Osikawa_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_永瀬タック?・弱]
type	= ChangeState
value	= 1500
triggerAll = Command = "Tackle_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_永瀬タック?・強]
type	= ChangeState
value	= 1550
triggerAll = Command = "Tackle_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_空?マイティキック・鋭角版]
type	= ChangeState
value	= 1700
triggerAll = Command = "Air_Mighty_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


[State -1, ChangeState_空?マイティキック・鈍角版]
type	= ChangeState
value	= 1720
triggerAll = Command = "Air_Mighty_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;-------------------------------------------------------------
;-------------------------------------------------------------

[State -1, ChangeState_?岩アッパー・弱・追加コマ?ド１]
type	= ChangeState
value	= 1005
triggerAll = command = "x"
triggerAll = StateType != A
trigger1= StateNo = 1000
trigger1= MoveContact ||((Anim=1000)&&(AnimElemTime(8) >= 0))


[State -1, ChangeState_?岩アッパー・弱・追加コマ?ド２]
type	= ChangeState
value	= 1010
triggerAll = Command = "a"
triggerAll = StateType != A
trigger1= StateNo = 1000
trigger1= MoveContact ||((Anim=1000)&&(AnimElemTime(8) >= 0))


[State -1, ChangeState_?岩アッパー・弱・追加コマ?ド１]
type	= ChangeState
value	= 1055
triggerAll =  Command = "y"
triggerAll = StateType != A
trigger1= StateNo = 1050
trigger1= MoveContact ||((Anim=1050)&&(AnimElemTime(9) >= 0))

[State -1, ChangeState_?岩アッパー・弱・追加コマ?ド２]
type	= ChangeState
value	= 1060
triggerAll = command = "b"
triggerAll = StateType != A
trigger1= StateNo = 1050
trigger1= MoveContact ||((Anim=1050)&&(AnimElemTime(9) >= 0))


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -1, ChangeState_RUN]
type	= ChangeState
value	= 100
triggerall = var(32) !=2
trigger1=!var(59)
trigger1= Command = "FF" && StateType = S
trigger1= StateType = S
trigger1= Ctrl && StateNo != [100,101]
IgnoreHitPause = 0


[State -1, ChangeState_バックステップ]
type	= ChangeState
value	= 105
trigger1=!var(59)
trigger1= Command = "BB"
trigger1= StateType = S
trigger1= Ctrl
IgnoreHitPause = 0


;---------------------------------------------------------------------------

[State -1, ChangeState_?げ}-{　/　抱え?み膝蹴り]
type	= ChangeState
value	= 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, ChangeState_?げ}={　/　グ??殺し]
type	= ChangeState
value	= 830
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

[State -1, ChangeState_挑発]
type	= ChangeState
value	= 195
triggerAll = Command = "start"
triggerAll = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
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

;Stand Light Kick Fwd
[State -1, Stand Light Kick Fwd]
type = ChangeState
value = 236
triggerall = (Command = "a") && (Command = "holdfwd")
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
triggerall = command = "holdfwd"
triggerall = command = "holddown"
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
value = 445
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

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

[State -1, ChangeState_ジ??プ弱パ?チ]
type	= ChangeState
value	= IfElse(Vel X = 0,600,605)
triggerAll = Command = "x"
triggerAll = StateType = A 
trigger1= Ctrl

[State -1, ChangeState_ジ??プ強パ?チ]
type	= ChangeState
value	= 610
triggerAll = Command = "y"
triggerAll = StateType = A
trigger1= Ctrl

;---------------------------------------------------------------------------

[State -1, ChangeState_ジ??プ弱キック]
type	= ChangeState
value	= IfElse(Vel X = 0,630,635)
triggerAll = Command = "a"
triggerAll = StateType = A
trigger1= Ctrl

[State -1, ChangeState_空６Ａ]
type	= ChangeState
value	= 640
triggerAll = Command = "b"
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl

[State -1, ChangeState_空６Ｂ]
type	= ChangeState
value	= 680
triggerAll = Command = "b"
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 510
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_ジ??プ強キック]
type	= ChangeState
value	= 670
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------

[State -1, ChangeState_岡本ダッシ?・弱]
type	= ChangeState
value	= 2000
triggerall = command = "dashzfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

[State -1, ChangeState_前転]
type	= ChangeState
value	= 901
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, ChangeState_前転]
type	= ChangeState
value	= 900
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;[State -1, ChangeState_ゴウ??アタック]
;type	= ChangeState
;value	= 30000
;triggerAll = command = "Ultimateform"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;[State -1, ChangeState_スプ?ッシ?ド?ゴ?]
;type	= ChangeState
;value	= 13300
;triggerAll =(Command = "Splash_Dragon_b")
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;[State -1, ChangeState_空?版ブ?ストペガサス]
;type	= ChangeState
;value	= 13500
;triggerAll = Command = "Gouram"
;triggerall = power >= 1000
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact

;[State -1, ChangeState_カ?ミティタイタ?]
;type	= ChangeState
;value	= 3600
;triggerAll =(Command  = "Calamity_Titan")
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
