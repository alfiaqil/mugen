;-| Super Motions |--------------------------------------------------------

[Command]
name = "harahara2"
command = ~D, F, D, F, c
time = 30

[Command]
name = "HCB_b"
command = ~D, F, D, F, z
time = 30

[Command]
name = "360"
command = ~D, F, D, F, a
time = 30
[Command]
name = "360"
command = ~D, F, D, F, b
time = 30

[Command]
name = "QCB_ab"
command = ~D, B, D, B, a
time = 30
[Command]
name = "QCB_ab"
command = ~D, B, D, B, b
time = 30

[Command]
name = "QCF_xy"
command = ~D, F, D, F, x
time = 30
[Command]
name = "QCF_xy"
command = ~D, F, D, F, y
time = 30

[Command]
name = "dp_xy"
command = ~D, B, D, B, x
time = 30
[Command]
name = "dp_xy"
command = ~D, B, D, B, y
time = 30

;-| Special Motions |------------------------------------------------------
;-----------------

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 30
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "QCF_yy"
command = ~D, DF, F, a
time = 30
[Command]
name = "QCF_yy"
command = ~D, DF, F, b
time = 30

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 30
[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 30

[Command]
name = "dp_x"
command = ~D, DF, F, a
time = 30
[Command]
name = "dp_y"
command = ~D, DF, F, b
time = 30


[Command]
name = "rdp_a"
command = a+y
time = 10
[Command]
name = "rdp_b"
command = x+b
time = 10
[Command]
name = "rdp_x"
command = b+z
time = 10
[Command]
name = "rdp_y"
command = c+y
time = 10






;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "dwnfwd_y"
command = /DF,y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "back_y"
command = /B,y
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| 2 Buttons |---------------------------------------------------------
[Command]
name = "double_claw"
command = a+x
time = 1

[Command]
name = "double_claw"
command = a+y
time = 1

[Command]
name = "double_claw"
command = b+x
time = 1

[Command]
name = "double_claw"
command = b+y
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

[Command]
name = "DU"
command = D, U
time = 20

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "fwd";Required (do not remove)
command = F
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
name = "holdup"
command = /$U
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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

;===========================================================================


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;MIRACLE VOICE - D, D + AB/XY
[State -1]
type = ChangeState
value = 4500
triggerall = command = "harahara2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;BUNBUN TYPHOON - 360� + XY
[State -1]
type = ChangeState
value = 4600
triggerall = command = "360"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;MAURU BINTA - HCB + B
[State -1]
type = ChangeState
value = 1300
triggerall = command = "HCB_b"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;ES BODY PRESS - QCB + AB
[State -1]
type = ChangeState
value = 3100
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;---------------------------------------------------------------------------
;ES BUNBUN COPTER - F,D,D/F + XY
[State -1]
type = ChangeState
value = 3200
triggerall = command = "dp_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;---------------------------------------------------------------------------
;ES GURUGURU PUNCH - QCF + XY
[State -1]
type = ChangeState
value = 3000
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;---------------------------------------------------------------------------
;HELPER - SLASH
[State -1]
type = ChangeState
value = 4720
trigger1 = command = "rdp_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = numHelper(9500) = 0

;HELPER - TESSE
[State -1]
type = ChangeState
value = 4740
trigger1 = command = "rdp_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = numHelper(9500) = 0

;HELPER - DANDY-J
[State -1]
type = ChangeState
value = 4760
trigger1 = command = "rdp_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = numHelper(9500) = 0

;HELPER - B.K.
[State -1]
type = ChangeState
value = 4700
trigger1 = command = "rdp_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = numHelper(9500) = 0


;---------------------------------------------------------------------------
;BUNBUN COPTER (WEAK) - F,D,F/D + X
[State -1]
type = ChangeState
value = 1200
triggerall = command = "dp_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;BUNBUN COPTER (STRONG) - F,D,F/D + Y
[State -1]
type = ChangeState
value = 1210
triggerall = command = "dp_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;GURUGURU PUNCH (WEAK) - QCF + X
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;GURUGURU PUNCH (STRONG) - QCF + Y
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; jump medium kick
[State -1, Jump Medium Slash]
type = ChangeState
value = 640
triggerall = command = "QCF_yy"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact




;---------------------------------------------------------------------------
;BODY PRESS (WEAK) - QCB + A
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;BODY PRESS (STRONG) - QCB + B
[State -1]
type = ChangeState
value = 1110
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Throw
[State -1]
type = ChangeState
value = 850
triggerall = var(59)!=1
triggerall = roundstate=2
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;------------------------------

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



;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = Var(30) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1



;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = Var(30) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


;===========================================================================
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
; Taunt
[State -1, Taunt]
type = ChangeState
value = 4950
trigger1 = Var(30) <= 0
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl = 1

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

[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
JAMBU AI
;---------------------------------------------------------------------------
[State -1, AI Guard]
type = ChangeState
value = 120
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = InGuardDist
trigger1 = ctrl

[State -1, AI Taunt]
type = ChangeState
value = 4950
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 112
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI LowHit]
type = ChangeState
value = 430
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl
trigger2 = movehit && animtime >= 0

[State -1, AI MediumHit]
type = ChangeState
value = 210
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = ctrl
trigger2 = movehit && animtime >= 0

[State -1, AI FollowUp]
type = ChangeState
value = 1200
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------