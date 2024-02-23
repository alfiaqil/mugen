;Criado no Z-CharCAD
;www.zcharcad.kit.net
;zmugen@yahoo.com.br
;----------------------------------

;Criado no Z-CharCAD
;www.zcharcad.kit.net
;zmugen@yahoo.com.br
;----------------------------------
;Command File for Kanon by TonyADV
;===========================================================================
; Super Motions
;===========================================================================

[Command]
name = "1000pugni3"
command = ~D, F, D, F, c
time = 30

[Command]
name = "1000pugni"
command = ~D, F, D, F, z
time = 30

[Command]
name = "dragon power"
command = ~D, F, D, F, x
time = 30
[Command]
name = "dragon power"
command = ~D, F, D, F, y
time = 30

;[Command]
;name = "Triangolo"
;command = ~D, F, D, F, c
;time = 30
;[Command]
;name = "apocalise"
;command = ~D, F, D, B, c
;time = 30
;[Command]
;name = "esplosione galactica A"
;command = ~D, B, D, B, c
;time = 30
;[Command]
;name = "mega esplosione galactica"
;command = ~D, B, D, B, z
;time = 30
;[Command]
;name = "esplosione galactica B"
;command = ~D, F, D, F, a
;time = 30
;[Command]
;name = "esplosione galactica B"
;command = ~D, F, D, F, b
;time = 30






;===========================================================================
; Special Motions
;===========================================================================
;FIREBALL LIGHT
;[Command]
;name = "fireball"
;command = ~D, DF, F, x
;time = 30

[Command]
name = "fireball3"
command = ~D, DF, F, x
time = 30
[Command]
name = "fireball3"
command = ~D, DF, F, y
time = 30

[Command]
name = "AIRfireball"
command = ~D, DF, F, x
time = 30
[Command]
name = "AIRfireball"
command = ~D, DF, F, y
time = 30

[Command]
name = "100calci"
command = ~D, DB, B, x
time = 30
[Command]
name = "100calci"
command = ~D, DB, B, y
time = 30



;===========================================================================
; Double Tap Motions
;===========================================================================
[Command]
name = "FF"
command = F, F
time = 10


[Command]
name = "BB"
command = B, B
time = 10

;===========================================================================
; 2/3 button combinations
;===========================================================================
[Command]
name = "recovery"
command = 
time = 1

;CARICA COSMO
[Command]
name = "charge"
command = 
time = 1

;Settimo Senso
[Command]
name = "recover"
command = 
time = 1


[Command]
name = "charge 1"
command = 
time = 1

;SUPER GUARD
[Command]
name = "mega_block"
command = c
time = 50

;===========================================================================
; Directions + Buttons
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
; Singular Buttons
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

;PROVOCAZIONE
[Command]
name = "start"
command = s
time = 1

;===========================================================================
; Hold Direction
;===========================================================================
[Command]
name = "DU"
command = D, U
time = 10


[Command]
name = "UF"
command = UF
time = 1


[Command]
name = "UB"
command = UB
time = 1


[Command]
name = "DUF"
command = D, UF
time = 10


[Command]
name = "DUB"
command = D, UB
time = 10


[Command]
name = "up"
command = U
time = 1


[Command]
name = "holdfwd"
command = /$F
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

;-----------------------
;superguard
[Command]
name = "holdback3"
command = /$B   
time = 50

;------------------------
;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|State Entry|/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
[Statedef -1]

;===========================================================================
; SPECIAL
;===========================================================================

;1000 pugni
[State -1, [state -1]
type = changestate
value = 4500;3110
triggerall = command = "1000pugni3"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------
;1000 pugni
[State -1, [state -1]
type = changestate
value = 32000
triggerall = command = "1000pugni"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;time = 45
;-------------------------------
;tringolo d'oro
;[State -1, [State -1]
;type = ChangeState
;value = 70000
;triggerall = command = "Triangolo"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact


;-------------------------------
;Potere del Dragone
[State -1, [State -1]
type = ChangeState
value = 3000;40000
triggerall = command = "dragon power"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;------------------------------
;explosion galactica A
;[State -1, [State -1]
;type = ChangeState
;value = 65000
;triggerall = command = "esplosione galactica A"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact


;------------------------------
;explosion galactica B
;[State -1, [State -1]
;type = ChangeState
;value = 60000
;triggerall = command = "esplosione galactica B"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact


;------------------------------
; mega explosion galactica
;[State -1, [State -1]
;type = ChangeState
;value = 80000
;triggerall = command = "mega esplosione galactica"
;triggerall = power >= 2000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact


;------------------------------
;Apocalise
;[State -1, [State -1]
;type = ChangeState
;value = 65500
;triggerall = command = "apocalise"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
 


;ricarica cosmo A
;[State -1, [State -1]
;type = ChangeState
;value = 730000
;triggerall = var(1) = 0
;triggerall = statetype = S
;triggerall = Power < 3000
;triggerall = ctrl = 1
;trigger1 = command = "charge"
;trigger1 = command = "charge 1"


;ricarica cosmo B
;[State -1, [State -1]
;type = ChangeState
;value = 730001
;triggerall = var(1) = 1
;triggerall = statetype = S
;triggerall = Power < 3000
;triggerall = ctrl = 1
;trigger1 = command = "charge"
;trigger1 = command = "charge 1"


;Settimo Senso A
;[State -1, [State -1]
;type = ChangeState
;value = 29990
;triggerall = var(1) = 0
;triggerall = command = "recover"
;triggerall = power >= 3000
;trigger1 = statetype != A
;trigger1 = ctrl = 1


;Settimo Senso B
;[State -1, [State -1]
;type = ChangeState
;value = 29999
;triggerall = var(1) = 1
;triggerall = command = "recover"
;triggerall = power >= 3000
;trigger1 = statetype != A
;trigger1 = ctrl = 1


;Fireball Air (Strong)
[State -1, [State -1]
type = ChangeState
value = 1110
triggerall      = command = "AIRfireball"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact




;Fireball (light)
;[State -1, [State -1]
;type = ChangeState
;value = 131200
;triggerall = command = "fireball"
;triggerall = var(1) = 0
;trigger1 = statetype != A
;trigger1 = ctrl = 1


;Fireball B (light)
;[State -1, [State -1]
;type = ChangeState
;value = 131210
;triggerall = command = "fireball"
;triggerall = var(1) = 1
;trigger1 = statetype != A
;trigger1 = ctrl = 1


;Fireball (medium)
;[State -1, [State -1]
;type = ChangeState
;value = 121200
;triggerall = command = "fireball2"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact



;Fireball B (medium)
;[State -1, [State -1]
;type = ChangeState
;value = 121210
;triggerall = command = "fireball2"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact



;Fireball (Strong)
[State -1, [State -1]
type = ChangeState
value = 101200
triggerall = command = "fireball3"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1


;Fireball B (Strong)
;[State -1, [State -1]
;type = ChangeState
;value = 101210
;triggerall = command = "fireball3"
;triggerall = var(1) = 1
;trigger1 = statetype != A
;trigger1 = ctrl = 1
     


;100 calci
[State -1, [State -1]
type = ChangeState
value = 14505
triggerall = command = "100calci"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




;===========================================================================
; Basics
;===========================================================================
;---------------------------------------------------------------------------
; RunFwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = ((command = "FF") && (statetype = S) && (ctrl = 1))


;---------------------------------------------------------------------------
; Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = ((command = "BB") && (statetype = S) && (ctrl = 1))


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
;Mega block
;[State -1, [State -1]
;type = ChangeState
;value = 1400
;triggerall = command = "mega_block"
;triggerall = command = "holdback"
;trigger1 = statetype != A
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; Stand C
[State -1, Stand C]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Jump B
[State -1, Jump B]
type = ChangeState
value = 640
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 206
triggerall = command = "holdfwd"
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
value = 195
triggerall = command = "start"
trigger1 = ((statetype != A) && (ctrl = 1))

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
value = 442
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

; Jump X
[State -1, Jump X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = ((statetype = A) && (ctrl = 1)) || ((stateno = [601,612]) && (MoveContact)) 

; Jump Y
[State -1, Jump Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jump C
[State -1, Jump C]
type = ChangeState
value = 650
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; Jump A
[State -1, Jump A]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
