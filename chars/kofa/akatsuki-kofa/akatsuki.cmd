;
; The CMD file.
;
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;

;-------------------------------------------------------------

[Command]
name = "3000"
command = ~D, F, D, F, c
time = 30

[Command]
name = "2500"
command = ~D, F, D, F, z
time = 30

;-------------------------------------------------------------

[Command]
name = "2100"
command = ~D, F, D, F, a
time = 30
[Command]
name = "2100"
command = ~D, F, D, F, b
time = 30

[Command]
name = "2000"
command = ~D, F, D, F, x
time = 30
[Command]
name = "2000"
command = ~D, F, D, F, y
time = 30

;-------------------------------------------------------------

[Command]
name = "1100"
command = ~D, DF, F, a
time = 30
[Command]
name = "1100"
command = ~D, DF, F, b
time = 30

[Command]
name = "1200"
command = ~F, D, DF, x
time = 30
[Command]
name = "1200"
command = ~F, D, DF, y
time = 30

[Command]
name = "1300"
command = ~D, DB, B, x
time = 30
[Command]
name = "1300"
command = ~D, DB, B, y
time = 30

[Command]
name = "1000"
command = ~D, DF, F, x
time = 30
[Command]
name = "1000"
command = ~D, DF, F, y
time = 30

[Command]
name = "1400"
command = ~D, DB, B, b
time = 30
[Command]
name = "1450"
command = ~D, DB, B, a
time = 30



[Command]
name = "GuardCancelAttack"
command = b+y
time = 2

[Command]
name = "GuardCancelFrontDash"
command = a+x
time = 2

[Command]
name = "GuardCancelFBackStep"
command = /$B, a+x
time = 2

[Command]
name = "LongJump"    
command = ~$D,$U
time = 12
command.buffer.time = 5

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

[Command]
name = "x+y";Required (do not remove)
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

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

;-------------------------------------------------------------
;-------------------------------------------------------------

[Statedef -1]

[state -1]
type = ChangeState
value = 3000
triggerall = command = "3000"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 2500
triggerall = command = "2500"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 2100
triggerall = command = "2100"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 2000
triggerall = command = "2000"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact



;-------------------------------------------------------------

[state -1]
type = ChangeState
value = 1400 + (command = "1450")*50
triggerall = command = "1400" || command = "1450"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 1300
triggerall = command = "1300"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 1200
triggerall = command = "1200"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 1100
triggerall = command = "1100"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 1000
triggerall = command = "1000"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 1020
triggerall = command = "1000"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[400,499]) && movecontact

;-------------------------------------------------------------

[state -1]
type = ChangeState
value = 740
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[state -1]
type = ChangeState
value = 730
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;-------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 600
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;CD attack
[State -1]
type = ChangeState
value = 610
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[400,499]) && movecontact



;-------------------------------------------------------------

[state -1]
type = ChangeState
value = 500
triggerall = command = "y" || command = "b"
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
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
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
trigger3 = (stateno = [300,309])&& movecontact
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
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
trigger6 = stateno = 100

;-------------------------------------------------------------

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

;-------------------------------------------------------------

[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------

[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[state -1]
type = ChangeState
value = 430
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------
;-------------------------------------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = command = "FF"
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = command = "BB"
trigger1 = ctrl

;-------------------------------------------------------------

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype != A
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------


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

;uniq, endless upper
[State -1, AI FollowUp]
type = ChangeState
value = 1300
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = statetype != A
trigger1 = movehit && stateno = 1300

[State -1, AI Forward]
type = ChangeState
value = 1300
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI LowHit]
type = ChangeState
value = 330
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
value = 1100;1200
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------