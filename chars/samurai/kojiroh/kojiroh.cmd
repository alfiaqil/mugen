;===========================================================================
;Œ‰Ø‚ÌŒ•m2 ^“c¬Ÿ˜Y
;Created by M@PPY
;http://izanai.cjb.net/

;===========================================================================

;-| Super Motions |--------------------------------------------------------

;–³–¾Œ•EæÑ
[Command]
name = "mumyo_nie1"
command = ~D, DB, B, DB, D, DF, F, x+y
time = 45

;˜T‰åE—ë
[Command]
name = "zero1"
command = ~D, DB, B, DB, D, DF, F, y
time = 45

;for debug
[Command]
name = "zero2"
command = /F,c
time = 1

;-| Special Motions |------------------------------------------------------
[Command]
name = "sikku_x"
command = ~D, DF, F, x

[Command]
name = "sikku_y"
command = ~D, DF, F, y

;’e‚«
[Command]
name = "z"
command = z
time = 1

[Command]
name = "ranbu-ougi"
command = ~D, D, x
time = 10

[Command]
name = "syunjin"
command = ~D, DB, B, a

[Command]
name = "syobisen"
command = ~D, DB, B, x

[Command]
name = "mumyoken"
command = ~D, DB, B, y
time = 45

[Command]
name = "koku_x"
command = ~F, D, DF, x

[Command]
name = "koku_y"
command = ~F, D, DF, y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "nage"
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "jodangeri"
command = /F,a
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "kagami"
command = /DF,a
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

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

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;’´‰œ‹` –³–¾Œ•EæÑ
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 2000
triggerall = command = "mumyo_nie1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)


;===========================================================================
;öİ‰œ‹` ˜T‰åE—ë
[State -1]
type = ChangeState
value = 2500
triggerall = power >= 3000
triggerall = command = "zero1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;uo
[State -1]
type = ChangeState
value = 101
triggerall = command = "syunjin"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;ãÄ”ö‘M
[State -1]
type = ChangeState
value = 1600
triggerall = command = "syobisen"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;–³–¾Œ•
[State -1]
type = ChangeState
value = 1700
triggerall = command = "mumyoken"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;‹•‹óE(ã)
[State -1]
type = ChangeState
value = 1500
triggerall = command = "koku_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;‹•‹óE(‹­)
[State -1]
type = ChangeState
value = 1550
triggerall = command = "koku_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;¾‹óE(ã)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "sikku_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;¾‹óE(‹­)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "sikku_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;‹ü‚İŠŠ‚èR‚è
[State -1]
type = ChangeState
value = 450
triggerall = command = "kagami"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;r‘¬‹í‚¯
[State -1]
type = ChangeState
value = 900
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "nage"

;===========================================================================
;r‘¬E—ë‚ÌŠÔ‡‚¢
[State -1]
type = ChangeState
value = 235
triggerall = command = "back_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 235) && movecontact && (time = [7,12])


;---------------------------------------------------------------------------
;r‘¬E‰“‚ÌŠÔ‡‚¢
[State -1]
type = ChangeState
value = 245
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)

;===========================================================================
;ã’iR‚è
[State -1]
type = ChangeState
value = 205
triggerall = command = "jodangeri"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 235)


;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;ren no maai
[State -1]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact && (time = [5,15])

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)
trigger4 = movecontact && (stateno = 430)
trigger5 = movecontact && (stateno = 250)
trigger6 = movecontact && (stateno = 230)

;---------------------------------------------------------------------------
;’e‚« —§‚¿
[State -1]
type = ChangeState
value = 8000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 250)
trigger6 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;’e‚« ‚µ‚á‚ª‚İ
[State -1]
type = ChangeState
value = 8100
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;’e‚« ‹ó’†
[State -1]
type = ChangeState
value = 8200
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

