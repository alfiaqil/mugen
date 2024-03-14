

[Command]
name = "QCFQCF_z"
command = ~D,F,D,F,c
time = 30

[Command]
name = "QCFQCF_x"
command = ~D,F,D,F,z
time = 30

[Command]
name = "QCFQCF_y"
command = ~D,F,D,F,x
time = 30
[Command]
name = "QCFQCF_y"
command = ~D,F,D,F,y
time = 30

[Command]
name = "mirrorupper_a"
command = ~D,F,D,F,a
time = 30
[Command]
name = "mirrorupper_a"
command = ~D,F,D,F,b
time = 30

; key_ring
[Command]
name = "key_ring"
command = ~D,DF,F,s
time = 30

;---------------------------------------------------------------------------

[Command]
name = "QCF_y"
command = ~D,DF,F,x
time = 30
[Command]
name = "QCF_z"
command = ~D,DF,F,y
time = 30

[Command]
name = "QCB_x"
command = ~D,DB,B,x
time = 30
[Command]
name = "QCB_y"
command = ~D,DB,B,y
time = 30

[Command]
name = "QCB_z"
command = ~B,D,DB,x
time = 30
[Command]
name = "QCB_z"
command = ~B,D,DB,y
time = 30

[Command]
name = "uppercut_x"
command = ~F,D,DF,x
time = 30
[Command]
name = "uppercut_x"
command = ~F,D,DF,y
time = 30

[Command]
name = "sp1"
command = ~D,DF,F,a
time = 30
[Command]
name = "sp1"
command = ~D,DF,F,b
time = 30

[Command]
name = "sp4"
command = ~D,DB,B,a
time = 30
[Command]
name = "sp4"
command = ~D,DB,B,b
time = 30

;---------------------------------------------------------------------------

[Command]
name = "FF";Required (do not remove)
command = F,F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B,B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
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
name = "holdz"
command = /$z
time = 1

[Command]
name = "holdab"
command = /$a+b
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "charge_start"
command = x+y+z
time = 1

[Command]
name = "charge"
command = /$x+y+z
time = 1

[Command]
name = "ESCAPEFWD"
command = F
time = 1

[Command]
name = "ESCAPEBACK"
command = B
time = 1

[Command]
name = "DU"
command = D,U
time = 20

[Command]
name = "start"
command = s
time = 1

;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;key_ring
[State -1]
type = ChangeState
value = 6700
triggerall = !AILevel
triggerall = command = "key_ring"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;SUPER
[State -1]
type = ChangeState
value = 6001
triggerall = command = "QCFQCF_z"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;WAZA#2:SLASH
[State -1]
type = ChangeState
value = 6500
triggerall = command = "QCFQCF_y"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;WAZA#3:BUST
[State -1]
type = ChangeState
value = 6600
triggerall = command = "QCFQCF_x"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;HASSOU_HAPPA_DENSETSU
[State -1]
type = ChangeState
value = 3500
triggerall = command = "mirrorupper_a"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------



;crouch_guard_breaker
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp4"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact








;HASSOU_HAPPA_LIGHT
[State -1]
type = ChangeState
value = 2008
triggerall = command = "sp1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact




;NIKKAKURATOU_LIGHT
[State -1]
type = ChangeState
value = 1199
triggerall = command = "uppercut_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;KATTOU_SUIGETSUTOU_STRONG
[State -1]
type = ChangeState
value = 1500
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;KATTOU_SUIGETSUTOU_MEDIUM
[State -1]
type = ChangeState
value = 1550
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact








;YAGYU_SHINGAN_TOU_TENRA
[State -1]
type = ChangeState
value = 2580
triggerall = command = "QCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;YAGYU_SHINGAN_TOU_SOUHA
[State -1]
type = ChangeState
value = 2550
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;YAGYU_SHINGAN_TOU_SUIGETSU
[State -1]
type = ChangeState
value = 2500
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Standing Strong Kick
[State -1,Standing Strong Kick]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump Strong Kick
[State -1,Jump Strong Kick]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------

;Roll_Back
[State -1]
type = ChangeState
value = 7100
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Roll_Fwd
[State -1]
type = ChangeState
value = 7000
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;stand_throw (close f+z)
[State -1]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;stand_throw (close b+z)
[State -1]
type = ChangeState
value = 910
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1,Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 10
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Light Punch
[State -1,Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1,Stand Medium Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Punch
[State -1,Stand Medium Punch]
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
[State -1,Stand Light Kick]
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
[State -1,Stand Medium Kick]
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
;??
[State -1,Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1,Crouching Light Punch]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Light Punch
[State -1,Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1,Crouching Medium Punch]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact  

;Crouching Medium Punch
[State -1,Crouching Medium Punch]
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
[State -1,Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1,Crouching Medium Kick]
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
[State -1,Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;Jump Medium Punch
[State -1,Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1,Jump Light Kick]
type = ChangeState
value = 631
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Light Kick
[State -1,Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

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
value = 6700
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 200 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

;uniq, spam numproj
[State -1, AI Range]
type = ChangeState
value = 1550
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel> random
triggerall = p2bodydist x > 100 && statetype != A
triggerall = NumProj = 0;
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 7000
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
value = 1900
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------