
;==============================================================================================
;
; COMMANDS DEFINITION
;
;==============================================================================================

;----------------------------------------------------------------------------------------------
; a        -> light kick
; b        -> heavy kick
; c        -> light punch + light kick
; x        -> light punch
; y        -> heavy punch
; z        -> heavy punch + heavy kick
; start    -> taunt
;----------------------------------------------------------------------------------------------



;-| Super Motions |----------------------------------------------------------------------------
;-(Magical Union ) --------------------------------
;[Command]
;name = "Magical Union"
;command = ~D, B, D, B, a+x
;time = 40



;-(Hyper DM Rush SDM ) ---------------


[Command]
name = "HDMR_SDM"
command = ~D, F, D, F, c
time = 30


[Command]
name = "DWM"
command = ~D, B, D, B, c
time = 30

;-(DM Atk ) ---------------
[Command]
name = "DMA_Y"
command = ~D, F, D, F, y
time = 30

[Command]
name = "DMA_X"
command = ~D, F, D, F, x
time = 30

;-(DM Rush) ---------------
[Command]
name = "DMR_X"
command = ~D, B, D, B, x
time = 30
[Command]
name = "DMR_Y"
command = ~D, B, D, B, y
time = 30

[Command]
name = "counter"
command = ~D, F, D, F, a
time = 30
[Command]
name = "counter"
command = ~D, F, D, F, b
time = 30

[Command]
name = "MMP"
command = ~D, F, D, F, z
time = 30





;-| Special Motions |--------------------------------------------------------------------------
;-(Metamorphosis)-----------------------


;-(Teleport)-----------------------
[Command]
name = "T_B"
command = ~D, D, b
time = 30

[Command]
name = "T_A"
command = ~D, D, a
time = 30

;-(DM Sphere)----------------------------
[Command]
name = "DMS_Y"
command = ~D, DF, F, y
time = 30

[Command]
name = "DMS_X"
command = ~D, DF, F, x
time = 30

[Command]
name = "DMSB_Y"
command = ~D, DB, B, y
time = 30

[Command]
name = "DMSB_Y"
command = ~D, DB, B, x
time = 30

;-(DM Geiser)----------------------------
[Command]
name = "GU_Y"
command = ~F, D, DF, y
time = 30

[Command]
name = "GU_X"
command = ~F, D, DF, x
time = 30

;-(kicko)----------------------------
[Command]
name = "kicko_A"
command = ~D, DF, F, a
time = 30

[Command]
name = "kicko_B"
command = ~D, DF, F, b
time = 30

;-(Rush)----------------------------
[Command]
name = "rush_A"
command = ~D, DB, B, a
time = 30

[Command]
name = "rush_B"
command = ~D, DB, B, b
time = 30

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

[Command]
name = "AI desactivado"
command = a+c
time = 1

[Command]
name = "AI Prueba"
command = a+z
time = 1

[Command]
name = "longjump"
command = D,U
time = 30

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
name = "hold_a"
command = /$a
[Command]
name = "hold_b"
command = /$b
[Command]
name = "hold_x"
command = /$x
[Command]
name = "hold_y"
command = /$y
[Command]
name = "hold_c"
command = /$c
[Command]
name = "hold_z"
command = /$z

[Command]
name = "hold_A"
command = /$a
[Command]
name = "hold_B"
command = /$b
[Command]
name = "hold_X"
command = /$x
[Command]
name = "hold_Y"
command = /$y
[Command]
name = "hold_C"
command = /$c
[Command]
name = "hold_Z"
command = /$z

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

;-| Hold Button |--------------------------------------------------------------

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
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
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

[Command]
name = "charge"
command = x+b
time = 1


;-| Double Tap |-------------------------------------------------------------------------------

[Command]
name 	= "FF"     ; Required (do not remove)
command = F, F
time 	= 15

[Command]
name 	= "BB"     ; Required (do not remove)
command = B, B
time 	= 15

[Command]
name 	= "DU"
command = $D, $U
time 	= 10


;-| 2/3 Button Combination |-------------------------------------------------------------------

[Command]
name 	= "recovery";Required (do not remove)
command = x+a
time 	= 1

;==============================================================================================
;
; STATE ENTRY
;
;==============================================================================================

[Statedef -1]

;=================
; Supers / Hypers
;=================

; HYPER DM rush
;----------------
[State -1, HDMR]
type = ChangeState
value = 1411
triggerall = command = "HDMR_SDM"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Diffusion Wave Mottion
;----------------
[State -1, DWM]
type = ChangeState
value = 1300
triggerall = command = "DWM"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; DM ATK Y
;----------------
[State -1, DMAY]
type = ChangeState
value = 1301
triggerall = command = "DMA_Y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; DM ATK X
;----------------
[State -1, DMAX]
type = ChangeState
value = 1302
triggerall = command = "DMA_X"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, DMRXY]
type = ChangeState
value = 1409
triggerall = command = "counter"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; DM rush
;----------------
[State -1, DMRXY]
type = ChangeState
value = 1400
triggerall = command = "DMR_Y" || command = "DMR_X"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;==========
; Specials
;==========

;Metamorphosis
;----------------
[State -1, MMP]
type = ChangeState
value = 2222
triggerall = command = "MMP"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;Teleport
;----------------
[State -1, Teleport Back]
type = ChangeState
value = 702
triggerall = var(59) = 0
triggerall = !ishelper
triggerall = command = "T_A" && var(50) != 1 && StateType != A
trigger1 = ctrl
trigger2 = (StateNo = 702 || StateNo = 702) && MoveContact
trigger3 = StateNo = [100, 101]

[State -1, Teleport Foward]
type = ChangeState
value = 703
triggerall = var(59) = 0
triggerall = !ishelper
triggerall = command = "T_B" && var(50) != 1 && StateType != A
trigger1 = ctrl
trigger2 = (StateNo = 703 || StateNo = 703) && MoveContact
trigger3 = StateNo = [100, 101]

; DM Geiser
;----------------
[State -1, DM geiser Light]
type = ChangeState
value = 803
triggerall = command = "GU_X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, DM geiser Strong]
type = ChangeState
value = 804
triggerall = command = "GU_Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; DM Sphere
;----------------
[State -1, DM Sphere Light]
type = ChangeState
value = 800
triggerall = command = "DMS_X"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, DM Sphere Strong]
type = ChangeState
value = 801
triggerall = command = "DMS_Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


[State -1, DM Sphere Up]
type = ChangeState
value = 802
triggerall = command = "DMSB_Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


; kicko
;----------------
[State -1, kicko]
type = ChangeState
value = 540
triggerall = command = "kicko_B"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; kicko
;----------------
[State -1, kicko]
type = ChangeState
value = 543
triggerall = command = "kicko_A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; rush
;----------------
[State -1, rush]
type = ChangeState
value = 554
triggerall = command = "rush_B"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; rush
;----------------
[State -1, rush]
type = ChangeState
value = 550
triggerall = command = "rush_A"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;================
; Standard Moves
;================

; Run
;----
[State -1, run]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "FF" && var(50) != 1
trigger1 = statetype != A && ctrl

; Hop Back
;---------
[State -1, hop back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = command = "BB" && var(50) != 1
trigger1 = statetype != A && ctrl

; Roll Back
;----------
[State -1, roll back]
type = ChangeState
value = 115
triggerall = var(59) = 0
triggerall = command ="holdback" && (statetype != A) 
triggerall = (command = "x" && command ="a") || command = "z"
trigger1 = ctrl && var(50) != 1 

; Roll Forward
;-------------
[State -1, roll fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = (command = "x" && command ="a") || command = "z"
trigger1 = ctrl && var(50) != 1


; Taunt
;------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start" && ctrl && var(50) != 1
trigger1 = StateType != A

; Recover from fall
;------------------
[State -1, Recover From Fall]
type = ChangeState 
value = 5201
triggerall = var(59) = 0
triggerall = var(50) != 1 && CanRecover && command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= 0 && alive && (stateno = [5050,5060])

;====================
; Additionnal Attacks
;====================

; Chained Kick
;-------------


; Rush
;-----
[State -1, Rush]
type = ChangeState
value = 510
triggerall = (command = "y" && command ="b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Blow Away Attack
;-----------------
[State -1, Blow Away Attack]
type = ChangeState
value = 520
triggerall = (command = "y" && command ="b") || command = "c"
trigger1 = StateType = A && ctrl && var(50) != 1

;====================
; Throw attack
;====================

; Throw
;--------------
;[State -1]
;type = ChangeState
;value = 600
;triggerall = command = "x" && command ="holdfwd" && P2BodyDist X <= 12 && var(50) != 1
;trigger1 = StateType = S && ctrl && stateno != 100
;trigger1 = P2StateType != A && P2MoveType != H



;==================
; Standing Attacks
;==================

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

;Stand Light Kick Fwd
[State -1, Stand Light Kick Fwd]
type = ChangeState
value = 236
triggerall = (Command = "a") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact
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


;==================
; Crouching Attacks
;==================

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

;==================
; Aerial Attacks
;==================

; Air Light Punch Diag
;---------------------
[State -1, air light punch]
type = ChangeState
value = 405
triggerall = var(59) = 0
triggerall = command = "x" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Light Punch
;----------------
[State -1, air light punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x" && var(50) != 1
trigger1 = StateType = A && ctrl

; Air Light Kick Diag
;--------------------
[State -1, air light kick]
type = ChangeState
value = 415
triggerall = var(59) = 0
triggerall = command = "a" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Light Kick
;---------------
[State -1, air light kick]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "a" && var(50) != 1
trigger1 = StateType = A && ctrl

; Air Fierce Punch Diag
;----------------------
[State -1, air fierce punch]
type = ChangeState
value = 425
triggerall = var(59) = 0
triggerall = command = "y" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Fierce Punch
;-----------------
[State -1, air fierce punch]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "y" && var(50) != 1
trigger1 = StateType = A && ctrl

; Air Fierce Kick Diag
;---------------------
[State -1, air fierce kick]
type = ChangeState
value = 435
triggerall = var(59) = 0
triggerall = command = "b" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Fierce Kick
;----------------
[State -1, air fierce kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "b" && var(50) != 1
trigger1 = StateType = A && ctrl

[State -1]
type = Assertspecial
trigger1 = stateno >= 1300 && movetype = A
flag= nojugglecheck
ignorehitpause = 1
