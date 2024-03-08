;
;   Brider xi    ,   �Ǻ�   �ޣߣ�
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------
;
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;************************* ;   ����� cmd

[Command]
name = "db c";
command = ~D, B, D, B, c
time = 30

[Command]
name = "df z";
command = ~D, F, D, F, z
time = 30

[Command]
name = "df c";
command = ~D, F, D, F, c
time = 30

[Command]
name = "dfdf x";
command = ~D, F, D, F, x
time = 30

[Command]
name = "dfdf y";
command = ~D, F, D, F, y
time = 30

[Command]
name = "dbdb x";
command = ~D, B, D, B, x
time = 30

[Command]
name = "dbdb y";
command = ~D, B, D, B, y
time = 30


[Command]
name = "dbdb a";
command = ~D, B, D, B, a
time = 30

[Command]
name = "dbdb b";
command = ~D, B, D, B, b
time = 30


[Command]
name = "dfdf a";
command = ~D, F, D, F, a
time = 30

[Command]
name = "dfdf b";
command = ~D, F, D, F, b
time = 30

;------------------

[Command]
name = "df a";
command = ~D, F, a
time = 20

[Command]
name = "df b";
command = ~D, F, b
time = 20

[Command]
name = "db b"
command = ~D, B, b
time = 20

[Command]
name = "db a"
command = ~D, B, a
time = 20

[Command]
name = "fdf x"
command = ~F,D,F, x
time = 20

[Command]
name = "fdf y"
command = ~F,D,F, y
time = 20

[Command]
name = "df x"
command = ~D, DF, F, x

[Command]
name = "df y"
command = ~D, DF, F, y

[Command]
name = "db x"
command = ~D,B, x
time = 20

[Command]
name = "db y"
command = ~D,B, y
time = 20

[Command]
name = "jump"    
command = D, $U
time = 12

[Command]
name = "Bigjump"    
command = D, $U
time = 12

;------------------------------------------------
;----------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"    
command = B, B
time = 10

;-------------------------------
;-------------------------------------------------
[Command]
name = "recovery" 
command = x+a
time = 1

[Command]
name = "recovery" 
command = z
time = 1

[Command]
name = "y+b"
command = y+b
time = 1

[Command]
name = "y+b"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

;------------------
;--------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;----------------------------------
;----------------------------------------------
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

[Command]
Name = "fwd"
Command = F
Time = 1

[Command]
Name = "back"
Command = B
Time = 1

[Command]
Name = "up"
Command = U
Time = 1

[Command]
Name = "down"
Command = D
Time = 1

;-----------------------------
;-----------------------------------------------
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
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

;--------------------------------

[Statedef -1]

; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>


[State -1, db c]
type = ChangeState
value = 3020
triggerall = command = "db c" ;  diiiii
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, df z]
type = ChangeState
value = 3000
triggerall = command = "df z" ;  max
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, df c]
type = ChangeState
value = 3010
triggerall = command = "df c" ;  
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, dfdf x]
type = ChangeState
value = 2000
triggerall = command = "dfdf x" || command = "dfdf y" ;  
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, dbdb x]
type = ChangeState
value = 2030
triggerall = command = "dbdb x"  
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, dbdb y]
type = ChangeState
value = 2036
triggerall = command = "dbdb y"  
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, dbdb a]
type = ChangeState
value = 2010
triggerall = command = "dbdb a" || command = "dbdb b" ;  
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, dfdf a]
type = ChangeState
value = 2020
triggerall = command = "dfdf a" || command = "dfdf b" ;  
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;===============

[State -1, fdf x]
type = ChangeState
value = 1400
triggerall = command = "fdf x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, fdf y]
type = ChangeState
value = 1500
triggerall = command = "fdf y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;--------------------------------------------
;
[State -1, df a]
type = ChangeState
value = 1700
triggerall = command = "df a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;
[State -1, df b]
type = ChangeState
value = 1700
triggerall = command = "df b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;----------------------------------------
[State -1, db a-air]
type = ChangeState
value = 1730
triggerall = command = "db a"
triggerall = statetype = A
trigger1 = ctrl

[State -1, db b-air]
type = ChangeState
value = 1735
triggerall = command = "db b"
triggerall = statetype = A
trigger1 = ctrl


[State -1, db b]
type = ChangeState
value = 1725
triggerall = command = "db b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, db a]
type = ChangeState
value = 1720
triggerall = command = "db a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;df x xxxxxxxxxxxxxxxxxxxxxxxxxxx
[State -1, df x]
type = ChangeState
value = 1000
triggerall = command = "df x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


[State -1, df y]
type = ChangeState
value = 1010
triggerall = command = "df y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, db x]
type = ChangeState
value = 1200
triggerall = command = "db x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, db y]
type = ChangeState
value = 1300
triggerall = command = "db y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;-------------------------------------------
;
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------
;
[State -1, T S]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------
;
[State -1, UKEMI]
type = ChangeState
value = 52000
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30

;--------------------------------------------

;-----------------------------
;


;----------------------------------
; ����Ͷ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;--------------------------------------------------
;  �ؽ�Ͷ
[State -1, Throw]
type = ChangeState
value = 860
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;---------------------------------------------------
;------------------------------------------------------
;
;-----------------------------------------

[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "y+b"
triggerall = statetype = A
trigger1 = ctrl

[State -1, Crouching s c]
type = ChangeState
value = 1070
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, mugen C]
type = ChangeState
value = 918
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;-------------------------------------------
;
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===================================================
;
;
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
triggerall = p2bodydist X <= 20
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

;--------------------------------------------------
;
;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 235
triggerall = p2bodydist X <= 20
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Light Kick Fwd
[State -1, Stand Light Kick Fwd]
type = ChangeState
value = 238
triggerall = (Command = "a") && (Command = "holdfwd")
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
triggerall = p2bodydist X <= 20
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

;----------------------------- ���ƶ���
;
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;-------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  


[State -1, Crouching tttt Punch]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

[State -1, Crouching s Punch]
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


[State -1, Crouching s Kick]
type = ChangeState
value = 445
triggerall = command = "b"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

[State -1, Crouching s Kick]
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









;-------------------------------
;
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;
[State -1, Jump dd Punch]
type = ChangeState
value = 615
triggerall = command = "y" && command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------
;
[State -1, Jump dd Kick]
type = ChangeState
value = 645
triggerall = command = "a"
triggerall = stateno != 105
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Light Kick]
type = ChangeState
value = 640;630
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;
[State -1, Jump Light Kick]
type = ChangeState
value = 640;635
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
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
value = 195
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = p2bodydist x > 100 && statetype != A
triggerall = p2movetype = H && Life >= P2Life
trigger1 = ctrl

[State -1, AI Forward]
type = ChangeState
value = 700
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
value = 1400
triggerall = RoundState = 2 && Alive && AILevel && NumEnemy
triggerall = AILevel * AILevel * AILevel * 2 > random
triggerall = p2bodydist x < 50 && statetype != A
trigger1 = movehit && animtime >= 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------