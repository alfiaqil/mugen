; _________________________________________
;| Sagat by MEMO                           |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;====================<DEFAULT VALUES>====================
[Defaults]
command.time = 15
command.buffer.time = 1
;====================<SINGLE BUTTON>====================
[Command]
name = "a"
command = a
time = 1
buffer.time = 1
[Command]
name = "b"
command = b
time = 1
buffer.time = 1
[Command]
name = "c"
command = c
time = 1
buffer.time = 1
[Command]
name = "x"
command = x
time = 1
buffer.time = 1
[Command]
name = "y"
command = y
time = 1
buffer.time = 1
[Command]
name = "z"
command = z
time = 1
buffer.time = 1
[Command]
name = "start"
command = s
time = 1
buffer.time = 1
;==================<HOLD DIRECTION>==================
[Command]
name = "holdfwd"
command=/$F
time=1
buffer.time = 1
[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1
[Command]
name = "holdup"
command = /$U
time=1
buffer.time = 1
[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1
;====================<HOLD BUTTON>====================
[Command]
name = "holda"
command = /a
time = 1
buffer.time = 1
[Command]
name = "holdb"
command = /b
time = 1
buffer.time = 1
[Command]
name = "holdc"
command = /c
time = 1
buffer.time = 1
[Command]
name = "holdx"
command = /x
time = 1
buffer.time = 1
[Command]
name = "holdy"
command = /y
time = 1
buffer.time = 1
[Command]
name = "holdz"
command = /z
time = 1
buffer.time = 1
[Command]
name = "holdstart"
command = /s
time = 1
buffer.time = 1
;====================<DIRECTION>====================
[Command]
name = "fwd"
command = F
time = 1
buffer.time = 1
[Command]
name = "back"
command = B
time = 1
buffer.time = 1
[Command]
name = "up"
command = U
time = 1
buffer.time = 1
[Command]
name = "down"
command = D
time = 1
buffer.time = 1
;====================<RELEASE DIR>====================
[Command]
name = "rlsfwd"
command = ~$F
time = 1
buffer.time = 1
[Command]
name = "rlsback"
command = ~$B
time = 1
buffer.time = 1
[Command]
name = "rlsup"
command = ~$U
time = 1
buffer.time = 1
[Command]
name = "rlsdown"
command = ~$D
time = 1
buffer.time = 1
;====================<RELEASE BUTTON>====================
[Command]
name = "rlsx"
command = ~x
time = 1
buffer.time = 1
[Command]
name = "rlsy"
command = ~y
time = 1
buffer.time = 1
[Command]
name = "rlsz"
command = ~z
time = 1
buffer.time = 1
[Command]
name = "rlsa"
command = ~a
time = 1
buffer.time = 1
[Command]
name = "rlsb"
command = ~b
time = 1
buffer.time = 1
[Command]
name = "rlsc"
command = ~c
time = 1
buffer.time = 1
;====================<SUPER MOTIONS>====================

[Command]
name = "SHINGETSUN"
command = ~DF, F, FU, x
time = 16
[Command]
name = "SHINGETSUN"
command = ~DF, F, FU, ~x
time = 16
[Command]
name = "SHINGETSUN"
command = ~DF, F, FU, y
time = 16
[Command]
name = "SHINGETSUN"
command = ~DF, F, FU, ~y
time = 16
[Command]
name = "SHINGETSUN"
command = ~DF, F, FU, z
time = 16
[Command]
name = "SHINGETSUN"
command = ~DF, F, FU, ~z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~DF, F, FU, x+y
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~DF, F, FU, y+x
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~DF, F, FU, z+y
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~DF, F, FU, y+z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~DF, F, FU, z+x
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~DF, F, FU, x+z
time = 16

[Command]
name = "SHINGETSUN"
command = ~D, DF, F, FU, x
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, FU, ~x
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, FU, y
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, FU, ~y
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, FU, z
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, FU, ~z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, FU, x+y
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, FU, y+x
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, FU, z+y
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, FU, y+z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, FU, x+z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, FU, z+x
time = 16

[Command]
name = "SHINGETSUN"
command = ~D, DF, F, x
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, ~x
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, y
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, ~y
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, z
time = 16
[Command]
name = "SHINGETSUN"
command = ~D, DF, F, ~z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, x+y
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, y+x
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, z+y
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, y+z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, x+z
time = 16
[Command]
name = "EXSHINGETSUN"
command = ~D, DF, F, z+x
time = 16

[Command]
name = "SHINKOENZAN"
command = ~DB, B, BU, x
time = 16
[Command]
name = "SHINKOENZAN"
command = ~DB, B, BU, ~x
time = 16
[Command]
name = "SHINKOENZAN"
command = ~DB, B, BU, y
time = 16
[Command]
name = "SHINKOENZAN"
command = ~DB, B, BU, ~y
time = 16
[Command]
name = "SHINKOENZAN"
command = ~DB, B, BU, z
time = 16
[Command]
name = "SHINKOENZAN"
command = ~DB, B, BU, ~z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~DB, B, BU, x+y
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~DB, B, BU, y+x
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~DB, B, BU, z+y
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~DB, B, BU, y+z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~DB, B, BU, x+z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~DB, B, BU, z+x
time = 16

[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, BU, x
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, BU, ~x
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, BU, y
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, BU, ~y
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, BU, z
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, BU, ~z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, BU, x+y
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, BU, y+x
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, BU, z+y
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, BU, y+z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, BU, x+z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, BU, z+x
time = 16

[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, x
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, ~x
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, y
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, ~y
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, z
time = 16
[Command]
name = "SHINKOENZAN"
command = ~D, DB, B, ~z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, x+y
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, y+x
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, z+y
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, y+z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, x+z
time = 16
[Command]
name = "EXSHINKOENZAN"
command = ~D, DB, B, z+x
time = 16
;-------------69----------------------------

[Command]
name = "SHINGETSUN69"
command = ~DB, B, BU, x
time = 16
[Command]
name = "SHINGETSUN69"
command = ~DB, B, BU, ~x
time = 16
[Command]
name = "SHINGETSUN69"
command = ~DB, B, BU, y
time = 16
[Command]
name = "SHINGETSUN69"
command = ~DB, B, BU, ~y
time = 16
[Command]
name = "SHINGETSUN69"
command = ~DB, B, BU, z
time = 16
[Command]
name = "SHINGETSUN69"
command = ~DB, B, BU, ~z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~DB, B, BU, x+y
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~DB, B, BU, y+x
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~DB, B, BU, z+y
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~DB, B, BU, y+z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~DB, B, BU, x+z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~DB, B, BU, z+x
time = 16

[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, BU, x
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, BU, ~x
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, BU, y
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, BU, ~y
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, BU, z
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, BU, ~z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, BU, x+y
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, BU, y+x
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, BU, z+y
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, BU, y+z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, BU, x+z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, BU, z+x
time = 16

[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, x
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, ~x
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, y
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, ~y
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, z
time = 16
[Command]
name = "SHINGETSUN69"
command = ~D, DB, B, ~z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, x+y
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, y+x
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, z+y
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, y+z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, x+z
time = 16
[Command]
name = "EXSHINGETSUN69"
command = ~D, DB, B, z+x
time = 16

[Command]
name = "SHINKOENZAN69"
command = ~DF, F, FU, x
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~DF, F, FU, ~x
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~DF, F, FU, y
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~DF, F, FU, ~y
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~DF, F, FU, z
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~DF, F, FU, ~z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~DF, F, FU, x+y
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~DF, F, FU, y+x
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~DF, F, FU, z+y
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~DF, F, FU, y+z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~DF, F, FU, z+x
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~DF, F, FU, x+z
time = 16

[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, FU, x
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, FU, ~x
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, FU, y
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, FU, ~y
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, FU, z
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, FU, ~z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, FU, x+y
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, FU, y+x
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, FU, z+y
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, FU, y+z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, FU, x+z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, FU, z+x
time = 16

[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, x
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, ~x
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, y
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, ~y
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, z
time = 16
[Command]
name = "SHINKOENZAN69"
command = ~D, DF, F, ~z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, x+y
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, y+x
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, z+y
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, y+z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, x+z
time = 16
[Command]
name = "EXSHINKOENZAN69"
command = ~D, DF, F, z+x
time = 16
;--------------------------------
[Command]
name = "69p"
command = B, b+y 
time = 16
[Command]
name = "69p"
command = B, y+b 
time = 16

[Command]
name = "69p"
command = /B, b+y 
time = 16
[Command]
name = "69p"
command = /B, y+b 
time = 16

[Command]
name = "412p"
command = B, x+y 
time = 16

[Command]
name = "412p"
command = B, y+x
time = 16

[Command]
name = "412p"
command = /B, x+y 
time = 16

[Command]
name = "412p"
command = /B, y+x
time = 16

[Command]
name = "412k"
command = /B, y
time = 16

[Command]
name = "412k"
command = /B, ~y
time = 16
;====================<OTHER>====================
[Command]
name = "highjump"
command = $D, $U
time = 15
;====================<DOUBLE TAP>====================
[Command]
name = "FF"
command = F, F
time = 15

[Command]
name = "BB"
command = B, B
time = 15

[Command]
name = "DD"
command = D, D
time = 10
;====================<2/3 BUTTON COMBINATION>====================
[Command]
name = "recovery"
command = y+b
time = 10

[Command]
name = "recovery"
command = b+y
time = 10

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1
;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,760]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, SHINKOENZAN]
type = ChangeState
ignorehitpause = 1
value = 1100
triggerAll = !AILevel
triggerall = ifelse((Anim!=[5,6]),(command = "SHINKOENZAN"),(command = "SHINKOENZAN69"))
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl 
;AIR LIGHT KICK  
trigger2 = Stateno = 630
;trigger2 = Animelemtime(3) >= 0
trigger2 = MoveCONTACT && time > 2

[State -1, SHINGETSU]
type = ChangeState
ignorehitpause = 1
value = 1000
triggerAll = !AILevel
triggerall = ifelse((Anim!=[5,6]),(command = "SHINGETSUN"),(command = "SHINGETSUN69"))
triggerAll = RoundState = 2 && StateType != A 
trigger1 = ctrl || StateNo = 52 
;Punch  
trigger2 = Stateno = [200,220]
;trigger2 = Animelemtime(3) >= 0
trigger2 = MoveCONTACT && time > 2
;Kick  
trigger3 = Stateno = [230,250]
;trigger3 = Animelemtime(3) >= 0
trigger3 = MoveCONTACT && time > 2
;CPunch  
trigger4 = Stateno = [410,420]
;trigger4 = Animelemtime(3) >= 0
trigger4 = MoveCONTACT && time > 2
;CKick  
trigger5 = Stateno = [430,450]
;trigger5 = Animelemtime(3) >= 0
trigger5 = MoveCONTACT && time > 2


[State -1, Back throw]
type = NULL;ChangeState
value = 801
triggerall = stateno != 100 || stateno != 105
triggerall = Statetype != A && ctrl && roundstate = 2
trigger1 = (command = "holdback" && command = "x" && command = "a")

[State -1, Shoulder Throw]
type = NULL;ChangeState
value = 800
triggerall = stateno != 100 || stateno != 105
triggerall = Statetype != A && ctrl && roundstate = 2
trigger1 = command = "x" && command = "a";command != "holdback" && ((command = "a" && command = "x") || (command = "holdfwd" && command = "x" && command = "a"))

[State -1, DASH FWD]
type = ChangeState
value = 100
ignorehitpause = 1
triggerAll = !AILevel
triggerAll = command = "FF" 
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl  
trigger2 = (stateno = [300,301]) 
trigger3 = (stateno = [310,312]) && movecontact

[State -1, DASH BACK]
type = ChangeState
value = 105
ignorehitpause = 1
triggerAll = !AILevel
triggerAll = command = "BB" 
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl  
trigger2 = (stateno = [300,301]) 
trigger3 = (stateno = [310,312]) && movecontact

[state -1, DODGE]
Type = NULL;changestate
value = 700
triggerAll = !AILevel
triggerall = command = "b" && command = "y"
trigger1 = RoundState = 2 && (statetype != a) && ctrl

[State -1, FA]
type = ChangeState
ignorehitpause = 1
value = 300
triggerAll = !AILevel
triggerAll =command = "c" && command = "z"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl

[State -1, OVER HEAD]
type = ChangeState
ignorehitpause = 1
value = 211
triggerAll = !AILevel
triggerAll = command = "x" && command = "y"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, SWEEP]
type = ChangeState
ignorehitpause = 1
value = 421
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "holdfwd" && command = "z"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, SL Punch]
type = ChangeState
ignorehitpause = 1
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52
TRIGGER2 = STATENO = 200 && MoveContact && time > 20
TRIGGER3 = STATENO = 230 && MoveContact && time > 13

[State -1, SM Punch]
type = ChangeState
ignorehitpause = 1
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52
;TRIGGER2 = STATENO = 230 && MoveContact && time > 4
;TRIGGER3 = STATENO = 410 && time > 8

[State -1, SH Punch]
type = ChangeState
ignorehitpause = 1
value = 220 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52
TRIGGER2 = STATENO = 230 && MoveContact && time > 4

[State -1, SL Kick]
type = ChangeState
ignorehitpause = 1
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52
TRIGGER2 = STATENO = 230 && MoveContact && time > 13

[State -1, SM Kick]
type = ChangeState
ignorehitpause = 1
value = 240
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, SH Kick]
type = ChangeState
ignorehitpause = 1
value = 250
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, CL Punch]
type = ChangeState
ignorehitpause = 1
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x" 
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52
TRIGGER2 = STATENO = 400 && MoveContact && time > 16
TRIGGER3 = STATENO = 430 && MoveContact 

[State -1, CM Punch]
type = ChangeState
ignorehitpause = 1
value = 410
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "y" 
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, CH Punch]
type = ChangeState
ignorehitpause = 1
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z" 
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52
TRIGGER2 = STATENO = 200 && MoveContact && time > 10

[State -1, CL Kick]
type = ChangeState
ignorehitpause = 1
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a" 
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52
TRIGGER2 = STATENO = 430 && time > 8

[State -1, CM Kick]
type = ChangeState
ignorehitpause = 1
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b" 
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, CH Kick]
type = ChangeState
ignorehitpause = 1
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c" 
triggerAll = RoundState = 2 &&StateType != A
trigger1 = ctrl || StateNo = 52

[State -1, JM Kick]
type = ChangeState
ignorehitpause = 1
value = 640
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "y" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl 

[State -1, JL Punch]
type = ChangeState
ignorehitpause = 1
value = 600
triggerAll = !AILevel
triggerAll = command = "x" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl

[State -1, JM Punch]
type = ChangeState
ignorehitpause = 1
value = 610
triggerAll = !AILevel
triggerAll = command = "y" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl

[State -1, JL Kick]
type = ChangeState
ignorehitpause = 1
value = 630
triggerAll = !AILevel
triggerAll = command = "a" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl 

[State -1, JM Kick]
type = ChangeState
ignorehitpause = 1
value = 641
triggerAll = !AILevel
triggerAll = command = "b" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl 

[State -1, JH Punch]
type = ChangeState
ignorehitpause = 1
value = 620
triggerAll = !AILevel
triggerAll = command = "z" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl 
;JL Punch
trigger2 = stateno = 600 && movecontact
;JL Kick
trigger3 = stateno = 630 && movecontact

[State -1, JH Kick]
type = ChangeState
ignorehitpause = 1
value = 650
triggerAll = !AILevel
triggerAll = command = "c" 
triggerAll = RoundState = 2 &&StateType = A
trigger1 = ctrl 
;JL Punch
trigger2 = stateno = 600 && movecontact
;JL Kick
trigger3 = stateno = 630 && movecontact

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl 
;==============================================================
;==================================CVTW2/AI==============MEMO==
;==============================================================
[State -1, AI Walk]
type = ChangeState
triggerall = AILevel && NUMENEMY
triggerall = StateType != A
TRIGGERAll = ROUNDSTATE = 2
triggerall = Ctrl
triggerall = !InGuardDist
triggerall = StateNo != [10,12]
triggerall = PrevStateNo != [10,12]
triggerall = StateNo != [120,159]
triggerall = PrevStateNo != [120,159]
triggerall = (P2BodyDist x = [6,500]) && EnemyNear, vel y >= 0
trigger1 = ctrl && Random < (680 * (AILevel ** 2 / 64.0))
value = 99920

[State -1, AI Walk]
type = ChangeState
triggerall = AILevel && NUMENEMY
triggerall = StateType != A
TRIGGERAll = ROUNDSTATE = 2
triggerall = Ctrl
triggerall = !InGuardDist
triggerall = StateNo != [10,12]
triggerall = PrevStateNo != [10,12]
triggerall = StateNo != [120,159]
triggerall = PrevStateNo != [120,159]
;triggerall = (P2BodyDist x = [0,500]) && EnemyNear, vel y >= 0
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,200]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 387, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,150]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (150 * (AILevel ** 2 / 64.0))
trigger3 = InGuardDist && (P2BodyDist x = [0,85]) && Random < (125 * (AILevel ** 2 / 64.0))
trigger4 = ctrl && Random < (280 * (AILevel ** 2 / 64.0))
value = 99921

[State -1, AI Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155])
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A 
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))


[State -1, Avoid Throws] ; Thanks, Warusaki!
type = ChangeState
value = 40
triggerall = AILevel
triggerall = RoundState = 2
triggerall = InGuardDist && (P2bodydist X = [-0,60]) && Random < (12 * (AILevel ** 2 / 64.0))
triggerall = ctrl 
triggerall = StateType != A
triggerall = StateNo != 40
trigger1 = EnemyNear, HitDefAttr = SC, NT,ST,HT && Random < (1 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Air)]
type = NULL;ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = NULL;ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Shoulder Throw]
type = NULL;ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (41 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (83 * (AILevel ** 2 / 64.0))
[State -1, Back throw]
type = NULL;ChangeState
value = 805
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (41 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (83 * (AILevel ** 2 / 64.0))

[State -1, DASH BACK]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) 
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 387, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))
trigger3 = InGuardDist && (P2BodyDist x = [0,45]) && Random < (610 * (AILevel ** 2 / 64.0))

[State -1, FA]
type = null;ChangeState
value = 300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (MoveType = I && ctrl) 
trigger1 = AILevel && InGuardDist && (P2BodyDist x = [0,45]) && Random < 150
trigger2 = InGuardDist && (P2BodyDist x = [0,75]) && Random < 100


[State -1, RUN]
type = ChangeState
value = 1000 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,70]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H
trigger1 = ctrl && Random < (739 * (AILevel ** 2 / 64.0))