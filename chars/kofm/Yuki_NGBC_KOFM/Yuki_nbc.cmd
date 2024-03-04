;-| AI Motions |--------------------------------------------------------
;
;
;
;
;
;
;
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;--------------------------------------------------------------

[Command] 
name = "AI_1" 
command = U,D,B,F,U,D,B,F,b,b,a,a,s 
time = 0

[Command] 
name = "AI_2" 
command = U,D,U,D,U,D,U,D,U,D,U,D,a+b+c+x+y+z 
time = 0

[Command] 
name = "AI_3" 
command = U,F,B,D,B,F,U,x,x,x,y,y,y,z,z,z 
time = 0

[Command] 
name = "AI_4" 
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x 
time = 0

[Command] 
name = "AI_5" 
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y 
time = 0

[Command] 
name = "AI_6" 
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z 
time = 0

[Command] 
name = "AI_7" 
command = x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z 
time = 0

[Command] 
name = "AI_8" 
command = a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c 
time = 0

[Command] 
name = "AI_9" 
command = y,a,B,B,a,D,a,B,B,a 
time = 0

[Command] 
name = "AI_10" 
command = c,U,B,B,y,B,U,D,D,y 
time = 0

[Command] 
name = "KonamiCode"
command = U,U,D,D,B,F,B,F,b,a,s 
time = 0
;-----------------------------------------------------------------------
[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1

[Command]
name = "jump"
command = D, $U
time = 12
;-| ’´•KE‹Z |--------------------------------------------------------
[Command]
name = "Neo-PlasmaLaser";"‡‘Ì•Ïg!ƒ`ƒFƒ“ƒWEƒAƒgƒ~ƒbƒNƒKƒCEƒlƒIƒX"
command = ~D,DF,F,D,DF,F, c
time = 30

[Command]
name = "Electricity-Field"
command = ~D,DB,B,DB,D,DF,F, c
time = 30

[Command]
name = "Electric-Sphere";"’´ƒh‹‰ƒXƒe[ƒ^ƒXƒAƒbƒv"
command = ~D,DF,F,D,DF,F, b
time = 30

[Command]
name = "Electric-Sphere";"’´ƒh‹‰ƒXƒe[ƒ^ƒXƒAƒbƒv"
command = ~D,DF,F,D,DF,F, a
time = 30

[Command]
name = "Plasma-Combo";"’´ƒh‹‰ƒlƒIƒWƒI—•‘"
command = ~D,DB,B,D,DB,B, x+y
time = 30

[Command]
name = "Plasma-Combo";"’´ƒh‹‰ƒlƒIƒWƒI—•‘"
command = ~D,DB,B,D,DB,B, c
time = 30

[Command]
name = "Speed-P.Attack";"ataqueconvinado"
command = ~D,DB,B,D,DB,B, x
time = 30

[Command]
name = "Speed-P.Attack";"ataqueconvinado"
command = ~D,DB,B,D,DB,B, y
time = 30

[Command]
name = "MAX330-PlasmaLaser";"’´ƒh‹‰MAX330ƒƒKƒr[ƒ€"
command = ~D,DF,F,D,DF,F, x+y
time = 30

[Command]
name = "MAX330-PlasmaLaser";"’´ƒh‹‰MAX330ƒƒKƒr[ƒ€"
command = ~D,DF,F,D,DF,F, c
time = 30

[Command]
name = "Plasma-Laser100";"’´ƒh‹‰100ƒƒKƒr[ƒ€"
command = ~D,DF,F,D,DF,F, y
time = 30

[Command]
name = "Plasma-Laser100";"’´ƒh‹‰100ƒƒKƒr[ƒ€"
command = ~D,DF,F,D,DF,F, x
time = 30


;-| •KE‹Z |------------------------------------------------------
[Command]
name = "ƒtƒ@ƒCƒ„[ƒX[ƒvƒŒƒbƒNƒXƒz[ƒ‹ƒh"
command = ~D,DB,B,F, b
time = 30

[Command]
name = "ƒtƒ@ƒCƒ„[ƒX[ƒvƒŒƒbƒNƒXƒz[ƒ‹ƒh"
command = ~D,DB,B,F, a
time = 30


[Command]
name = "ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ[y"
command = ~D,DB,B, y
time = 30

[Command]
name = "ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ["
command = ~D,DB,B, x
time = 30


[Command]
name = "—‹_Œb"
command = ~D,DB,B, b
time = 30

[Command]
name = "—‹_Œa"
command = ~D,DB,B, a
time = 30

[Command]
name = "SEENEGOEKU“`³b"
command = ~D,DF,F, b
time = 30

[Command]
name = "SEENEGOEKU“`³a"
command = ~D,DF,F, a
time = 30

[Command]
name = "ƒTƒuƒ}ƒŠƒ“ƒXƒNƒŠƒ…[y]"
command = ~F,D,DF, y
time = 30

[Command]
name = "ƒTƒuƒ}ƒŠƒ“ƒXƒNƒŠƒ…[x]"
command = ~F,D,DF, x
time = 30

[Command]
name = "ƒr[ƒXƒgƒoƒXƒ^["
command = ~D,DF,F, y
time = 30

[Command]
name = "ƒr[ƒXƒgƒoƒXƒ^["
command = ~D,DF,F, x
time = 30

[Command]
name = "‹Ù‹}‰ñ”ğ‘O"
command = x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ğ‘O"
command = z
time = 1

[Command]
name = "‹Ù‹}‰ñ”ğŒã"
command = /$B,x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ğŒã"
command = /$B,z
time = 1

;-| ‚Q‰ñ‰Ÿ‚µ‹Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 25

[Command]
name = "BB"     
command = B, B
time = 25

;-| ‚QE‚RŒÂ‚Ì“¯‰Ÿ‚µ‹Z |-----------------------------------------------
[Command]
name = "ƒƒKƒgƒ“ƒXƒp[ƒN"
command = x+y+a
time = 1

[Command]
name = "ƒƒKƒgƒ“ƒXƒp[ƒN"
command = y+z
time = 1

[Command]
name = "ƒQ[ƒW—­‚ß”­“®"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "“Š‚°"
command = y+b
time = 1

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = c
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µx"
command = /$x
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µy"
command = /$y
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µa"
command = /$a
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
name = "‚¨‚µ‚Á‚Ï‚È‚µb"
command = /$b
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µz"
command = /$z
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µc"
command = /$c
time = 1

;-| •ûŒü‚Æƒ{ƒ^ƒ“‚Åo‚·‹Z |---------------------------------------------------------
[Command]
name = "—´E‹r"
command = /$F,a
time = 1

[Command]
name = "“{†‘wŒ"
command = /$F,y
time = 1

[Command]
name = "ƒRƒ“ƒrƒl[ƒVƒ‡ƒ“1"
command = /$F,x
time = 1

[Command]
name = "ƒRƒ“ƒrƒl[ƒVƒ‡ƒ“2"
command = /$DF,y
time = 1

[Command]
name = "ƒRƒ“ƒrƒl[ƒVƒ‡ƒ“3"
command = /$B,a
time = 1

[Command]
name = "ƒRƒ“ƒrƒl[ƒVƒ‡ƒ“4"
command = /$F,b
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
name = "Trow"
command = y+b
time = 1

[Command]
name = "Trow"
command = c
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
;Šî–{ƒRƒ}ƒ“ƒh
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Electricity Field
[State -1, Super Electricity-Field]
type = ChangeState
value = 2600
triggerall = var(59) <= 0
triggerall = command = "Electricity-Field"
triggerall = power >= 5000
triggerall = numprojID(2300) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger5 = stateno = 230
trigger6 = stateno = 235
trigger7 = stateno = 240
trigger8 = stateno = 245
trigger9 = stateno = 250
trigger10= stateno = 1500 && movecontact
trigger11= stateno = 1505 && movecontact
trigger12= stateno = 1550 && movecontact
trigger13= stateno = 1555 && movecontact
;---------------------------------------------------------------------------
;Neo-Plasma Laser
[State -1, ULTRA Plasma Laser]
type = ChangeState
value = 2400
triggerall = var(59) <= 0
triggerall = command = "Neo-PlasmaLaser";"‡‘Ì•Ïg!ƒ`ƒFƒ“ƒWEƒAƒgƒ~ƒbƒNƒKƒCEƒlƒIƒX"
triggerall = power >= 3000
triggerall = numprojID(2300) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger5 = stateno = 230
trigger6 = stateno = 235
trigger7 = stateno = 240
trigger8 = stateno = 245
trigger9 = stateno = 250
;---------------------------------------------------------------------------
;Electric Sphere
[State -1, Electric-Sphere]
type = ChangeState
value = 2300
triggerall = var(59) <= 0
triggerall = command = "Electric-Sphere";"’´ƒh‹‰ƒXƒe[ƒ^ƒXƒAƒbƒv"
triggerall = power >= 1000
triggerall = numprojID(2300) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 245
trigger9 = stateno = 1500 && movecontact
trigger10= stateno = 1505 && movecontact
trigger11= stateno = 1550 && movecontact
trigger12= stateno = 1555 && movecontact
;---------------------------------------------------------------------------
;Plasma Combo
[State -1, Plasma Combo]
type = ChangeState
value = 2100
triggerall = var(59) <= 0
triggerall = command = "Plasma-Combo";"’´ƒh‹‰ƒlƒIƒWƒI—•‘"
triggerall = power >= 2000
triggerall = numprojID(2300) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 1500 && movecontact
trigger11= stateno = 1505 && movecontact
trigger12= stateno = 1550 && movecontact
trigger13= stateno = 1555 && movecontact
trigger14= stateno = 2505 && (animelemtime(23) >= 0 && animelemtime(34) <= 0)
;---------------------------------------------------------------------------
;Speed Attack
[State -1, Speed Plasma Attack]
type = ChangeState
value = 2500
triggerall = var(59) <= 0
triggerall = command = "Speed-P.Attack"
triggerall = power >= 1000
triggerall = numprojID(2300) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 245
trigger9 = stateno = 1500 && movecontact
trigger10= stateno = 1505 && movecontact
trigger11= stateno = 1550 && movecontact
trigger12= stateno = 1555 && movecontact
;---------------------------------------------------------------------------
;MAX Plasma Laser
[State -1, MAX-Plasma Laser]
type = ChangeState
value = 2200
triggerall = var(59) <= 0
triggerall = command = "MAX330-PlasmaLaser";"’´ƒh‹‰MAX330ƒƒKƒr[ƒ€"
triggerall = power >= 2000
triggerall = numprojID(2300) = 0
;triggerall = p2stateno != [5030,5055] 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 1100 && (animelemtime(6) >= 0 && animelemtime(10) <= 0);Time = [17,58]
trigger10= stateno = 1155 && movecontact
trigger11= stateno = 2000 && (animelemtime(5) >= 0 && animelemtime(20) <= 0)
trigger12= stateno = 2050 && (animelemtime(5) >= 0 && animelemtime(20) <= 0)
;---------------------------------------------------------------------------
;Plasma Laser 100
[State -1, Plasma Laser]
type = ChangeState
value = 2000
triggerall = var(59) <= 0
triggerall = command = "Plasma-Laser100";"’´ƒh‹‰100ƒƒKƒr[ƒ€"
triggerall = power >= 1000
triggerall = numprojID(2300) = 0
triggerall = p2stateno != [5030,5055] 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 410 && movecontact
trigger12= stateno = 430 && movecontact
trigger13= stateno = 1105 && (animelemtime(5) >= 0 && animelemtime(8) <= 0);Time = [17,58]
;---------------------------------------------------------------------------
;Plasma Laser 100(Air)
[State -1, Plasma Laser(Air)]
type = ChangeState
value = 2050
triggerall = var(59) <= 0
triggerall = command = "Plasma-Laser100";"’´ƒh‹‰100ƒƒKƒr[ƒ€"
triggerall = power >= 1000
triggerall = numprojID(2300) = 0
;triggerall = p2stateno != [5030,5055] 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 410 && movecontact
trigger12= stateno = 430 && movecontact
trigger13= stateno = 1155 && movecontact
;===========================================================================
;---------------------------------------------------------------------------
;ƒtƒ@ƒCƒ„[ƒX[ƒvƒŒƒbƒNƒXƒz[ƒ‹ƒh
[State -1, a]
type = ChangeState
value = 1600
triggerall = var(59) <= 0
triggerall = command = "ƒtƒ@ƒCƒ„[ƒX[ƒvƒŒƒbƒNƒXƒz[ƒ‹ƒh"
triggerall = statetype != A
triggerall = var(24) >= 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 1550
triggerall = var(59) <= 0
triggerall = command = "ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ[y"
triggerall = statetype != A
triggerall = numprojID(2300) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
;---------------------------------------------------------------------------
;”š—ôŒ
[State -1, a]
type = ChangeState
value = 1500
triggerall = var(59) <= 0
triggerall = command = "ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ["
triggerall = statetype != A
triggerall = numprojID(2300) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
;---------------------------------------------------------------------------
;ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ[
[State -1, a]
type = ChangeState
value = 1400
triggerall = var(59) <= 0
triggerall = command = "ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ[" || command = "ƒ‰ƒCƒfƒBƒ“ƒOƒq[ƒ[y"
triggerall = stateno != 1400
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 440

;---------------------------------------------------------------------------
;Electric Pulse V2.5
[State -1, a]
type = ChangeState
value = 1355
triggerall = var(59) <= 0
triggerall = command = "—‹_Œb"
triggerall = statetype = A ;|| statetype = A
trigger1 = ctrl
trigger2 = stateno = 1400
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Electric Pulse V2.0
[State -1, a]
type = ChangeState
value = 1350
triggerall = var(59) <= 0
triggerall = command = "—‹_Œb"
triggerall = statetype != A ;|| statetype = A
;triggerall = var(23) >= 1
trigger1 = ctrl
trigger2 = stateno = 1400
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 400 && movecontact
trigger13= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Electric Pulse V1.5
[State -1, a]
type = ChangeState
value = 1305
triggerall = var(59) <= 0
triggerall = command = "—‹_Œa"
triggerall = statetype = A ;|| statetype = A
trigger1 = ctrl
trigger2 = stateno = 1400
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Electric Pulse V1.0
[State -1, a]
type = ChangeState
value = 1300
triggerall = var(59) <= 0
triggerall = command = "—‹_Œa"
triggerall = statetype != A ;|| statetype = A
trigger1 = ctrl
trigger2 = stateno = 1400
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;‹­‰»”ÅSEENEGOEKU“`³
[State -1, a]
type = ChangeState
value = 1250
triggerall = var(59) <= 0
triggerall = command = "SEENEGOEKU“`³b"
triggerall = statetype != A
;triggerall = var(21) >= 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;SEENEGOEKU“`³
[State -1, a]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "SEENEGOEKU“`³a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;‹­‰»”ÅƒTƒuƒ}ƒŠƒ“ƒXƒNƒŠƒ…[
[State -1, a]
type = ChangeState
value = 1150
triggerall = var(59) <= 0
triggerall = command = "ƒTƒuƒ}ƒŠƒ“ƒXƒNƒŠƒ…[y]"
triggerall = statetype != A
triggerall = numprojID(2300) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 430 && movecontact
;---------------------------------------------------------------------------
;ƒTƒuƒ}ƒŠƒ“ƒXƒNƒŠƒ…[
[State -1, a]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "ƒTƒuƒ}ƒŠƒ“ƒXƒNƒŠƒ…[x]"
triggerall = statetype != A
triggerall = numprojID(2300) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 430 && movecontact
;---------------------------------------------------------------------------
;‹­‰»”Åƒr[ƒXƒgƒoƒXƒ^[
[State -1, a]
type = ChangeState
value = 1050
triggerall = var(59) <= 0
triggerall = command = "ƒr[ƒXƒgƒoƒXƒ^["
triggerall = statetype != A
triggerall = var(20) >= 1
triggerall = numprojID(1000) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 410 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;ƒr[ƒXƒgƒoƒXƒ^[
[State -1, a]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "ƒr[ƒXƒgƒoƒXƒ^["
triggerall = statetype != A
triggerall = numprojID(1000) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 410 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;ƒƒ‚ƒŠ[ƒJ[ƒhƒXƒ‰ƒbƒVƒ…
[State -1, a]
type = null;ChangeState
value = 1990
triggerall = var(59) <= 0
;triggerall = command = "ƒƒ‚ƒŠ[ƒJ[ƒhƒXƒ‰ƒbƒVƒ…"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 215
trigger10= stateno = 240
trigger11= stateno = 440
trigger12= stateno = 245

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;P??
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
triggerall = var(59) <= 0
;------------------------------------------------------------------------------
;K??
[State -1, Throw]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
triggerall = var(59) <= 0
;---------------------------------------------------------------------------
;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹‚Ó‚Á”ò‚Î‚µUŒ‚
[State -1, 290]
type = null;ChangeState
value = 291
triggerall = var(59) <= 0
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ƒ~ƒ…[ƒeƒCƒVƒ‡ƒ“ƒRƒ“ƒrƒl[ƒVƒ‡ƒ“
[State -1, Stand Light Punch]
type = null;ChangeState
value = 260
triggerall = var(59) <= 0
triggerall = command = "ƒRƒ“ƒrƒl[ƒVƒ‡ƒ“1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
trigger3 = movecontact && stateno = 235

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹ƒtƒƒ“ƒgƒXƒeƒbƒv
[State -1, 700]
type = null;ChangeState
value = 100
triggerall = var(59) <= 0
triggerall = command = "FF"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = 150
trigger3 = power >= 1000
trigger3 = stateno = 152
trigger4 = stateno = 100
trigger5 = stateno = 101
triggerall = var(59) <= 0
;---------------------------------------------------------------------------
[State -1, recovery]
type = ChangeState
value = 5201
triggerall = command = "recovery"
triggerall = alive = 1
triggerall = var(48)= 0
triggerall = var(59) <= 0
trigger1 = stateno = 5050
trigger1 = pos y > 0
trigger1 = vel y > 0
;---------------------------------------------------------------------------
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = statetype != A
triggerall = var(59) <= 0
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = 150
trigger3 = power >= 1000
trigger3 = stateno = 152
trigger4 = stateno = 100
trigger5 = stateno = 101
triggerall = var(50) = 0
;---------------------------------------------------------------------------
; Power charge
[State -1]
type = ChangeState
value = 910
triggerall = statetype = S
triggerall = Power < 5000
triggerall = ctrl = 1
triggerall = var(59) <= 0
trigger1 = command = "holdy"
trigger1 = command = "holda"
triggerall = var(50) = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ƒtƒƒ“ƒgƒXƒeƒbƒv
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(30)
triggerall = var(59) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Œã‘Şƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(30)
triggerall = var(59) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;?????
[State -1, Throw]
type = ChangeState
value = 300
triggerall = command = "Trow"
triggerall = statetype != A
triggerall = var(59) <= 0
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = 150
trigger3 = power >= 1000
trigger3 = stateno = 152
trigger4 = stateno = 100
trigger5 = stateno = 101
triggerall = var(50) = 0
;---------------------------------------------------------------------------
[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "Trow"
triggerall = statetype = A
trigger1 = ctrl
triggerall = var(59) <= 0
;---------------------------------------------------------------------------
;‰“‹——£—§‚¿ãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿ãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 205 && (animelemtime(3) >= 0 && animelemtime(4) < 0) && movecontact

;---------------------------------------------------------------------------
;‰“‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;‰“‹——£—§‚¿ãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 245 && movecontact
;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿ãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 245 && movecontact
;---------------------------------------------------------------------------
;‰“‹——£—§‚¿‹­ƒLƒbƒN1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 250 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 235 && movecontact
;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) <= 0
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 235 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10= stateno = 245 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 430 && movecontact

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && (animelemtime(4) >= 0 && animelemtime(5) < 0) && movehit

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;‹ó’†ãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‹­ƒpƒ“ƒ`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†ãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; AI switch -> ON



;[State Activate AI]
;type = Varset
;triggerall = var(59) != 1
;trigger1 = command = "AI_1"
;trigger2 = command = "AI_2"
;trigger3 = command = "AI_3"
;trigger4 = command = "AI_4"
;trigger5 = command = "AI_5"
;trigger6 = command = "AI_6"
;trigger7 = command = "AI_7"
;trigger8 = command = "AI_8"
;trigger9 = command = "AI_9"
;trigger10 = command = "AI_10"
;trigger10 = command = "KonamiCode"
;v = 59
;value = 1
;ignorehitpause = 1
;persistent = 1
;
;[State OFF]
;type = VarSet
;trigger1 = roundstate>2
;trigger2 = !alive
;trigger3 = stateno = 5500
;v = 59
;value = 0
;ignorehitpause = 1
;persistent = 1
;-----------------------------------------------------
;defensa parado
;[State -1, AI_1]
;type = changestate
;triggerall = roundstate = 2
;triggerall = var(59) = 1
;triggerall = statetype = S
;triggerall = stateno = 100
;triggerall = p2statetype = S || p2statetype = A
;triggerall = random < 999
;triggerall = random < 800
;trigger1 = (p2bodydist X = [-45,300]) && (p2movetype = A)
;trigger2 = (inguarddist) && (p2movetype != H)
;trigger2 = enemynear,numproj >= 1
;value = 130;130
;
;defensa agachado
;[State -1, AI_1]
;type = changestate
;triggerall = roundstate = 2
;triggerall = var(59) = 1
;triggerall = statetype = C
;triggerall = stateno = 100
;triggerall = p2statetype = C
;triggerall = random < 999
;triggerall = random < 800
;trigger1 = p2movetype = A
;trigger1 = p2bodydist X = [-45,300] 
;trigger2 = (inguarddist) && (enemynear,numproj >= 1)
;trigger2 = p2movetype != H
;value = 131;131
;
;[State -1, AI_run]
;type = ChangeState
;value = 100
;triggerall = var(59) != 0
;triggerall = roundstate = 2
;triggerall = (p2movetype != A) || (enemynear,numproj = 0) || (Enemynear,Ishelper= 0); || (!Inguarddist)
;triggerall = statetype != A
;triggerall = ctrl && stateno != 100
;trigger1 = p2bodydist X >= 15 && random = [0,350]
;ctrl = 1
;
;[State -1, AI_run_stop]
;type = ChangeState
;value = ifelse(p2statetype=C,131,130)
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = stateno = 100
;triggerall = stateno != 0
;triggerall = p2bodydist X < 255
;trigger1 = p2movetype = A && p2bodydist X < 295  || (enemynear,numproj > 0) || (Enemynear,Ishelper> 0); || (!Inguarddist)
;trigger2 = Roundstate = 3
;trigger3 = p2bodydist X < 0
;ctrl = 1
;
;[State -1, AI_run_stop]
;type = ChangeState
;value = 0
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = stateno = 100
;triggerall = stateno != 0
;triggerall = p2bodydist X < 255
;trigger1 = p2movetype = A && p2bodydist X < 255  || (enemynear,numproj > 0) || (Enemynear,Ishelper> 0); || (!Inguarddist)
;trigger1 = Roundstate = 3
;trigger2 = p2bodydist X < -10
;ctrl = 1
;
;[State -1, AI_2]
;type = ChangeState
;value = 105
;triggerall = var(59) = 1
;triggerall = roundstate = 2
;triggerall = statetype != A
;trigger1 = ctrl || stateno = 100
;trigger1 = p2bodydist X <= 150
;trigger1 = p2stateno = 5120
;trigger1 = Time < 31
;
;[State -1, AI_2]
;type = null;ChangeState
;value = 5201
;triggerall = var(59) = 1 && roundstate = 2
;triggerall = alive = 1
;trigger1 = statetype = A
;trigger1 = Movetype = H
;trigger1 = pos y > -30
;trigger1 = vel y > 0 && vel y < 9
;
;[State -1, AI] ; punch
;type = null;ChangeState
;value = 200 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 500 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [20,40] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = statetype = A ;Trigger when your char is in air(any trigger can have it's opposet by typing "!" next to the equal like the next one)
;triggerall = statetype = S ;Trigger when your char is standing
;triggerall = statetype = C ;Trigger when your char is crouching
;triggerall = p2statetype = A ;Trigger when your opponent is in air(uppercuts dear friend)
;triggerall = p2statetype != L ;Trigger when your opponent is not on the floor
;triggerall = p2statetype = S ;Trigger when your opponent is standing(mainly for throwing ability)
;triggerall = p2statetype = C ;Trigger when your opponent is crouching
;triggerall = movetype != H ;Trigger when your char is not being hit(anti cheap of course)
;triggerall = movetype = A ;Trigger when your char is in an attack state
;triggerall = p2movetype = A ;Trigger when your opponent is attacking(good for counters)
;triggerall = p2movetype != A ;Trigger when your opponent is not attacking
;triggerall = p2movetype = H ;Trigger when your opponent is being hit(good for combos)
;triggerall = p2bodydist x >= 150 ;Trigger when your opponent is more than 150 pixels away horizontaly(far)
;triggerall = p2bodydist x <= 30 ;Trigger when opponent is less than 30 pixels away horizontaly(close)
;triggerall = p2bodydist x >= 0 ;Trigger when opponent is in front of your character
;triggerall = p2bodydist y > 60 ;Trigger when opponent is 60 pixels under you(good for aerial attacks)
;triggerall = p2bodydist y > -60 ;Trigger when opponent is more than 60 pixels above you
;trigger1 = ctrl = 1 ;Trigger when your character can be controled
;trigger1 = ctrl = 0 ;Trigger when your character cannot be controled(good for combos)
;triggerall = random < 500 ;Randomize the move
;trigger1 = stateno = 700 && movecontact ;Trigger when in state 700 and move made contact whether hit or blocked
;trigger1 = stateno = 700 && movehit ;Trigger when in state 700 and the move hit
;trigger1 = stateno = 700 && movehit && animtime = 0 ;same as above but trigger after the move animation ends
;trigger1 = stateno = 700 && movehit && animtime = -25 ;same as above but there are 25 more ticks left in the animation
;triggerall = power >= 1000 ;Trigger when you have one or more than one power stock
;triggerall = backedgedist < 5 ;Trigger when your character is cornered
;triggerall = life < 250 ;Trigger when you have less than 1/4 of your health
;triggerall = p2life > 500 ;Trigger when opponent have more than 1/2 of his health
;triggerall = enemy,NumProj = 0 ;Trigger when there is no projectile attack from opponent
;triggerall = enemy,NumProj = 1 ;Trigger when opponent has fired a projectile
;triggerall = p2stateno = 700 ;Trigger when opponent is in state no.700(use wisely)
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 610 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = statetype = A ;Trigger when the char is not in air
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 205 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 699 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2bodydist x = [0,10] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;trigger2 = stateno = 205 && movecontact
;trigger2 = p2bodydist X <= 25 || (EnemyNear(Var(59)),BackEdgeBodyDist > 20 && p2bodydist X <= 35) ;Consecutive Hit
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 430 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A
;triggerall = p2statetype != A
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5050,5121]
;triggerall = p2bodydist x = [0,20] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2movetype != A ;Trigger when the opponent is not in air
;trigger1 = ctrl = 1 ;Character can be controled (Not performing a move)
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 400 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A
;triggerall = p2statetype != L
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 430 && movecontact
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 410 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A
;triggerall = p2statetype != L
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 400 && movecontact
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 245 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 205 && movecontact
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 215 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [0,10] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 235 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [0,10] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 ;Character can be controled (Not performing a move)
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 215 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 100 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [0,19] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 235 && movecontact
;
;[State -1, AI_1] ; punch
;type = ChangeState
;value = 250 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 100 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [0,19] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 215 && movecontact
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1100 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [15,22] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype = S || p2statetype = A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 ;Character can be controled (Not performing a move)
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1150 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [10,22] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype = S || p2statetype = A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 ;Character can be controled (Not performing a move)
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1100 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 550 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 250 && movecontact
;trigger2 = stateno = 245 && movecontact
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1150 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 850 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 250 && movecontact
;trigger2 = stateno = 245 && movecontact
;
;[State -1, AI_3] ; punch
;type = ChangeState
;value = 1000 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 899 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = numproj = 0
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 250 && movehit
;trigger2 = stateno = 410 && movehit
;
;[State -1, AI_3] ; punch
;type = ChangeState
;value = 1050 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 899 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = numproj = 0
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 250 && movehit
;trigger2 = stateno = 410 && movehit
;
;[State -1, AI_3] ; punch
;type = ChangeState
;value = 1000 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = numproj = 0
;triggerall = random < 450 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x >= 150 ;Trigger when your opponent is more than 150 pixels away horizontaly(far)
;triggerall = p2stateno != [130,159]
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;
;[State -1, AI_3] ; punch
;type = ChangeState
;value = 1050 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = numproj = 0
;triggerall = random < 450 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x >= 150 ;Trigger when your opponent is more than 150 pixels away horizontaly(far)
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2stateno != [130,159]
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;
;[State -1, AI_4] ; punch
;type = ChangeState
;value = 1200 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 250 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [0,100]
;triggerall = p2movetype = A || p2statetype = S
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2movetype != H 
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;
;[State -1, AI_4] ; punch
;type = ChangeState
;value = 1250 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 250 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [0,100]
;triggerall = p2movetype = A || p2statetype = S
;triggerall = p2movetype != H 
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;trigger1 = ctrl = 1 || stateno = 100 ;Character can be controled (Not performing a move)
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2000 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = p2stateno = [5020,5050]
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;trigger1 = stateno = 1100 && (animelemtime(9) >= 0 && animelemtime(10) <= 0)
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2050 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = p2stateno = [5020,5036]
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;trigger1 = stateno = 1150 && (animelemtime(15) >= 0 && animelemtime(16) <= 0)
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2000 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = random < 5 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5000,5999]
;triggerall = p2statetype = A || p2statetype = S
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2movetype != H
;triggerall = p2statetype != L
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2050 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = random < 5 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5000,5999]
;triggerall = p2statetype = A || p2statetype = S
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2movetype != H
;triggerall = p2statetype != L
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2200 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A ;Trigger when the char is not in air
;triggerall = p2life >= 350
;triggerall = power >= 2000
;triggerall = p2stateno = [5020,5050]
;triggerall = random < 60 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;trigger1 = stateno = 2000 && (animelemtime(16) >= 0 && animelemtime(17) <= 0)
;trigger2 = stateno = 2050 && (animelemtime(16) >= 0 && animelemtime(17) <= 0)
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1500 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2movetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 250 && movecontact
;trigger2 = stateno = 245 && movehit
;trigger3 = stateno = 410 && movecontact
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1550 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != L ;Trigger when opponent is not lying on the floor
;triggerall = p2movetype != A ;Trigger when the opponent is not in air
;trigger1 = stateno = 250 && movecontact
;trigger2 = stateno = 245 && movehit
;trigger3 = stateno = 410 && movecontact
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1500 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2movetype = A ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [50,258] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_2] ; punch
;type = ChangeState
;value = 1550 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2movetype = A ;Trigger when opponent is not lying on the floor
;triggerall = p2bodydist x = [50,258] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A ;Trigger when the opponent is not in air
;triggerall = p2movetype != H 
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2350 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;trigger1 = stateno = 1501 && movecontact && (animelemtime(7) >= 0 && animelemtime(8) <= 0) ;&& Var(5) = 0
;trigger2 = stateno = 1502 && movecontact && (animelemtime(7) >= 0 && animelemtime(8) <= 0) ;&& Var(5) = 1
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2100 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 2000
;triggerall = p2life >= 350
;;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;trigger1 = stateno = 2352 && (animelemtime(26) >= 0 && animelemtime(27) <= 0) ;&& Var(5) = 0
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2300 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = random < 50 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5000,5999]
;triggerall = p2statetype != A || P2statetype = S || p2statetype = C
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2stateno = [1000,1999]
;triggerall = p2movetype != H
;triggerall = p2statetype != L
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2350 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 1000
;triggerall = random < 5 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5000,5999]
;triggerall = p2statetype != A || p2statetype = S || p2statetype = C
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2movetype != H
;triggerall = p2statetype != L
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2500 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 3000
;triggerall = life <= 1200
;triggerall = random < 35 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5000,5999]
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2movetype != H 
;triggerall = p2statetype != A || p2statetype = S || p2statetype = C
;triggerall = p2statetype != L
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_5] ; punch
;type = ChangeState
;value = 2400 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype != A ;Trigger when the char is not in air
;triggerall = power >= 5000
;triggerall = life <= 500
;triggerall = random < 15 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2stateno != [5000,5999]
;triggerall = p2stateno != 1220
;triggerall = p2stateno != 1221
;triggerall = p2movetype != H 
;triggerall = p2statetype != A || p2statetype = S || p2statetype = C
;triggerall = p2statetype != L
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_4] ; punch
;type = ChangeState
;value = 1400 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A ;Trigger when the char is not in air
;triggerall = random < 999 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2bodydist x = [100,258] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2movetype != H 
;triggerall = p2statetype != A || p2statetype = C
;trigger1 = Ctrl = 1
;
;[State -1, AI_7] ; punch
;type = ChangeState
;value = 1300 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A || statetype = S
;triggerall = random < 355 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != A
;triggerall = p2statetype != L
;triggerall = p2movetype != H 
;triggerall = p2stateno != [130,159] 
;trigger1 = stateno = 610 && movecontact && animtime = 0
;trigger2 = stateno = 1400 && (animelemtime(5) >= 0 && animelemtime(8) <= 0) ;&& p2bodydist x = [-10,10]
;trigger3 = stateno = 435 && movecontact
;
;[State -1, AI_7] ; punch
;type = ChangeState
;value = 1350 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A || statetype = S
;triggerall = random < 355 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2statetype != A
;triggerall = p2statetype != L
;triggerall = p2movetype != H || p2movetype = A
;triggerall = p2stateno != [130,159] 
;trigger1 = stateno = 610 && movecontact && animtime = 0
;trigger2 = stateno = 1400 && (animelemtime(5) >= 0 && animelemtime(8) <= 0) ;&& p2bodydist x = [-10,10]
;trigger3 = stateno = 435 && movecontact
;
;[State -1, AI_7] ; punch
;type = ChangeState
;value = 1300 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A || statetype = S
;triggerall = random < 450 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2bodydist x = [20,300] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A
;triggerall = p2statetype != L
;triggerall = p2movetype != H || p2movetype = A
;triggerall = p2stateno != [130,159] 
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI_7] ; punch
;type = ChangeState
;value = 1350 ;State no. of the animation you want the CPU to perform
;triggerall = roundstate = 2 ;Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = var(59) = 1 ;AI variable that must be used in every CPU command
;triggerall = statetype = A || statetype = S
;triggerall = random < 450 ;Trigger the move in 50% of the times the conditions is met (i'll explain more)
;triggerall = p2bodydist x = [20,300] ;Trigger when the opponent is between 0 to 40 pixels away horizontaly
;triggerall = p2statetype != A
;triggerall = p2statetype != L
;triggerall = p2movetype != H 
;triggerall = p2stateno != [130,159] 
;trigger1 = Ctrl = 1 || stateno = 100
;
;[State -1, AI]
;type = ChangeState
;value = 300
;triggerall = var(59) = 1
;triggerall = roundstate = 2
;triggerall = random <= 10
;triggerall = p2bodydist x = [0,50]
;triggerall = (stateno = 150 || stateno = 151) && power >= 1000
;trigger1 = statetype != A
;
;[State AI]
;type = ChangeState
;value = 440
;triggerall = var(59) = 1
;triggerall = random <= 100
;triggerall = roundstate = 2
;triggerall = ctrl && statetype != A
;triggerall = statetype = S
;triggerall = p2stateno != [5050,5121]
;triggerall = p2statetype != A
;triggerall = p2movetype != A
;triggerall = p2bodydist x = [50,100]
;trigger1 = ctrl = 1