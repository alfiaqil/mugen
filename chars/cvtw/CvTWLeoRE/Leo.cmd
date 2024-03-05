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
name = "hr"
command = ~F,D,DF,z
time = 15

[command]
name = "gd"
command = ~F,D,B,z
time = 15

[command]
name = "nw"
command = ~D,DF,F,z
time = 15
;-| Special Motions |------------------------------------------------------
[command]
name = "exmars"
command = ~F,D,DF,x+y
time = 15

[command]
name = "mars2"
command = ~F,D,DF,~y
time = 15

[command]
name = "mars"
command = ~F,D,DF,~x
time = 15

[command]
name = "mars2"
command = ~F,D,DF,y
time = 15

[command]
name = "mars"
command = ~F,D,DF,x
time = 15

[command]
name = "exstomp"
command = ~30$D,U,a+b
time = 25

[command]
name = "stomp"
command = ~30$D,U,~x
time = 25

[command]
name = "stomp2"
command = ~30$D,U,~a
time = 25

[command]
name = "stomp3"
command = ~30$D,U,~b
time = 25

[command]
name = "stomp"
command = ~30$D,U,x
time = 25

[command]
name = "stomp2"
command = ~30$D,U,a
time = 25

[command]
name = "stomp3"
command = ~30$D,U,b
time = 25

[command]
name = "gaiaEX"
command = ~F,D,B,x+y
time = 15

[command]
name = "gaia1"
command = ~F,D,B,x
time = 15

[command]
name = "gaia1"
command = ~F,D,B,~x
time = 15

[command]
name = "gaia2"
command = ~F,D,B,y
time = 15

[command]
name = "gaia2"
command = ~F,D,B,~y
time = 15

[command]
name = "ddt"
command = ~F,D,B,~b
time = 15

[command]
name = "ddt2"
command = ~F,D,B,~a
time = 15

[command]
name = "ddt"
command = ~F,D,B,b
time = 15

[command]
name = "ddt2"
command = ~F,D,B,a
time = 15

[command]
name = "QCF+2k"
command = ~D,DF,F,a+b
time = 15

[command]
name = "QCF_b"
command = ~D,DF,F,~b
time = 15

[command]
name = "QCF_a"
command = ~D,DF,F,~a
time = 15

[command]
name = "QCF_b"
command = ~D,DF,F,b
time = 15

[command]
name = "QCF_a"
command = ~D,DF,F,a
time = 15

[command]
name = "QCF+2p"
command = ~D,DF,F,x+y
time = 15

[command]
name = "QCF_y"
command = ~D,DF,F,~y
time = 15

[command]
name = "QCF_x"
command = ~D,DF,F,~x
time = 15

[command]
name = "QCF_y"
command = ~D,DF,F,y
time = 15

[command]
name = "QCF_x"
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

;---------------------------------------------------------------------------

;sg
[State -1, hr]
type = ChangeState
value = 3200
triggerall = command = "hr"
triggerall = power >= 3000
triggerall = StateType != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 1000 && movecontact
trigger10 = stateno = 1010 && movecontact
trigger11 = stateno = 1020 && movecontact
trigger12 = stateno = 1050 && movecontact
trigger13 = stateno = 1060 && movecontact
trigger14 = stateno = 1070 && movecontact
trigger15 = stateno = 1100 && movecontact
trigger16 = stateno = 1110 && movecontact
trigger17 = stateno = 1120 && movecontact

;br
[State -1, br]
type = ChangeState
value = 3000
triggerall = command = "nw"
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 1000 && movecontact
trigger10 = stateno = 1010 && movecontact
trigger11 = stateno = 1020 && movecontact
trigger12 = stateno = 1050 && movecontact
trigger13 = stateno = 1060 && movecontact
trigger14 = stateno = 1070 && movecontact
trigger15 = stateno = 1100 && movecontact
trigger16 = stateno = 1110 && movecontact
trigger17 = stateno = 1120 && movecontact

;gd
[State -1, gd]
type = ChangeState
value = 3100
triggerall = command = "gd"
triggerall = StateType != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno=[100,101])

;exmars
[State -1, exmars]
type = ChangeState
value = 1120
triggerall = command = "exmars"
triggerall = power >= 500
triggerall = StateType != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 40
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;mars
[State -1, mars2]
type = ChangeState
value = 1110
triggerall = command = "mars2"
triggerall = StateType != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 40
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;mars
[State -1, mars]
type = ChangeState
value = 1100
triggerall = command = "mars"
triggerall = StateType != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 40
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;GaiaDriverEX
[State -1, gaiaEX]
type = ChangeState
value = 1220
triggerall = command = "gaiaEX"
triggerall = power>=500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;GaiaDriverLight
[State -1, gaialight]
type = ChangeState
value = 1200
triggerall = command = "gaia1"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;GaiaDriverHeavy
[State -1, gaiaheavy]
type = ChangeState
value = 1210
triggerall = command = "gaia2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;Achilles Rush EX
[State -1, AchillesRushEX]
type = ChangeState
value = 1070
triggerall = command = "QCF+2k"
triggerall = power>=500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;Achilles Rush Light
[State -1, AchillesRushLight]
type = ChangeState
value = 1050
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;Achilles Rush Heavy
[State -1, AchillesRushHeavy]
type = ChangeState
value = 1060
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;Chronos Rush EX
[State -1, ChronosRushEX]
type = ChangeState
value = 1020
triggerall = command = "QCF+2p"
triggerall = power>=500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;Chronos Rush Light
[State -1, ChronosRushLight]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;Chronos Rush Heavy
[State -1, ChronosRushHeavy]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 240 && movecontact

;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd" || command = "up"
triggerall = statetype != a
trigger1 = (StateNo = 410)
trigger1 = movehit

;easyoh
[state -1, easyoh]
Type = changestate
value = 990
triggerall = command = "z"
triggerall = var(37) >= 4
trigger1 = (statetype != a) && ctrl

;fthrow
[state -1, fthrow]
Type = null;changestate
value = 805
triggerall = command = "c" && command = "holdback"
trigger1 = (statetype != a) && ctrl

;throw
[state -1, throw]
Type = changestate
value = 800
triggerall = command = "c"
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
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

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; FWD+LK
[State -1, FWD+HK]
type = null;ChangeState
value = 235
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

; FWD+LP
[State -1, FWD+HP]
type = null;ChangeState
value = 205
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; FWD+HP
[State -1, FWD+LP]
type = null;ChangeState
value = 211
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 30


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
trigger8 = stateno = 245 && movecontact
trigger9 = stateno = 201 && movecontact

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
trigger8 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger8 = anim!= 210
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact
trigger11 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact
trigger8 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
; Crosschop
[State -1, Jump Light Punch]
type = null;ChangeState
value = 940
triggerall = command = "y" && command = "holddown"
triggerall = vel x >= 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

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
trigger2 = animtime >= 0

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 1050
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
value = 1110
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------