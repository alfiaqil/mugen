;-------------------------------------------------------------

[Command]
name = "ran"
command = ~D, F, D, F, c
time=30

;-------------------------------------------------------------

[Command]
name = "hp1"  
command = ~D, F, D, F, z
time = 30

[Command]
name = "hp2"  
command = ~D, B, D, B, z
time = 30

;-------------------------------------------------------------

[Command]
name = "hp4"
command = ~D, B, D, B, a
time =30
[Command]
name = "hp4"
command = ~D, B, D, B, b
time =30

[Command]
name = "hp5"
command = ~D, B, D, B, x
time =30
[Command]
name = "hp5"
command = ~D, B, D, B, y
time =30

[Command]
name = "hp6"  
command = ~D, F, D, F, a
time = 30
[Command]
name = "hp6"  
command = ~D, F, D, F, b
time = 30

[Command]
name = "hp7"  
command = ~D, F, D, F, x
time = 30
[Command]
name = "hp7"  
command = ~D, F, D, F, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "sab"
command = ~D, DB, B, a
time = 30
[Command]
name = "sab"
command = ~D, DB, B, b
time = 30

[Command]
name = "samaso_a"
command = ~F, D, DF, a
time = 30
[Command]
name = "samaso_b"
command = ~F, D, DF, b
time = 30

[Command]
name = "Dbb_y"
command = ~D, DB, B, y
time = 30
[Command]
name = "Dbb_x"
command = ~D, DB, B, x
time = 30

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 30
[Command]
name = "QCF_x2"
command = ~D, DF, F, y
time = 30
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "roy"
command = ~D, DF, F, b
time = 30
[Command]
name = "rox"
command = ~D, DF, F, a
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

[Command]
name = "x2"
command = /x

[Command]
name = "y2"
command = /y

[Command]
name = "a2"
command = /a



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DUB"
command =$D,UB
time = 10

[Command]
name = "DUF"
command =$D,UF
time = 10

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
name = "bc"
command = /B, c

[Command]
name = "fc"
command = /F, c
[Command]
name = "bab"
command = /B, a+x

[Command]
name = "fab"
command = /F, a+x

[Command]
name = "df_b"
command = /$DF, b

[Command]
name = "F_a"
command = /$F, a

[Command]
name = "d_y"
command = /$D, y

[Command]
name = "F_y"
command = /$F, y

[Command]
name = "F_x"
command = /$F, x

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
name = "xy2";
command = /x+y
time = 1

[Command]
name = "xy";
command = ~x+y
time = 1

[Command]
name = "y2";
command = /y
time = 1

[Command]
name = "yy";
command = ~y
time = 1

[Command]
name = "x2";
command = /x
time = 1

[Command]
name = "xx";
command = ~x
time = 1

[Command]
name = "by"
command = b+y
time = 1


[Command]
name = "ab"
command = a+x
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
name = "x1"
command = x
time = 15

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



;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------

[State -1, Stand Light Punch]
type = ChangeState
value = 31
triggerall = command = "DUB"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 30
triggerall = command = "DUF"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;00�M�K�Q
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = command = "hp1"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;98EXMAX�X�N���[�}�[��
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = command = "hp2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;00�A�b�p�[
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = command = "hp4"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3200
triggerall = command = "hp5"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;98EX�X�N���[�}�[��
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3400
triggerall = command = "hp6"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;98EX�M�K���g
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "hp7"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;95����
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3600
triggerall = command = "ran"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;sab
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = !AILevel
triggerall = command = "sab"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�ǌ��i��j
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1330
triggerall = command = "QCF_x" || command = "QCF_x2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;95�T�}�\��
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = command = "samaso_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;95�T�}�\��
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1610
triggerall = command = "samaso_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�W���C�A���g�i�b�N���i��j
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "Dbb_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�W���C�A���g�i�b�N���i���j
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "Dbb_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�����{���i��j
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;�����{���i���j
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1410
triggerall = command = "QCF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
;===========================================================================
;---------------------------------------------------------------------------
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 770
;triggerall = command = "c"
;triggerall=var(12)=3||var(12)=4
;triggerall=var(14)>0
;triggerall=numhelper(4200)=0
;triggerall=numhelper(4300)=0
;triggerall=p2stateno!=[821,843]
;trigger1 = movetype=I
;trigger1=ctrl=1
;trigger1=statetype!=A
;---------------------------------------------------------------------------
;����
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 720
;triggerall=var(12)=2||var(12)=5
;triggerall = command = "c"||command = "ab"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;�����U��
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 721
;triggerall=var(12)=2||var(12)=5
;triggerall= stateno=720
;triggerall =time=[6,26]
;Trigger1 = command = "a"
;Trigger2 = command = "b"
;Trigger3 = command = "c"
;Trigger4 = command = "x"
;Trigger5 = command = "y"
;Trigger6 = command = "z"
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 104
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;00�A�[�}�[���[�h
;[State -1]
;type = ChangeState
;value = 760
;triggerall=power=3000
;triggerall=var(12)=3||var(12)=4
;triggerall=numhelper(6400)=0
;triggerall=numhelper(6410)=0
;triggerall = command = "a"&&command = "b"&&command = "y"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;00�J�E���^�[���[�h
;[State -1]
;type = ChangeState
;value = 750
;triggerall=power=3000
;triggerall=var(12)=3||var(12)=4
;triggerall=numhelper(6400)=0
;triggerall=numhelper(6410)=0
;triggerall = command = "x"&&command = "y"&&command = "a"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;98ADVMAX
;[State -1]
;type = ChangeState
;value = 730
;triggerall=numhelper(6003)=1
;triggerall = command = "x"&&command = "y"&&command = "a"
;triggerall = command != "holddown"
;triggerall=helper(6003),stateno=6003
;triggerall=power>=1000
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;95�^��
;[State -1]
;type = ChangeState
;value = 740
;triggerall=numhelper(6600)=1
;triggerall = command = "x2"&&command = "y2"&&command = "a2"
;triggerall = command != "holddown"
;triggerall=helper(6600),stateno=6600
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;98EX�^��
;[State -1]
;type = ChangeState
;value = 740
;triggerall=numhelper(6100)=1
;triggerall = command = "x2"&&command = "y2"&&command = "a2"
;triggerall = command != "holddown"
;triggerall=helper(6100),stateno=6100
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;���[�����O�N���b�V��
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1310
triggerall = command = "roy"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���[�����O�N���b�V��
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "rox"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


[State -1, Stand Light Punch]
type = ChangeState
value = 710
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�O�]
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Kung Fu Throw
;����
[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Kung Fu Throw
;����
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================

;�ӂ��Ƃ΂�
[State -1, Stand Light Punch]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�󒆂ӂ��Ƃ΂�
[State -1, Jump Light Punch]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

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
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = Var(30) != 1
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
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
;---------------------------------------------------------------------------
;Jump Strong Kick
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact


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
value = 1300
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel > random
triggerall = p2bodydist x > 100 && statetype != A
trigger1 = ctrl

[State -1, AI Grab]
type = ChangeState
value = 1500
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2> random
triggerall = p2bodydist x < 20 && statetype != A
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
value = 1330
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------