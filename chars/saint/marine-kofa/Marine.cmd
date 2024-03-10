


;===========================================================================
; Button Remapping
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===========================================================================
; Default Values
;===========================================================================
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;===========================================================================
;Super Motions
;===========================================================================

[Command]
name = "Strong hyper Eagle Tough Lash"
command = ~D, F, D, F, c
time = 30

[Command]
name = "Ry� Se� Ken"   ;Same name as above
command = ~D, F, D, F, c
time = 30

[Command]
name = "meteoros"
command = ~D, F, D, F, z
time = 30
[Command]
name = "ryuseiken_Air"
command = ~D, F, D, F, z
time = 30

[Command]
name = "Ry� Se� Ken1"
command = ~D, F, D, F, x
time = 30
[Command]
name = "Ry� Se� Ken1"
command = ~D, F, D, F, y
time = 30

[Command]
name ="ataque"
command = ~D, F, D, F, a
time = 30
[Command]
name ="ataque"
command = ~D, F, D, F, b
time = 30



;[Command]
;name = "Eagle Toe Flash"   ;Same name as above
;command = ~B, DB, D, DF, F, a
;time = 20


;===========================================================================
;Special Motions
;===========================================================================
; Light FIREBALL



[Command]
name ="Meteorosair"
command = ~D,DF,F, x
time = 30
[Command]
name ="Meteorosair2"
command = ~D,DF,F, y
time = 30

[Command]
name = "Light FIREBALL_x"
command = ~D,DF,F, x
time = 30
[Command]
name = "m�dium FIREBALL_y"
command = ~D,DF,F, y
time = 30

;[Command]
;name = "Strong FIREBALL_z"
;command = ~D,DB,B, z
;time = 30

;===========================================================================
 ;Eagle Tough Lash
;[Command]
;name = "Light Eagle Tough Lash_a"
;command = ~D, DB, B, a
;time = 30

[Command]
name = " m�dium Eagle Tough Lash_b"
command = ~D, DF, F, a
time = 30
[Command]
name =  "Strong Eagle Tough Lash_c"
command = ~D, DF, F, b
time = 30

;===========================================================================
;Eagle Toe Flash
;[Command]
;name = "Light Eagle Toe Flash_a"
;command = ~D, DF, F, a
;time = 30

;[Command]
;name = "m�dium Eagle Toe Flash_b"
;command = ~D, DF, F, b
;time = 30

;[Command]
;name =  "Strong Eagle Toe Flash_c"
;command = ~D, DF, F, c
;time = 30

 ;===========================================================================
 
;[Command]
;name = "Light agle ruch_a"
;command = ~D, DB, B, a
;time = 30

[Command]
name = "mediume agle ruch_b"
command = ~D, DB, B, a
time = 30

[Command]
name =  "Strong agle ruch_c"
command = ~D, DB, B, b
time = 30

;---------------------------
;Carika cosmo
;---------------------------
;[Command]
;name = "cosmo"
;command = c+z
;time = 1


[Command]
name = "holdcosmo"
command = /$c+z
time = 1

;===========================================================================
;Double Tap
;===========================================================================
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;===========================================================================
;2/3 Button Combination
;===========================================================================
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
;[Command]
 ;name =  "HELPER 1";Required (do not remove)
;command = a+b
;time = 1
;===========================================================================
;Dir + Button
;===========================================================================
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1
;===========================================================================
;Single Button
;===========================================================================

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
;===========================================================================
;Hold Dir
;===========================================================================

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



;===========================================================================
; Statedef marine
;===========================================================================

[Statedef -1]

;==========================================================================
;SAINT KO SAINT KO SAINT KO SAINT KO SAINT KO SAINT KO SAINT KO SAINT KO SAINT KO
;===========================================================================

;Eagle Toe Flash
;d�sactiv�
;[State -1,"Eagle Toe Flash" ]
;type = ChangeState
;value = 4000
;triggerall = command = "Eagle Toe Flash"
;triggerall = power >= 3000
;trigger1 = life <= 300
;trigger1 = statetype = S
;trigger1 = ctrl


;===========================================================================
; FURY
;===========================================================================

;huper Ry� Se� Ken  vitesse du son
[State -1, Ry� Se� Ken]
type = ChangeState
value = 3020
triggerall = command = "Ry� Se� Ken1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;huper Ry� Se� Ken  2 foie la vitesse du son
[State -1, Ry� Se� Ken]
type = ChangeState
value = 3000
triggerall = command = "Ry� Se� Ken"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;Meteoros, (ryuseiken Ken)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "meteoros"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;Meteoros Aereo (ryuseiken air)
[State -1]
type = ChangeState
value = 3300
triggerall = command = "ryuseiken_Air"
triggerall = power >= 2000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1, "Strong hyper Eagle Tough Lash"]
type = ChangeState
value = 3063
triggerall = command = "Strong hyper Eagle Tough Lash"
triggerall = power >= 3000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Ataque furioso
[State -1]
type = ChangeState
value = 9997
triggerall = command = "ataque"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Meteoro Air]
type = ChangeState
value = 1080
triggerall = command = "Meteorosair"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


[State -1, Meteoro Air]
type = ChangeState
value = 1085
triggerall = command = "Meteorosair2"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



;===========================================================================
;===========================================================================
;Volcanic eruption  d�sactiv�
;===========================================================================

;medium eagle ruch
[State -1, medium eagle ruch]
type = ChangeState
value = 1053
triggerall = command = "mediume agle ruch_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;Strong eagle ruch
[State -1,Strong  eagle ruch]
type = ChangeState
value = 1054
triggerall = command = "Strong agle ruch_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;===========================================================================
;  FIREBALLS
;===========================================================================
;Light Fireball
[State -1, Light Fireball]
type = ChangeState
triggerall = command = "Light FIREBALL_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
value = 1000
;---------------------------------------------------------------------------
;mediom Fireball
[State -1, medium Fireball]
type = ChangeState
triggerall = command = "m�dium FIREBALL_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
value = 1010

;---------------------------------------------------------------------------
;m�dium Eagle Tough Lash
[State -1, m�dium Eagle Tough Lash]
type = ChangeState
value = 1211
triggerall = command = " m�dium Eagle Tough Lash_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;Strong Eagle Tough Lash
[State -1, Strong Eagle Tough Lash]
type = ChangeState
value = 1212
triggerall = command = "Strong Eagle Tough Lash_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact



;===========================================================================
;ACTION
;===========================================================================
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


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl




;===========================================================================
; COUP DE BAS
;===========================================================================


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
value = 405
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

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

;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------


