; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.













command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "dpsuper"
command = ~F,D,DF,~z
time = 15

[command]
name = "qcfsuper"
command = ~D,DF,F,~z
time = 15

[command]
name = "DarknessIllusion"
command = ~B,D,DB,~z
time = 15

[command]
name = "Requiem Teardrop"
command = ~D,DB,B,~z
time = 15

[command]
name = "dpsuper"
command = ~F,D,DF,z
time = 15

[command]
name = "qcfsuper"
command = ~D,DF,F,z
time = 15

[command]
name = "DarknessIllusion"
command = ~B,D,DB,z
time = 15

[command]
name = "Requiem Teardrop"
command = ~D,DB,B,z
time = 15
;-| Special Motions |------------------------------------------------------
[command]
name = "Soul Fist"
command = ~D,DF,F,~x
time = 15

[command]
name = "qcfk2"
command = ~D,DF,F,~a
time = 15

[command]
name = "qcfk"
command = ~D,DF,F,b
time = 15

[command]
name = "qcfk2"
command = ~D,DF,F,a
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,~b
time = 15

[command]
name = "qcbk2"
command = ~D,DB,B,~a
time = 15

[command]
name = "VectorDrain"
command = ~F,D,B,y
time = 15

[command]
name = "ClawThrow"
command = ~F,D,B,x
time = 15

[command]
name = "F.ShadowBlade"
command = ~F,D,DF,~y
time = 15

[command]
name = "L.ShadowBlade"
command = ~F,D,DF,~x
time = 15

[command]
name = "F.ShadowBlade"
command = ~F,D,DF,y
time = 15

[command]
name = "L.ShadowBlade"
command = ~F,D,DF,x
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,~y
time = 15

[command]
name = "qcfp2"
command = ~D,DF,F,~x
time = 15

[command]
name = "EX.ShadowBlade"
command = ~F,D,DF,F,x+y
time = 15


[command]
name = "EX.Soul Fist"
command = ~D,DF,F,x+y
time = 15

[command]
name = "F.Soul Fist"
command = ~D,DF,F,y
time = 15

[command]
name = "L.Soul Fist"
command = ~D,DF,F,x
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "airdashf"
command = UF, ~F, F
time = 10
[Command]
name = "airdashf"
command = UF, ~UF, UF
time = 10

[Command]
name = "airdashb"
command = UB, ~B, B
time = 10
[Command]
name = "airdashb"
command = UB, ~UB, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "fwdflight"
command = z+F
time = 1

[Command]
name = "backflight"
command = z+B
time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "down_c"
command = /$D,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
;[State -1, Air Dash]
;type = ChangeState
;value = 110
;triggerall = pos y <= -35
;trigger1 = command = "FF"
;trigger1 = statetype = a
;trigger1 = ctrl

;---------------------------------------------------------------------------

;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd" || command = "up"
trigger1 = (StateNo = 410)
trigger1 = movehit

[State -1, cardinal blade]
type = ChangeState
value = 3500
triggerall = command = "dpsuper"
triggerall=power>=1000
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, Darkness Illusion ]
type = ChangeState
value = 3400
triggerall = command = "DarknessIllusion"
triggerall=power=3000
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, Darkness Illusion ]
type = ChangeState
value = 3100
triggerall = command = "Requiem Teardrop"
triggerall=power>=1000
trigger1=statetype!=A&&ctrl

[State -1, soul phoenix ]
type = ChangeState
value = 3000
triggerall = command = "qcfsuper"
triggerall=power>=1000
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, Vectordrain weak ]
type = ChangeState
value = 1500
triggerall = command = "VectorDrain" || command = "ClawThrow"
triggerall = statetype!=A
trigger1=statetype=S&&ctrl

[State -1, EX.ShadowBlade ]
type = ChangeState
value = 1310
triggerall = command = "EX.ShadowBlade"
triggerall=power>500
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, F.ShadowBlade ]
type = ChangeState
value = 1305
triggerall = command = "F.ShadowBlade"
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, L.ShadowBlade ]
type = ChangeState
value = 1300
triggerall = command = "L.ShadowBlade"
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact


[State -1, Air EX Soul Fist]
type = ChangeState
value = 1216
triggerall = command = "EX.Soul Fist"
triggerall = statetype = A
triggerall=power>500
triggerall = NumHelper(1201)<1
triggerall = NumHelper(1221)<1
trigger1=statetype=A&&ctrl

[State -1, AIR Light Soul Fist ]
type = ChangeState
value = 1214
triggerall = command = "F.Soul Fist"
triggerall = statetype = A
triggerall = NumHelper(1201)<1
triggerall = NumHelper(1221)<1
trigger1=statetype=A&&ctrl

[State -1, AIR Light Soul Fist ]
type = ChangeState
value = 1212
triggerall = command = "L.Soul Fist"
triggerall = statetype = A
triggerall = NumHelper(1201)<1
triggerall = NumHelper(1221)<1
trigger1=statetype=A&&ctrl

[State -1, EX Soul Fist]
type = ChangeState
value = 1208
triggerall = command = "EX.Soul Fist"
triggerall = statetype != A
triggerall=power>500
triggerall = NumHelper(1201)<1
triggerall = NumHelper(1221)<1
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, Light Soul Fist]
type = ChangeState
value = 1200
triggerall = command = "L.Soul Fist"
triggerall = statetype != A
triggerall = NumHelper(1201)<1
triggerall = NumHelper(1221)<1
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, Fierce Soul Fist]
type = ChangeState
value = 1205
triggerall = command = "F.Soul Fist"
triggerall = statetype != A
triggerall = NumHelper(1201)<1
triggerall = NumHelper(1221)<1
trigger1=statetype!=A&&ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact

[State -1, Unique Tactic: Dash Flight Drill Attack]
type = changestate
value =1104
triggerall=command="z"
triggerall = var(37) >= 1
triggerall=stateno!=[50,52]
triggerall = !AIlevel
triggerall = roundstate = 2 && stateno != 1104
triggerall= statetype=A&& ctrl
triggerall = stateno!=52
trigger1=stateno!=100||stateno!=105
trigger2=stateno=40000||stateno=50000
trigger2=stateno=600&&movecontact
trigger3=stateno=610&&movecontact
trigger4=stateno=630&&movecontact
trigger5=stateno=640&&movecontact

[State -1, Unique Tactic: Dash Flight Back]
type = changestate
value =1105
triggerall=command="holdback"&&command="z"
triggerall = var(37) >= 1
triggerall = !AIlevel
triggerall = roundstate = 2 && (stateno != [1100, 1105])
triggerall= statetype=A && ctrl|| statetype = S && ctrl
triggerall = stateno!=52
trigger1=stateno!=105

[State -1, Unique Tactic: Dash Flight Forward]
type = changestate
value =1100
triggerall=command="z"
triggerall = var(37) >= 1
triggerall = !AIlevel
triggerall = roundstate = 2 && (stateno != [1100, 1105])
triggerall= statetype=A && ctrl|| statetype = S && ctrl
triggerall = stateno!=52
trigger1=stateno!=100||stateno!=105

;throw
[State -1, claw throw]
type = changestate
value = 830
trigger1 = command = "ClawThrow"
trigger1  = statetype = S && ctrl

[State -1, slam]
type = changestate
value = 800
triggerall = !AILevel
trigger1 = command="c"||command="c" && command = "holdback"
trigger1  = statetype = S && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1=stateno!=52

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "s"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6



;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick 2]
type = ChangeState
value = 245
triggerall = command="b"&&command="holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact



;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------

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

;uniq, no life
[State -1, AI Range]
type = ChangeState
value = 1200
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * 2 > random
triggerall = p2bodydist x > 100 && statetype != A
;triggerall = Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 100
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

;[State -1, AI Grab]
;type = ChangeState
;value = 1500
;triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
;triggerall = AILevel * AILevel * AILevel> random
;triggerall = p2bodydist x < 20 && statetype != A
;trigger1 = ctrl

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
value = 1305
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------