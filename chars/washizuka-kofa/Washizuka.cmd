[Command]
name = "LDM"
command = ~D, F, D, F, z
time = 30

[Command]
name = "—•‘‰œ‹`"
command = D, B, D, B, z
time = 30

[Command]
name = "ÐÂ×«×é°ÂÒå.¶ñ¼´Õ¶"
command = ~D, F, D, F, c
time = 30


[Command]
name = "DM1x"
command = D, F, D, F, x
time = 30
[Command]
name = "DM1y"
command = D, F, D, F, y
time = 30

[Command]
name = "Ž¾‹ó˜T‰å"
command = D, F, D, F, a
time = 30
[Command]
name = "Ž¾‹ó˜T‰å"
command = D, F, D, F, b
time = 30


[Command]
name = "Qcbyb"
command = x+y
time = 30

[Command]
name = "Qcbx"
command = D,DB,B,x
time = 30
[Command]
name = "Qcby"
command = D,DB,B,y
time = 30

[Command]
name = "DPx"
command = F,D,DF,x
time = 30
[Command]
name = "DPy"
command = F,D,DF,y
time = 30

[Command]
name = "Qcfx"
command = D,DF,F,x
time = 30
[Command]
name = "Qcfy"
command = D,DF,F,y
time = 30

[Command]
name = "Qcfa"
command = D,DF,F,a
time = 30
[Command]
name = "Qcfb"
command = D,DF,F,b
time = 30

[Command]
name = "BFa"
command = ~D,F,a
time = 30
[Command]
name = "BFb"
command = ~D,F,b
time = 30


[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1


[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "FF"
command = F,F
time = 10


[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "rolamento"
command = x+a;/F, x+a
time = 1

[Command]
name = "rolamento"
command = z
time = 1

[Command]
name = "rolamentoTras"
command = /B, x+a
time = 1

[Command]
name = "rolamentoTras"
command = /B, z
time = 1

[Command]
name = "rolamento2"
command = x+a
time = 30
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1


[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "dfwd_y"
command = /$DF,y
time = 1

[Command]
name = "dfwd_b"
command = /$DF,b
time = 1

[Command]
name 	= "DU2"
command = D, U
time 	= 9

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU1"
command = DB, UF
time = 10

[Command]
name = "DU2"
command = DF, UB
time = 10

[Command]
name = "DU3"
command = DF, UF
time = 10

[Command]
name = "DU4"
command = DB, UB
time = 10
;-| Single Button |---------------------------------------------------------
[Command]
name = "up"
command = UB
time = 1

[Command]
name = "up"
command = UF
time = 1

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
name = "up"
command = U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "fwd"
command = F
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
name 	= "DU"
command = $D, $U
time 	= 18
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;--------------------------------------------------------
;Cancel
;--------------------------------------------------------

;--------------------------------------------------------
;ƒIƒŠƒWƒiƒ‹‚QMAX2
[State -1]
type = ChangeState
value = 14000
triggerall = command = "ÐÂ×«×é°ÂÒå.¶ñ¼´Õ¶"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact


[State -1, B,Fa]
type = ChangeState
value = 3500
triggerall = command = "LDM"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact


[State -1]
type = ChangeState
value = 3400
triggerall = command = "—•‘‰œ‹`"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact


[State -1]
type = ChangeState
value = 3100
triggerall = command = "Ž¾‹ó˜T‰å"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fa]
type = ChangeState
value = 3000
triggerall = command = "DM1x"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact


[State -1, B,Fa]
type = ChangeState
value = 3010
triggerall = command = "DM1y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;===============================================================================
;Anti-Aéreos
;===============================================================================
[State -1, D,Ux]
type = ChangeState
value = 21100
triggerall = command = "DPx"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, D,Uy]
type = ChangeState
value = 21110
triggerall = command = "DPy"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fa]
type = ChangeState
value = 1400
triggerall = command = "Qcbyb"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fa]
type = ChangeState
value = 1300
triggerall = command = "Qcbx"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fa]
type = ChangeState
value = 1320
triggerall = command = "Qcby"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fa]
type = ChangeState
value = 1200
triggerall = command = "BFa"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fb]
type = ChangeState
value = 1210
triggerall = command = "BFb"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;===============================================================================
;Projéteis
;===============================================================================
[State -1, B,Fx]
type = ChangeState
value = 21000
triggerall = command = "Qcfx"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, B,Fy]
type = ChangeState
value = 21010
triggerall = command = "Qcfy"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact
;---------------------------------------------------------------------------

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && Time > 3
trigger3 = stateno = 101

;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && Time > 3
;---------------------------------------------------------------------------
;;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(50) <= 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = var(50) <= 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
==========================================================================
;---------------------------------------------------------------------------
------------------------------------------------------------------------------
[State -1, esquivatras]
type = ChangeState
value = 710
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, esquiva]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;[State -1, esquivatras]
;type = ChangeState
;value = 751
;triggerall = var(58) = 0
;triggerall = command = "rolamentoTras"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = stateno = [150,153]

;[State -1, esquiva]
;type = ChangeState
;value = 750
;triggerall = var(58) = 0
;triggerall = command = "rolamento"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = stateno = [150,153]
;-------------------------------------------------------------

;[State -1, CD]
;type = ChangeState
;value = 251
;triggerall = var(58) = 0
;triggerall = (command = "y" && command = "b") || command = "c"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = stateno = [150,153]

[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = Command = "recovery" || Command = "z"
value = 5200

------------------------------------------------------------------------------


[State -1, CD]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, CD]
type = ChangeState
value = 450
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[400,499]) && movecontact

;---------------------------------------------------------------------------

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
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
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
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
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
trigger3 = (stateno = [300,309])&& movecontact
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
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
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
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact   

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 340
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
trigger6 = stateno = 100  

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
