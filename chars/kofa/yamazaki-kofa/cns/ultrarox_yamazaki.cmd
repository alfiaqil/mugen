[Command]
name = "max2"
command = ~D,F,D,F,c
time = 30

[Command]
name = "guillotine3"
command = ~D,F,D,F,z
time = 30

[Command]
name = "drill2"
command = ~D,B,D,B,z
time = 30

[Command]
name = "drill"
command = ~D,B,D,B,x
time = 30
[Command]
name = "drill"
command = ~D,B,D,B,y
time = 30

[Command]
name = "guillotine1"
command = ~D,F,D,F,x
time = 30
[Command]
name = "guillotine2"
command = ~D,F,D,F,y
time = 30

[Command]
name = "dod"
command = D,F,D,F,a
time = 30
[Command]
name = "dod"
command = D,F,D,F,b
time = 30

;-|Special Moves|------------------------------------------------------------------------------------------------------------

[Command]
name = "knife1"
command = ~F, D,DF, x
time = 30
[Command]
name = "knife2"
command = ~F, D,DF, y
time = 30

[Command]
name = "sand"
command = ~D,F,F, b
time = 30
[Command]
name = "crush"
command = ~D,F,F, a
time = 30

[Command]
name = "sadomazo_a"
command = ~B,D,DF,a
time = 30
[Command]
name = "sadomazo_b"
command = ~B,D,DF,b
time = 30

[Command]
name = "bakudan"
command = ~B,D,DB,x
time = 30
[Command]
name = "bakudan"
command = ~B,D,DB,y
time = 30

[Command]
name = "bai_gaeshi_a"
command = ~D,F,x
time = 30
[Command]
name = "bai_gaeshi_b"
command = ~D,F,y
time = 30

[Command]
name = "hebi_tsukai_z"
command = ~D,B,a
time = 30
[Command]
name = "hebi_tsukai_t"
command = ~D,B,x
time = 30
[Command]
name = "hebi_tsukai_g"
command = ~D,B,y
time = 30

;[Command]
;name = "gun"
;command = ~D,D, x
;time = 30
;[Command]
;name = "gun"
;command = ~D,D, y
;time = 30


;-|2/3 Button Combination|---------------------------------------------------------------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "knockdown"
command = c
time = 1

[Command]
name = "roll"
command = z
time = 1
;-| Single Button |----------------------------------------------------------------------------------------------------------

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

;-| Hold Dir |---------------------------------------------------------------------------------------------------------------

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
name = "holdy"
command = /y
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "F2"
command = F
time = 1

[Command]
name = "B2"
command = B
time = 1

[Command]
name = "U2"
command = U
time = 1

[Command]
name = "D2"
command = D
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "knockdown2"
command = b+y
time = 1

;-|DMs/SDMs/HSDMs|-----------------------------------------------------------------------------------------------------------

;----------
; Drill SDM
;----------






;-|Double Tap|---------------------------------------------------------------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = ~F,F
time = 8

[Command]
name = "BB"     ;Required (do not remove)
command = ~B,B
time = 8

;-|Dir + Button|-------------------------------------------------------------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "longjump"
command = D, $U
time = 11

[Statedef -1]

;[State -1, AI Helper Check]
;type = ChangeState
;trigger1 = IsHelper(9741)
;value = 9741

;[State -1, AI Helper Check 2]
;type = ChangeState
;trigger1 = IsHelper(9742)
;value = 9742

;============================================================================================================================
; ARTIFICIAL INTELLIGENCE
;============================================================================================================================
; CURRENT LEVEL : NOT DONE YET.
;============================================================================================================================

;============================================================================================================================
; INTELLIGENCE ARTIFICIELLE
;============================================================================================================================
; NIVEAU ACTUEL : AUCUN (PAS ENCORE INCLUS)
;============================================================================================================================

;[State -1, Guard Var] ; Before any ChangeStates.
;type = VarSet
;trigger1 = P2MoveType = A && random <= 400
;trigger2 = NumEnemy
;trigger2 = (enemy, numproj > 0) && random <= 400
;trigger3 = P2MoveType != A
;trigger3 = (enemy, numproj = 0)
;trigger3 = var(23):=0
;var(23) = 1

;============================================================================================================================
; AI - Generic Behaviour
;============================================================================================================================
;----------------------------------------------------------------------------------------------------------------------------
;[State -1, Stand guard]
;type = ChangeState
;triggerall = var(0) && p2bodydist x <= 50 && random <= 600
;triggerall = StateType != A && P2statetype != C
;triggerall = P2Movetype = A
;triggerall = enemy, NumProj > 0
;trigger1 = ctrl && var(23)
;value = 130

;[State -1, Crouch guard]
;type = ChangeState
;triggerall = var(0) && p2bodydist x <= 50 && random <= 600
;triggerall = StateType != A && P2statetype = C
;triggerall = P2Movetype = A
;triggerall = enemy, NumProj > 0
;trigger1 = ctrl && var(23)
;value = 131
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; AI - Hyper Attacks
;============================================================================================================================
;============================================================================================================================
; AI - Special Attacks
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
; Bakudan Pachiki
; Trigger1 = Regular Throw Attempt
; Trigger2 = Perform if Standing Strong Punch (close) hits successfully
; Trigger3 = Perform if Crouching Light Punch hits successfully
; Trigger4 = Running Throw Attempt if opponents runs.

[State -1,BP]
type = ChangeState
value = 1100
ctrl = 0
triggerall = p2stateno != 5040 && random <= 500 && p2bodydist x <= 50
triggerall = var(0) && var(14) <= 0 && statetype != A
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100
trigger3 = stateno = 201 && animelemtime(2) >=0 && animelemtime(3) < 0 ; Standing Light Punch (close)
trigger4 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 ; Standing Light Kick (close)
trigger5 = stateno = 221 && animelemtime(2) >=0 && animelemtime(3) < 0 ; Standing Strong Punch (close)
trigger6 = stateno = 231 && animelemtime(3) >=0 && animelemtime(4) < 0 ; Standing Strong Kick (close)
trigger7 = stateno = 240 && animelemtime(4) >=0 && animelemtime(5) < 0 ; Bussashi (new cancel introduced by us)
trigger8 = stateno = 250 && animelemtime(6) >=0 && animelemtime(7) < 0 ; Standing Knockdown
trigger9 = stateno = 300 && animelemtime(3) >=0 && animelemtime(4) < 0 ; Crouching Light Punch
trigger10 = stateno = 320 && animelemtime(3) >=0 && animelemtime(4) < 0 ; Crouching Strong Punch
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Sadomazo (B)
; Trigger1 = Try it against air opponents
; Trigger2 = Try it against ground opponents

;[State -1, SM-B]
;type = ChangeState
;value = 1000
;ctrl = 0
;triggerall = p2stateno != 5040
;triggerall = var(0) && statetype != A && ctrl && (p2bodydist x = [70,130])
;trigger1 = (p2bodydist y <= -90) && p2statetype != L && p2statetype != C && p2movetype = A && random <= 400
;trigger2 = p2statetype = S && random <= 400
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; AI - Basic Attacks
;============================================================================================================================

;------------------
; Stand Light Punch
;------------------

;[State -1, SLP]
;type = ChangeState
;value = 200
;ctrl = 0
;triggerall = var(0) && (p2bodydist x = [30,90]) && random <= 300 && statetype !=A
;trigger1 = statetype != A && ctrl
;trigger2 = (p2stateno = 100||p2stateno=101)

;------------------
; Stand Strong Kick
;------------------
;
;[State -1, SSK]
;type = ChangeState
;value = 230
;ctrl = 0
;triggerall = var(0) && (p2bodydist x = [50,100]) && random <= 200 && statetype !=A
;trigger1 = statetype != A && ctrl
;trigger2 = (p2stateno = 100||p2stateno=101)

;----------------------
; Crouching Light Punch
;----------------------

;[State -1,CLK]
;type = ChangeState
;value = 300
;ctrl = 0
;triggerall = var(0) && (p2bodydist x = [50,80]) && random <= 300 && statetype !=A
;trigger1 = statetype != A && ctrl && p2statetype != A
;trigger2 = (p2stateno = 100||p2stateno=101) && statetype !=A
;trigger3 = stateno = 310 && animelemtime(3)>=0 && animelemtime(4)<0 && random <= 500 ; Crouching Light Kick
;trigger4 = stateno = 300 && animelemtime(3)>=0 && animelemtime(4)<0 && random <= 500 ; Crouching Light Punch

;---------------------
; Crouching Light Kick
;---------------------

;[State -1,CLK]
;type = ChangeState
;value = 310
;ctrl = 0
;triggerall = var(0) && (p2bodydist x = [50,80]) && random <= 300 && statetype !=A
;trigger1 = statetype != A && ctrl && p2statetype != A
;trigger2 = (p2stateno = 100||p2stateno=101) && statetype !=A
;trigger3 = stateno = 310 && animelemtime(3)>=0 && animelemtime(4)<0 && random <= 500 ; Crouching Light Kick

;----------------------
; Crouching Strong Kick
;----------------------

;[State -1,CSK]
;type = ChangeState
;value = 330
;ctrl = 0
;triggerall = var(0) && (p2bodydist x = [50,110]) && random <= 200 && statetype !=A
;trigger1 = statetype != A && ctrl && p2statetype != C
;trigger2 = (p2stateno = 100||p2stateno=101)

;============================================================================================================================
; AI - Misc.
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
; HUMAN COMMANDS
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; DMs/SDMs/MAX2
;============================================================================================================================

[State -1, Drill SDM]
type = ChangeState
value = 4000
triggerall = command = "drill2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, Drill DM]
type = ChangeState
value = 3000
triggerall = command = "drill"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, guillotine sdm]
type = ChangeState
value = 2050
triggerall = command = "guillotine3"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, guillotine a]
type = ChangeState
value = 2000
triggerall = command = "guillotine1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, guillotine b]
type = ChangeState
value = 2010
triggerall = command = "guillotine2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, DoD]
type = ChangeState
value = 2500
triggerall = command = "dod"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, MAX2]
type = ChangeState
value = 4500
triggerall = command = "max2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact
;============================================================================================================================
; Button Combinations
;============================================================================================================================


;============================================================================================================================
; SPECIAL MOVES
;============================================================================================================================

; Dagger Of Judgement weak

[State -1, knife1]
type = ChangeState
value = 1400
triggerall = command = "knife1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, knife2]
type = ChangeState
value = 1405
triggerall = command = "knife2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;Foot Crush & Sand Kick

[State -1, foot crush]
type = ChangeState
value = 1500
triggerall = command = "crush"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, sand kick]
type = ChangeState
value = 1600
triggerall = command = "sand"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;------------------------
;Gun
;------------------------
;[State -1, GUN]
;type = ChangeState
;value = 1700
;triggerall = command = "gun"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,399]) && movecontact

;------------------------
; Sadomazo (Weak Version)
;------------------------

[State -1, Sadomazo A]
type = ChangeState
value = 1000
triggerall = command = "sadomazo_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;--------------------------
; Sadomazo (Strong Version)
;--------------------------

[State -1, Sadomazo B]
type = ChangeState
value = 1001
triggerall = command = "sadomazo_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;----------------
; Bakudan Pachiki
;----------------

[State -1, Headbutt]
type = ChangeState
value = 1100
triggerall = command = "bakudan"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;-----------
; Bai Gaeshi
;-----------

[State -1, DReturn A]
type = ChangeState
value = 1200
triggerall = command = "bai_gaeshi_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact


[State -1, DReturn B]
type = ChangeState
value = 1210
triggerall = command = "bai_gaeshi_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;---------------------
; Hebi Tsukai - Zenpou
;---------------------

[State -1, HTsukai Z]
type = ChangeState
value = 1300
triggerall = command = "hebi_tsukai_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;---------------------
; Hebi Tsukai - Taikuu
;---------------------

[State -1, HTsukai T]
type = ChangeState
value = 1310
triggerall = command = "hebi_tsukai_t"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;--------------------
; Hebi Tsukai - Gedan
;--------------------

[State -1, HTsukai G]
type = ChangeState
value = 1320
triggerall = command = "hebi_tsukai_g"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact






;--------------
; Roll Backward
;--------------

[State -1, Roll]
type = ChangeState
value = 520
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, Roll]
type = ChangeState
value = 500
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

;-----------------------
; KnockDown Attack (C+D)
;-----------------------

[State -1, KnockDown Attack]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,399]) && movecontact

[State -1, KnockDown Attack]
type = ChangeState
value = 640
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;============================================================================================================================
; NORMAL THROWS
;============================================================================================================================
;------
; Punch
;------

[State -1, Punch]
type = ChangeState
value = 650
triggerall = command = "y" && !var(0)
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;-----
; Kick
;-----

[State -1, Kick]
type = ChangeState
value = 680
triggerall = command = "b" ;&& var(33) !=1
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype != A)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype != A)

;============================================================================================================================
; NORMAL MOVES
;============================================================================================================================

;-----------------------------------------------------
; Bussashi (Forward + Light Punch) - Non Combo Version
;-----------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 206
triggerall = (Command = "x") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

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
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
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
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
trigger6 = stateno = 100

;--------------------------

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
trigger3 = (stateno = [300,309])&& movecontact
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
trigger3 = (stateno = [300,309])&& movecontact
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
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
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
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
trigger6 = stateno = 100

;----------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [300,309])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact   

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [300,309])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 340
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [300,319])&& movecontact
trigger5 = (stateno = [330,339])&& movecontact
trigger6 = stateno = 100  

;-----------------
; Jump Light Punch
;-----------------

[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && !var(0)
trigger1 = statetype = A && ctrl

;---------------------------
; Jump Light Kick (vertical)
;---------------------------

[State -1, JLK2]
type = ChangeState
value = 411
triggerall = command = "a" && !var(0)
triggerall = stateno != 243 && vel x = 0
trigger1 = statetype = A && ctrl

;----------------
; Jump Light Kick
;----------------

[State -1, JLK]
type = ChangeState
value = 410
triggerall = command = "a" && !var(0)
trigger1 = statetype = A && ctrl

;-----------------------------
; Jump Strong Punch (straight)
;-----------------------------

[State -1, JSP2]
type = ChangeState
value = 421
triggerall = command = "y" && vel x = 0 
triggerall = stateno != 243 && !var(0)
trigger1 = statetype = A && ctrl 

;------------------
; Jump Strong Punch
;------------------

[State -1, JSP]
type = ChangeState
value = 420
triggerall = command = "y" && !var(0)
trigger1 = statetype = A && ctrl

;----------------------------
; Jump Strong Kick (straight)
;----------------------------

[State -1, JSK2]
type = ChangeState
value = 431
triggerall = command = "b" && vel x = 0
triggerall = stateno != 243 && !var(0)
trigger1 = statetype = A && ctrl

;-----------------
; Jump Strong Kick
;-----------------

[State -1, JSK]
type = ChangeState
value = 430
triggerall = command = "b" && !var(0)
trigger1 = statetype = A && ctrl

;============================================================================================================================
; REQUIRED COMMANDS
;============================================================================================================================

;------------
; Run Forward
;------------

[State -1, Run Forward]
type = ChangeState
value = 100
triggerall = !var(0)
trigger1 = command = "FF" && statetype = S && ctrl

;---------
; Hop Back
;---------

[State -1, Hop Back]
type = ChangeState
value = 105
triggerall = !var(0)
trigger1 = command = "BB" && statetype = S && ctrl

;------
; Taunt
;------

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start" && !var(0)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100
