;=====================================================================
;  CMD File For "kusaregedo"	                                Made By H"         
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================
;
;-| ƒ{ƒ^ƒ“”z’u |-----------------------------------------------------
[Remap]
x = x ;ãa‚è
a = a ;’†a‚è
z = z ;‹­a‚è
y = y ;ƒLƒbƒN
b = b ;“Áês“®Aó‚¯g
c = c ;–¢g—p
s = s ;’§”­

;-| •W€‰» |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |---------------------------------------------------


[Command]
name = "Pow-MAX"
command = ~D, F, D, F, z
time = 30

[Command]
name = "up_yb"
command = ~D, F, D, F, c
time = 30

[Command]
name = "Flying Head Butt"
command = ~D, F, D, F, x
time = 30
[Command]
name = "Flying Head Butt"
command = ~D, F, D, F, y
time = 30

[Command]
name = "up_y"
command = ~D, F, D, F, a
time = 30
[Command]
name = "up_y"
command = ~D, F, D, F, b
time = 30



;-| Special Motions |-------------------------------------------------

[Command]
name = "Evil Spirit Summons"
command = ~D, DF, F, x
time = 30
[Command]
name = "Evil Spirit Summons"
command = ~D, DF, F, y
time = 30

[Command]
name = "Gastrorrhea"
command = ~D, DB, B, x
time = 30
[Command]
name = "Gastrorrhea"
command = ~D, DB, B, y
time = 30

[Command]
name = "sp2"
command = ~D, DB, B, a
time = 30
[Command]
name = "sp2"
command = ~D, DB, B, b
time = 30

[Command]
name = "sp1"
command = ~F, D, DF, x
time = 30
[Command]
name = "sp1"
command = ~F, D, DF, y
time = 30

[Command]
name = "unko"
command = ~D, DF, F, a
time = 30
[Command]
name = "unko"
command = ~D, DF, F, b
time = 30

;[Command]
;name = "Suicide"
;command = ~D, DF, F, s
;time = 30

[Command]
name = "Meat Lifter"
command = ~D, DF, F, s
time = 30


;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------




[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "ay"
command = a+y
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "up_ay"
command = /U,a+y
time = 1

[Command]
name = "downfwd_ay"
command = /DF,a+y
time = 1

[Command]
name = "downback_b"
command = /DB,b
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1





;-| Single Button |---------------------------------------------------
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

[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "down"
command = $D
time = 1

;-| Hold Button |-----------------------------------------------------


;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------------

; ŠO“¹‚ÌŠl•¨ë‚è
[State -1]
type = ChangeState
value = 3000
triggerall = command="up_yb"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
; ”ò‚Ñ“ª“Ë‚«
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Flying Head Butt"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; “{‚è”š”­
[State -1]
type = ChangeState
value = 2400
triggerall = Command = "Pow-MAX"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ŠO“¹‚Ìà€ˆó‰Ÿ‚µ
[State -1]
type = ChangeState
value = 1100
triggerall = command="up_y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------

; ‚µ‚á‚ª‚İ‹­a‚è
[State -1]
type = ChangeState
value = 1440
triggerall = Command = "sp1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ‚¤›‚±“Š‚°i‰¼j
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "unko"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------


;---------------------------------------------------------------------
; “÷‚¿ã‚°
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "Meat Lifter"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ˆ«—ìŒÄ‚Ñ
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "Evil Spirit Summons"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ˆİ‰t“f‚«
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "Gastrorrhea"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



[State -1]
type = ChangeState
value = 1450
triggerall = Command = "sp2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; –hŒä•ö‚µ
[State -1]
type = ChangeState
value = IfElse(Command = "back_y",850,800)
triggerall = StateType = S && (Ctrl || StateNo = 100)
triggerall = P2MoveType != H && !P2StateType = A && !NumTarget(800)
trigger1 = Command = "fwd_y" && P2BodyDist X < 50
trigger2 = Command = "back_y" && P2BodyDist X < 50


;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; ©Œˆ
;[State -1]
;type = ChangeState
;value = 2500
;triggerall = Command = "Suicide"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------

[State -1]
type = ChangeState
value = 2010
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ‘O“]
[State -1]
type = ChangeState
value = 2000
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,550,540)
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; —§‚¿‹­a‚è
[State -1]
type = ChangeState
value = 620
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 30
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
triggerall = p2bodydist X <= 30
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
value = 232
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
value = 246
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------
; ’§”­
[State -1]
type = ChangeState
value = 195
triggerall = Var(45) = 0
triggerall = command = "start"
trigger1 = StateType = S && Ctrl

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
value = 411
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
value = 431
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 441
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒvãa‚è
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl
trigger1 = StateNo != 105

; ƒWƒƒƒ“ƒv’†a‚è
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒvR‚è
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl
trigger1 = StateNo != 105

; ƒWƒƒƒ“ƒvR‚è
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A && Ctrl
trigger1 = StateNo != 105