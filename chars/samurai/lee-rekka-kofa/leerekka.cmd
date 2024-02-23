

;-| Super Motions |-----------------------------------------------------

[Command]
name = "hyperc"
command = ~D, F, D, F, c
time = 30

[Command]
name = "hyperc2"
command = ~D, B, D, B, c
time = 30

[Command]
name = "HiougiSotenMueiKyaku"
command = ~D, F, D, F, z
time = 30

[Command]
name = "hyper2"
command = ~D, B, D, B, z
time = 30

[Command]
name = "OugiEnryuTenshin"
command = ~D, F, D, F, a
time = 30
[Command]
name = "OugiEnryuTenshin"
command = ~D, F, D, F, b
time = 30

[Command]
name = "hyper3"
command = ~D, F, D, F, x
time = 30
[Command]
name = "hyper3"
command = ~D, F, D, F, y
time = 30

[Command]
name = "hyper"
command = ~D, B, D, B, x
time = 30
[Command]
name = "hyper"
command = ~D, B, D, B, y
time = 30

[Command]
name = "hyper4"
command = ~D, B, D, B, a
time = 30
[Command]
name = "hyper4"
command = ~D, B, D, B, b
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "EnryuHaibi1"
command = ~D, DF, F, x
time = 30
[Command]
name = "EnryuHaibi1"
command = ~D, DF, F, y
time = 30

[Command]
name = "EnryuHaibiSeq"
command = ~D, DB, B, x
time = 30
[Command]
name = "EnryuHaibiSeq"
command = ~D, DB, B, y
time = 30

; Ryu Tsuisen
[Command]
name = "RyuTsuisen"
command = ~D, DB, B, a
time = 30
[Command]
name = "RyuTsuisen"
command = ~D, DB, B, b
time = 30

; Muei Kyaku
[Command];air
name = "MueiKyaku"
command = ~D, DF, F, a
time = 30
[Command]
name = "MueiKyaku"
command = ~D, DF, F, b
time = 30

[Command]
name = "Fan1"
command = ~D,DF,F,a
time = 30
[Command]
name = "Fan2"
command = ~D,DF,F,b
time = 30

[Command]
name = "Ensenshou"
command = ~F, D, DF, x
time = 30
[Command]
name = "Ensenshou"
command = ~F, D, DF, y
time = 30

;-| Hold Button |--------------------------------------------------------------




[Command]
name = "Ibuki"
command = /s



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
command = b
time = 1

[Command]
name = "xy"     ;Required (do not remove)
command = b+y
time = 1

[Command]
name = "cz"     ;Required (do not remove)
command = c+z
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

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "down"
command = D
time = 1

[Command]
name = "up"
command = U
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
name = "DU"
command = D, U
time = 20

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

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Hiougi Soten Muei Kyaku]
type = ChangeState
value = 3200
triggerall = command = "HiougiSotenMueiKyaku"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3000
triggerall = command = "OugiEnryuTenshin"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3900
triggerall = command = "hyperc"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3850
triggerall = command = "hyperc2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 2555
triggerall = command = "hyper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3555
triggerall = command = "hyper2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3700
triggerall = command = "hyper3"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3750
triggerall = command = "hyper4"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Ensenshou]
type = ChangeState
value = 1370
triggerall = command = "Ensenshou"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Enryu Haibi 1]
type = ChangeState
value = 1000
triggerall = command = "EnryuHaibi1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1,yanxing]
type = ChangeState
value = 1510
triggerall = command = "Fan2" || command = "Fan1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;[State -1, Enryu Haibi 2]
;type = ChangeState
;value = 1100
;triggerall = command = "EnryuHaibi2"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
[State -1, Enryu Haibi Sequence]
type = ChangeState
value = 1200
triggerall = command = "EnryuHaibiSeq"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
[State -1, Ryu Tsuisen & Ryu Shousen]
type = ChangeState
value = 1300
triggerall = command = "RyuTsuisen"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ryu Tsuisen & Ryu Shousen]
type = ChangeState
value = 1400
triggerall = command = "RyuTsuisen"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
[State -1, Muei Kyaku]
type = ChangeState
value = 1500
triggerall = command = "MueiKyaku"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------



;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = roundstate=2
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Throw]
type = ChangeState
value = 801
triggerall = roundstate=2
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype = S && ctrl


;------------------------------------------------

;dodge backward
[State -1]
type = ChangeState
value = 710
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;dodge forward
[State -1]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------



;---------------------------------------------------------------------------


;CD attack
[State -1, Stand Strong Punch]
type = ChangeState
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------------


;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 206
triggerall = (Command = "x") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 20
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

;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 233
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
value = 232
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
triggerall = (Command = "b") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 433
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
triggerall = statetype = A
trigger1 = ctrl

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 633
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl









