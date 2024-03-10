;-| Super Motions |--------------------------------------------------------

[Command]
name = "˜T‰åE—ë"
command = ~D, F, D, F, c
time = 30

[Command]
name = "–³–¾Œ•EæÑ"
command = ~D, F, D, F, z
time = 30

[Command]
name = "‹­¾‹óE"
command = ~D, F, D, F, x
time = 30
[Command]
name = "‹­¾‹óE"
command = ~D, F, D, F, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "ãÄ”ö‘M"
command = ~D, DB, B, x
time = 30
[Command]
name = "ãÄ”ö‘M"
command = ~D, DB, B, y
time = 30

[Command]
name = "–³–¾Œ•"
command = ~D, DF, F, a
time = 30
[Command]
name = "–³–¾Œ•"
command = ~D, DF, F, b
time = 30

[Command]
name = "ã‹•‹óE"
command = ~F, D, DF, x
time = 30
[Command]
name = "‹­‹•‹óE"
command = ~F, D, DF, y
time = 30

[Command]
name = "ã¾‹óE"
command = ~D, DF, F, x
time = 30
[Command]
name = "ã¾‹óE"
command = ~D, DF, F, y
time = 30


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
name = "xa"
command = x+a
time = 30

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "zc"
command = z+c
time = 1

[Command]
name = "xb"
command = x+b
time = 1

[Command]
name = "yc"
command = y+c
time = 1
;-----------------------------

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "dodge"
command = a+b
time = 1

[Command]
name = "knockdown"
command = x+y
time = 1

[Command]
name = "b+c"
command = b+c

[Command]
name = "back_b+c"
command = /B,b+c

[Command]
name = "back_a+b"
command = /B,a+b

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "c+"
command = /c
time = 1

[Command]
name = "b+"
command = /b
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_a"
command = /F,a

[Command]
name = "back_a"
command = /B,a

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_x"
command = /B,x

[Command]
name = "down_x"
command = /D, x

[Command]
name = "down_y"
command = /D, y

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Single Button |---------------------------------------------------------

[Command]
name = "b"
command = b
time = 30

[Command]
name = "hold_b"
command = /$b
time = 30

[Command]
name = "y"
command = y
time = 30

[Command]
name = "hold_y"
command = /$y
time = 30

[Command]
name = "c"
command = c
time = 30

[Command]
name = "hold_c"
command = /$c
time = 30

[Command]
name = "a"
command = a
time = 30

[Command]
name = "hold_a"
command = /$a
time = 30

[Command]
name = "x"
command = x
time = 30

[Command]
name = "hold_x"
command = /$x
time = 30

[Command]
name = "z"
command = z
time = 30

[Command]
name = "s"
command = s
time = 30

[Command]
name = "d"
command = /D

[Command]
name = "f"
command = /F

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd_a"
command = /$F, a
time = 1

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

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
time = 10

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "up"
command = /U
time = 1

[Command]
name = "down"
command = /D
time = 1

[Command]
name = "fwd"
command = /F
time = 1

[Command]
name = "back"
command = /B
time = 1

;-|Commands|------------------------------------------------------------------------------

[Statedef -1]
;’´•KE1
[State -1]
type = ChangeState
value = 15200
triggerall = command = "–³–¾Œ•EæÑ"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;˜T‰åE—ë
[State -1]
type = ChangeState
value = 14000
triggerall = command = "˜T‰åE—ë"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;‹­@¾‹óE
[State -1]
type = ChangeState
value = 2100
triggerall = command = "‹­¾‹óE"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;ã‹•‹óE
[State -1]
type = ChangeState
value = 1500
triggerall = command = "ã‹•‹óE"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;‹­‹•‹óE
[State -1]
type = ChangeState
value = 1600
triggerall = command = "‹­‹•‹óE"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ãÄ”ö‘M
[State -1]
type = ChangeState
value = 1000
triggerall = command = "ãÄ”ö‘M"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;–³–¾Œ•
[State -1]
type = ChangeState
value = 1100
triggerall = command = "–³–¾Œ•"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ã@¾‹óE
[State -1]
type = ChangeState
value = 2000
triggerall = command = "ã¾‹óE"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

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
value = 610
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

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

;---------------------------------------------------------------------------

;Throw
[State -1, Throw]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

;’§”­
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = statetype = S
trigger1 = command != "holddown"
triggerall = ctrl = 1


; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Run Backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 206
triggerall = command = "holdfwd"
triggerall = command = "x"
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

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 216
triggerall = command = "y"
triggerall = command = "holdfwd"
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

; ƒWƒƒƒ“ƒv@ãa‚è
[State -1]
type = ChangeState
value = 650
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;ƒWƒƒƒ“ƒv@‹­a‚è
[State -1]
type = ChangeState
value = 600
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;ƒWƒƒƒ“ƒv@ãR‚è
[State -1]
type = ChangeState
value = 620
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;ƒWƒƒƒ“ƒv@ãR‚è
[State -1]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

