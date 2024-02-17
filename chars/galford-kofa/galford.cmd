
;-|Hyper specials|------------------------------------------------------
;======LEVEL 3 HYPERS===================================================

[Command]
name = "hyper plasma finish"  
command =~D, F, D, F, c
time = 30

[Command]
name = "shin replica"  
command =~D, F, D, F, z
time = 30

[Command]
name = "Lighting Strike Three"
command = ~D, F, D, F, a     	
time = 30
[Command]
name = "Lighting Strike Three"
command = ~D, F, D, F, b     	
time = 30

[Command]
name = "Mega Double Strike heads"
command = ~D, F, D, F, x   	
time = 30
[Command]
name = "Mega Double Strike heads"
command = ~D, F, D, F, y 	
time = 30


;-| Specials |----------------------------------------------------

[Command];air
name = "shuriken a"
command = ~D, DF, F, x
time = 30;air
[Command]
name = "shuriken b"
command = ~D, DF, F, y
time = 30
 	
[Command]
name = "Plasma blade_b"
command = ~D, DF, F, a
time = 30
[Command]
name = "Plasma blade_c"
command = ~D, DF, F, b 
time = 30   

[Command]
name = "Rush dog_a"
command = ~D, DB, B, a    
time = 30	 	
[Command]
name = "Replica Dog_c"
command = ~D, DB, B, b  
time = 30	 

[Command]
name = "Lightining Slash"
command = ~B, D, DF, x
time = 30	
[Command]
name = "Lightining Slash"
command = ~B, D, DF, y
time = 30	

[Command]
name = "Plasma Break strong" 
command = ~D, DB, B, x
time = 30	
[Command]
name = "Plasma Break strong" 
command = ~D, DB, B, y
time = 30	

[Command]
name = "Plasma Factor"
command = ~D, DF, F, y
time = 30		
[Command]
name = "Plasma Factor low"
command = ~D, DF, F, x
time = 30		

[Command]
name = "Ninpo UtsusemiChizan" 
command =~B, D, DB, x
time = 30
[Command]
name = "Ninpo UtsusemiChizan" 
command =~B, D, DB, y
time = 30

[Command]
name = "Replica Attack back" 
command =~F, D, DF, x
time = 30
[Command]
name = "Replica Attack back" 
command =~F, D, DF, y
time = 30

 	


;-|regular commands|------------------------------------------------------
[Command]
name = "fwd_x"
command = /F,x		
time = 1

[Command]
name = "downfwd_x"
command = /DF,x		
time = 1

[Command]
name = "CD"
command = c+x			
time = 27


[Command]
name = "BC"
command = /B,b+c		
time = 1

[Command]
name = "BC"
command = /F,b+c		
time = 1

[Command]
name = "AB+"
command = /F,a+b		
time = 1

[Command]
name = "AB"
command = /B,a+b		
time = 1


;-| 2x dir|-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "yy"       ;Required (do not remove)
command = y, y
time = 1

[Command]
name = "zz"       ;Required (do not remove)
command = z, z
time = 1

;-|extra |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = y+z
time = 1

;[Command]
;name = "ab"
;command = a+b
;time = 1

[Command]
name = "F"
command = F
time = 5

[Command]
name = "B"
command = B
time = 5

[Command]
name = "DU"
command = D, U
time = 30

;-| dir + key |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1


[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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

;-| buttons |---------------------------------------------------------
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

;-|holds|--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

;=========================================================================================


[Statedef -1]
;[hypers]===========================================================================

[State -1]
type = ChangeState
value = 3500
triggerall = command = "shin replica"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 3000
triggerall = command = "hyper plasma finish"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 3100
triggerall = command = "Lighting Strike Three"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 3200
triggerall = command = "Mega Double Strike heads"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;[Specials]===========================================================================

[State -1]
type = ChangeState
value = 1950
triggerall = command = "Ninpo UtsusemiChizan"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1925
triggerall = command = "Replica Attack back"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1800
triggerall = command = "Lightining Slash"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1675
triggerall = command = "Plasma Break strong"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1975
triggerall = command = "shuriken a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1]
type = ChangeState
value = 1976
triggerall = command = "shuriken b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact




[State -1]
type = ChangeState
value = 1001
triggerall = command = "Plasma blade_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1002
triggerall = command = "Plasma blade_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1500
triggerall = command = "Plasma Factor"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1510
triggerall = command = "Plasma Factor"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1550
triggerall = command = "Plasma Factor low"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 6050
triggerall = command = "Rush dog_a"
triggerall = var(5) = 0
triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 6070
triggerall = command = "Replica Dog_c"
triggerall = var(5) = 0
triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 900
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 1700
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

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

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 216
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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
value = 405
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

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
value = 435
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

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

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
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

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1];galford
type = ChangeState
value = 198
trigger1 = command = "s"
trigger1 = statetype = S 
triggerall = var(5) = 0
trigger1 = ctrl = 1 

[State -1];Pappy
type = ChangeState
value = 6099
triggerall = command = "s"
triggerall = var(5) = 0
;triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype = S 
triggerall = var(5) = 1
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 520
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
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