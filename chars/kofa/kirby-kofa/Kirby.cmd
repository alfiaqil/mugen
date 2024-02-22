

;---------------------------------------------------
;Hyper Moves
;---------------------------------------------------

[Command] 
name = "Hyper1"
command = ~D, F, D, F, z
time = 30

[Command]
name = "Hyper2"
command = ~D, F, D, F, x
time = 30
[Command]
name = "Hyper2"
command = ~D, F, D, F, y
time = 30

[Command]
name = "Hyper2(Air)"
command = ~D, F, D, F, x
time = 30
[Command]
name = "Hyper2(Air)"
command = ~D, F, D, F, y
time = 30

[Command]
name = "Hyper3"
command = ~D, F, D, F, a
time = 30
[Command]
name = "Hyper3"
command = ~D, F, D, F, b
time = 30

[Command]
name = "Hyper4"
command = ~D, F, D, F, c
time = 30

;---------------------------------------------------
;Special Moves
;---------------------------------------------------

[Command] 
name = "Special1_X"
command = ~D, DF, F, x
time = 30
[Command] 
name = "Special1_X"
command = ~D, DF, F, y
time = 30

[Command]
name = "Special1_X(Air)"
command = ~D, DF, F, x
time = 30
[Command]
name = "Special1_X(Air)"
command = ~D, DF, F, y
time = 30

[Command]
name = "Special2_A"
command = ~D, DB, B, x
time = 30
[Command]
name = "Special2_A"
command = ~D, DB, B, y
time = 30

[Command]
name = "Special3_A"
command = a,a,a
time = 30
[Command]
name = "Special3_A"
command = b,b,b
time = 30

[Command]
name = "Special3_B"
command = ~D, DF, F, a
time = 30
[Command]
name = "Special3_B"
command = ~D, DF, F, b
time = 30

[Command]
name = "Special3_C"
command = ~D, DB, B, a
time = 30
[Command]
name = "Special3_C"
command = ~D, DB, B, b
time = 30

[Command]
name = "Special4_Z"
command = ~F, D, DF, x
time = 30
[Command]
name = "Special4_Z"
command = ~F, D, DF, y
time = 30

;---------------------------------------------------
;Recovery
;---------------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

;---------------------------------------------------
;Double Tap
;---------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;---------------------------------------------------
;Single Buttons
;---------------------------------------------------

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

;---------------------------------------------------
;Hold Directions
;---------------------------------------------------

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

;---------------------------------------------------
;Hold Buttons
;---------------------------------------------------

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

[Command]
name = "hold_start"
command = /s
time = 1

;---------------------------------------------------
;Dashing
;---------------------------------------------------

[Command]
name = "dash"
command = x+y
time = 1

[Command]
name = "dash"
command = x+z
time = 1

[Command]
name = "dash"
command = y+z
time = 1

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]


;---------------------------------------------------
;Hyper Moves
;---------------------------------------------------

;Hyper Move 1
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Hyper Move 2
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Hyper2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Special1_X
[State -1]
type = ChangeState
value = 3101
triggerall = command = "Hyper2(Air)"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Hyper Move 3
[State -1]
type = ChangeState
value = 3200
triggerall = command = "Hyper3"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Hyper Move 4
[State -1]
type = ChangeState
value = 3300
triggerall = command = "Hyper4"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------
;Special Moves
;---------------------------------------------------

;Special4_Z
[State -1]
type = ChangeState
value = 1320
triggerall = command = "Special4_Z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Special1_X
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Special1_X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;Special1_X
[State -1]
type = ChangeState
value = 1001
triggerall = command = "Special1_X(Air)"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



;Jump Strong Kick
[State -1]
type = ChangeState
value = 1650
triggerall = command = "Special3_B"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Special3_C
[State -1]
type = ChangeState
value = 1220
triggerall = command = "Special3_C"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Special2_A
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Special2_A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;Special3_A
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Special3_A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Special3_B
[State -1]
type = ChangeState
value = 1210
triggerall = command = "Special3_B"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact







;-------------------------------------------------------------
;Inhale
[State -1]
type = ChangeState
value = 1400
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;-------------------------------------------------------------
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

;-------------------------------------------------------------

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

;-------------------------------------------------------------
 
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

;-------------------------------------------------------------

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

;-------------------------------------------------------------
 
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl

;-------------------------------------------------------------

;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl

;-------------------------------------------------------------

;Dash Forwards
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

;Dash Backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;-------------------------------------------------------------

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3

;-------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1]
type = ChangeState
value = 620
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
