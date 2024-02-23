;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;Comand File By TonyADV
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------


;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-| Normal Command |----------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;-| Super Motions |-----------------------------

;Sacro Aquarius con Armatura d'Oro
[Command]
name = "Sacro Aquarius Oro"
command = ~D, F, D, F, c
time = 30

;Sacro Aquarius senza Armatura
[Command]
name = "Aquarius Senza Armatura"
command = ~D, F, D, B, c
time = 30

;Sacro Aquarius
[Command]
name = "Sacro Aquarius"
command = ~D, F, D, F, z
time = 30

;Polvere di Diamanti senza Armatura
[Command]
name = "Polvere Senza Armatura"
command = ~D, B, D, B, c
time = 30

;Vortice Fulminate Dell'Aurora
[Command]
name = "Vortice Fulminate Dell'Aurora"
command = ~D, B, D, B, z
time = 30


;Polvere di Diamanti
[Command]
name = "Polvere di Diamanti"
command = ~D, F, D, F, x
time = 30
;Polvere di Diamanti
[Command]
name = "Polvere di Diamanti"
command = ~D, F, D, F, y
time = 30

;Aurora del Nord
[Command]
name = "Aurora del Nord"
command = ~D, F, D, F, a
time = 30
;Aurora del Nord
[Command]
name = "Aurora del Nord"
command = ~D, F, D, F, b
time = 30









;-| Special Motions |----------------------------

;Tifone di Gelo
[Command]
name = "Kolodny Smerch 1"
command = ~F, DF, F, x
time = 30
;Tifone di Gelo
[Command]
name = "Kolodny Smerch 1"
command = ~F, DF, F, y
time = 30

;Congelamento delle Gambe
[Command]
name = "Kolodny Smerch 3"
command = ~D, DF, F, x
time = 30
;Congelamento delle Gambe
[Command]
name = "Kolodny Smerch 3"
command = ~D, DF, F, y
time = 30

;Mini-Polvere di Diamanti
[Command]
name = "Mini Polvere"
command = ~D, DF, F, a
time = 30
[Command]
name = "Mini Polvere"
command = ~D, DF, F, b
time = 30


;Calcio del Cigno
[Command]
name = "Cygnus Kick"
command = ~D, DF, F, a
time = 30
[Command]
name = "Cygnus Kick"
command = ~D, DF, F, b
time = 30


;Anelli di Ghiaccio
[Command]
name = "Anelli di Ghiaccio"
command = ~D, DB, B, x
time = 30
[Command]
name = "Anelli di Ghiaccio"
command = ~D, DB, B, y
time = 30


;Volo del Cigno
[Command]
name = "Cignus Fly"
command = ~D, DB, B, a
time = 30
[Command]
name = "Cignus Fly"
command = ~D, DB, B, b
time = 30


;Furia del Cigno
;[Command]
;name = "Furia"
;command = c
;time = 1

;---------------------------
;Carika cosmo
;---------------------------
[Command]
name = "charge"
command = /z
time= 1
[Command]
name = "charge 1"
command= /c
time= 1

;---------------------------
;Settimo senso
;---------------------------
[Command]
name = "7senso"
command = a+x
time = 5

;-| Double Tap |-------------------------------------
;Corsa Avanti
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

;Scatto indietro
[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |---------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |--------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |--------------------------------------
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

;-| Hold Dir |--------------------------------------
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

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-------------- CMD standard -------------------
[Statedef -1]
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;===============================================

;carica Cosmo
;[State -1]
;type = ChangeState
;value = 730000
;triggerall = Var(59) = 0
;triggerall = Power < 3000
;triggerall = command = "charge"
;triggerall = command = "charge 1"
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;Furia del Cigno
;[State -1]
;type = ChangeState
;value = 709
;triggerall = Var(59) = 0
;triggerall = command = "Furia"
;triggerall = command = "holdfwd"
;triggerall = P2BodyDist X <= 10
;trigger1 = P2StateType = S
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;settimo senso
;[State -1]
;type = ChangeState
;value = 8000
;triggerall = Var(59) = 0
;triggerall = var(8) = 0
;triggerall = command = "7senso"
;triggerall = power >= 3000
;triggerall = life <= 250
;trigger1 = statetype != A
;trigger1 = ctrl = 1

;Aurora del Nord
[State -1]
type = ChangeState
value = 3020
triggerall = command = "Aurora del Nord"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Vortice Fulminate Dell'Aurora
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Vortice Fulminate Dell'Aurora"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Polvere di Diamanti
[State -1]
type = ChangeState
value = 3030
triggerall = command = "Polvere di Diamanti"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Polvere di Diamanti senza Armatura
[State -1]
type = ChangeState
value = 3300
triggerall = command = "Polvere Senza Armatura"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Sacro Aquarius
[State -1]
type = ChangeState
value = 3200
triggerall = command = "Sacro Aquarius"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Sacro Aquarius senza Armatura
[State -1]
type = ChangeState
value = 3400
triggerall = command = "Aquarius Senza Armatura"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Sacro Aquarius con Armatura d'Oro
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Sacro Aquarius Oro"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;Kolodny Smerch debole
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Kolodny Smerch 1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;Kolodny Smerch + Congelamento
[State -1]
type = ChangeState
value = 1200
triggerall = command =  "Kolodny Smerch 3"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Mini-Polvere di Diamanti
[State -1]
type = ChangeState
value = 1700
triggerall = command = "Mini Polvere"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Cygnus Kick
[State -1]
type = ChangeState
value = 1600
triggerall = command = "Cygnus Kick"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Anelli di Ghiaccio
[State -1]
type = ChangeState
value = 1500
triggerall = command ="Anelli di Ghiaccio"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Cignus Fly
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Cignus Fly"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;pugno debole in salto
[State -1]
type = ChangeState
value = 600
triggerall = command = "Kolodny Smerch 3"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "Cignus Fly"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;Corsa
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Scatto indietro
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------
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
;-----------------------------------------------

;Pugno Fortissimo
[State -1]
type = ChangeState
value = 925
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;calcio forte in salto
[State -1]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;-----------------------------------------------
;-----------------------------------------------

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
value = 216
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

;-----------------------------------------------

;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 236
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

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

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 246
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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




;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

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

;-------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 435
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

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------



;pugno medio in salto
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 610
trigger2 = movecontact >= 1
trigger3 = stateno = 630
trigger3 = movecontact >= 1
trigger4 = stateno = 640
trigger4 = movecontact >= 1
trigger5 = stateno = 650
trigger5 = movecontact >= 1

;pugno forte in salto
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 610
trigger2 = movecontact >= 1
trigger3 = stateno = 630
trigger3 = movecontact >= 1
trigger4 = stateno = 640
trigger4 = movecontact >= 1
trigger5 = stateno = 650
trigger5 = movecontact >= 1

;------------------------------------------------

;calcio debole in salto
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 610
trigger2 = movecontact >= 1
trigger3 = stateno = 630
trigger3 = movecontact >= 1
trigger4 = stateno = 640
trigger4 = movecontact >= 1
trigger5 = stateno = 650
trigger5 = movecontact >= 1

;calcio medio in salto
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 610
trigger2 = movecontact >= 1
trigger3 = stateno = 630
trigger3 = movecontact >= 1
trigger4 = stateno = 640
trigger4 = movecontact >= 1
trigger5 = stateno = 650
trigger5 = movecontact >= 1



;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;provocazione
[State -1]
type = ChangeState
value = 199
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = stateno != 199
trigger1 = stateno != 198
trigger1 = stateno != 1982
trigger1 = stateno != 1981
trigger1 = ctrl = 1

;-----------------------------------------------
;-| AI Variabile |------------------------------
;-----------------------------------------------


;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
