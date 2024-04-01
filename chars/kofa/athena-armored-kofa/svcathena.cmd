    
;-| 超必殺技 |--------------------------------------------------------

[Command]
name = "medley2"
command = ~D, F, D, F, c
time = 30


[Command]
name = "medley1"
command = ~D, F, D, F, x
time = 30

[Command]
name = "medley1"
command =~D, F, D, F, y
time = 30


[Command]
name = "medley3"
command =~D, F, D, F, z
time = 30




;-| 必殺技 |------------------------------------------------------
[Command]
name = "gate1"
command = ~D, DF, F, a
time = 30

[Command]
name = "gate1"
command = ~D, DF, F, b
time = 30

[Command]
name = "fire1"
command = ~D, DF, F, x
time = 30

[Command]
name = "fire2"
command = ~D, DF, F, y
time = 30

[Command]
name = "sword1"
command = ~F, D, DF, x
time = 30

[Command]
name = "sword2"
command = ~F, D, DF, y
time = 30

[Command]
name = "crown1"
command = ~D, DB, B, y
time = 30

[Command]
name = "crown1"
command = ~D, DB, B, x
time = 30

[Command]
name = "bow1"
command = ~D, DB, B, a
time = 30

[Command]
name = "bow1"
command = ~D, DB, B, b
time = 30






-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = D , $U
time = 30

[Command]
name = "FF"     
command = F, F
time = 30

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 10

[Command]
name = "throw_1"
command = b
time = 10

[Command]
name = "throw_2"
command = b
time = 10

[Command]
name = "gc_step"
command = y+a
time = 10

;-| 方向とボタンで出す技 |---------------------------------------------------------
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
name = "by"
command = b+y
time = 1

[Command]
name = "by"
command = c
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1



; 下の記述↓は絶対に消さないでください。
[Statedef -1]


;===========================================================================

;---------------------------------------------------------------------------

[State -1, 3100 me]
type = ChangeState
value = 4000
triggerall = Command = "medley3"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 3100 me]
type = ChangeState
value = 3100
triggerall = Command = "medley1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 3100 me]
type = ChangeState
value = 2100
triggerall = Command = "medley2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact








;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------



[State -1, 1600 me]
type = ChangeState
value = 1600
triggerall = Command = "sword1" || Command = "sword2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;---------------------------------------------------------------------------
[State -1, 1000 me]
type = ChangeState
value = 1000
triggerall = Command = "gate1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
[State -1, 1100 me]
type = ChangeState
value = 1100
triggerall = Command = "crown1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;[State -1, 1205 me]
;type = ChangeState
;value = 1205
;triggerall = var(59)=0
;triggerall = command = "c"
;triggerall = command = "holdfwd"
;trigger1 = stateno = 1200 && animelem = 6, >= 0

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, 1400 me]
type = ChangeState
value = 1400
triggerall = Command = "bow1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
[State -1, 1500 me]
type = ChangeState
value = 1500
triggerall = Command = "fire1" || Command = "fire2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------


;------------------------------------------------------------------------------



;------------------------------------------------------------------------------
;[State -1, TEST]
;type = ChangeState
;value = 1500
;triggerall = var(59)=0
;triggerall = command = "x"
;triggerall = command = "holdfwd"
;trigger1 = statetype != A
;trigger1 = ctrl


;------------------------------------------------

;dodge backward
[State -1]
type = ChangeState
value = 122
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;dodge forward
[State -1]
type = ChangeState
value = 112
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------



[State -1, 1300 me]
type = ChangeState
value = 1300
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, 1300 me]
type = ChangeState
value = 930
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------------
;ガードキャンセルフロントステップ
[State -1]
type = ChangeState
value = 101
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = (Command = "gc_step" && Power >= 600) || (Command = "FF" && Power >= 200)
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;フロントグランドステップ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59)!=1
triggerall = roundstate=2
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 20
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

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
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
