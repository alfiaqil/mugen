
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| ｲｻﾖｪﾋｽ |-------------------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "MAXｱｮﾈﾐ"
command = ~D, F, D, F, z
time = 30

[Command]
name = "ｷ邀ｩ"
command = ~D, F, D, F, c
time = 30

[Command]
name = "ｱｮﾈﾐ"
command = ~D, F, D, F, x
time = 30
[Command]
name = "ｱｮﾈﾐ"
command = ~D, F, D, F, y
time = 30

[Command]
name = "ｱｮﾎ・"
command = ~D, F, D, F, a
time = 30
[Command]
name = "ｱｮﾎ・"
command = ~D, F, D, F, b
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "ｱﾐ1"
command = ~F, D, DF, x
time = 30
[Command]
name = "ｱﾐ1"
command = ~F, D, DF, y
time = 30

[Command]
name = "ｱｪ1"
command = ~D, DF, F, x
time = 30
[Command]
name = "ｱｪ2"
command = ~D, DF, F, y
time = 30

[Command]
name = "ﾉｱ1"
command = ~D, DB, B, x
time = 30
[Command]
name = "ﾉｱ2"
command = ~D, DB, B, y
time = 30

[Command]
name = "ﾁｬｻｷﾉｱ"
command = ~D, DF, F, a
time = 30
[Command]
name = "ﾁｬｻｷﾉｱ"
command = ~D, DF, F, b
time = 30

[Command]
name = "ｼ・"
command = ~D, DB, B, a
time = 30
[Command]
name = "ｼ・"
command = ~D, DB, B, b
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "xy"
command = x+y
time = 10

[Command]
name = "xb"
command = x+b
time = 10

[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "roll"
command = z
time = 1

[command]
name = "CD"
command = b+y
time = 2

[command]
name = "CD"
command = c
time = 2

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

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
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
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_x"
command = /DF,x
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_c"
command = /DF,c
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "longjump"
command = D, $U
time = 18

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


;===========================================================================

[Statedef -1]


;===========================================================================
[State -1,]
type = ChangeState
value = 2500
triggerall = command = "ｷ邀ｩ"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = 2600
triggerall = command = "MAXｱｮﾈﾐ"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = 2000
triggerall = command = "ｱｮﾈﾐ"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = 2100
triggerall = command = "ｱｮﾎ・"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================

[State -1,]
type = ChangeState
value = 1000;ifelse(command = "ｱﾐ2",1010,1000)
triggerall = command = "ｱﾐ1"; || command = "ｱﾐ2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = ifelse(command = "ｱｪ2",1110,1100)
triggerall = command = "ｱｪ1" || command = "ｱｪ2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = ifelse(command = "ﾉｱ2",1250,1200)
triggerall = command = "ﾉｱ1" || command = "ﾉｱ2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = 1350
triggerall = command = "ｼ・"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,]
type = ChangeState
value = 1400
triggerall = command = "ﾁｬｻｷﾉｱ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59)<=0
triggerall = statetype != A && command = "FF"
trigger1 = Ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59)<=0
triggerall = statetype != A && command = "BB"
trigger1 = Ctrl

[State -1, taunt]
type = ChangeState
value = 195
triggerall = Var(59)<=0
triggerall = statetype != A && command = "start"
trigger1 = Ctrl
;---------------------------------------------------------------------------
;Throw y/b
[State -1]
type = ChangeState
value = 800
triggerall = Var(59)<=0
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl
;-------------------------------------------------------------Roll


;-------------------------------------------------------------
[State -1, Roll back]
type = ChangeState
value = 710
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Roll fwd]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ｳｬﾖﾘｻ・
;---------------------------------------------------------------------------
;CD attack
[State -1]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump CD attack
[State -1]
type = ChangeState
value = 640
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



;ﾕｾﾁ｢ｹ･ｻ・
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

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;Jump Light Kick
[State -1]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Jump Heavy Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Heavy Kick
[State -1]
type = ChangeState
value = 620
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
