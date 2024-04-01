
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "236236b"
command = ~D, F, D, F, b
time = 30
[Command]
name = "236236y"
command = ~D, F, D, F, a
time = 30

[Command]
name = "236236a"
command = ~D, F, D, F, x
time = 30
[Command]
name = "236236x"
command = ~D, F, D, F, y
time = 30

[Command]
name = "63214x"
command = ~D, F, D, F, z
time = 30

[Command]
name = "63214x2"
command = ~D, F, D, F, c
time = 30


;-| Special Motions |------------------------------------------------------

[Command]
name = "236a"
command = ~D, DF, F, x
time = 30
[Command]
name = "236a"
command = ~D, DF, F, y
time = 30

[Command]
name = "623a"
command = ~F, D, DF, x
time = 30
[Command]
name = "623a"
command = ~F, D, DF, y
time = 30

[Command]
name = "623b"
command = ~D, DF, F, a
time = 30
[Command]
name = "623b"
command = ~D, DF, F, b
time = 30

[Command]
name = "623y"
command = ~F, D, DF, a
time = 30
[Command]
name = "623y"
command = ~F, D, DF, b
time = 30

[Command]
name = "214b"
command = ~D, DF, F, a
time = 30
[Command]
name = "214b"
command = ~D, DF, F, b
time = 30

[Command]
name = "214a"
command = ~D, DF, F, x
time = 30
[Command]
name = "214x"
command = ~D, DF, F, y
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
name = "recovery";Required (do not remove)
command = a+b
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

[Command]
name = "abx"
command = a+b+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "down"
command = $D
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

[Statedef -1]

;===========================================================================
;’nã–³“G
[State 5050, 4] 
type = nothitby
triggerall = alive
triggerall = gethitvar(fall.recover) = 1
triggerall = time >= 1
trigger1 = gethitvar(hittime) <= 0 
trigger1 = statetype = L
value = SCA,AA,AT,AP
;===========================================================================
;‹ó’†–³“G
[State -1, Strong Kung Fu Blow]
type = nothitby
triggerall = alive
trigger1 = hitover
trigger1 = gethitvar(fall) = 1
trigger1 = movetype = H
trigger1 = gethitvar(fall.recover) = 1
trigger1 = statetype = A 
trigger1 = (gethitvar(fall.recovertime)-gethitvar(fall.time))<=0
trigger2 = stateno = 5040
trigger2 = HitOver
value = SCA,AA,AT,AP

;---------------------------------------------------------------------------
;ã–Â_
[State -1, HA1]
type = ChangeState
value = 510+(var(17)*20)
triggerall = command = "236236b"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;‹­–Â_
[State -1, HA1]
type = ChangeState
value = 515+(var(17)*20)
triggerall = command = "236236y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ã”’ŒÕ
[State -1, HA1]
type = ChangeState
value = 500+(var(17)*20)
triggerall = command = "236236a"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;‹­”’ŒÕ
[State -1, HA1]
type = ChangeState
value = 505+(var(17)*20)
triggerall = command = "236236x"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;‹­åp”mÔî
[State -1, HA1]
type = ChangeState
value = 411
triggerall = command = "63214x2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;‹­åp”mÔî
[State -1, HA1]
type = ChangeState
value = 555+(var(17)*5)
triggerall = command = "63214x"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ã˜T‰å“V—Ö
[State -1, HA1]
type = ChangeState
value = 410
triggerall = command = "623a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact





;---------------------------------------------------------------------------
;ã‰¤˜Ta
[State -1, HA1]
type = ChangeState
value = 400
triggerall = command = "236a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;‹­•S‰Ôã‡—
[State -1, HA1]
type = ChangeState
value = 421
triggerall = command = "623y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;ã•S‰Ôã‡—
[State -1, HA1]
type = ChangeState
value = 420
triggerall = command = "623b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;ãí—Ö–C
[State -1, HA1]
type = ChangeState
value = 430
triggerall = command = "214a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;‹­í—Ö–C
[State -1, HA1]
type = ChangeState
value = 431
triggerall = command = "214x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;—¬¯‹r
[State -1, HA1]
type = ChangeState
value = 440
triggerall = command = "214b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Şƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ƒpƒ“ƒ`“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ƒLƒbƒN“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;GCŒã“]
[State -1, Stand Light Punch]
type = ChangeState
value = 251
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;GC‘O“]
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;GC‚Ó‚Á‚Æ‚Î‚µ
[State -1, Stand Light Punch]
type = ChangeState
value = 599
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;ƒWƒƒƒ“ƒv‚Ó‚Á‚Æ‚Î‚µ
[State -1, Stand Light Punch]
type = ChangeState
value = 611
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
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

;Stand Light Kick Fwd
[State -1, Stand Light Kick Fwd]
type = ChangeState
value = 236
triggerall = (Command = "a") && (Command = "holdfwd")
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
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 402
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 412
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
value = 432
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 441
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
;‹ó’†ãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;‹ó’†‹­ƒpƒ“ƒ`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†ãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl







