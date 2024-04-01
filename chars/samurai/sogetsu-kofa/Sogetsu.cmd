;-| Desperation Moves |---------------------------------------------------;

[Command]
name = "QCFQCF_y"
command = ~D, F, D, F, c
time = 30

[Command]
name = "QCFQCF_x"
command = ~D, F, D, F, z
time = 30

[Command]
name = "QCFQCF_a"
command = ~D, F, D, F, a
time = 30
[Command]
name = "QCFQCF_a"
command = ~D, F, D, F, b
time = 30

[Command]
name = "QCFQCF_b"
command = ~D, F, D, F, y
time = 30
[Command]
name = "QCFQCF_b"
command = ~D, F, D, F, x
time = 30

;-| Special Moves |-------------------------------------------------------;

[Command]
name = "QCBF_b"
command = ~D, DB, B, b
time = 30
[Command]
name = "QCBF_b"
command = ~D, DB, B, a
time = 30

[Command]
name = "QCF_y"
command = ~D, DF, F, x
time = 30
[Command]
name = "QCF_a"
command = ~D, DF, F, y
time = 30

[Command]
name = "QCB_x1"
command = ~D, DB, B, x
time = 30
[Command]
name = "QCB_x1"
command = ~D, DB, B, y
time = 30

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 30
[Command]
name = "QCB_b"
command = ~D, DB, B, y
time = 30

[Command]
name = "DP_x1"
command = ~F, D, DF, x
time = 30
[Command]
name = "DP_x1"
command = ~F, D, DF, y
time = 30

[Command]
name = "DP_x"
command = ~D, DF, F, a
time = 30
[Command]
name = "DP_x"
command = ~D, DF, F, b
time = 30

[Command]
name = "RDP_x"
command = ~D, DF, F, a
time = 30
[Command]
name = "RDP_y"
command = ~D, DF, F, b
time = 30


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
name = "recovery"
command = x+y
time = 1

[Command]
name = "ab"
command = a+b

[Command]
name = "xa"
command = x+a

[Command]
name = "yb"
command = y+b
time=1

[Command]
name = "yb"
command = c
time=1

[Command]
name = "xyz"
command = x+y+z

[Command]
name = "xya"
command = x+y+a

[Command]
name = "longjump"
command = D, $U
time = 18


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_xy"
command = /$F,x+y
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_y"
command = /$F,b
time = 1

[Command]
name = "bck_a"
command = /$B,a
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
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "df_b"
command = /$F,a
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

[Command]
name = "hold_x";Required (do not remove)
command = /$x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$y
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
name = "holdfwdx";Required (do not remove)
command = /$F+x
time = 1

;===========================================================================
[Statedef -1]
;===========================================================================



;===========================================================================
;Player Controlled
;---------------------------------------------------------------------------
;Slash Super
[State -1]
type = ChangeState
value = 6000
triggerall = command = "QCFQCF_x"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Bust Super
[State -1]
type = ChangeState
value = 6100
triggerall = command = "QCFQCF_y"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;No Contest Super
[State -1]
type = ChangeState
value = 6200
triggerall = command = "QCFQCF_a"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Air MultiFireball Super
[State -1]
type = ChangeState
value = 6300
triggerall = command = "QCFQCF_b"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;Ground MultiFireball Super
[State -1]
type = ChangeState
value = 6305
triggerall = command = "QCFQCF_b"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
;Reversal D
[State -1]
type = ChangeState
value = 1706
triggerall = command = "QCBF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Rage Explosion
[State -1]
type = null;ChangeState
value = 7000
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = var(30) = 0
triggerall = command = "xya" 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Rage Attack
[State -1]
type = null;ChangeState
value = 7100
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = var(30) = 1
triggerall = command = "xya"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Bubble Shield 1
[State -1]
type = ChangeState
value = 1500
triggerall = command = "DP_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------------
;Water Spout Close
[State -1]
type = ChangeState
value = 1300
triggerall = command = "DP_x1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;---------------------------------------------------------------------------
;Air Throw 1
[State -1]
type = ChangeState
value = 1400
triggerall = command = "QCB_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact





;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Air Throw 4
[State -1]
type = ChangeState
value = 1408
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Fireball 2
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1020
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Air Fireball 2
[State -1]
type = ChangeState
value = 1101
triggerall = command = "QCF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact     

[State -1]
type = ChangeState
value = 1102
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact     

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Teleport Left
[State -1]
type = ChangeState
value = 1200
triggerall = command = "RDP_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Teleport Front of Enemy
[State -1]
type = ChangeState
value = 1201
triggerall = command = "RDP_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Water Ball 1
[State -1]
type = ChangeState
value = 1600
triggerall = command = "QCB_x1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
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
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1]
type = ChangeState
value = 630
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Push Fwd
[State -1]
type = ChangeState
value = 820
triggerall = var(35) != 1
triggerall = command = "y"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 865
triggerall = var(35) != 1
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(35) != 1
trigger1 = command = "FF" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(35) != 1
trigger1 = command = "BB" && statetype = S && ctrl

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

;Jump Weak Slash Stationary
[State -1]
type = ChangeState
value = 610
triggerall = command = "x" 
triggerall = statetype = A
trigger1 = ctrl    

[State -1]
type = ChangeState
value = 605
triggerall = command = "y" 
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl                               

;Jump Medium Slash Stationary
[State -1]
type = ChangeState
value = 620
triggerall = command = "y" 
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl    

;---------------------------------------------------------------------------

;Jump Kick
[State -1]
type = ChangeState
value = 641
triggerall = command = "a" 
triggerall = statetype = A
trigger1 = ctrl     

;Jump Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b" 
triggerall = statetype = A
trigger1 = ctrl                             


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = command = "start" 
trigger1 = statetype != A && ctrl                                  
