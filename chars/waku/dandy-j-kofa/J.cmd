

;-| Super Motions |--------------------------------------------------------


[Command]
name = "kasoku"
command = ~D, F, D, F, c
time = 30

[Command]
name = "ginga"
command = ~D, F, D, F, z
Time = 30

[Command]
name = "seiden"
command = ~D, B, D, B, a
time = 30
[Command]
name = "seiden"
command = ~D, B, D, B, b
time = 30

[Command]
name = "upper_xy"
command = ~D, B, D, B, x
time = 30
[Command]
name = "upper_xy"
command = ~D, B, D, B, y
time = 30

[Command]
name = "QCF_xy"
command = ~D, F, D, F, x
time = 30
[Command]
name = "QCF_xy"
command = ~D, F, D, F, y
time = 30

[Command]
name = "QCB_ab"
command = ~D, F, D, F, a
time = 30
[Command]
name = "QCB_ab"
command = ~D, F, D, F, b
time = 30

;[Command]
;name = "wakunage"
;command = ~D, DB, B, a+b
;time = 30

;[Command]
;name = "super"
;command = ~D, DB, B, x+a
;Time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "ranp1"
command = a+y
time = 30

[Command]
name = "natu1"
command = x+b
time = 30


[Command]
name = "upper_x"
command = ~D, DB, B, x
time = 30
[Command]
name = "upper_y"
command = ~D, DB, B, y
time = 30


[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 30
[Command]
name = "QCF_x"
command = ~D, DF, F, y
time = 30


[Command]
name = "QCB_a"
command = ~D, DF, F, a
time = 30
[Command]
name = "QCB_a"
command = ~D, DF, F, b
time = 30


[Command]
name = "x+a"
command = ~D, DB, B, a
time = 30
[Command]
name = "x+a"
command = ~D, DB, B, b
time = 30


[Command]
name = "taihux1"
command = ~D, DB, B, x
time = 30
[Command]
name = "taihuy1"
command = ~D, DB, B, y

[Command]
name = "taihux2"
command = ~D, DB, B, x
time = 30
[Command]
name = "taihuy2"
command = ~D, DB, B, y
time = 30

[Command]
name = "taihua1"
command = ~D, DB, B, a
time = 30
[Command]
name = "taihub1"
command = ~D, DB, B, b
time = 30

[Command]
name = "taihua2"
command = ~D, DB, B, a
time = 30
[Command]
name = "taihub2"
command = ~D, DB, B, b
time = 30


[Command]
name = "FF_ab"
command = F, F, a+b
[Command]
name = "FF_a"
command = F, F, a
[Command]
name = "FF_b"
command = F, F, b

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
command = x+y
time = 1




;-| Dir + Button |---------------------------------------------------------
[Command]
name = "da"
command = /$U,x
time = 1
[Command]
name = "da"
command = /$U,y
time = 1
[Command]
name = "da"
command = /$U,a
time = 1
[Command]
name = "da"
command = /$U,b
time = 1

[Command]
name = "DU"
command = D, U
time = 20

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


[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1


;===========================================================================

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;===========================================================================


;---------------------------------------------------------------------------
;激突落とし
[State -1,ginga]
type = ChangeState
value = 3500
triggerall = command = "ginga"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;静電拳
[State -1,seidenn]
type = ChangeState
value = 3000
triggerall = command = "seiden"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact






;---------------------------------------------------------------------------


;加速拳
[State -1,kasoku]
type = ChangeState
value = 7000
triggerall = command = "kasoku"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;発火拳ＥＸ
[State -1, ]
type = ChangeState
value = 1010
triggerall = command = "upper_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;発火拳（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;発火拳（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;必殺ロープＥＸ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;しゃがみ必殺ロープＥＸ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1700
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;空中必殺ロープＥＸ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1900
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;Light Kung Fu Upper
;必殺ロープ
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;Light Kung Fu Upper
;しゃがみ必殺ロープ
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1600
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;空中必殺ロープ
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1850
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;中段
[State -1, Standing Strong Kick]
type = ChangeState
value = 1251
triggerall = command = "x+a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;夏美ランプー投げ
[State -1,ranp]
type = ChangeState
value = 2400
;triggerall = numhelper(2000) = 0
triggerall = helper(2000), stateno = 2000
triggerall = command = "ranp1"
trigger1 = statetype != A
trigger1 = ctrl



;ランプー夏美投げ
[State -1,ranp]
type = ChangeState
value = 2401
;triggerall = numhelper(2000) = 0
triggerall = helper(2000), stateno = 2000
triggerall = command = "natu1"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

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

;Stand Strong Punch Close
[State -1, Stand Strong Punch Close]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Stand Strong Punch Close
[State -1, Stand Strong Punch Close]
type = ChangeState
value = 660
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 950
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
;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 10
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
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
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

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

