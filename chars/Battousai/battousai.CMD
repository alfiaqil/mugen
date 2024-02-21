;-| Super Motions |--------------------------------------------------------

[command]
name    = "battou"
command = ~D,DB,B,x+y

[command]
name    = "battou"
command = ~D,DB,B,x+z

[command]
name    = "battou"
command = ~D,DB,B,y+z

[command]
name    = "ryusho"
command = ~D,DF,F,a+b

[command]
name    = "zan"
command = ~D,DF,F,x+y

[command]
name    = "arashiex"
command = ~D,DB,B,a+b

;-| Special Motions |------------------------------------------------------

[Command]
name    = "sousen"
command = ~x, x, x

[Command]
name    = "sousen"
command = ~y, y, y

[Command]
name    = "sousen"
command = ~z, z, z

[Command]
name    = "uppercut"
command = ~F,D,DF, x

[Command]
name    = "uppercut"
command = ~F,D,DF, y

[Command]
name    = "uppercut"
command = ~F,D,DF, z

[Command]
name = "ryutsuia"
command = ~D,DF,F, x

[Command]
name = "ryutsuib"
command = ~D,DF,F, y

[Command]
name = "ryutsuic"
command = ~D,DF,F, z

[Command]
name = "shinsoku"
command = ~D,DB,B, x

[Command]
name = "shinsoku"
command = ~D,DB,B, y

[Command]
name = "shinsoku"
command = ~D,DB,B, z

[Command]
name = "ryukan"
command = ~D,DF,F, a

[Command]
name = "ryukan"
command = ~D,DF,F, b

[Command]
name = "ryukan"
command = ~D,DF,F, c

[Command]
name = "arashi"
command = ~D,DB,B, a

[Command]
name = "arashi"
command = ~D,DB,B, b

[Command]
name = "arashi"
command = ~D,DB,B, c

[Command]
name    = "push"
command = c+z

[Command]
name    = "grab"
command = b+y

[Command]
name    = "haku"
command = a+x

;-| Double Tap |---------------------------------------------------
[Command]
name    = "FF";Required (do not remove)
command = F, F
time    = 10

[Command]
name = "BB"
command = B, B
time = 12

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name    = "recovery";Required (do not remove)
command = c+z
time    = 1

[Command]
name    = "ab"
command = a+b
time    = 1

[command]
name    = "xy"
command = x+y
time    = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name    = "fwd_x"
command = /F,x
time    = 1

[Command]
name    = "fwd_y"
command = /F,y
time    = 1

[Command]
name    = "fwd_z"
command = /F,z
time    = 1

[Command]
name    = "fwd_a"
command = /F,a
time    = 1

[Command]
name    = "fwd_b"
command = /F,b
time    = 1

[Command]
name    = "fwd_c"
command = /F,c
time    = 1

[Command]
name    = "back_a"
command = /B,a
time    = 1

[Command]
name    = "back_b"
command = /B,b
time    = 1

[Command]
name    = "back_c"
command = /B,c
time    = 1

[Command]
name    = "back_x"
command = /B,x
time    = 1

[Command]
name    = "back_y"
command = /B,y
time    = 1

[Command]
name    = "back_z"
command = /B,z
time    = 1

[Command]
name    = "down_a"
command = /$D,a
time    = 1

[Command]
name    = "down_b"
command = /$D,b
time    = 1

[Command]
name    = "down_c"
command = /$D,c
time    = 1

[Command]
name    = "down_x"
command = /$D,x
time    = 1

[Command]
name    = "down_y"
command = /$D,y
time    = 1

[Command]
name    = "down_z"
command = /$D,z
time    = 1

[Command]
name    = "fwd_ab"
command = /F, a+b
time    = 1

[Command]
name    = "back_ab"
command = /B, a+b
time    = 1

;-| Single Button |---------------------------------------------------------
[Command]
name    = "a"
command = a
time    = 1

[Command]
name    = "b"
command = b
time    = 1

[Command]
name    = "c"
command = c
time    = 1

[Command]
name    = "x"
command = x
time    = 1

[Command]
name    = "y"
command = y
time    = 1

[Command]
name    = "z"
command = z
time    = 1

[Command]
name    = "s"
command = s
time    = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name    = "hold_x"
command = 
time    = 1

[Command]
name    = "hold_y"
command = 
time    = 1

[Command]
name    = "hold_z"
command = 
time    = 1

[Command]
name    = "hold_a"
command = 
time    = 1

[Command]
name    = "hold_b"
command = 
time    = 1

[Command]
name    = "hold_c"
command = 
time    = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name    = "holdfwd";Required (do not remove)
command = /$F
time    = 1

[Command]
name    = "holdback";Required (do not remove)
command = /$B
time    = 1

[Command]
name    = "holdup";Required (do not remove)
command = /$U
time    = 1

[Command]
name    = "holddown";Required (do not remove)
command = /$D
time    = 1

[Command]
name    = "holddownback"
command = /$DB
time    = 1

[Command]
name    = "holddownforward"
command = /$DF
time    = 1

[statedef -1]
;---------------------------------------------------------------------------
[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
TriggerAll = Var(21) < 1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 21
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(21)>0  ; it is on and
Trigger1=RoundState!=2  ; the round is not started yet or is already over
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v=21
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(22)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;---------------------------------------------------------------


; AI kaiten battou jutsu
[State -1]
type = ChangeState
value = 3040
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = p2BodyDist x = [50,78]
triggerall = P2stateno != 5001
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
triggerall = Enemynear,Vel X > 0
triggerall = Win = 0
triggerall = statetype = S
triggerall = ctrl = 1
Triggerall = AILevel >= 4
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = life = [599,950]
trigger1 = power = [2000,3000]
trigger1 = random = [101,200] 
trigger2 = life <= 450
trigger2 = power = [2000,2100]
trigger2 = random = [101,200] 
trigger3 = P2life <= 315
trigger3 = power >= 2000
trigger3 = random = [351,510] 
trigger4 = stateno = 320
trigger4 = movehit
trigger4 = power = [2000,3000]


; AI Kaiten Battou Jutsu Cancel
[state - 1]
type = changestate
value = 3500
triggerall = var(21) = 1
triggerall = p2BodyDist x <= 70
triggerall = power >= 2000
Triggerall = AILevel >= 4
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = stateno = 3051
trigger1 = movehit
trigger1 = hitcount >= 5

; AI Kaiten Battou Jutsu Air
[State -1]
type = ChangeState
value = 3600
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = p2bodydist X <= 80
triggerall = P2stateno != 5001
triggerall = P2stateno != [5030,5210]
triggerall = Pos Y <= -80
triggerall = Win = 0
triggerall = statetype = A
triggerall = ctrl = 1
Triggerall = AILevel >= 4
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = life = [599,950]
trigger1 = power = [2000,3000]
trigger1 = random = [101,200] 
trigger2 = life <= 450
trigger2 = power = [2000,2100]
trigger2 = random = [101,200] 
trigger3 = P2life <= 315
trigger3 = power >= 2000
trigger3 = random = [351,510] 

; AI Ryu Tsui Sen Zan EX
[State -1]
type = ChangeState
value = 3030
triggerall = var(21)
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Enemynear,statetype != L
triggerall = Enemynear,Vel X = 0
triggerall = var(40) = 0
triggerall = p2bodydist x = [86,100]
triggerall = power >= 1500
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21|| stateno = 100|| stateno = [120,149]
Triggerall = AILevel >= 5
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = Enemynear,time >= 0
trigger1 = Enemynear,movetype = A
trigger2 = EnemyNear,AnimTime <= -18 
trigger2 = Enemynear,movetype = A
trigger3 = Enemynear,hitdefattr = SC, AP

; AI Ryu Sho Sen EX
[state - 1]
type = changestate
value = 3020
triggerall = alive
triggerall = statetype != A
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = win != 1
triggerall = P2BodyDist x = [0,20]
triggerall = P2stateno != [120,155]
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 4
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = power >= 1500
trigger1 = enemy, Pos Y >= -92
trigger1 = random >= 700
trigger1 = ctrl = 1
trigger1 = P2movetype != H
trigger1 = P2statetype = A
trigger2 = stateno = 447
trigger2 = P2movetype = H
trigger2 = P2statetype = S
trigger2 = power >= 1800
trigger2 = random <= 50
trigger3 = power >= 1000
trigger3 = stateno = 3014
trigger3 = hitcount >= 7
trigger3 = random <= 700
trigger4 = stateno = 2000
trigger4 = movehit = 1
trigger4 = hitcount >= 4
trigger4 = power >= 1500

; AI Arashi EX
[state - 1]
type = changestate
value = 3050
triggerall = alive
triggerall = statetype != A
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = win != 1
triggerall = P2stateno != [120,155]
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 3
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = P2BodyDist x = [60,70]
trigger1 = power >= 1500
trigger1 = enemy, Pos Y >= -92
trigger1 = random >= 700
trigger1 = ctrl = 1
trigger1 = P2movetype != H
trigger1 = P2statetype = A
trigger1 = power >= 1500
trigger2 = P2BodyDist x = [21,60]
trigger2 = stateno = 447
trigger2 = P2movetype = H
trigger2 = P2statetype = S
trigger2 = power >= 1800
trigger2 = random <= 50
trigger4 = P2BodyDist x = [21,60]
trigger3 = power >= 1000
trigger3 = stateno = 3014
trigger3 = hitcount >= 7
trigger3 = random <= 700
trigger4 = P2BodyDist x = [21,60]
trigger4 = stateno = 2000
trigger4 = movehit = 1
trigger4 = hitcount >= 4
trigger4 = power >= 1500

; AI Recover air
[State -1]
type = ChangeState
value = 5210
triggerall = var(21) = 1
triggerall = var(29) >= enemy,var(29)
triggerall = random = [500,999]
triggerall = win = 0
triggerall = alive
triggerall = CanRecover
triggerall = RoundState = 2
Triggerall = AILevel >= 4
trigger1 = life <= 750
trigger1 = stateno = 5050
trigger1 = Pos Y < -20

;AI adv. guard
[State -1]
type = ChangeState
value = 5
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = P2BodyDist x <= 10 ;InGuardDist = 1
triggerall = stateno != 5
triggerall = ctrl = 0
triggerall = numproj = 0
triggerall = stateno = 150 || stateno = 152;[150,153]
Triggerall = AILevel >= 6
trigger1 = BackEdgeBodyDist <= 30
trigger2 = life = [301,600]
trigger2 = random <= 200
trigger3 = life <= 300
trigger3 = random >= 301

;AI Ryu Tsui Sen Zan	
[state - 1]
type = changestate
value = 445
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype = A
triggerall = random = [401,951]
triggerall = life != 0
triggerall = P2movetype != H
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 3
trigger1 = Pos Y <= -80
trigger1 = p2bodydist X <= 45

[state - 1]
type = changestate
value = 1445
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
Triggerall = AILevel >= 3
trigger1 = stateno = 350
trigger1 = movehit 
trigger1 = hitcount >= 2
trigger1 = random <= 400
trigger2 = stateno = 1300
trigger2 = movehit 

;AI Ryu Sou Sen
[State -1]
type = ChangeState
value = 2000
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = Enemynear,movetype = H
triggerall = Enemynear,statetype != L
triggerall = p2bodydist x = [-15,80]
triggerall = var(30) <= 0
Triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1 = var(52) = 1
trigger2 = var(51) = 1
trigger2 = stateno = 447

; ryu sou sen
[State -1]
type = ChangeState
value = 2000
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(30) <= 0
triggerall = Enemynear,statetype != L
Triggerall = AILevel >= 5
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 220
trigger1 = movehit
trigger2 = stateno = 245
trigger2 = movehit
trigger3 = stateno = 447;3447
trigger3 = Enemynear,BackEdgeBodyDist <= 10
trigger3 = Enemynear,facing != facing || Enemynear,facing = facing
trigger3 = p2stateno != [120,159]
trigger3 = p2bodydist x = [0,80]
trigger4 = p2stateno = [120,159]
trigger4 = stateno = 447
trigger4 = Enemynear,facing != facing
trigger4 = p2bodydist x = [-10,80]
trigger5 = Enemynear,statetype = A
trigger5 = stateno = 447
trigger5 = Enemynear,facing != facing
trigger5 = p2bodydist x = [-10,80]
trigger6 = stateno = 320
trigger6 = movehit
trigger6 = p2bodydist Y = [-20,-1]
trigger7 = stateno = 320
trigger7 = movehit
trigger7 = p2bodydist Y = [1,20]
trigger8 = Enemynear,statetype != L
trigger8 = stateno = 447
trigger8 = Enemynear,facing = facing
trigger8 = p2bodydist x = [0,80]

; AI Ryu Sho Sen
[state - 1]
type = changestate
value = 1014
triggerall = alive
triggerall = statetype != A
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = win != 1
triggerall = P2BodyDist x = [5,50]
triggerall = P2stateno != [120,155]
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = enemy, Pos Y >= -92
trigger1 = random <= 500
trigger1 = ctrl = 1
trigger1 = P2movetype != H
trigger1 = P2statetype = A
trigger2 = stateno = 215
trigger2 = P2movetype = H
trigger2 = P2statetype != A
trigger2 = random <= 50

;AI ryu kan sen tsumuji
[State -1]
type = ChangeState
value = 1040
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype != A
triggerall = win = 0
triggerall = ctrl = 1
triggerall = P2movetype != H
triggerall = P2statetype != A
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
triggerall = P2name != "SETA SOUJIRO"
trigger1 = random <= 400
trigger1 = enemy,HitDefAttr = SC,NA
trigger1 = P2movetype = A
trigger1 = P2BodyDist x = [70,165]  
trigger2 = stateno = 220
trigger2 = movehit ;= 1
trigger2 = P2BodyDist x >= 71

[state - 1]
type = changestate
value = 1050
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype = S
triggerall = win = 0
triggerall = P2BodyDist x = [70,90]  
triggerall = P2movetype = H
Triggerall = AILevel >= 2
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 255
trigger1 = movehit

[state - 1]
type = changestate
value = 1060
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype = S
triggerall = win = 0
triggerall = P2BodyDist x = [50,90]  
triggerall = P2movetype = H
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 256
trigger1 = movehit
trigger1 = random >= 500

;AI Ryu kan sen arashi
[State -1]
type = ChangeState
value = 1210
triggerall = alive
triggerall = var(21) = 1
triggerall = Win = 0
triggerall = statetype = S
triggerall = ctrl 
triggerall = P2stateno != [5030,5210]
triggerall = P2BodyDist x = [50,85]
triggerall = BackEdgeBodyDist = [40,90]
Triggerall = AILevel >= 2
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
triggerall = P2name != "SETA SOUJIRO"
trigger1 = P2movetype != H
trigger1 = P2statetype != C
trigger1 = random = [500,700]

[state - 1]
type = changestate
value = 1300
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype = S
triggerall = win = 0
triggerall = P2movetype = H
Triggerall = AILevel >= 2
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 1052
trigger1 = movehit 

;AI shinsoku
[State -1]
type = ChangeState
value = 6000
triggerall = alive
triggerall = var(21) = 1
triggerall = statetype != A  
triggerall = stateno != 100
triggerall = win = 0
triggerall = P2statetype != A
triggerall = ctrl = 1
triggerall = P2stateno != [5030,5071]
triggerall = P2stateno != [5100,5210]
triggerall = P2movetype != H
Triggerall = AILevel >= 6
triggerall = numenemy
triggerall = (enemy, HitDefAttr != SCA, HA)
trigger1 = random >= 500
trigger1 = p2bodydist x = [40,70]
trigger1 = P2movetype = A
trigger2 = P2name = "SETA SOUJIRO"
trigger2 = P2BodyDist x >= 90
trigger2 = BackEdgeBodyDist >= 30
trigger2 = enemy, BackEdgeBodyDist <= 60
	
[state - 1]
type = changestate
value = 6006
triggerall = alive
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = P2statetype != A
triggerall = random = [31,50]
triggerall = Win = 0
triggerall = life >= 200
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
triggerall = P2name != "SETA SOUJIRO"
trigger1 = P2name != "SAITO HAJIME"
trigger1 = P2BodyDist x >= 160
trigger1 = numproj = 0
trigger1= ctrl && (stateno!=[100,101])
trigger1= enemynear,movetype!=A

[state - 1]
type = changestate
value = 6010
triggerall = alive
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = P2statetype != A
triggerall = random <= 30
triggerall = Win = 0
triggerall = life >= 200
Triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
triggerall = P2name != "SETA SOUJIRO"
trigger1 = P2name != "SAITO HAJIME"
trigger1 = P2BodyDist x >= 160
trigger1 = numproj = 0
trigger1= ctrl && (stateno!=[100,101])
trigger1= enemynear,movetype!=A

;AI ryu kan sen
[State -1]
type = ChangeState
value = 8000
triggerall = alive
triggerall = var(21) = 1
triggerall = random >= 701
triggerall = statetype != A
triggerall = stateno != 100
triggerall = ctrl = 1
Triggerall = AILevel >= 6
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = P2statetype != C
trigger1 = P2movetype = A
trigger1 = P2BodyDist x = [40,65]
trigger2 = P2statetype = A
trigger2 = P2Dist x = [40,75]
trigger2 = InGuardDist = 1
trigger3 = P2name = "SAITO HAJIME"
trigger3 = P2stateno = 1800
trigger3 = P2BodyDist x >= 90
trigger4 = P2name = "SETA SOUJIRO"
trigger4 = life <= 700
trigger4 = P2BodyDist x >= 90
trigger4 = random >= 800

;AI Tsunagi
[State -1, Tsunagi Chain]
type = ChangeState
value = 8114
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = statetype != A
triggerall = stateno != 255
triggerall = stateno != 256
triggerall = Random >=501
Triggerall = AILevel >= 5
triggerall = Roundstate = 2
trigger1 = P2life <= 300
trigger1 = p2bodydist X <= 70
trigger1 = stateno = 220 || stateno = 310
trigger1 = movehit

[State -1, Tsunagi Breaker]
type = ChangeState
value = 8115
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = numenemy
triggerall = (enemynear, HitDefAttr = SCA, NA, SA)
triggerall = gethitvar(hitcount) >= 2
triggerall = stateno != [120,153]
triggerall = stateno = 5000 || 5010
triggerall = statetype != A 
triggerall = statetype != L
Triggerall = AILevel >= 4
triggerall = Random <=100
triggerall = Alive
triggerall = Roundstate = 2
trigger1 = life <= 400
trigger1 = p2bodydist X <= 85
trigger1 = movetype = H
trigger1 = P2movetype = A

[State -1, Tsunagi Dodge]
type = ChangeState
value = 8116
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = statetype = S
triggerall = InGuardDist = 1
triggerall = stateno != 5
triggerall = ctrl = 0
triggerall = numproj = 0
triggerall = stateno = [150,153]
triggerall = P2life >= 300
Triggerall = AILevel >= 5
trigger1 = BackEdgeBodyDist <= 30
trigger2 = life <= 400
trigger2 = random <= 200

;AI jump
[State -1, Jump]
type=changestate
value=40
triggerall= enemynear,movetype!=H
trigger1= var(21) = 1
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<150 && enemynear,hitdefattr=SC,AT && random<250

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl|| stateno = 22
triggerall = prevstateno != 100
triggerall = Random <= Var(21)*100
triggerall = Enemynear,movetype != A
triggerall = !InGuardDist
triggerall = !(Enemynear,stateno = [5040,5120])
triggerall = !(Enemynear,hitdefattr = SC, AT, NT, ST, HT)
trigger1 = p2bodydist x = [150,320]

;AI hop back
[State -1]
type = ChangeState
value = 105
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = backedgebodydist > 30
triggerall = Enemynear,Numproj = 0 
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21|| stateno = [120,149]
trigger1 = p2stateno = 5120
trigger1 = p2bodydist X = [0,80] 
trigger2 = Enemynear,statetype = L
trigger2 = Random <= Var(21)*100
trigger2 = p2bodydist x = [0,80]
trigger3 = Enemynear,statetype = L
trigger3 = Random <= Var(21)*100
trigger3 = p2bodydist x = [-90,90]
trigger3 = Enemynear,BackEdgeBodyDist < 30

;AI Wall Jump
[State -1]
type = ChangeState
value = 45
triggerall = var(21) = 1
triggerall = (statetype = A) && (ctrl) 
triggerall = stateno != 45
triggerall = Pos Y = -62
triggerall = var(20)=0
Triggerall = AILevel >= 5
trigger1 = backedgebodydist <= 1
trigger1 = P2BodyDist x <= 40

[State -1]
type = ChangeState
value = 102
triggerall = alive
triggerall = var(21) = 1
triggerall = random <= 900
triggerall = (statetype = A) && (ctrl) 
triggerall = stateno != 45
triggerall = Pos Y = -60
Triggerall = AILevel >= 4
trigger1 = backedgebodydist <= 1
trigger1 = P2Dist x >= 41

; AI Recover ground
[State -1]
type = ChangeState
value = 5201
triggerall = alive
triggerall = var(21) = 1
triggerall = var(29) >= enemy,var(29)
triggerall = random = [500,999]
triggerall = alive
triggerall = CanRecover
Triggerall = AILevel >= 4
trigger1 = life >= 81
trigger1 = stateno = 5100
trigger1 = Pos Y < -20

; AI Recover air
[State -1]
type = ChangeState
value = 5210
triggerall = alive
triggerall = var(21) = 1
triggerall = var(29) >= enemy,var(29)
triggerall = random = [500,999]
triggerall = win = 0
triggerall = alive
triggerall = CanRecover
Triggerall = AILevel >= 4
triggerall = RoundState = 2
trigger1 = life <= 700
trigger1 = stateno = 5050
trigger1 = Pos Y < -20

; AI Standing Guard
[State -1]
type = ChangeState
value = 130
triggerall = var(21) = 1
triggerall = ctrl = 1
triggerall = statetype != A
triggerall = movetype != A
triggerall = inguarddist = 1 
triggerall = Pos Y != [-1,-999]
Triggerall = AILevel >= 3
trigger1 = P2statetype != C
trigger1 = P2movetype = A

; AI Crouching Guard
[State -1]
type = ChangeState
value = 131
triggerall = var(21) = 1
triggerall = ctrl = 1
triggerall = statetype != A
triggerall = movetype != A
triggerall = inguarddist = 1
Triggerall = AILevel >= 2
trigger1 = P2statetype = C
trigger1 = P2movetype = A

; AI Sneak Roll Backwards
[State -1] 
type = ChangeState
triggerall = anim = 5111
triggerall = time <= 5
triggerall = var(29) >= enemy,var(29)
triggerall = var(21) = 1
triggerall = win = 0
triggerall = RoundState = 2
triggerall = CanRecover
Triggerall = AILevel >= 4
trigger1 = P2BodyDist x <= 50
trigger1 = BackEdgeBodyDist >= 65
trigger2 = enemy, BackEdgeBodyDist >= 35
value = 5122

; AI Sneak Roll Forwards
[State -1]
type = ChangeState
triggerall = alive
triggerall = anim = 5111
triggerall = time <= 5
triggerall = var(29) >= enemy,var(29)
triggerall = var(21) = 1
triggerall = win = 0
triggerall = RoundState = 2
triggerall = CanRecover
Triggerall = AILevel >= 4
trigger1 = P2BodyDist x <= 70
trigger1 = BackEdgeBodyDist <= 50
value = 5123

;AI Punch 1
[State -1]
type = ChangeState
value = 200
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = random = [302,550]
triggerall = P2BodyDist x <= 44
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
Triggerall = AILevel >= 1
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = statetype = S
trigger1 = ctrl = 1

;AI Punch 2
[State -1]
type = ChangeState
value = 210
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = P2BodyDist x <= 42
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
Triggerall = AILevel >= 2
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = random <= 150
trigger2 = stateno = 230
trigger2 = movehit
trigger2 = random >= 501

;AI Punch 3
[State -1]
type = ChangeState
value = 220
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = statetype = S
triggerall = P2stateno != [5030,5210]
triggerall = !IsHelper
Triggerall = AILevel >= 3
triggerall = P2BodyDist x <= 50
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = P2statetype != A
trigger1 = ctrl = 1
trigger1 = p2movetype = H
trigger1 = random >= 903
trigger2 = stateno = 230
trigger2 = movehit
trigger2 = random <= 500
trigger3 = P2statetype = A
trigger3 = ctrl = 1
trigger3 = random = [201,501]

;AI Kick 1
[State -1]
type = ChangeState
value = 230
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = P2BodyDist x <= 50
triggerall = P2statetype != A
triggerall = statetype = S
triggerall = p2movetype != A
Triggerall = AILevel >= 1
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 200
trigger1 = movecontact

;Ai kick 2
[State -1]
type = ChangeState
value = 240
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = P2BodyDist x <= 50
triggerall = Win = 0
triggerall = P2stateno != [5030,5210]
triggerall = statetype = S
triggerall = !IsHelper
triggerall = P2statetype != A
triggerall = p2movetype != A
Triggerall = AILevel >= 2
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = P2statetype = S
trigger1 = ctrl = 1
trigger1 = random = [151,301]
trigger2 = stateno = 230
trigger2 = movehit
trigger2 = random <= 500

;AI Kick 3
[State -1]
type = ChangeState
value = 250
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = P2BodyDist x = [20,70]
triggerall = Win = 0
triggerall = statetype = S
triggerall = !IsHelper
triggerall = P2statetype != A
triggerall = p2movetype != A
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 240
trigger1 = movehit

;AI battou
[State -1]
type = ChangeState
value = 255
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype = S
triggerall = P2BodyDist x = [-50,70]
triggerall = Win = 0
triggerall = P2StateNo != [130,155]
triggerall = ctrl = 1
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
Trigger1 = AILevel <= 3
trigger1 = P2stateno != [5030,5210]
trigger1 = random <= 200
trigger1 = P2statetype != A
trigger1 = enemy, BackEdgeBodyDist >= 40
Trigger2 = AILevel >= 4
trigger2 = P2Bodydist y <= -20
trigger2 = P2stateno = 5050

[State -1]
type = ChangeState
value = 256
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype != A
triggerall = P2BodyDist x = [-50,70]
triggerall = Win = 0
triggerall = P2StateNo != [130,155]
triggerall = P2stateno != [5030,5210]
triggerall = p2movetype != A
triggerall = random <= 500
Triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 220
trigger1 = movehit ;= 1
trigger2 = stateno = 240
trigger2 = movehit ;= 1
trigger3 = stateno = 310
trigger3 = movehit ;= 1

;AI Crouching Low Punch
[State -1]
type = ChangeState
value = 300
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = random = [600,750]
triggerall = statetype != A
triggerall = P2BodyDist x <= 65
triggerall = Win = 0
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
triggerall = p2movetype != A
Triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit ;= 1

;AI Crouching Med Punch
[State -1]
type = ChangeState
value = 310
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = statetype != A
triggerall = P2BodyDist x <= 70
triggerall = Win = 0
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
triggerall = p2movetype != A
Triggerall = AILevel >= 5
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = random <= 300
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movehit ;= 1 
trigger3 = stateno = 210
trigger3 = movehit ;= 1 

;AI Crouching Low Kick
[State -1]
type = ChangeState
value = 330
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = P2BodyDist x <= 55
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
triggerall = p2movetype != A
triggerall = statetype != A
triggerall = random = [751,801]
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movehit

;AI Crouching Medium Kick
[State -1]
type = ChangeState
value = 340
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = P2BodyDist x <= 40
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
triggerall = p2movetype != A
triggerall = statetype != A
Triggerall = AILevel >= 2
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = stateno = 330
trigger1 = movehit 

;AI Crouching High Kick
[State -1]
type = ChangeState
value = 350
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = Win = 0
triggerall = P2BodyDist x <= 65
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
Triggerall = AILevel >= 3
triggerall = statetype != A
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = random = [802,952]
trigger1 = ctrl = 1

; AI Air low punch
[state -1]
type = changestate
value = 400
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = Enemynear,BackEdgeBodyDist > 15
triggerall = p2bodydist x = [0,30]
Triggerall = AILevel >= 1
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = Vel Y >= 1
trigger1 = ctrl
trigger1 = Enemynear,statetype = A
trigger1 = Enemynear,movetype != A

;AI Air Med Punch
[state -1]
type = changestate
value = 410
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype = A
Triggerall = AILevel >= 2
trigger1 = stateno = 400
trigger1 = movecontact

;AI Air High Punch
[state -1]
type = changestate
value = 420
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-5,90]
Triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = p2bodydist Y = [10,130]
trigger1 = vel Y >= 0
trigger1 = EnemyNear,BackEdgeBodyDist >= 25
trigger2 = vel Y >= 0
trigger2 = EnemyNear,BackEdgeBodyDist < 25
trigger3 = p2bodydist Y = [-100,-10]
trigger3 = vel Y >= 0
trigger3 = EnemyNear,BackEdgeBodyDist >= 25

; AI Air Low Kick
[state -1]
type = changestate
value = 430
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = Enemynear,BackEdgeBodyDist > 15
triggerall = p2bodydist x = [0,30]
triggerall = vel x = 0
Triggerall = AILevel >= 1
trigger1 = Vel Y >= 1
trigger1 = ctrl
trigger1 = !InGuardDist
trigger1 = Enemynear,statetype = A
trigger1 = Enemynear,movetype != A

; AI Air Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype = A
Triggerall = AILevel >= 2
trigger1 = stateno = 410
trigger1 = movehit
trigger2 = stateno = 430
trigger2 = movehit

;AI Air High Kick
[state -1]
type = changestate
value = 450
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = random = [401,701]
triggerall = statetype = A
triggerall = P2statetype = A
triggerall = ctrl = 1
triggerall = stateno != 105
triggerall = P2BodyDist x <= 70
Triggerall = AILevel >= 3
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = Pos Y<=-80

;AI grab and hit
[State -1]
type = ChangeState
value = 700
triggerall = alive
triggerall = var(21) = 1
triggerall = var(40) = 0
triggerall = P2BodyDist x <= 10
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2stateno != 700
triggerall = !IsHelper
triggerall = random >= 600
triggerall = P2stateno != [5030,5210]
triggerall = Win = 0
triggerall = ctrl = 1
Triggerall = AILevel >= 4
trigger1 = statetype != A
trigger2 = BackEdgeBodyDist <= 8
trigger2 = statetype = S
trigger3 = P2stateno = [120,130]
trigger3 = statetype = S

; Ryu Sho Sen EX
[state -1]
type = Changestate
value = 3020
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = statetype != A
triggerall = command = "ryusho"
triggerall = power >= 1000
triggerall = RoundState = 2
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger3 = stateno = 447
trigger4 = stateno = 210
trigger4 = movehit
trigger5 = stateno = 220
trigger5 = movehit
trigger6 = stateno = 240
trigger6 = movehit
trigger7 = stateno = 310
trigger7 = movehit
trigger8 = stateno = 340
trigger8 = movehit
trigger9 = stateno = 2000
trigger9 = movehit

; Ryu Tsui Sen Zan
[State -1]
type = ChangeState
value = 3030
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = command = "zan"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = RoundState = 2
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = movetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350
trigger2 = movehit 
trigger3 = stateno = 1300
trigger3 = movehit 

; Kaiten Battou Jutsu
[state - 1]
type = changestate
value = 3500
triggerall = var(21) != 1
triggerall = var(30) <= 0
;triggerall = statetype = A
triggerall = RoundState = 2
triggerall = power >= 2000
triggerall = command = "battou"
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = stateno = 3025
trigger1 = movehit
trigger2 = stateno = 3051
trigger2 = movehit

[state - 1]
type = changestate
value = 3040
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = statetype != A
triggerall = power >= 2000
triggerall = command = "battou"
triggerall = RoundState = 2
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = ctrl = 1
trigger1 = numproj = 0
trigger2 = stateno = 101
trigger3 = stateno = 215
trigger4 = stateno = 447
trigger5 = stateno = 320
trigger5 = movehit

[state - 1]
type = changestate
value = 3600
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = statetype = A
triggerall = power >= 2000
triggerall = command = "battou"
triggerall = RoundState = 2
triggerall = enemy,name != "MAKIMACHI MISAO"
trigger1 = ctrl = 1
trigger1 = numproj = 0

; Ryu Kan Sen Arashi EX
[state -1]
type = Changestate
value = 3050
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = statetype != A
triggerall = command = "arashiex"
triggerall = power >= 1000
triggerall = RoundState = 2
triggerall = enemy,name != "MAKIMACHI MISAO"
;trigger1 = movetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger3 = stateno = 447
trigger4 = stateno = 210
trigger4 = movehit
trigger5 = stateno = 220
trigger5 = movehit
trigger6 = stateno = 240
trigger6 = movehit
trigger7 = stateno = 310
trigger7 = movehit
trigger8 = stateno = 340
trigger8 = movehit
trigger9 = stateno = 2000
trigger9 = movehit

; ryu sou sen
[State -1]
type = ChangeState
value = 2000
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = command = "sousen"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movehit
trigger3 = stateno = 245
trigger3 = movehit
trigger4 = stateno = 320
trigger4 = movehit
trigger5 = stateno = 447
;trigger6 = stateno = 3447

; Ryu Sho Sen
[state -1]
type = Changestate
value = 1014
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = statetype != A
triggerall = command = "uppercut"
trigger1 = movetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger3 = stateno = 447
trigger4 = stateno = 210
trigger4 = movehit
trigger5 = stateno = 220
trigger5 = movehit
trigger6 = stateno = 240
trigger6 = movehit
trigger7 = stateno = 310
trigger7 = movehit
trigger8 = stateno = 340
trigger8 = movehit

[state -1]
type = Changestate
value = 1024
triggerall = var(21) != 1
triggerall = var(30) <= 0
triggerall = statetype != A
triggerall = command = "uppercut"
trigger1 = stateno = 1052
trigger1 = movehit
trigger2 = stateno = 1062
trigger2 = movehit

; Ryu Kan Sen Tsumuji
[state - 1]
type = changestate
value = 1040
triggerall = statetype != A
triggerall = command = "ryukan"
triggerall = P2stateno != [5110,5210]
trigger1 = ctrl = 1
trigger1 = numproj = 0
trigger2 = stateno = 220
trigger2 = movehit
trigger3 = stateno = 320
trigger3 = movehit
trigger4 = stateno = 340
trigger4 = movehit

[state - 1]
type = changestate
value = 1050
triggerall = statetype != A
triggerall = command = "ryukan"
trigger1 = stateno = 255
trigger1 = movehit

[state - 1]
type = changestate
value = 1060
triggerall = statetype != A
triggerall = command = "ryukan"
trigger1 = stateno = 256
trigger1 = movehit

; Ryu Kan Sen Arashi
[state - 1]
type = changestate
value = 1210
triggerall = statetype != A
triggerall = command = "arashi"
trigger1 = ctrl = 1
trigger1 = numproj = 0
trigger2 = stateno = 101
trigger3 = stateno = 215
trigger4 = stateno = 447

[state - 1]
type = changestate
value = 1300
triggerall = statetype != A
triggerall = command = "arashi"
trigger1 = stateno = 1052
trigger1 = movehit 
trigger2 = stateno = 320
trigger2 = movehit 

;grab and hit
[State -1]
type = ChangeState
value = 700
triggerall = var(21) = 0
triggerall = command = "grab"
;triggerall = P2BodyDist x <= 10
;triggerall = P2movetype != H
;triggerall = P2statetype = S
;triggerall = P2stateno != 700
trigger1 = statetype = S
trigger1 = ctrl = 1

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(21) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Hop Backward
[State -1]
type = ChangeState
value = 105
triggerall = var(21) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

; Ryu Tsui Sen
[State -1]
type = ChangeState
value = 445
triggerall = var(21) = 0
triggerall = (command = "ryutsuia") || (command = "ryutsuib") || (command = "ryutsuic")
triggerall = stateno != 105
trigger1 = Pos Y<=-80
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = stateno = 440
trigger2 = movehit

[state - 1]
type = changestate
value = 1445
;triggerall = statetype != A
triggerall = (command = "ryutsuia") || (command = "ryutsuib") || (command = "ryutsuic")
trigger1 = stateno = 350
trigger1 = movehit 
trigger2 = stateno = 1300
trigger2 = movehit 

;Shinsoku
[State -1]
type = ChangeState
value = 6000
triggerall = var(21) = 0
triggerall = command = "shinsoku"
triggerall = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 6002
triggerall = var(21) = 0
triggerall = command = "ryutsuia"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 6006
triggerall = var(21) = 0
triggerall = command = "ryutsuib"
triggerall = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 6010
triggerall = var(21) = 0
triggerall = command = "ryutsuic"
triggerall = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl = 1

;Ryu Kan Sen
[State -1]
type = ChangeState
value = 8000
triggerall = var(21) = 0
triggerall = command = "haku"
triggerall = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl = 1

[State -1, Tsunagi Chain]
type = ChangeState
value = 8114
triggerall = var(21) = 0
triggerall = var(29) >= 10
triggerall = command = "haku"
triggerall = statetype != A
triggerall = stateno != 255
triggerall = stateno != 256
trigger1 = stateno = [200,350]
trigger1 = movehit

[State -1, Tsunagi Breaker]
type = ChangeState
value = 8115
triggerall = var(21) = 0
triggerall = var(29) >= 10
triggerall = numenemy
triggerall = (enemynear, HitDefAttr = SCA, NA, SA)
triggerall = gethitvar(hitcount) >= 2
triggerall = command = "push"
triggerall = stateno != [120,153]
triggerall = stateno = 5000 || 5010
triggerall = statetype != A 
triggerall = statetype != L
trigger1 = movetype = H
trigger1 = P2movetype = A

[State -1, Tsunagi Dodge]
type = ChangeState
value = 8116
triggerall = var(21) = 0
triggerall = var(29) >= 10
triggerall = command = "grab"
triggerall = statetype != A
triggerall = ctrl = 0
triggerall = InGuardDist = 1
trigger1 = stateno = [150,153] 

;adv. guard
[State -1]
type = ChangeState
value = 5
triggerall = command = "push"
triggerall = statetype != A
triggerall = ctrl = 0
triggerall = P2BodyDist x <= 30 ;InGuardDist = 1
trigger1 = stateno = [150,153]

;battou/kogarashi
[State -1]
type = ChangeState
value = 255
triggerall = var(21) = 0
triggerall = command = "push" 
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

;battou
[State -1]
type = ChangeState
value = 256
triggerall = var(21) = 0
triggerall = command = "push" 
trigger1 = stateno = 220
trigger1 = movehit ;= 1
trigger2 = stateno = 240
trigger2 = movehit ;= 1
trigger3 = stateno = 245
trigger3 = movehit ;= 1

;Punch 1
[State -1]
type = ChangeState
value = 200
triggerall = var(21) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

;Punch 2
[State -1]
type = ChangeState
value = 210
triggerall = var(21) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200
trigger2 = movehit ;= 1
trigger3 = stateno = 230
trigger3 = movehit ;= 1
trigger4 = stateno = 330
trigger4 = movehit ;= 1

;Punch 3
[State -1]
type = ChangeState
value = 220
triggerall = var(21) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 210
trigger2 = movehit ;= 1
trigger3 = stateno = 230
trigger3 = movehit ;= 1

;Kick 1
[State -1]
type = ChangeState
value = 230
triggerall = var(21) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200
trigger2 = movecontact;= 1 

;kick 2
[State -1]
type = ChangeState
value = 240
triggerall = var(21) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200
trigger2 = movehit ;= 1
trigger3 = stateno = 230
trigger3 = movehit ;= 1

;Kick 3
[State -1]
type = ChangeState
value = 250
triggerall = var(21) = 0
triggerall = command = "c";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 220
trigger2 = movehit ;= 1
trigger3 = stateno = 240
trigger3 = movehit ;= 1
trigger4 = stateno = 245
trigger4 = movehit ;= 1

;Crouching Low Punch
[State -1]
type = ChangeState
value = 300
triggerall = var(21) = 0
triggerall = command = "x";Place name of command here
triggerall = command = "holddown";Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit ;= 1
trigger3 = stateno = 330
trigger3 = movehit ;= 1
trigger4 = stateno=[100,101]

;Crouching Med Punch
[State -1]
type = ChangeState
value = 310
triggerall = var(21) = 0
triggerall = command = "y";Place name of command here
triggerall = command = "holddown";Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 330
trigger2 = movehit ;= 1
trigger3 = stateno = 300
trigger3 = movehit ;= 1
trigger4 = stateno = 210
trigger4 = movehit ;= 1
trigger5 = stateno = 200
trigger5 = movehit ;= 1
trigger6 = stateno = 230
trigger6 = movehit ;= 1
trigger7 = stateno = 240
trigger7 = movehit ;= 1
trigger8 = stateno=[100,101]

;Crouching High Punch
[State -1]
type = ChangeState
value = 320
triggerall = var(21) = 0
triggerall = command = "z";Place name of command here
triggerall = command = "holddown";Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 310
trigger2 = movehit ;= 1
trigger3 = stateno = 340
trigger3 = movehit ;= 1
trigger4 = stateno = 220
trigger4 = movehit ;= 1
trigger5 = stateno=[100,101]

;Crouching Low Kick
[State -1]
type = ChangeState
value = 330
triggerall = var(21) = 0
triggerall = command = "a";Place name of command here
triggerall = command = "holddown";Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit ;= 1
trigger3 = stateno = 230
trigger3 = movehit ;= 1
trigger4 = stateno=[100,101]

;Crouching Medium Kick
[State -1]
type = ChangeState
value = 340
triggerall = var(21) = 0
triggerall = command = "b";Place name of command here
triggerall = command = "holddown";Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movehit ;= 1
trigger3 = stateno = 330
trigger3 = movehit ;= 1
trigger4 = stateno = 245
trigger4 = movehit ;= 1
trigger5 = stateno = 230
trigger5 = movehit ;= 1
trigger6 = stateno = 240
trigger6 = movehit ;= 1
trigger7 = stateno=[100,101]

;Crouching High Kick
[State -1]
type = ChangeState
value = 350
triggerall = var(21) = 0
triggerall = command = "c";Place name of command here
triggerall = command = "holddown";Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 340
trigger2 = movehit ;= 1
trigger3 = stateno = 330
trigger3 = movehit ;= 1
trigger4 = stateno = 310
trigger4 = movehit ;= 1
trigger5 = stateno = 220
trigger5 = movehit ;= 1
trigger6 = stateno = 240
trigger6 = movehit ;= 1
trigger7 = stateno = 245
trigger7 = movehit ;= 1
trigger8 = stateno=[100,101]

; Air attacks
[state -1]
type = changestate
value = 400
triggerall = var(21) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Air Med Punch
[state -1]
type = changestate
value = 410
triggerall = var(21) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movehit
trigger3 = stateno = 430
trigger3 = movehit

;Air High Punch
[state -1]
type = changestate
value = 420
triggerall = var(21) = 0
triggerall = command = "z"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movehit
trigger3 = stateno = 430
trigger3 = movehit

; Air Low Kick
[state -1]
type = changestate
value = 430
triggerall = var(21) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movehit

; Air Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(21) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movehit
trigger3 = stateno = 410
trigger3 = movehit
trigger4 = stateno = 430
trigger4 = movehit

; Air High Kick
[State -1]
type = ChangeState
value = 450
triggerall = var(21) = 0
triggerall = command = "c"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movehit
trigger3 = stateno = 410
trigger3 = movehit
trigger4 = stateno = 420
trigger4 = movehit
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 440
trigger6 = movehit

;Wall Jump
[State -1]
type = ChangeState
value = 45
triggerall = var(21) = 0
triggerall = (statetype = A) && (ctrl) 
triggerall = stateno != 45
triggerall = Pos Y<=-70
triggerall = var(20)=0
trigger1 = ((command = "holdup")  && (command = "holdfwd")  && (backedgebodydist <= 1)) 
trigger2 = ((command = "holdup") && (command = "holdback")  && (frontedgebodydist <= 1))

[State -1]
type = ChangeState
value = 102
triggerall = (statetype = A) && (ctrl) 
triggerall = stateno != 102
triggerall = Pos Y<=-70
trigger1 = ((command = "FF")  && (backedgebodydist <= 1)) 

;taunt
[State -1]
type = ChangeState
value = 85
triggerall = var(21) = 0
triggerall = command = "s"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = life >= 301
