;Honda Commands

;================================================================
;-| Stuff |------------------------------------------------------
;================================================================

[ReMap]
a = a
b = b
c = c
x = x
y = y
z = z
s = s

;[Defaults]
;Command.Time = 15
;Command.Buffer.Time = 3

;================================================================
;-| LDM |--------------------------------------------------------
;================================================================


[Command]
name = "hcbx2_z"
command = ~D, F, D, F, z
time = 30

[Command]
name = "cB,F,B,F z"
command = ~D, F, D, F, c
time = 30

;================================================================
;-| DM |--------------------------------------------------------
;================================================================

[Command]
name = "cB,F,B,F x"
command = ~D, F, D, F, x
time = 30
[Command]
name = "cB,F,B,F y"
command = ~D, F, D, F, y
time = 30

[Command]
name = "cB,F,B,F a"
command = ~D, F, D, F, a
time = 30

[Command]
name = "cB,F,B,F b"
command = ~D, F, D, F, b
time = 30

;================================================================
;-| SPECIALS |---------------------------------------------------
;================================================================


[Command]
name = "cB,F x"
command = ~D, DF, F, x
time = 30
[Command]
name = "cB,F y"
command = ~D, DF, F, y
time = 30

[Command]
name = "cD,U a"
command = ~D, DF, F, a
time = 30
[Command]
name = "cD,U b"
command = ~D, DF, F, b
time = 30

[Command]
name = "hcb,F x"
command = ~D, DB, B, x
time = 30
[Command]
name = "hcb,F y"
command = ~D, DB, B, y
time = 30






[Command]
name = "xxxxx"
command = x,x,x,x,x
time = 60
buffer.time = 5

[Command]
name = "xxxxx"
command = x,y,x,y,x
time = 60
buffer.time = 5

[Command]
name = "xxx"
command = x,x,x
time = 40
buffer.time = 5

[Command]
name = "yyyyy"
command = y,y,y,y,y
time = 60
buffer.time = 5

[Command]
name = "yyyyy"
command = y,x,y,x,y
time = 60
buffer.time = 5

[Command]
name = "yyy"
command = y,y,y
time = 40
buffer.time = 5


;================================================================

;================================================================
;-| DOUBLE TAP |-------------------------------------------------
;================================================================

[Command]
name = "FF"
command = ~F, F
time = 10

[Command]
name = "BB"
command = ~B, B
time = 10

[Command]
name = "FBF"
command = ~F, B, F
time = 10

[Command]
name = "BFB"
command = ~B, F, B
time = 10

;================================================================

;================================================================
;-| 2/3 button combination |-------------------------------------
;================================================================

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "knockdown"
command = c
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

;================================================================

;================================================================
;-| Hold Button |------------------------------------------------
;================================================================

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

;================================================================

[Command]
name = "longjump"
command = ~$D, $U
time = 18

;================================================================
;-| SINGLE BUTTON |----------------------------------------------
;================================================================


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
;================================================================

;================================================================
;-| HOLD DIRECTION |---------------------------------------------
;================================================================

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

;================================================================
;-| TAP BUTTON |-------------------------------------------------
;================================================================

[Command]
name = "tap_a"
command = ~a
time = 1

[Command]
name = "tap_b"
command = ~b
time = 1

[Command]
name = "tap_x"
command = ~x
time = 1

[Command]
name = "tap_y"
command = ~y
time = 1

;====================<DIR>====================

[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1

;################################################################
;- |2. STATE ENTRY| ---------------------------------------------
;################################################################

[Statedef -1]

;=======================================
; Combo vars
;=======================================
;[State -1, Combo1]
;type = Varset
;trigger1 = 1
;var(39) = 0

;[State -1, Combo2]
;type = Varset
;trigger1 = (stateno = 200) && movecontact
;trigger2 = (stateno = 250) && movecontact
;trigger3 = (stateno = 400) && movecontact
;trigger4 = (stateno = 420) && movecontact
;trigger5 = (stateno = 500) && movecontact
;trigger6 = (stateno = 320) && movecontact
;trigger7 = (stateno = 300) && movecontact
;trigger8 = (stateno = 301) && movecontact
;ignorehitpause = 1
;var(39) = var(39) | 1

;[State -1, fakeCombo]
;type = Varset
;trigger1 = 1
;var(42) = 0

;[State -1, Combo2]
;type = Varset
;trigger1 = (stateno = 500) && animelemtime(5) > 1 && animelemtime(7) <= 0
;trigger2 = (stateno = 500) && movecontact
;ignorehitpause = 1
;var(42) = var(42) | 1

;=======================================
; LDM
;=======================================
;---------------------------------------------------------------------------

;Orochi Kudaki
[State -1, Orochi Kudaki]
type = ChangeState
value = 3200
triggerall = Command = "hcbx2_z"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;Somersault Strike, SDM version
[State -1, Super Somersault Strike]
type = ChangeState
value = 3300
triggerall = Command = "cB,F,B,F z"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;=======================================
; DM
;=======================================
;---------------------------------------------------------------------------

;Somersault Strike
[State -1, Somersault Strike]
type = ChangeState
value = 3100
triggerall = Command = "cB,F,B,F a" || Command = "cB,F,B,F b"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Total Wipeout
[State -1, Total Wipeout]
type = ChangeState
value = 3000
triggerall = Command = "cB,F,B,F x" || Command = "cB,F,B,F y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;=======================================
; Special Moves
;=======================================
;---------------------------------------------------------------------------
;Sonic Boom x
[State -1, Sonic Boom x]
type = ChangeState
value = 1000
triggerall = Command = "cB,F x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Sonic Boom y
[State -1, Sonic Boom y]
type = ChangeState
value = 1050
triggerall = Command = "cB,F y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Low Sonic Boom a
[State -1,Low Sonic Boom a]
type = ChangeState
value = 1100
triggerall = Command = "xxxxx"; || Command = "xxx"
trigger1 = StateType != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1
trigger4 = stateno = 100

;Low Sonic Boom b
[State -1, Low Sonic Boom b]
type = ChangeState
value = 1150
triggerall = Command = "yyyyy"; || Command = "yyy"
trigger1 = StateType != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1
trigger4 = stateno = 100

;---------------------------------------------------------------------------

;Somersault Kick a
[State -1, Somersault Kick]
type = ChangeState
value = 1200
triggerall = command = "cD,U a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Somersault Kick b
[State -1, Somersault Kick b]
type = ChangeState
value = 1250
triggerall = command = "cD,U b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------------
;Ooichou Nage
[State -1, Moushuu Kyaku]
type = ChangeState
value = 1300 + 1*(var(39))
triggerall = command = "hcb,F x" || command = "hcb,F y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;----------------------------------------------

;=======================================
;Throws
;=======================================
;Ground---------------------------------
;Grab B
[State -1, GrabB ]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;Grab Y
[State -1, GrabY ]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;=======================================
;Basic Commands
;=======================================
;---------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 190
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------
; Run fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "FBF"
trigger1 = statetype = S
trigger1 = ctrl

; Step back
[State -1, Stp Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "BFB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------Roll from falling
[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = Command = "recovery" || Command = "z"
value = 5200

;---------------------------------------------
; Roll Back
[State -1,RollB]
type = ChangeState
value = 750
triggerall = command = "recovery" && command = "holdback"
triggerall = life > 0 && statetype != A
trigger1 = ctrl                                              ;Normal Roll Back
trigger2 = power >= 1000 && (stateno = [150,153]) ;Roll Back Counter

; Roll Forward
[State -1,RollF]
type = ChangeState
value = 700
triggerall = command = "recovery" ;&& command = "holdfwd"
triggerall = life > 0 && statetype != A
trigger1 = ctrl || stateno = 100                             ;Normal Roll
trigger2 = power >= 1000 && (stateno = [150,153]) ;Roll Counter

;---------------------------------------------
; Knock Down Counter
;[State -1,CD counter]
;type = ChangeState
;value = 525
;triggerall = command = "knockdown"
;triggerall = power >= 1000 && life > 0 && statetype != A
;trigger1 = stateno = [150,153]

; Knock Down
[State -1,Knockdown]
type = ChangeState
value = 500
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Knock Down Jumping
[State -1,JCD]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;=======================================
;Support Attacks
;=======================================



;Harai-geri Cancel
;[State -1,FHP]
;type = ChangeState
;value = 301
;triggerall = command = "b" && (command = "holdfwd"  || command = "holdback")
;triggerall = command != "holddown"
;trigger1 = (stateno = 200) && animelemtime(2) > 0 && animelemtime(3) < 0 && movetype = A && movecontact
;trigger2 = (stateno = 250) && animelemtime(1) > 0 && animelemtime(4) < 0 && movetype = A && movecontact
;trigger3 = (stateno = 400) && animelemtime(2) > 0 && animelemtime(3) < 0 && movetype = A && movecontact

;--------------------------------------------------------------------------------

;Backward Kick
[State -1,JBWK]
type = ChangeState
value = 310
triggerall = command = "holddown" && command = "x"
trigger1 = statetype = A && ctrl

;--------------------------------------------------------------------------------





;=======================================
;Basic Attacks
;=======================================


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

;-----------------------------------------------------------

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

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 245
triggerall = command = "b" && (command = "holdfwd"  || command = "holdback")
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

;-------------------------------------------------------------------------

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

;------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 435
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

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

;------------------------------------------------------------------------

;Jump Neutral Light Punch
[State -1,JLPN]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

;Jump Light Punch
[State -1,JLP]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 41 && ctrl

;Jump Light Kick
[State -1,JLK]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 41 && ctrl

;Jump Neutral Light Kick
[State -1,JLKN]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

;Jump Neutral High Punch
[State -1,JHPN]
type = ChangeState
value = 650
triggerall = command = "y"
triggerall = statetype = A && ctrl
trigger1 = vel x = 0
trigger2 = stateno = 41

;Jump High Punch
[State -1,JHP]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl

;Jump High Kick
[State -1,JHK]
type = ChangeState
value = 660
triggerall = command = "b"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 41 && ctrl

;Jump Neutral High Kick
[State -1,JHKN]
type = ChangeState
value = 670
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl
