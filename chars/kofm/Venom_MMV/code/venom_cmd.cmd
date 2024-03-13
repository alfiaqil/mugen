; {character name}'s CMD file

;-----------------------------------------------------

;---------------------------------------------------------------------------
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1



;---------------------------------------------------------------------------
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1

[Command]
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Command]
name = "Hyper 1"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, x+z
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, x+z
time = 40

[Command]
name = "Hyper 2"
command = ~D, DB, B, y+z
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, a+b
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, b+c
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, a+c
time = 40

[Command]
name = "Hyper 3"
command = ~D, DF, F, c+a
time = 40

[Command]
name = "Hyper 4"
command = ~D, DF, F, z+c
time = 40

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Command]
name = "Special 1"
command = ~D,DF,F, x
time = 20

[Command]
name = "Special 2"
command = ~D,DF,F, y
time = 20

[Command]
name = "Special 3"
command = ~D,DF,F, z
time = 20

[Command]
name = "slash"
command = ~D,DB,B, x
time = 20

[Command]
name = "slash2"
command = ~D,DB,B, y
time = 20

[Command]
name = "slash3"
command = ~D,DB,B, z
time = 20

[Command]
name = "tendril1"
command = ~D,DB,B, a
time = 20

[Command]
name = "tendril2"
command = ~D,DB,B, b
time = 20

[Command]
name = "tendril3"
command = ~D,DB,B, c
time = 20

[Command]
name = "pound 1"
command = ~D,DF,F, a
time = 20

[Command]
name = "pound 2"
command = ~D,DF,F, b
time = 20

[Command]
name = "pound 3"
command = ~D,DF,F, c
time = 20

[Command]
name = "camo"
command = x+a
time = 20

[Command]
name = "counter"
command = z+c
time = 20

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1


;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;===================<DIR>===================
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

[Statedef -1]


;===========================================================================


;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------
[State -1, Venom Frenzy]
type = ChangeState
value = 3400
triggerall = command = "Hyper 1"
triggerall = power >= 1000
trigger1 = Statetype = A & ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Symbiote Coffin]
type = ChangeState
value = 3500
triggerall = command = "Hyper 2"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Symbiote Coffin]
type = ChangeState
value = 3000
triggerall = command = "Hyper 1"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Varnage]
type = ChangeState
value = 3200
triggerall = command = "Hyper 3"
triggerall = power >= 2000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Madness]
type = ChangeState
value = 3300
triggerall = command = "Hyper 4"
triggerall = power >= 3000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
[State -1, Symbiote Slug]
type = ChangeState
value = 1000
triggerall = command = "Special 1"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1,  Symbiote Slug air]
type = ChangeState
value = 1005
triggerall = command = "Special 1"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype = A && ctrl
trigger1 = Statetype != S && ctrl
trigger1 = Statetype != C && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != S) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != C) && (HitdefAttr = SC, NA) && (MoveContact)




;------------------------------------------------------

[State -1, Web Ball]
type = ChangeState
value = 1010
triggerall = command = "Special 2"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Web Ball air ]
type = ChangeState
value = 1011
triggerall = command = "Special 2"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype = A && ctrl
trigger1 = Statetype != S && ctrl
trigger1 = Statetype != C && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != S) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != C) && (HitdefAttr = SC, NA) && (MoveContact)


;---------------------------------------------------------------

[State -1, symbiote mass]
type = ChangeState
value = 1020
triggerall = command = "Special 3"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Symbiote Mass air ]
type = ChangeState
value = 1021
triggerall = command = "Special 3"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype = A && ctrl
trigger1 = Statetype != S && ctrl
trigger1 = Statetype != C && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != S) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (StateType != C) && (HitdefAttr = SC, NA) && (MoveContact)


;-------------------------------------------------

[State -1, Web throw L]
type = ChangeState
value = 1100
triggerall = command = "slash"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Web throw M]
type = ChangeState
value = 1101
triggerall = command = "slash2"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Web throw H]
type = ChangeState
value = 1102
triggerall = command = "slash3"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)






[State -1, Tendril Grab L]
type = ChangeState
value = 1200
triggerall = command = "tendril1"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Tendril Grab M]
type = ChangeState
value = 1210
triggerall = command = "tendril2"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Tendril Grab H]
type = ChangeState
value = 1220
triggerall = command = "tendril3"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Ground Pound L]
type = ChangeState
value = 1300
triggerall = command = "pound 1"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Ground Pound M]
type = ChangeState
value = 1302
triggerall = command = "pound 2"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Ground Pound H]
type = ChangeState
value = 1304
triggerall = command = "pound 3"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Camo]
type = ChangeState
value = 1400
triggerall = Var(24)=0
triggerall = command = "camo"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Shield Counter S]
type = ChangeState
value = 950
triggerall = (roundstate = 2)
trigger1 = command = "counter"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 150
trigger1 = time < 11

[State -1, Shield Counter C]
type = ChangeState
value = 951
triggerall = (roundstate = 2)
triggerall = command = "counter"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 152
trigger1 = time < 11

[State -1, Shield Counter A]
type = ChangeState
value = 952
triggerall = (roundstate = 2)
triggerall = command = "counter"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 154
trigger1 = time < 11
;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(0) <=0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Slam]
type = ChangeState
value = 820
triggerall = var(0) <=0
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = var(0) <=0
triggerall = command = "holdfwd"
triggerall = (command = "c") || (command = "z")
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50



[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = var(0) <=0
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = var(0) <=0
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

[State -1, web swing fwd]
type = ChangeState
value = 107
triggerall = (roundstate = 2)
triggerall = StateType = A
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "FF"

[State -1, web swing bck]
type = ChangeState
value = 108
triggerall = (roundstate = 2)
triggerall = StateType = A
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(0) <=0
triggerall = stateno != 195
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = var(0) <=0
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 220
value = 700

;---------------------------------------------------------------------------
; Standing basics
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holdfwd") && (statetype != A) 
triggerall = (command = "x") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl

;Alt Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = (command = "x") && (command = "holdfwd") && (statetype != A) 
triggerall = (command = "x") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holdfwd") && (statetype != A) 
triggerall = (command = "y") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;Alt Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 215
triggerall = (command = "y") && (command = "holdfwd") && (statetype != A) 
triggerall = (command = "y") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)
trigger6 = movecontact
trigger6 = (stateno = 210)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holdfwd") && (statetype != A) 
triggerall = (command = "z") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;Alt Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 225
triggerall = (command = "z") && (command = "holdfwd") && (statetype != A) 
triggerall = (command = "z") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holdfwd") && (statetype != A) 
triggerall = (command = "a") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

[State -1,Alt Stand Light Kick]
type = ChangeState
value = 235
triggerall = (command = "a") && (command = "holdfwd") && (statetype != A) 
triggerall = (command = "a") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)
trigger4 = movecontact
trigger4 = (stateno = 230)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holdfwd") && (statetype != A) 
triggerall = (command = "b") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

[State -1,Alt Stand Medium Kick]
type = ChangeState
value = 245
triggerall = (command = "b") && (command = "holdfwd") && (statetype != A) 
triggerall = (command = "b") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)
trigger6 = movecontact
trigger6 = (stateno = 240)

;---------------------------------------------------------------------------
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holdfwd") && (statetype != A) 
triggerall = (command = "c") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)


[State -1,Alt Stand Hard Kick]
type = ChangeState
value = 255
triggerall = (command = "c") && (command = "holdfwd") && (statetype != A) 
triggerall = (command = "c") && (command != "holddown") && (statetype != A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype = C) 
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype = C) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype = C) 
trigger1 = ctrl = 1
; (chain combos)
trigger2 = ((stateno = [200, 440])) && movecontact = 1 && stateno != 420 && stateno !=220 && stateno !=250 && var(18) < 7


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype = C) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype = C) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype = C) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) 
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = command != "holddown"
triggerall = (command = "c") && (statetype = A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

; Air Hard Kick
[State -1, Alt Air Hard Kick]
type = ChangeState
value = 655
triggerall = command = "holddown"
triggerall = (command = "c") && (statetype = A) 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(0)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(0)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


;Extra stuff if you want to use just remove the ;
;[State -1, FM Dash Forward]
;type = ChangeState
;value = 2005
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2500)
;trigger1 = Command = "FF"

;[State -1, FM Dash Back]
;type = ChangeState
;value = 2006
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2999)
;trigger1 = Command = "BB"

;[State -1, FM LP]
;type = ChangeState
;value = 2010
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "x"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MP]
;type = ChangeState
;value = 2011
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "y"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SP]
;type = ChangeState
;value = 2012
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "z"
;trigger1= Movetype = I

;[State -1, FM LK]
;type = ChangeState
;value = 2013
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "a"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MK]
;type = ChangeState
;value = 2014
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "b"
;trigger1= (Movetype = I)
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SK]
;type = ChangeState
;value = 2015
;triggerall=var(0)  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "c"
;trigger1= Movetype = I

;[State -1, Guard Push Stand]
;type = ChangeState
;value = 6300
;triggerall = command = "guardpush" && statetype = S
;trigger1 = stateno = [150,153]

;[State -1, Guard Push Crouch]
;type = ChangeState
;value = 6310
;triggerall = command = "guardpush" && statetype = C
;trigger1 = stateno = [150,153]


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
value = 100
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
value = 1000
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------