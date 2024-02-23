;-| Super Motions |--------------------------------------------------------

[command]
name    = "sanjou"
command = ~D,F,D,F,c
time = 30

[command]
name    = "hyperfnk"
command = ~D,F,D,F,z
time = 30

[command]
name    = "hyperleapfnk"
command = ~D,B,D,B,z
time = 30

;-| Super Motions |--------------------------------------------------------

[command]
name    = "gatling"
command = ~D,F,D,F,x
time = 30
[command]
name    = "gatling"
command = ~D,F,D,F,y
time = 30

[Command]
name = "stun_gun"
command = ~D,F,D,F,x
time = 30
[Command]
name = "stun_gun"
command = ~D,F,D,F,y
time = 30



;-| Special Motions |------------------------------------------------------
[Command]
name    = "machine"
command = ~x, x, x
time = 30
[Command]
name    = "machine"
command = ~y, y, y
time = 30



; Leaping Futae No Kiwami
[Command]
name = "Lfutae1"
command = ~F, D, DF, a
time = 30
[Command]
name = "Lfutae2"
command = ~F, D, DF, b
time = 30
;[Command]
;name = "Lfutae3"
;command = ~F, D, DF, c
;time = 30


; Futae No Kiwami
[Command]
name = "futae1"
command = ~D, DF, F, a
time = 30
[Command]
name = "futae2"
command = ~D, DF, F, b
time = 30
;[Command]
;name = "futae3"
;command = ~D, DF, F, c
;time = 30

; Futae No Kiwami Wave
[Command]
name = "futaeW1"
command = ~D, DF, F, x
time = 30
[Command]
name = "futaeW2"
command = ~D, DF, F, y
time = 30
;[Command]
;name = "futaeW3"
;command = ~D, DF, F, z
;time = 30

[Command]
name    = "push"
command = ~D, DB, B, x
time = 30
[Command]
name    = "push"
command = ~D, DB, B, y
time = 30

; Activate Zanza
[Command]
name = "activate"
command = x+y
[Command]
name = "activate"
command = a+b


;[Command]
;name = "hazushi"
;command = a+x 

[Command]
name    = "grab"
command = b+y



;-| Double Tap |---------------------------------------------------
[Command]
name    = "FF";Required (do not remove)
command = F, F
time    = 10

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "DD"
command = D, D
time = 10

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
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name    = "hold_a"
command = /a
time    = 1

[Command]
name    = "hold_b"
command = /b
time    = 1

[Command]
name    = "hold_c"
command = /c
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

;---------------------------------------------------------------------------
; AI Sanjou No Kiwami
[State -1]
type = ChangeState
value = 4500
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = statetype != A
triggerall = power >= 3000
triggerall = life <= 200
triggerall = RoundState = 2
;triggerall = P2Dist x <= 50
Triggerall = AILevel >= 6
trigger1 = stateno = 1011
trigger1 = movecontact ;= 1
trigger2 = stateno = 1021
trigger2 = movecontact ;= 1
trigger3 = stateno = 1031
trigger3 = movecontact ;= 1

[State -1]
type = ChangeState
value = 4600
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = statetype = A
triggerall = power >= 3000
triggerall = life <= 200
triggerall = RoundState = 2
;triggerall = P2Dist x <= 50
Triggerall = AILevel >= 6
trigger1 = stateno = 1351
trigger1 = movecontact ;= 1

; AI Futae No Kiwami +
[State -1]
type = ChangeState
value = 4000
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = power >= 2000
triggerall = life >= 201
triggerall = RoundState = 2
triggerall = p2BodyDist x = [95,120]
triggerall = Win = 0
triggerall = P2stateno != 5001
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != A
triggerall = ctrl = 1
triggerall = statetype = S
Triggerall = AILevel >= 3
triggerall = p2movetype = I
trigger1 = random >= 601
trigger1 = P2life = [200,800]

; AI gatling gun punch
[State -1]
type = ChangeState
value = 3000
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = statetype != A
triggerall = power >= 1000
triggerall = RoundState = 2
Triggerall = AILevel >= 5
triggerall = statetype = S
triggerall = P2BodyDist x <= 60
triggerall = P2stateno != [5030,5210]
trigger1 = life >= 400 && power = [1000,2500]
trigger1 = P2movetype = I
trigger1 = ctrl = 1
trigger1 = random >= 851
trigger1 = P2statetype != A
trigger2 = ctrl = 1
trigger2 = P2life = [80,299]
trigger2 = P2movetype = I
trigger2 = P2statetype != A
trigger2 = random >= 851
trigger3 = life >= 400 && power = [1000,2500]
trigger3 = random >= 701
trigger3 = stateno = 230
trigger3 = movehit
trigger4 = P2life <= 100
trigger4 = stateno = 230
trigger4 = movecontact

;stungun headbutt
[State -1]
type = ChangeState
value = 6500
triggerall = var(21) = 1
triggerall = var(58) = 1
triggerall = power >= 1000
triggerall = P2BodyDist x <= 10
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2stateno != [5030,5210]
triggerall = P2stateno != 700
triggerall = !IsHelper
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = BackEdgeBodyDist <= 5
trigger2 = P2stateno = [120,131]
trigger3 = random <= 200

;AI adv. guard
[State -1]
type = ChangeState
value = 5
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = statetype = S
triggerall = P2BodyDist x <= 10 ;InGuardDist = 1
triggerall = stateno != 5
triggerall = ctrl = 0
triggerall = numproj = 0
triggerall = stateno = 150 || stateno = 152 ;[150,153]
triggerall = P2life >= 300
Triggerall = AILevel >= 5
trigger1 = BackEdgeBodyDist <= 30
trigger2 = life = [301,600]
trigger2 = random <= 200
trigger3 = life <= 300
trigger3 = random >= 301

;AI jump
[State -1, Jump]
type=changestate
value=40
triggerall = P2movetype != H
Triggerall = AILevel >= 1
trigger1= var(21) = 1
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<150 && enemynear,hitdefattr=SC,AT && random<250

;AI taunt
[State -1]
type = ChangeState
value = 85
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = random = [0,80]
triggerall = statetype != A
triggerall = Win = 0
triggerall = P2BodyDist x >= 100
trigger1 = p2stateno = [5110,5111]
trigger1 = ctrl = 1
trigger1 = life >= 850

;AI RunFwd
[State -1, Run]
type=changestate
value=100
Triggerall = AILevel >= 1
triggerall = var(58) != 1
trigger1 = var(21) = 1
trigger1 = roundstate=2 && statetype=S
trigger1 = ctrl && (stateno!=[100,101])
trigger1 = (enemynear,movetype!=A) && p2bodydist x>=160 && random<25

;AI Backward
[State -1]
type = ChangeState
value = 105
triggerall = var(21)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = backedgebodydist > 55
triggerall = Enemynear,Numproj = 0 
triggerall = ctrl 
trigger1 = var(58) != 1
trigger1 = p2stateno = 5120
trigger1 = p2bodydist X = [0,80] 
trigger2 = var(58) != 1
trigger2 = Enemynear,statetype = L
trigger2 = Random <= 100
trigger2 = p2bodydist x = [0,80]
trigger3 = var(58) != 1
trigger3 = Enemynear,statetype = L
trigger3 = Random <= 100
trigger3 = p2bodydist x = [-90,90]
trigger3 = Enemynear,BackEdgeBodyDist < 30
trigger4 = var(58) = 1
trigger4 = P2BodyDist x <= 40
trigger4 = P2movetype = A

;AI grab
[State -1]
type = ChangeState
value = 700
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = P2BodyDist x <= 10
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2stateno != [5030,5210]
triggerall = P2stateno != 700
triggerall = !IsHelper
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
Triggerall = AILevel >= 5
trigger1 = BackEdgeBodyDist <= 5
trigger2 = P2stateno = [120,131]
trigger3 = random >= 900

[State -1]
type = ChangeState
value = 6300
triggerall = var(21) = 1
triggerall = var(58) = 1
triggerall = power < 1000
triggerall = P2BodyDist x <= 20
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2stateno != [5030,5210]
triggerall = P2stateno != 700
triggerall = !IsHelper
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = BackEdgeBodyDist <= 5
trigger2 = P2stateno = [120,131]
trigger3 = random >= 800

; AI Recover ground
[State -1]
type = ChangeState
value = 5201
triggerall = var(21) = 1
triggerall = var(58) != 1
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
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = random = [500,999]
triggerall = win = 0
triggerall = alive
triggerall = CanRecover
triggerall = RoundState = 2
Triggerall = AILevel >= 4
trigger1 = life <= 700
trigger1 = stateno = 5050
trigger1 = Pos Y < -20

; AI Sneak Roll Backwards
[State -1] 
type = ChangeState
triggerall = anim = 5111
triggerall = time <= 5
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = win = 0
triggerall = RoundState = 2
triggerall = CanRecover
Triggerall = AILevel >= 4
trigger1 = P2BodyDist x <= 50
trigger1 = BackEdgeBodyDist >= 55
value = 5122

; AI Sneak Roll Forwards
[State -1]
type = ChangeState
triggerall = anim = 5111
triggerall = time <= 5
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = win = 0
triggerall = RoundState = 2
triggerall = CanRecover
Triggerall = AILevel >= 4
trigger1 = P2BodyDist x <= 50
trigger1 = BackEdgeBodyDist <= 30
value = 5123

; AI Kiwami Hazushi
[State -1]
type = ChangeState
value = 8000
triggerall = var(58) != 1
triggerall = alive
triggerall = var(21) = 1
triggerall = random >= 701
triggerall = statetype != A
triggerall = statetype != L
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
triggerall = var(58) != 1
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = statetype != A
triggerall = stateno != 255
triggerall = stateno != 260
triggerall = Random <=400
Triggerall = AILevel >= 5
triggerall = Roundstate = 2
trigger1 = P2life <= 300
trigger1 = p2bodydist X <= 75
trigger1 = stateno = 220 || stateno = 240
trigger1 = movehit

[State -1, Tsunagi Breaker Sano]
type = ChangeState
value = 8115
triggerall = var(58) != 1
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = numenemy
triggerall = (enemynear, HitDefAttr = SCA, NA)
triggerall = gethitvar(hitcount) >= 2
triggerall = stateno != [120,153]
triggerall = stateno = 5000 || 5010
triggerall = statetype != A 
triggerall = statetype != L
Triggerall = AILevel >= 5
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
triggerall = var(58) != 1
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = statetype = S
triggerall = InGuardDist = 1
triggerall = stateno != 5
triggerall = ctrl = 0
triggerall = numproj = 0
triggerall = stateno = [150,153]
triggerall = P2life >= 300
Triggerall = AILevel <= 4
trigger1 = BackEdgeBodyDist <= 30
trigger2 = life <= 400
trigger2 = random <= 200

[State -1, Tsunagi Breaker Zanza]
type = ChangeState
value = 8117
triggerall = var(58) = 1
triggerall = var(21) = 1
triggerall = var(29) >= 10
triggerall = numenemy
triggerall = (enemynear, HitDefAttr = SCA, NA)
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

; AI Standing Guard
[State -1]
type = ChangeState
value = 130
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = ctrl = 1
triggerall = statetype != A
triggerall = statetype != L
triggerall = inguarddist = 1 
triggerall = Pos Y != [-1,-999]
Triggerall = AILevel >= 5
trigger1 = P2statetype != C
trigger1 = P2movetype = A

; AI Crouching Guard
[State -1]
type = ChangeState
value = 131
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = ctrl = 1
triggerall = statetype != A
triggerall = statetype != L
triggerall = movetype != A
triggerall = inguarddist = 1
Triggerall = AILevel >= 5
trigger1 = P2statetype = C
trigger1 = P2movetype = A

; AI machine gun punch
[State -1]
type = ChangeState
value = 1200
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = statetype != L
triggerall = p2bodydist x = [0,50]
Triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1 = random = [300,315]
trigger2 = stateno = 230
trigger2 = movehit = 1
trigger2 = random >= 900
trigger3 = ctrl = 1
trigger3 = Enemynear,BackEdgeBodyDist <= 10
trigger3 = Enemynear,facing != facing || Enemynear,facing = facing
trigger3 = p2stateno != [120,159]
;trigger3 = p2bodydist x = [0,80]

; AI Elbow Drop
[State -1]
type = ChangeState
value = 1400
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = stateno != 105
triggerall = statetype = A
triggerall = random = [601,751]
triggerall = life != 0
triggerall = P2movetype != H
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 2
trigger1 = Pos Y <= -80
trigger1 = p2bodydist X <= 50

; AI Leaping Futae No Kiwami
[State -1]
type = ChangeState
value = 1302
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = random <= 50
triggerall = ctrl = 1
triggerall = P2stateno != [5030,5210]
triggerall = P2stateno != [130,131]
triggerall = win != 1
triggerall = P2movetype != H
triggerall = AILevel >= 5
triggerall = statetype != A
triggerall = statetype != L
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = P2statetype = A
trigger1 = P2BodyDist x = [30,60]
trigger2 = P2BodyDist x = [80,94]
trigger2 = P2movetype != H
trigger2 = ctrl = 1

; AI Futae No Kiwami fwd
[State -1]
type = ChangeState
value = 1002
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = P2stateno != [5030,5210]
triggerall = P2stateno != [130,131]
triggerall = statetype != A
triggerall = statetype != L
triggerall = P2statetype != L && P2statetype != A
triggerall = AILevel >= 4
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = P2BodyDist x = [94,112]
trigger1 = P2movetype = I
trigger1 = ctrl = 1
trigger1 = random = [751,800]

; AI Futae No Kiwami Wave
[State -1]
type = ChangeState
value = 1500
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = P2name != "SETA SOUJIRO"
Triggerall = AILevel >= 3
triggerall = statetype = S
triggerall = P2statetype != A
triggerall = random <= 25
triggerall = ctrl = 1
triggerall = numenemy
triggerall = (enemynear, HitDefAttr != SCA, HA)
trigger1 = P2movetype = A
trigger1 = P2BodyDist x = [74,90]
trigger2 = P2BodyDist x <= 50
trigger2 = P2stateno = [5100,5110]

; AI Pick up Zanbatou
[State -1]
type = ChangeState
value = 6000
triggerall = var(15) = 1 ; near zanbatou
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = life >= 400 
triggerall = power >= 1000
Triggerall = AILevel >= 6
trigger1 = ctrl || (stateno=[100,101])
trigger1 = statetype = S

; AI Drop Zanbatou
;[State -1]
;type = ChangeState
;value = 6001
;triggerall = var(21) = 1
;triggerall = var(58) = 1
;triggerall = life <= 200 
;Triggerall = AILevel = 6
;trigger1 = ctrl || (stateno=[100,101])
;trigger1 = statetype = S

; AI zanba swing 1
[State -1]
type = ChangeState
value = 6210
triggerall = var(21) = 1
triggerall = var(58) = 1
triggerall = statetype != A
triggerall = win = 0
triggerall = P2movetype != H
Triggerall = AILevel >= 1
trigger1 = random <= 300
trigger1 = P2BodyDist x >= 100  
trigger1 = ctrl = 1
trigger2 = stateno = 6220
trigger2 = movecontact
trigger3 = stateno = 6225
trigger3 = movecontact

; AI zanba swing 2
[State -1]
type = ChangeState
value = 6220
triggerall = var(21) = 1
triggerall = var(58) = 1
triggerall = statetype != A
triggerall = win = 0
triggerall = ctrl = 1
triggerall = P2movetype != H
triggerall = P2statetype != A
Triggerall = AILevel >= 1
trigger1 = random >= 701
;trigger1 = enemy,HitDefAttr = SC,NA
;trigger1 = P2movetype = A
trigger1 = P2BodyDist x = [30,165]  

; AI zanba sweep
[State -1]
type = ChangeState
value = 6225
triggerall = var(21) = 1
triggerall = var(58) = 1
triggerall = statetype != A
triggerall = win = 0
triggerall = P2statetype != A
Triggerall = AILevel >= 1
triggerall = P2BodyDist x = [70,165]
trigger1 = random = [550,700]
trigger1 = ctrl = 1
trigger1 = P2movetype != H
trigger2 = P2statetype != A
trigger2 = random >= 700
trigger2 = ctrl = 1
trigger2 = P2movetype != H
trigger3 = stateno = 6220
trigger3 = moveguarded
trigger3 = random >= 700
Trigger3 = AILevel >= 7

; AI zanba uppercut
[State -1]
type = ChangeState
value = 6230
triggerall = var(21) = 1
triggerall = var(58) = 1
triggerall = statetype != A
triggerall = win = 0
Triggerall = AILevel >= 1
triggerall = P2BodyDist x <= 130
trigger1 = random = [400,500]
;trigger1 = P2BodyDist x <= 165
trigger1 = ctrl = 1
trigger2 = P2statetype = A
trigger2 = random >= 700
trigger2 = ctrl = 1
trigger2 = P2movetype != H
trigger3 = stateno = 6210
trigger3 = movehit
trigger3 = random >= 500
trigger3 = P2statetype != A
Trigger3 = AILevel >= 6

; AI Punch 1
[State -1]
type = ChangeState
value = 200
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = random >= 701
triggerall = P2BodyDist x <= 36
triggerall = P2stateno != [5030,5210]
triggerall = p2dist y = [-50,50]
triggerall = P2statetype != A && P2statetype != C
Triggerall = AILevel >= 1
trigger1 = P2movetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

; AI Punch 1B
[State -1]
type = ChangeState
value = 201
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = P2BodyDist x <= 35
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != C
triggerall = statetype = S
Triggerall = AILevel >= 3
trigger1 = stateno =200
trigger1 = movecontact
trigger1 = random >= 700

; AI Punch 2
[State -1]
type = ChangeState
value = 210
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = P2BodyDist x <= 44
triggerall = P2stateno != [5030,5210]
triggerall = p2dist y = [-50,50]
triggerall = P2statetype != C
Triggerall = AILevel >= 2
trigger1 = P2statetype != A 
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger1 = random <= 200
trigger2 = stateno =230
trigger2 = movehit
trigger2 = random <= 400

; AI Punch 3
[State -1]
type = ChangeState
value = 220
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = P2stateno != [5030,5210]
triggerall = p2dist y = [-50,50]
triggerall = P2statetype != A || P2statetype != C
triggerall = statetype != A
Triggerall = AILevel >= 3
trigger1 = P2statetype != A 
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger1 = P2BodyDist x = [45,60]
trigger1 = random <= 200
trigger2 = stateno = 201
trigger2 = movehit = 1
trigger2 = random >= 550
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger3 = random >= 550
trigger4 = stateno = 230
trigger4 = movehit = 1
trigger4 = random >= 600
trigger5 = stateno = 200
trigger5 = movehit = 1
trigger5 = random <= 300

; AI Kick 1
[State -1]
type = ChangeState
value = 230
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = Win = 0
triggerall = P2stateno != [5030,5210]
triggerall = p2dist y = [-50,50]
triggerall = P2statetype != A && P2statetype != L
triggerall = p2movetype != A
Triggerall = AILevel >= 1
trigger1 = stateno = 200
trigger1 = movecontact
trigger1 = P2BodyDist x <= 25
trigger1 = random = [400,600]

; AI Kick 3
[State -1]
type = ChangeState
value = 250
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != C
triggerall = statetype != A
Triggerall = AILevel >= 2
trigger1 = P2BodyDist x <= 40
trigger1 = P2movetype != A
trigger1 = random <= 100
trigger1 = ctrl = 1
trigger1 = P2statetype = A 
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = P2BodyDist x <= 50
trigger2 = random >= 501
trigger2 = var(29) != 10 && P2life <= 300

; AI shoulder tackle
[State -1]
type = ChangeState
value = 255
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = P2stateno != [5030,5210]
triggerall = statetype != A
Triggerall = AILevel >= 1
triggerall = var(29) != 10 && P2life <= 300
trigger1 = stateno = 220
trigger1 = movecontact
trigger1 = P2BodyDist x <= 50
trigger1 = random <= 500

; AI C. Punch 3
[State -1]
type = ChangeState
value = 320
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = P2stateno != [5030,5210]
triggerall = P2statetype != L
triggerall = statetype != A
Triggerall = AILevel >= 3
trigger1 = P2BodyDist x <= 40
trigger1 = P2movetype != A
trigger1 = random >= 950
trigger1 = ctrl = 1
trigger1 = P2statetype = A 
trigger2 = stateno = 340
trigger2 = movehit = 1
trigger2 = random <= 500
trigger2 = P2BodyDist x <= 30

; AI C. kick 2
[State -1]
type = ChangeState
value = 340
triggerall = var(58) != 1
triggerall = var(21) = 1
triggerall = statetype != A
triggerall = P2BodyDist x <= 42
triggerall = P2statetype != A
Triggerall = AILevel >= 2
trigger1 = random = [400,600]
trigger1 = ctrl = 1
trigger1 = P2movetype = A
trigger1 = P2statetype = S
trigger2 = stateno = 230
trigger2 = movehit = 1
trigger2 = random = [400,600]

; AI C. kick 3
[State -1]
type = ChangeState
value = 350
triggerall = var(58) != 1
triggerall = var(21) = 1
triggerall = statetype != A
triggerall = P2BodyDist x <= 46
triggerall = P2statetype != A
Triggerall = AILevel >= 3
trigger1 = random = [100,300]
trigger1 = ctrl = 1
trigger1 = P2movetype = A
trigger1 = P2statetype = S
trigger2 = stateno = 340
trigger2 = movehit = 1
trigger2 = random >= 501

; AI Air Punch 3
[state -1]
type = changestate
value = 420
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = stateno != 105
triggerall = statetype = A
triggerall = random = [450,600]
triggerall = life != 0
triggerall = P2movetype != H
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 3
triggerall = Vel Y >= 0
trigger1 = Pos Y <= -65
trigger1 = p2bodydist X <= 70

; AI Air Kick 2
[state -1]
type = changestate
value = 440
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = stateno != 105
triggerall = statetype = A
triggerall = random <= 449
triggerall = life != 0
triggerall = P2movetype != H
triggerall = Win = 0
triggerall = ctrl = 1
triggerall = P2stateno != [5030,5210]
Triggerall = AILevel >= 4
;triggerall = Vel Y >= 0
trigger1 = Pos Y <= -80
trigger1 = p2bodydist X <= 80

; AI Air Kick 3
[state -1]
type = changestate
value = 450
triggerall = var(21) = 1
triggerall = var(58) != 1
triggerall = random >= 600
triggerall = statetype = A
triggerall = P2statetype = A
triggerall = ctrl = 1
triggerall = stateno != 105
triggerall = P2BodyDist x <= 70
Triggerall = AILevel >= 4
trigger1 = Pos Y<=-80

;---------------------------------------------------------------------------
; Sanjou No Kiwami
[State -1]
type = ChangeState
value = 4800;4500
triggerall = var(21) != 1
triggerall = var(58) != 1
triggerall = command = "sanjou"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 4600
triggerall = var(21) != 1
triggerall = var(58) != 1
triggerall = command = "sanjou"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;stun gun headbutt
[State -1]
type = ChangeState
value = 6500
triggerall = var(21) != 1
triggerall = var(58) = 1
triggerall = command = "stun_gun"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; gatling gun punch
[State -1]
type = ChangeState
value = 3000
triggerall = var(21) != 1
triggerall = var(58) != 1
triggerall = command = "gatling"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Futae No Kiwami
[State -1]
type = ChangeState
value = 4000
triggerall = var(21) != 1
triggerall = var(58) != 1
triggerall = command = "hyperfnk"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 4100
triggerall = var(21) != 1
triggerall = var(58) != 1
triggerall = command = "hyperleapfnk"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;---------------------------------------------------------------------------

;shoulder tackle
[State -1]
type = ChangeState
value = 255
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "push" 
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; machine gun punch
[State -1]
type = ChangeState
value = 1200
triggerall = var(21) != 1
triggerall = var(58) != 1
triggerall = command = "machine"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Kiwami Hazushi
;[State -1]
;type = ChangeState
;value = 8000
;triggerall = var(21) != 1
;triggerall = var(58) != 1
;triggerall = command = "hazushi"
;trigger1 = statetype = S
;trigger1 = stateno != 100
;trigger1 = ctrl = 1

;[State -1, Tsunagi Chain]
;type = ChangeState
;value = 8114
;triggerall = var(58) != 1
;triggerall = var(21) = 0
;triggerall = var(29) >= 10
;triggerall = command = "hazushi"
;triggerall = statetype != A
;triggerall = stateno != 255
;trigger1 = stateno = [200,350]
;trigger1 = movehit

;[State -1, Tsunagi Breaker]
;type = ChangeState
;value = 8115
;triggerall = var(58) != 1
;triggerall = var(21) = 0
;triggerall = var(29) >= 10
;triggerall = numenemy
;triggerall = (enemynear, HitDefAttr = SCA, NA)
;triggerall = gethitvar(hitcount) >= 2
;triggerall = command = "push"
;triggerall = stateno != [120,153]
;triggerall = stateno = 5000 || 5010
;triggerall = statetype != A 
;triggerall = statetype != L
;trigger1 = movetype = H
;trigger1 = P2movetype = A

;[State -1, Tsunagi Dodge]
;type = ChangeState
;value = 8116
;triggerall = var(58) != 1
;triggerall = var(21) = 0
;triggerall = var(29) >= 10
;triggerall = command = "grab"
;triggerall = statetype != A
;triggerall = ctrl = 0
;triggerall = InGuardDist = 1
;trigger1 = stateno = [150,153] 

;[State -1, Tsunagi Breaker]
;type = ChangeState
;value = 8117
;triggerall = var(58) = 1
;triggerall = var(21) = 0
;triggerall = var(29) >= 10
;triggerall = numenemy
;triggerall = (enemynear, HitDefAttr = SCA, NA)
;triggerall = gethitvar(hitcount) >= 2
;triggerall = command = "push"
;triggerall = stateno != [120,153]
;triggerall = stateno = 5000 || 5010
;triggerall = statetype != A 
;triggerall = statetype != L
;trigger1 = movetype = H
;trigger1 = P2movetype = A


;Futae No Kiwami Cancel
;[State -1]
;type = ChangeState
;value = 1100
;triggerall = var(21) = 0
;triggerall = var(58) != 1
;triggerall = command = "DD"
;trigger1 = stateno = [1000,1002]
;trigger2 = stateno = [1300,1302]
;trigger3 = stateno = 4000 || stateno = 4100

;Futae No Kiwami
[State -1]
type = ChangeState
value = 1300
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "Lfutae1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1301
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "Lfutae2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;[State -1]
;type = ChangeState
;value = 1302
;triggerall = var(21) = 0
;triggerall = var(58) != 1
;triggerall = command = "Lfutae3"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;Futae No Kiwami
[State -1]
type = ChangeState
value = 1000
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "futae1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 1001
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "futae2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;[State -1]
;type = ChangeState
;value = 1002
;triggerall = var(21) = 0
;triggerall = var(58) != 1
;triggerall = command = "futae3"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;Futae No Kiwami Wave
[State -1]
type = ChangeState
value = 1500
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "futaeW1" || command = "futaeW2"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; Elbow Drop
[State -1]
type = ChangeState
value = 1400
triggerall = var(21) = 0
triggerall = command = "futaeW1" || command = "futaeW2"
triggerall = var(58) != 1
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;Pick up Zanbatou
[State -1]
type = ChangeState
value = 6000
triggerall = var(15) = 1 ; near zanbatou
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "activate"
;triggerall = power >= 1000
trigger1 = ctrl || (stateno=[100,101])
trigger1 = statetype = S

;Drop Zanbatou
[State -1]
type = ChangeState
value = 6001
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "activate"
trigger1 = ctrl || (stateno=[100,101])
trigger1 = statetype = S




;grab and hammer punch
[State -1]
type = ChangeState
value = 700
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;grab and headbutt
[State -1]
type = ChangeState
value = 6300
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(21) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [1000,1002]
trigger3 = stateno = [1300,1302]
trigger4 = stateno = 4000 || stateno = 4100

; Hop Backward
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = [1000,1002]
trigger3 = stateno = [1300,1302]
trigger4 = stateno = 4000 || stateno = 4100

;adv. guard
;[State -1]
;type = ChangeState
;value = 5
;triggerall = command = "push"
;triggerall = statetype != A
;triggerall = ctrl = 0
;triggerall = P2BodyDist x <= 22 ;InGuardDist = 1
;trigger1 = stateno = [150,153] 

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Kick 3
[State -1]
type = ChangeState
value = 550
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Air Kick 3
[state -1]
type = changestate
value = 650
triggerall = var(21) = 0
triggerall = var(58) != 1
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

; Air Recover
[State -1]
type = ChangeState
value = 5210
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "recovery"
triggerall = win = 0
triggerall = alive
triggerall = CanRecover
triggerall = RoundState = 2
trigger1 = stateno = 5050
trigger1 = Pos Y < -20

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 206
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = (Command = "x") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 207
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = (Command = "x") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = stateno != 207
triggerall = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 206
trigger2 = movecontact

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(58) != 1
triggerall = var(21) = 0
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
triggerall = var(58) != 1
triggerall = var(21) = 0
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
triggerall = var(58) != 1
triggerall = var(21) = 0
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
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 415
triggerall = var(58) != 1
triggerall = var(21) = 0
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
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(58) != 1
triggerall = var(21) = 0
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
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(58) != 1
triggerall = var(21) = 0
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
triggerall = var(58) != 1
triggerall = var(21) = 0
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

;Air Punch 1
[state -1]
type = changestate
value = 600
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = vel X != 0
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl = 1

;Air Punch 2
[state -1]
type = changestate
value = 610
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = command = "x"
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact

;Air Punch 3
[state -1]
type = changestate
value = 620
triggerall = var(58) != 1
triggerall = var(21) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------

;Air Kick 1
[state -1]
type = changestate
value = 630
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Air Kick 2
[state -1]
type = changestate
value = 640
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 410 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------

;zanba swing 1
[State -1]
type = ChangeState
value = 6210
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 6220
trigger2 = movecontact

[State -1]
type = ChangeState
value = 6210
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 6220
trigger2 = movecontact

;zanba swing 2
[State -1]
type = ChangeState
value = 6220
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1]
type = ChangeState
value = 6220
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------

;zanba sweep
[State -1]
type = ChangeState
value = 6225
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 6220
trigger2 = movecontact

[State -1]
type = ChangeState
value = 6225
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 6220
trigger2 = movecontact

;zanba uppercut
[State -1]
type = ChangeState
value = 6230
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 6225
trigger2 = moveguarded
trigger3 = stateno = 6210
trigger3 = movecontact

[State -1]
type = ChangeState
value = 6230
triggerall = var(21) = 0
triggerall = var(58) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 6225
trigger2 = moveguarded
trigger3 = stateno = 6210
trigger3 = movecontact

;---------------------------------------------------------------------------

;taunt
[State -1]
type = ChangeState
value = 85
triggerall = var(21) = 0
triggerall = var(58) != 1
triggerall = command = "s"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = life >= 301

