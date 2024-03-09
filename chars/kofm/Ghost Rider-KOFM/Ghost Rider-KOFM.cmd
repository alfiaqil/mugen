[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;==============================================================
[Defaults]
command.time = 15
command.buffer.time = 1
;==============================================================
;-| Super Motions |--------------------------------------------------------
;Hyper Moves

[Command]
name = "Hellcycle"
command = ~D, F, D, F, z
time = 30

[Command]
name = "Penancestare"
command = ~D, F, D, F, c
time = 30

[Command]
name = "Hyperchain"
command = ~D, F, D, F, a
time = 30
[Command]
name = "Hyperchain"
command = ~D, F, D, F, b
time = 30

[Command]
name = "Hyperfireball"
command = ~D, F, D, F, x
time = 30
[Command]
name = "Hyperfireball"
command = ~D, F, D, F, y
time = 30

;----------------------------------------------------------------------
;Special Moves
;[Command]
;name = "FireballWeak"
;command = ~D, DF, F, x
;time = 30

[Command]
name = "Fireball"
command = ~D, DF, F, x
time = 30
[Command]
name = "FireballStrong"
command = ~D, DF, F, y
time = 30

[Command]
name = "FlameWhip"
command = ~D, DB, B, x
time = 30
[Command]
name = "FlameWhip"
command = ~D, DB, B, y
time = 30

;[Command]
;name = "FlameWhip"
;command = ~D, DB, B, z
;time = 30

[Command]
name= "Flameuppercut"
command = ~F, D, DF, x
time = 30
[Command]
name= "Flameuppercut"
command = ~F, D, DF, y
time = 30


[Command]
name= "Charge"
command = ~F, D, DF, a
time = 30
[Command]
name= "Charge"
command = ~F, D, DF, b
time = 30


;[Command]
;name = "flamebreath_low"
;command = ~D, DF, F, a
;time = 30

[Command]
name = "flamebreath"
command = ~D, DF, F, a
time = 30
[Command]
name = "flamebreath_high"
command = ~D, DF, F, b
time = 30

[Command]
name = "FirePillar"
command = ~D, DB, B, a
time = 30
[Command]
name = "FirePillarD"
command = ~D, DB, B, b
time = 30

[Command]
name = "ArialChainattack"
command = ~D, DF, F, x
time = 30
[Command]
name = "ArialChainattack"
command = ~D, DF, F, y
time = 30


[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3



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
name = "recovery";Required (do not remove)
command = x+y
time = 1

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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

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

;----------------------------------------------------------------------------
;Hellcycle
[State -1, Hellcycle]
type = ChangeState
value = 4000
triggerall = command = "Hellcycle"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3 = prevstateno = 4008
trigger4 = stateno = 4018
trigger5 = stateno = 4015

;[State -1, Hellcycle]
;type = ChangeState
;value = 4000
;triggerall = command = "Hellcycle"
;triggerall = power > 1000
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 250)  ||  (stateno = 240)  ||  (stateno = 2110)
;trigger2 = movecontact

;----------------------------------------------------------------------------
;Hyper Chain
[State -1, Hellcycle]
type = ChangeState
value = 4008
triggerall = command = "Hyperchain"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=stateno= 4000

;----------------------------------------------------------------------------
;Hyper Fireball
[State -1, Hellcycle]
type = ChangeState
value = 4009
triggerall = command = "Hyperfireball"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Penance Stare
[State -1, Penancestare]
type = ChangeState
value = 4018
triggerall = command = "Penancestare"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;Flaming Charge
[State -1, Charge]
type = ChangeState
value = 3050
triggerall = command = "Charge"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-----------------------------------------------------------------------------
;flamming uppercut
[State -1, Flameuppercut]
type = ChangeState
value = 3000
triggerall = command = "Flameuppercut"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-----------------------------------------------------------------------------
;Flame Whip
[State -1, Flame Whip]
type = ChangeState
value = 3070
triggerall = command = "FlameWhip"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------
;Fireball Medium
[State -1, Fireball]
type = ChangeState
value = 2012
triggerall = command = "Fireball"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------
;Fireball Weak
;[State -1, Fireball]
;type = ChangeState
;value = 2022
;triggerall = command = "FireballWeak"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 245)    
;trigger2 = movecontact

;----------------------------------------------------------------------------
;Fireball Strong
[State -1, Fireball]
type = ChangeState
value = 2032
triggerall = command = "FireballStrong"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------
;flamebreath
[State -1, flamebreath]
type = ChangeState
value = 2013
triggerall = command = "flamebreath"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------
;flamebreath low
;[State -1, flamebreath1]
;type = ChangeState
;value = 2015
;triggerall = command = "flamebreath_low"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 450)    
;trigger2 = movecontact


;----------------------------------------------------------------------------
;flamebreath low
[State -1, flamebreath2]
type = ChangeState
value = 2020
triggerall = command = "flamebreath_high"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------
;Fire Pilar
[State -1, FirePillar]
type = ChangeState
value = 2018
triggerall = command = "FirePillar"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;----------------------------------------------------------------------------
;Fire Pilar Distant
[State -1, FirePillar]
type = ChangeState
value = 2050
triggerall = command = "FirePillarD"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------------------------------------------
;ArialChainattack
[State -1, ChainSweep]
type = ChangeState
value = 3060
triggerall = command = "ArialChainattack"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;===========================================================================


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


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

;===========================================================================

[State -1, Standing Hard Chain Attack]
type=changestate
value = 521
triggerall = command="holdback"
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1, Stand Hard Punch]
type = ChangeState
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump Hard Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

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
value = 246
triggerall = command = "b"
triggerall = command = "holdfwd"
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
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

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
value = 435
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
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

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610)  
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 600)  ||  (stateno = 640)  
trigger2 = movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "a"
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600)  
trigger2 = movecontact

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 610)  ||  (stateno = 600)  
trigger2 = movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630)  ||  (stateno = 610)  ||  (stateno = 600)  ||  (stateno = 640) ||  (stateno = 620)
trigger2 = movecontact





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
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 3050
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
value = 3000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------