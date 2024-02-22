;-| ’´•KE‹Z |--------------------------------------------------------

[Command]
name = "haado"
command = ~D, F, D, F, c
time = 30

[Command]
name = "sgs"
command = ~D, B, D, B, c
time = 30

[Command]
name = "shakunetu"
command = ~D, F, D, F, z
time = 30

[Command]
name = "bomber"
command = ~D, B, D, B, z
time = 30

[Command]
name = "DF_xy"
command = ~D, F, D, F, x
time = 30
[Command]
name = "DF_xy"
command = ~D, F, D, F, y
time = 30

[Command]
name = "hp"
command = ~D, F, D, F, a
time = 30
[Command]
name = "hp"
command = ~D, F, D, F, b
time = 30

[Command]
name = "FD_xy"
command = ~D, B, D, B, x
time = 30
[Command]
name = "FD_xy"
command = ~D, B, D, B, y
time = 30

[Command]
name = "DB_ab"
command = ~D, B, D, B, a
time = 30
[Command]
name = "DB_ab"
command = ~D, B, D, B, b
time = 30

;-| •KE‹Z |------------------------------------------------------

[Command]
name = "DF_x"
command = ~D, DF, F, x
time = 30
[Command]
name = "DF_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "FD_x"
command = ~F, D, DF, x
time = 30
[Command]
name = "FD_y"
command = ~F, D, DF, y
time = 30

[Command]
name = "DB_a"
command = ~D, DB, B, a
time = 30
[Command]
name = "DB_b"
command = ~D, DB, B, b
time = 30

[Command]
name = "DF_a"
command = ~D, DF, F, a
time = 30
[Command]
name = "DF_a"
command = ~D, DF, F, b
time = 30



;-| ‚Q‰ñ‰Ÿ‚µ‹Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ‚QE‚RŒÂ‚Ì“¯‰Ÿ‚µ‹Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+y
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "taoreru"
command = x+a
time = 1

[Command]
name = "taoreru"
command = x+b
time = 1

[Command]
name = "taoreru"
command = y+a
time = 1

[Command]
name = "taoreru"
command = y+b
time = 1

;-| •ûŒü‚Æƒ{ƒ^ƒ“‚Åo‚·‹Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ƒ{ƒ^ƒ“İ’èi‚¢‚¶‚ç‚È‚¢j|---------------------------------------------------------
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

;-| ‰Ÿ‚µ‚Á‚Ï‚È‚µİ’èi‚¢‚¶‚ç‚È‚¢j-------------------------------------------------------
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


; ‰º‚Ì‹Lq«‚Íâ‘Î‚ÉÁ‚³‚È‚¢‚Å‚­‚¾‚³‚¢B
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;’´Ü”M‘åÔ—Ö
[State -1]
type = ChangeState
value = 1700
triggerall = command = "bomber"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;’´Ü”M‘åÔ—Ö
[State -1]
type = ChangeState
value = 1600
triggerall = command = "shakunetu"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


[State -1]
type = ChangeState
value = 3600
triggerall = command = "haado"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 3300
triggerall = command = "sgs"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;‰QŠª–\•—‹r iEXj
[State -1]
type = ChangeState
value = 1500
triggerall = command = "DB_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;–\–_Œ˜iEXj
[State -1]
type = ChangeState
value = 1400
triggerall = command = "FD_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;dPšV iEXj
[State -1]
type = ChangeState
value = 1300
triggerall = command = "DF_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;dPšV iEXj
[State -1]
type = ChangeState
value = 2100
triggerall = command = "hp"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;‰QŠª–\•—‹r iãj
[State -1]
type = ChangeState
value = 1200
triggerall = command = "DB_a"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;‰QŠª–\•—‹r iãj
[State -1]
type = ChangeState
value = 1210
triggerall = command = "DB_b"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




;---------------------------------------------------------------------------
;–\–_Œ˜iãj
[State -1]
type = ChangeState
value = 1100
triggerall = command = "FD_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;–\–_Œ˜i‹­j
[State -1]
type = ChangeState
value = 1110
triggerall = command = "FD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------
;dPšV iãj
[State -1]
type = ChangeState
value = 1000
triggerall = command = "DF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;dPšV iãj
[State -1]
type = ChangeState
value = 2000
triggerall = command = "DF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;dPšV iãj
[State -1]
type = ChangeState
value = 1060
triggerall = command = "DF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------------
;dPšV i‹­j
[State -1]
type = ChangeState
value = 1010
triggerall = command = "DF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1015
triggerall = command = "DF_x" || command = "DF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;“|‚ê‚é‚Ì‚Ì“®ì
[State -1, Standing Strong Kick]
type = ChangeState
value = 500
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;“|‚ê‚é‚Ì‚Ì“®ì
[State -1, Standing Strong Kick]
type = ChangeState
value = 510
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
triggerall = command = "holddown"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;“|‚ê‚é‚Ì‚Ì“®ì
[State -1, Standing Strong Kick]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

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

;===========================================================================
;---------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Œã‘Şƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

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

;---------------------------------------------------------------------------
;‹ó’†ãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;‹ó’†‹­ƒpƒ“ƒ`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†ãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

