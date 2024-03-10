;-| AI |------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

;=================================================================
; Hypers
;=================================================================

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

;=================================================================
; Transformation
;=================================================================

[Command]
name = "TransformWolf"
command = b+y
time = 35

[Command]
name = "TransformYugo"
command = b+y
time = 35

;=================================================================
; Especials - Yugo
;=================================================================

[Command]
name = "SP1"
command = D, DF, F, x
time = 35
[Command]
name = "SP1"
command = D, DF, F, y
time = 35


[Command]
name = "SP2"
command = D, DB, B, a
time = 35
[Command]
name = "SP2"
command = D, DB, B, b
time = 35


[Command]
name = "SP3"
command = D, DB, B, x
time = 35
[Command]
name = "SP3"
command = D, DB, B, y
time = 35


;=================================================================
; Especials - Wolf
;=================================================================

[Command]
name = "Shadow_Punch"
command = ~B, F, y


;=================================================================
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;=================================================================
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;=================================================================
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;=================================================================
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

[Command]
name = "Air"
command = U
time = 1

[Command]
name = "Crouch"
command = D
time = 1

[Command]
name = "Backd"
command = $B
time = 1

;=================================================================
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
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdz"
command = /$z
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

;---------------------------------------------------------------------------
; 2. State entry

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

;=================================================================
; Hypers
;=================================================================
[State -1, Trafo1]
type = ChangeState
value = 3000
triggerall = !var(43)
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Trafo1]
type = ChangeState
value = 3050
triggerall = var(43)
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;=================================================================
; Transform
;=================================================================
;Yugo in to Wolf
[State -1, Trafo1]
type = ChangeState
value = 2002
triggerall = !var(43)
triggerall = command = "TransformWolf"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Yugo in to Wolf
[State -1, Trafo1]
type = ChangeState
value = 2001
triggerall = !var(43)
triggerall = command = "TransformWolf"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Yugo in to Wolf
[State -1, Trafo1]
type = ChangeState
value = 2000
triggerall = !var(43)
triggerall = command = "TransformWolf"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;Wolf in to Yugo
[State -1, Trafo1.5]
type = ChangeState
value = 2050
triggerall = var(43)
triggerall = command = "TransformYugo"
trigger1 = statetype = S
trigger1 = ctrl

;=================================================================
; Especials - Yugo
;=================================================================
[State -1, upper]
type = ChangeState
value = 1000
triggerall = !var(43)
triggerall = command = "SP1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, upper]
type = ChangeState
value = 1050
triggerall = !var(43)
triggerall = command = "SP3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, upper]
type = ChangeState
value = 1100
triggerall = !var(43)
triggerall = command = "SP2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;=================================================================
; Especials - Wolf
;=================================================================
[State -1, Magia]
type = ChangeState
value = 6900
triggerall = Var(43) = 6
triggerall = command = "SP1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Magia]
type = ChangeState
value = 6910
triggerall = Var(43) = 6
triggerall = command = "SP2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;=================================================================
;Other moves
;=================================================================
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Throw]
type = NULL;ChangeState
value = 800
triggerall = command = "y"
triggerall = var(43)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 11
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;=================================================================
; Golpes 'STAND'
;=================================================================
[State -1, STAND]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= StateNo = 200 && movecontact

;---------------------------------------------------------------------------
[State -1, STAND]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= StateNo = 200 && movecontact
trigger3= StateNo = 230 && movecontact

;---------------------------------------------------------------------------
[State -1, STAND]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= StateNo = 200 && movecontact

;---------------------------------------------------------------------------
[State -1, STAND]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= StateNo = 200 && movecontact
trigger3= StateNo = 230 && movecontact
trigger4= StateNo = 210 && movecontact

;=================================================================
; Golpes 'CROUCH'
;=================================================================
[State -1, CROUCH]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= StateNo = 400 && movecontact

[State -1, CROUCH]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= StateNo = 400 && movecontact

;---------------------------------------------------------------------------
[State -1, CROUCH]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= StateNo = 400 && movecontact

[State -1, CROUCH]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= StateNo = 400 && movecontact

;=================================================================
; Golpes 'AIR'
;=================================================================
[State -1, AIR]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl
triggerall = Stateno != 6965
trigger1 = command = "x"

[State -1, AIR]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = ctrl
triggerall = Stateno != 6965
trigger1 = command = "y"

;---------------------------------------------------------------------
[State -1, AIR]
type = ChangeState
value = 650
triggerall = statetype = A
triggerall = ctrl
triggerall = Stateno != 6965
trigger1 = command = "a"
trigger2 = command = "b"

;===========================================================================
;=================================<A.I.>====================================
;===========================================================================
[State -1, AI]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
var(59) = 1

[State -1, airrecover]
type=changestate
value= ifelse((pos y>=-20), 5200, 5210)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=-1 && random<200

[State -1, recoveryroll]
type=changestate
value=5200
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= !ctrl
trigger1= (stateno=5040 || stateno=5050) && vel y>=-1 && pos y>-vel y
trigger1= (p2bodydist x=[-10,10]) && random<200

[State -1, goushoryuuken]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 333, 200)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<500
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<500
trigger5= stateno=0 && prevstateno=5120 && time<=1
trigger5= ctrl && (p2bodydist x=[-40,40]) && random<500
trigger6= ctrl && (p2bodydist x=[-30,30])
trigger6= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<250

[State -1, ashurasenkuu]
type=changestate
value=1100
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= statetype!=A && roundstate=2
triggerall= ctrl
trigger1= enemynear,movetype=A && (p2bodydist x=[-90,90])
trigger1= (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger1= random<ifelse((enemy,hitdefattr=SC,AT),500,250)
trigger1= var(10):=2

[State -1, roll/dodge]
type=changestate
value=ifelse(random<250,1100,1050)
triggerall = !var(43)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && random<50
trigger1= (enemynear,movetype=A) && (enemynear,hitdefattr=SCA,AA)
trigger1= (p2bodydist x=[40,120]) && (enemynear,animtime<=-28)

[State -1, tenmashurettou]
type=changestate
value=1050
trigger1= var(59)>=1 && numenemy
triggerall = !var(43)
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && (p2bodydist x=[-60,60])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && random<200

[State -1, backdash]
type=changestate
value=105
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype=S
trigger1= random < ifelse((enemynear,hitdefattr=SC,AT), 150, 50)
trigger1= ctrl && (stateno!=[100,106]) && (stateno!=[700,701])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)

[State -1, Guard]
type=changestate
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= ifelse(statetype=A, (var(9)!=2 || stateno=5210), 1)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, run/dash]
type=changestate
value=100
trigger1= var(59)>=1 && numenemy
trigger1= statetype=S && roundstate=2
trigger1= ctrl && (stateno!=[100,105])
trigger1= !inguarddist && (p2bodydist x=[60,100]) && random<100

[State -1, Jump]
type=changestate
value=40
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

[State -1, SHP]
type=changestate
value=200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<25 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger2= p2bodydist x<=50 && movehit && random<250

[State -1, SHK]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x=0 && movehit && random<250

[State -1, SMP2]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,0]) && p2statetype=C && !(enemynear,hitfall)
triggerall= ((p2stateno!=[120,155]) || p2stateno=131 || p2stateno=152 || p2stateno=153) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random < 100

[State -1, SMK2]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,0]) && p2statetype=C && !(enemynear,hitfall)
triggerall= ((p2stateno!=[120,155]) || p2stateno=131 || p2stateno=152 || p2stateno=153) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random < 50

[State -1, SMP]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=230 || stateno=240 || stateno=400)
trigger1= p2bodydist x<=16 && movehit && random<250

[State -1, SMK]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=16 && movehit && random<250

[State -1, SLP]
type=changestate
value=200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, SLK]
type=changestate
value=230
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=230)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHP]
type=changestate
value=410
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHK]
type=changestate
value=450
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=A && p2stateno!=5120
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=30 && (movecontact=[1,4]) && random<250

[State -1, CMP]
type=changestate
value=410
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=210 || stateno=230 || stateno=250)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CMK]
type=changestate
value=410
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CLP]
type=changestate
value=400
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, CLK]
type=changestate
value=430
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,36]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= ctrl
trigger1= random<100 || (p2stateno=130 || p2stateno=150 || p2stateno=151) || p2stateno=5110
trigger2= (stateno=200 || stateno=230 || stateno=240) && time>=5 && random<50

[State -1, AHP]
type=changestate
value=410
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, AHK]
type=changestate
value=450
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, TKK]
type=changestate
value=1100
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=S
triggerall= vel x>0 && (vel y=[-3,3])
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50])
trigger1= ctrl && random<25
trigger2= stateno=220 && animelemtime(3)>=2 && random<50

[State -1, AMP]
type=changestate
value=600
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, AMK]
type=changestate
value=620
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[-50,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, ALP]
type=changestate
value=600
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, ALK]
type=changestate
value=630
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, tatsumakizankuukyaku]
type=changestate
value=1100
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=S
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,90]) && (p2dist y=[-90,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=210 || stateno=225 || stateno=240)
trigger1= movehit && (p2bodydist x=[0,30]) && random<250
trigger2= stateno=250
trigger2= movehit && (p2bodydist x=[0,60]) && random<250

[State -1, hyakkishuu]
type=changestate
value=1050
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A
triggerall= (p2dist y=[-160,-80]) && p2statetype!=L
triggerall= !(enemynear,ctrl) && p2movetype=H && (enemynear,stateno!=[120,155])
trigger1= ctrl && random<10

[State -1, gouhadouken]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1000) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=100 && random<100
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[40,80]) && random<100

[State -1, shakunetsuhadouken]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1000) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=120 && random<50
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250)
trigger2= movehit && (p2bodydist x=[0,25]) && random<50

[State -1, shungokusatsu]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
triggerall= !(enemynear,ctrl) && (p2stateno!=40) && (p2stateno!=[5030,5119])
triggerall= (p2bodydist x=[-160,160]) && (p2dist y=[-120,0]) && p2statetype!=L
triggerall= (enemynear,vel y=0) || (enemynear,vel y>0 && enemynear,vel x<0)
trigger1= ctrl && (p2bodydist x=[0,60]) && (enemynear,statetype!=A) && random<150
trigger2= stateno=210 && animelemtime(4)>=0 && (p2bodydist x=[0,50]) && p2statetype!=A && random<250

[State -1, misogi]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155]) && p2statetype!=L
triggerall= (p2stateno!=[5030,5119]) && (enemynear,vel x=[-1,1]) && (enemynear,vel y<4)
triggerall= movetype=A || !(enemynear,hitfall)
trigger1= ctrl && (enemynear,statetype=S || enemynear,statetype=C) && (enemynear,animtime<=-30) && random<100
trigger2= ctrl && (enemynear,statetype=A) && (enemynear,pos y<=-60) && (enemynear,movetype=A) && random<500
trigger3= stateno=1000 && movehit && random<100

[State -1, kkz]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A && prevstateno!=4200
triggerall= !numhelper(4205)
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-30,30]) && (p2dist y=[-90,0])
trigger1= (stateno=1100 || stateno=3300) && movehit && random<50
trigger2= stateno=3200 && numhelper(3005)
trigger2= helper(3005),var(3) && random<100
trigger3= ctrl && inguarddist
trigger3=(p2stateno=[3000,4999]) && random<200

[State -1, tkj]
type=changestate
value=2000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A && prevstateno!=4300
triggerall= !numhelper(4305)
triggerall= power>=1000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-80,80]) && (p2dist y=[-60,0])
trigger1= stateno=210 && movehit && random<50
trigger2= stateno=240 && movehit && animelemtime(17)>=0 && random<200

[State -1, tenmagouzankuu2]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=S && var(9)!=2 && prevstateno!=3070
triggerall= !numhelper(3075)
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,50]) && p2dist y>=-20
trigger1= (stateno=1100 || stateno=1250 || stateno=[1301,1303])
trigger1= movehit && (p2bodydist x=[0,35]) && random<250
trigger2= stateno=3200 && movehit && random<200
trigger3= (stateno=[3200,3250]) && movehit && (hitcount>=7 || anim=3205) && random<200
trigger4= stateno=3050 && numhelper(3055)
trigger4= helper(3055),var(3) && random<100

[State -1, messatsugoushoryuu]
type=changestate
value=2000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A && prevstateno!=3000
triggerall= power>=1000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-80,80]) && (p2dist y=[-40,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=210 || stateno=225 || stateno=240 || stateno=255)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1100 || stateno=1305)
trigger2= movehit && (p2bodydist x=[0,30]) && random<250
trigger3= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6
trigger3= helper(stateno+5),var(3) && random<100
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,70]) && random<250

[State -1, messatsugousenpu]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=A && var(9)!=2 && (prevstateno!=[3200,3250])
triggerall= power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-90,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ((stateno=[1200,1250]) || stateno=[1301,1303])
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= stateno=3200 && movehit && random<333
trigger3= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6 && stateno!=3070
trigger3= helper(stateno+5),var(3) && random<100

[State -1, messatsugourasen]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A && (prevstateno!=[3200,3250])
triggerall= power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-45,45]) && (p2dist y=[-60,0]) && p2statetype!=L
trigger1= (stateno=210 || stateno=225 || stateno=240 || stateno=255)
trigger1= movehit && p2bodydist x=0 && random<100
trigger2= stateno=1000 && movehit && animelemtime(17)>=0 && p2bodydist x=0 && random<333
trigger3= stateno=4200 && numhelper(4205)
trigger3= helper(4205),var(3) && random<100
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,10]) && random<200

[State -1, tenmashinzuiwari]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=S && var(9)!=2 && pos y>=-50 && prevstateno!=3300
triggerall= power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-30,60]) && p2dist y>=-15 && (enemynear,vel y<6)
trigger1= (stateno=270 || stateno=285)
trigger1= movehit && random<100
trigger2= (stateno=1100 || stateno=1250 || stateno=[1301,1303])
trigger2= movehit && random<250
trigger3= stateno=3200 && movehit && random<200
trigger4= (stateno=[3200,3250]) && movehit && (hitcount>=7 || anim=3205) && random<200
trigger5= stateno=1230 || stateno=3050 || stateno=3070
trigger5= ifelse(stateno=3070, animelemtime(31)>=0, 1)
trigger5= numhelper(stateno+5)
trigger5= helper(stateno+5),var(3) && random<200

[State -1, tenmagouzankuu]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype=S && var(9)!=2 && prevstateno!=3050
triggerall= !numhelper(3005) && !numhelper(3055)
triggerall= power>=2000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,120]) && p2dist y>=-20 && (enemynear,vel y<4)
trigger1= (stateno=270 || stateno=285)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1100 || (stateno=[1200,1250]) || stateno=[1301,1303])
trigger2= movehit && random<250
trigger3= stateno=3000 && movehit && random<200
trigger4= (stateno=[3200,3250]) && movehit && (hitcount>=7 || anim=3205) && random<200
trigger5= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6 && stateno!=3050
trigger5= helper(stateno+5),var(3) && random<100
trigger5= ifelse(stateno=3070, animelemtime(21)>=0, 1)

[State -1, messatsugouhadou]
type=changestate
value=2000
triggerall= var(59)>=1 && numenemy
triggerall = !var(43)
triggerall= roundstate=2 && statetype!=A && prevstateno!=3000
triggerall= !numhelper(3005) && !numhelper(3055)
triggerall= power>=1000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-120,120]) && (p2dist y=[-60,0]) && (enemynear,vel y<8) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=1100 || stateno=1305)
trigger1= movehit && (p2bodydist x=[0,60]) && random<250
trigger2= stateno=3200 && movehit && animelemtime(17)>=0 && random<200
trigger3= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6 && stateno!=3000
trigger3= helper(stateno+5),var(3) && random<100
