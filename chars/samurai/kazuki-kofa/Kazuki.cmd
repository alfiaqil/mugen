;-| Desperation Moves |---------------------------------------------------;

[Command]
name = "hp"
command = ~D,F,D,F,c
time = 30

[Command]
name = "QCFQCF_b"
command = ~D,B,D,B,z
time = 30

[Command]
name = "QCFQCF_y"
command = ~D,F,D,F,z
time = 30

[Command]
name = "QCFQCF_x"
command = ~D,F,D,F,a
time = 30
[Command]
name = "QCFQCF_x"
command = ~D,F,D,F,b
time = 30

[Command]
name = "QCFQCF_a"
command = ~D,F,D,F,x
time = 30
[Command]
name = "QCFQCF_a"
command = ~D,F,D,F,y
time = 30


;-| Special Moves |--------------------------------------------------------;

[Command]
name = "QCFB_start"
command = ~D, DF, F, s
time = 30

[Command]
name = "QCBF_b"
command = ~D, DB, B, a
time = 30
[Command]
name = "QCBF_b"
command = ~D, DB, B, b
time = 30

[Command]
name = "dragonp_b"
command = ~F, D, DF, b
time = 30
[Command]
name = "dragonp_b"
command = ~F, D, DF, a
time = 30

[Command]
name = "QCF_x"
command = ~D, DF, F, a
time = 30
[Command]
name = "QCF_x"
command = ~D, DF, F, b
time = 30

[Command];air
name = "QCF_b"
command = ~D, DF, F, a
time = 30
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 30

[Command]
name = "QCB_y"
command = ~D, DF, F, x
time = 30
[Command]
name = "QCB_a"
command = ~D, DF, F, y
time = 30

[Command]
name = "DP_x"
command = ~D, DB, B, x
time = 30
[Command]
name = "DP_x"
command = ~D, DB, B, y
time = 30

[Command]
name = "DP_b"
command = ~D,D,a
time = 30
[Command]
name = "DP_b"
command = ~D,D,b
time = 30
[Command]
name = "DP_b"
command = ~D,D,x
time = 30
[Command]
name = "DP_b"
command = ~D,D,y
time = 30

[Command]
name = "dragonp_cont"
command = /$b
time = 1
[Command]
name = "dragonp_cont"
command = /$a
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 30

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
name = "combo";Required (do not remove)
command = a+b

[Command]
name = "ab";Required (do not remove)
command = a+b

[Command]
name = "xy"
command = x+y

[Command]
name = "xa"
command = x+a

[Command]
name = "ya"
command = y+a

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xyz"
command = x+y+z

[Command]
name = "xya"
command = x+y+a

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_xy"
command = /$F,x+y
time = 1
[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,b
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
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "bck_a"
command = /$B,a
time = 1

[Command]
name = "df_b"
command = /DF,b
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
name = "holddf";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /$z
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /$x
time = 1

[Command]
name = "FWD"
command = F
time = 1

[Command]
name = "BACK"
command = B
time = 1

[Command]
name = "UP"
command = U
time = 1

;-| States |--------------------------------------------------------------
[Statedef -1]

                                                                    
; ===========================


;Rage Attack
[State -1]
type = ChangeState
value = 7194
triggerall = command = "hp" 
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Slash Super
[State -1]
type = ChangeState
value = 6000
triggerall = command = "QCFQCF_x"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Bust Super
[State -1]
type = ChangeState
value = 6100
triggerall = command = "QCFQCF_y"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Fireball Super
[State -1]
type = ChangeState
value = 6200
triggerall = command = "QCFQCF_a"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Suzaku Super
[State -1]
type = ChangeState
value = 6300
triggerall = command = "QCFQCF_b"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ===========================

;Honorable Death
[State -1]
type = ChangeState
value = 850
triggerall = !AILevel
triggerall = command = "QCFB_start"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Sitting Reversal
[State -1]
type = ChangeState
value = 1700
triggerall = !AILevel
triggerall = command = "QCBF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Rising Kicks
[State -1]
type = ChangeState
value = 1500             
triggerall = command = "dragonp_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Slide Kick
[State -1]
type = ChangeState
value = 1400             
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Air Kick
[State -1]
type = ChangeState
value = 1300
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Teleport
[State -1]
type = ChangeState
value = 1100             
triggerall = command = "DP_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;;Fake
[State -1]
type = ChangeState
value = 1115             
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;Fireball y
[State -1]
type = ChangeState
value = 1001
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Fireball a
[State -1]
type = ChangeState
value = 1002
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Throw X
[State -1]
type = ChangeState
value = 1200
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;Throw X
[State -1]
type = ChangeState
value = 910
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;---------------------------------------------------------------------------     

;Switch
;[State -1]
;type = ChangeState
;value= 810
;triggerall = command = "ab"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------   
                 

;Command Roll Backwards
[State -1]
type = ChangeState
value = 116
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Command Roll Forward
[State -1]
type = ChangeState
value = 111
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------     

;CD attack
[State -1]
type = ChangeState
value = 550
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

;---------------------------------------------------------------------------     

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(35) != 1
trigger1 = command = "FF" && statetype = S && ctrl = 1  && command != "holddown" 

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = var(35) != 1
trigger1 = command = "BB" && statetype = S && ctrl = 1

;---------------------------------------------------------------------------     

;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = var(35) != 1
triggerall = command = "start" 
trigger1 = statetype != A && ctrl = 1                                  


;----------------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 207
triggerall = (Command = "x") && (Command = "holdfwd")
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
value = 218
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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

;----------------------------------------------------------------------------------

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

;----------------------------------------------------------------------------------

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

;----------------------------------------------------------------------------------

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

;----------------------------------------------------------------------------------

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;----------------------------------------------------------------------------------                             

;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Light Kick
[State -1]
type = ChangeState
value = 631
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;----------------------------------------------------------------------------------     

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
value = 1115
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Range]
type = ChangeState
value = 1001
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * 2 > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 111
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
value = 1500
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------