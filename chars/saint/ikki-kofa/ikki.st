;----------------------------------------------------------------
;----------------------------------------------------------------
; Time Over state decider
[Statedef 170]
type = S

[state 170, 1]
type = varrandom
trigger1 = time = 0
v = 2
range = 0,99

[state 170, 2]
type = changestate
trigger1 = var(2) = [0,49]
value = 171

[state 170, 3]
type = changestate
trigger1 = var(2) = [50,99]
value = 172

;----------------------------------------------------------------
;Time Over Lose 1
[Statedef 171]
type = S
anim = 170

[State 171 , 1]
type = AssertSpecial
trigger1 = Time = [0,480]
flag = RoundNotOver

[State 171, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 170,0
channel = 0

[State 171, Tux]
type = PlaySnd
trigger1 = AnimElem = 4
value = 52,0

;----------------------------------------------------------------
;Time Over Lose 2
[Statedef 172]
type = S
anim = 171

[State 172 , 1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

[State 171, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 170,1
channel = 0

[State 172, Tux]
type = PlaySnd
trigger1 = AnimElem = 3
value = 52,0

;----------------------------------------------------------------
;----------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Anim = 8141
value = 4042

[state 180, 2]
type = changestate
trigger1 = Anim = 4404
value = 199

[state 180, 3]
type = changestate
trigger1 = Anim = 3048
value = 182

[state 180, 4]
type = changestate
trigger1 = Anim = 3041
value = 185

[state 180, 5]
type = changestate
trigger1 = Anim = 3061
value = 183

[state 180, 6]
type = changestate
trigger1 = Anim = 3103
value = 187

[State 180, 7]
type = ChangeState
triggerall = Var(58) = RoundNo
triggerall = (Anim != 8141) && (Anim != 4404) && (Anim != 3048) && (Anim != 3061)
trigger1 = Time = 0
value = 186

[State 180, 8]
type = ChangeState
triggerall = Var(58) != RoundNo
triggerall = MatchOver = 0
triggerall = (Anim != 8141) && (Anim != 4404) && (Anim != 3048) && (Anim != 3061)
trigger1 = Time = 0
value = 181

[State 180, 9]
type = ChangeState
triggerall = Var(58) != RoundNo
triggerall = MatchOver = 1
triggerall = (Anim != 8141) && (Anim != 4404) && (Anim != 3048) && (Anim != 3061)
trigger1 = Time = 0
value = 184
;----------------------------------------------------------------
;winpose 1st Round
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,175]
flag = RoundNotOver

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 180,2
channel = 0

;----------------------------------------------------------------
;Winpose Fatality after Hell
[Statedef 182]
type = S
ctrl = 0
anim = 1992
velset = 0,0,0

[State 182, 1]
type = ChangeAnim
triggerall = RoundNo = 1
trigger1 = Time = 0
value = 181

[State 182, 2]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 182, 3]
type = AssertSpecial
triggerall = RoundNo = 1
trigger1 = Time = [0,185]
flag = RoundNotOver

[State 182, 4]
type = AssertSpecial
triggerall = RoundNo >= 2
trigger1 = Time = [0,230]
flag = RoundNotOver

[State 182, 5]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,13
channel = 0

[State 182, 6]
type = PlaySnd
triggerall = RoundNo = 1
trigger1 = AnimElem = 1
value = 182,2
channel = 0

[State 182, 6]
type = PlaySnd
triggerall = RoundNo >= 2
trigger1 = AnimElem = 9
value = 182,0
channel = 0

;----------------------------------------------------------------
;Winpose Fatality after Big Hand
[Statedef 183]
type = S
ctrl = 0
anim = 3061
velset = 0,0,0

[State 183, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 183 , 2]
type = AssertSpecial
trigger1 = Time = [0, 60]
flag = RoundNotOver

;----------------------------------------------------------------
;WinPose 2nd Round by Tux
[Statedef 184]
type = S
ctrl = 0
anim = 182
velset = 0,0,0

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 184, 2]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = RoundNotOver

[State 184, 3]
type = PlaySnd
trigger1 = Time = 0
value = 190, 0

[State 184, 4]
type = Explod
trigger1 = Time = 0
anim = 4102
id = 4102
pos = 0,0
postype = p1
sprpriority = 5
removetime = 48
bindtime = -1
ownpal = 1

[State 184, 5]
type = PlaySnd
trigger1 = time = 48
value = 190, 2
volume = 50

[State 184, 6]
type = EnvShake
trigger1 = time = 48
time = 16
persistent = 0
ignorehitpause = 1

[State 184, 7]
type = PlaySnd
trigger1 = time = 54
value = 190, 1
volume = 50

[state 184, 8]
type = Explod
triggerall = NumExplod(19000) = 0
triggerall = stateno = 193
trigger1 = time = 0
anim = 19000
id = 19000
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 57
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 184, 9]
type = Explod
trigger1 = time = 48  
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

[state 184, 10]
type = VarRandom
trigger1 = Time = 100
v = 2
range = 0,99

[State 184, 11]
type = PlaySnd
triggerall = Var(2) = [0, 49]
trigger1 = Time = 100
value = 180,3
channel = 0

[State 184, 12]
type = PlaySnd
triggerall = Var(2) = [50, 99]
trigger1 = Time = 100
value = 2,12
channel = 0

[State 184, 13]
type = EnvColor
trigger1 = Time = 48
value = 255,255,255
time = 10

;----------------------------------------------------------------
;Winpose Fatality after Burning
[Statedef 185]
type = S
ctrl = 0
anim = 1991
velset = 0,0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 182 , 2]
type = AssertSpecial
trigger1 = Time = [0,280]
flag = RoundNotOver

[State 182, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 183,0
channel = 0

[State 182, 4]
type = PlaySnd
trigger1 = AnimElem = 9
value = 183,1
channel = 0

;----------------------------------------------------------------
;Winpose after Renaissance
[Statedef 186]
type = S
ctrl = 0
anim = 181
velset = 0,0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,310]
flag = RoundNotOver

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4300,0
channel = 0

;----------------------------------------------------------------
;Winpose after Phoenix No Ken
[Statedef 187]
type = S
ctrl = 0
anim = 3103
velset = 0,0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,0]
flag = roundnotover

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,0]
flag = RoundNotOver

[State 181, 3] 
type = AssertSpecial
trigger1 = Time = [0,0]
flag = NoBarDisplay

[State 181, 4]
type = AllPalFX
trigger1 = Time = [0,0]
time = 1
add = -255,-255,-255

[State 181, 5]
type = BGPalFX
trigger1 = Time = [0,0]
time = 1
add = -255,-255,-255

;===========================================================
;win Ultime Phoenix
[Statedef 4042]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 8141
ctrl = 0

[State 4042, Tux]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 4042, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 4042, 2]
type = AssertSpecial
trigger1 = Time = [0,60]
flag = RoundNotOver

;----------------------------------------------------------------
;----------------------------------------------------------------
; intro state decider
[statedef 190]
type = s
ctrl = 0
velset = 0,0,0

[state 190, 1];Intro Avec Armure
type = changestate
trigger1 = p2name = "ikki" || p4name = "ikki"
value = 19400

[state 190, 1];Intro Avec Armure
type = changestate
trigger1 = p2name = "ankoku phoenix" || p4name = "ankoku phoenix"
trigger2 = p2name = "phoenix noir" || p4name = "phoenix noir"
trigger3 = p2name = "blackPhoenix" || p4name = "blackPhoenix"
value = 191

[state 190, 1];Intro depuis helico
type = changestate
trigger1 = p2name = "jango" || p4name = "jango"
value = 19000

[state 190, 1];Intro de la haine
type = changestate
trigger1 = p2name = "guilty" || p4name = "guilty"
value = 19100

[state 190, 1];Intro mirage face a esmeralda
type = changestate
trigger1 = p2name = "esmeralda" || p4name = "esmeralda"
value = 19200

[state 190, 1];Versus Docrates
type = changestate
trigger1 = p2name = "docrates" || p4name = "docrates"
value = 19300

[state 190, 1];Versus Black Saint
type = changestate
trigger1 = p2name = "pegase Noir" || p4name = "pegase Noir"
trigger2 = p2name = "ankoku pegasus" || p4name = "ankoku pegasus"
trigger3 = p2name = "black pegase" || p4name = "black pegase"
trigger4 = p2name = "black pegasus" || p4name = "black pegasus"
trigger5 = p2name = "blackPegasus" || p4name = "blackPegasus"
;--------------------------------------------------------------
trigger6 = p2name = "dragon noir" || p4name = "dragon noir"
trigger7 = p2name = "ankoku dragon" || p4name = "ankoku dragon"
trigger8 = p2name = "black dragon" || p4name = "black dragon"
trigger9 = p2name = "blackDragon" || p4name = "blackDragon"
;--------------------------------------------------------------
trigger10 = p2name = "cygne noir" || p4name = "cygne noir"
trigger11 = p2name = "ankoku cygnus" || p4name = "ankoku cygnus"
trigger12 = p2name = "black cygnus" || p4name = "black cygnus"
trigger13 = p2name = "blackSwan" || p4name = "blackSwan"
;--------------------------------------------------------------
trigger14 = p2name = "andromede noir" || p4name = "andromede noir"
trigger15 = p2name = "ankoku andromeda" || p4name = "ankoku andromeda"
trigger16 = p2name = "black andromede" || p4name = "black andromede"
trigger17 = p2name = "black andromeda" || p4name = "black andromeda"
trigger18 = p2name = "blackAndromeda" || p4name = "blackAndromeda"
value = 192

[state 190, 1];Versus Ennemi flammes
type = changestate
trigger1 = p2name = "agora" || p4name = "agora"
trigger2 = p2name = "shiva" || p4name = "shiva"
value = 193

[state 190, 1];Versus gold
type = changestate
trigger1 = p2name = "shaka" || p4name = "shaka"
trigger2 = p2name = "evil saga" || p4name = "evil saga"
trigger3 = p2name = "evilSaga" || p4name = "evilSaga"
trigger4 = p2name = "yaga" || p4name = "yaga"
trigger5 = p2name = "jagger" || p4name = "jagger"
value = 194

[state 190, 1];Versus Hyoga / Seiya
type = changestate
trigger1 = p2name = "seiya" || p4name = "seiya"
trigger2 = p2name = "hyoga" || p4name = "hyoga"
trigger3 = p2name = "Hyoga de Cisne" || p4name = "Hyoga de Cisne"
value = 195

[state 190, 1];Versus Galaxian Wars
type = changestate
trigger1 = p2name = "jabu" || p4name = "jabu"
trigger2 = p2name = "Seiya Civil" || p4name = "Seiya Civil"
trigger3 = p2name = "seiyaNC" || p4name = "seiyaNC"
trigger4 = p2name = "Shiryu Civil" || p4name = "Shiryu Civil"
trigger5 = p2name = "shiryuNC" || p4name = "shiryuNC"
trigger6 = p2name = "Hyoga Civil" || p4name = "Hyoga Civil"
trigger7 = p2name = "hyogaNC" || p4name = "hyogaNC"
value = 196

[State 190, 1]; Versus Shun
type = ChangeState
trigger1 = p2name = "shun" || p4name = "shun"
trigger2 = p2name = "Andromeda" || p4name = "Andromeda"
value = 19500

[state 190, 1];Versus Ennemi Shun
type = changestate
triggerall = p2name != "shun" && p3name != "shun" && p4name != "shun"
trigger1 = p2name = "flamme" || p4name = "flamme"
trigger2 = p2name = "ennetsu" || p4name = "ennetsu"
trigger3 = p2name = "capella" || p4name = "capella"
trigger4 = p2name = "Auriga Capella" || p4name = "Auriga Capella"
trigger5 = p2name = "capellaS" || p4name = "capellaS"
trigger6 = p2name = "dante" || p4name = "dante"
trigger7 = p2name = "danteS" || p4name = "danteS"
trigger8 = p2name = "orpheus" || p4name = "orpheus"
trigger9 = p2name = "Orfeo" || p4name = "Orfeo"
trigger10 = p2name = "uru" || p4name = "uru"
trigger11 = p2name = "rungh" || p4name = "rungh"
value = 197

[state 190, 1];Versus Nachi
type = changestate
trigger1 = p2name = "nachi" || p4name = "nachi"
trigger2 = p2name = "Lupus Nachi" || p4name = "Lupus Nachi"
trigger3 = p2name = "Nachi del Lobo" || p4name = "Nachi del Lobo"
value = 198

[state 190, 3]
type = varrandom
trigger1 = time = 0
v = 2
range = 0,99

;Random
[state 190, 6]
type = changestate
trigger1 = var(2) = [0,24]
value = 191

[state 190, 6]
type = changestate
trigger1 = var(2) = [25,49]
value = 19400

[state 190, 6]
type = changestate
trigger1 = var(2) = [50,74]
value = 194

[state 190, 6]
type = changestate
trigger1 = var(2) = [75,99]
value = 196

;------------------------------
; étranglement ankoku phoenix
[Statedef 19000]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[state 19000: 	assertspecial] 
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19000, 0]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

[State 19000 , voix ankoku]
type = PlaySnd
trigger1 = time = 10
value = 1900,0

[State 19000 , voix aie ankoku]
type = PlaySnd
trigger1 = time = 0
value = 5000,1

[State 19000 , voix aie ankoku]
type = PlaySnd
trigger1 = time = 100
value = 5000,1

[State 19000 , voix aie ankoku]
type = PlaySnd
trigger1 = time = 200
value = 5000,1

[State 19000 , voix aie ankoku]
type = PlaySnd
trigger1 = time = 300
value = 1900,3

[State 19000, 4]
type = ChangeState
trigger1 = Time = 300
value = 19001
ctrl = 1

;------------------------------
; intro depuis helico
[Statedef 19001]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[state 19001, assertspecial] 
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19001, 0]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

[State 19001 , shun]
type = Helper
triggerall = p2name != "shun" || p3name != "shun" || p4name != "shun"
trigger1 = time = 0
trigger1 = numhelper(19002) = 0
helpertype = player
name = "shun-helico"
id = 19002
postype = p1
pos = 50, 0
stateno = 19002
keyctrl = 0
ownpal = 1

[State 19001 , seiya]
type = Helper
triggerall = p2name != "seiya" || p3name != "seiya" || p4name != "seiya"
trigger1 = time = 0
trigger1 = numhelper(19006) = 0
helpertype = player
name = "seiya-helico"
id = 19006
postype = p1
pos = 50, 0
stateno = 19006
keyctrl = 0
ownpal = 1

[State 19001 , hyoga]
type = Helper
triggerall = p2name != "hyoga" || p3name != "hyoga" || p4name != "hyoga"
trigger1 = time = 0
trigger1 = numhelper(19004) = 0
helpertype = player
name = "hyoga-helico"
id = 19004
postype = p1
pos = 50, 0
stateno = 19004
keyctrl = 0
ownpal = 1

[State 19001, 4]
type = ChangeState
trigger1 = Time = 300
value = 191
ctrl = 0

;---------------------------------------------------------------------------
;shun-helico
[Statedef 19002]
type = S
movetype = A
physics = S
Anim = 19102
juggle = 0
velset = 0
ctrl = 0

[State 19001 , voix shun]
type = PlaySnd
trigger1 = time = 0
value = 1900,1

[State 19002, 1]
type = Explod
triggerall = NumExplod(19102) = 0
trigger1 = time = 0
anim = 19102
id = 19102
pos = 0,0
postype = p1
sprpriority = 6
removetime = 200
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19002, 2]
type = ChangeState
trigger1 = Time = 200
value = 19003
ctrl = 0

;---------------------------------------------------------------------------
;shun-stand
[Statedef 19003]
type = S
movetype = A
physics = S
Anim = 19103
juggle = 0
velset = 0
ctrl = 0

[State 19000 , helico]
type = PlaySnd
trigger1 = time = 0
value = 1900,4

[State 19003, 1]
type = Explod
triggerall = NumExplod(19103) = 0
trigger1 = time = 0
anim = 19103
id = 19103
pos = 0,0
postype = p1
sprpriority = 6
removetime = 300
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19003, 1]
type = DestroySelf
trigger1 = Time = 300

;---------------------------------------------------------------------------
;hyoga-helico
[Statedef 19004]
type = S
movetype = A
physics = S
type = S
movetype = A
physics = S
Anim = 19104
juggle = 0
velset = 0
ctrl = 0
sprpriority = 5

[State 19004 , voix ami qui sauve]
type = PlaySnd
trigger1 = time = 0
value = 1900,2

[State 19004, 1]
type = Explod
triggerall = NumExplod(19104) = 0
trigger1 = time = 0
anim = 19104
id = 19104
pos = 0,0
postype = p1
sprpriority = 5
removetime = 200
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19004, 2]
type = ChangeState
trigger1 = Time = 210
value = 19005
ctrl = 0

;---------------------------------------------------------------------------
;hyoga-stand
[Statedef 19005]
type = S
movetype = A
physics = S
Anim = 19105
juggle = 0
velset = 0
ctrl = 0

[State 19005, 1]
type = Explod
triggerall = NumExplod(19105) = 0
trigger1 = time = 0
anim = 19105
id = 19105
pos = 0,0
postype = p1
sprpriority = 5
removetime = 300
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19005, 2]
type = DestroySelf
trigger1 = Time = 300

;---------------------------------------------------------------------------
;seiya-helico
[Statedef 19006]
type = S
movetype = A
physics = S
type = S
movetype = A
physics = S
Anim = 19106
juggle = 0
velset = 0
ctrl = 0

[State 19005 , voix ami qui sauve]
type = PlaySnd
trigger1 = time = 0
value = 1900,2

[State 19006, 1]
type = Explod
triggerall = NumExplod(19106) = 0
trigger1 = time = 0
anim = 19106
id = 19106
pos = 0,0
postype = p1
sprpriority = 4
removetime = 200
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19006, 2]
type = ChangeState
trigger1 = Time = 200
value = 19007
ctrl = 0

;---------------------------------------------------------------------------
;seiya-stand
[Statedef 19007]
type = S
movetype = A
physics = S
Anim = 19107
juggle = 0
velset = 0
ctrl = 0

[State 19007, 1]
type = Explod
triggerall = NumExplod(19107) = 0
trigger1 = time = 0
anim = 19107
id = 19107
pos = 0,0
postype = p1
sprpriority = 4
removetime = 300
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19007, 2]
type = DestroySelf
trigger1 = Time = 300

;------------------------------------
;Intro VS Esmeralda
[Statedef 19200]
type    = S
ctrl = 0
anim = 19300
velset = 0,0,0

[State 19200]
type = AssertSpecial
trigger1 = time = [0, 650]
flag 			= intro
flag2 		= nomusic
flag3 		= nobardisplay
ignorehitpause = 1

[State 19200 , snd]
type = PlaySnd
trigger1 = time = 180
value = 4400,0
volume = 255

[state 19200, 3]
type = changestate
trigger1 = time = 650
value = 0
ctrl = 0

;------------------------------------
;NEW intro 2010
[Statedef 19400]
type    = S
ctrl = 0
anim = 186
velset = 0,0,0

[state 19400, 1] 
type = AssertSpecial
trigger1 = Time = [0, 380]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19400, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,11
channel = 0

[State 19400, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 20000
id = 20000
pos = 0,0
postype = back
sprpriority = -5
removetime = 380
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19400, 4]
type = Explod
triggerall = (P2Name != "ikki") && (P4Name != "ikki")
trigger1 = AnimElem = 1
anim = 1980
id = 1980
pos = 25,0
postype = p1
sprpriority = -3
removetime = 60
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19400, 5]
type = EnvColor
triggerall = (P2Name != "ikki") && (P4Name != "ikki")
trigger1 = AnimElem = 2
value = 230,50,0
time = 1

[State 19400, 6]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4300,2
volume = 255

[state 19400, 7]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;----------------------------------------------------------------
;Intro vs Shun
[statedef 19500]
type = s
ctrl = 0
anim = 192
velset = 0,0,0

[state 192: 	assertspecial] 
type 			= assertspecial
trigger1 		= 1
flag 			= intro

[State 192, 0]
type = AssertSpecial
trigger1 = Time = [0,190]
flag = intro

[State 192, voix]
type = PlaySnd
trigger1 = time = 0
value = 192, 1
channel = 0

[state 192, 3]
type = changestate
trigger1 = time = 190
value = 0
ctrl = 0

;------------------------------
; ikki aime esmeralda
[Statedef 19100]
type = S
ctrl = 0
anim = 19200
velset = 0,0

[state 19100: 	assertspecial] 
type 			= assertspecial
trigger1 		= 1
flag 			= intro
flag2 		= nomusic
flag3 		= nobardisplay

[State 19100, 0]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[State 19100 , esmeralda]
type = Helper
triggerall = p2name != "esmeralda" || p3name != "esmeralda" || p4name != "esmeralda"
trigger1 = time = 0
trigger1 = numhelper(19102) = 0
helpertype = player
name = "esmeralda"
id = 19102
postype = p1
pos = 30, 0
stateno = 19102
keyctrl = 0
ownpal = 1

[State 19100 , esmeralda]
type = PlaySnd
trigger1 = time = 100
value = 4400,0
channel = 0

[State 19100, 4]
type = ChangeState
trigger1 = Time = 200
value = 19101
ctrl = 0

;------------------------------
;ikki pleure
[Statedef 19101]
type = S
ctrl = 0
anim = 19201
velset = 0,0

[state 19100: 	assertspecial] 
type 			= assertspecial
trigger1 		= 1
flag 			= intro
flag2 		= nomusic
flag3 		= nobardisplay

[State 19100, 0]
type = AssertSpecial
trigger1 = Time = [0,540]
flag = Intro

[State 19100 , esmeralda]
type = PlaySnd
trigger1 = time = 50
value = 4400,2
channel = 0

[State 19100, snd]                        
type = PlaySnd
trigger1 = AnimElem = 7
value = 2, 8

[State 19100, 4]
type = ChangeState
trigger1 = Time = 540
value = 0
ctrl = 0

;---------------------------------------------------------------------------
;esmeralda mon amour
[Statedef 19102]
type = S
movetype = A
physics = S
Anim = 19202
juggle = 0
velset = 0
ctrl = 0

[State 19102, 1]
type = Explod
triggerall = NumExplod(19202) = 0
trigger1 = time = 0
anim = 19202
id = 19202
pos = 0,0
postype = p1
sprpriority = 9
removetime = 200
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19102, 2]
type = ChangeState
trigger1 = Time = 200
value = 19103
ctrl = 0

;---------------------------------------------------------------------------
;esmeralda meurt
[Statedef 19103]
type = S
movetype = A
physics = S
Anim = 19203
juggle = 0
velset = 0
ctrl = 0

[State 19103 , esmeralda]
type = PlaySnd
trigger1 = time = 0
value = 3036,4

[State 19103, 1]
type = Explod
triggerall = NumExplod(19203) = 0
trigger1 = time = 0
anim = 19203
id = 19203
pos = 0,0
postype = p1
sprpriority = 8
removetime = 402
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19103, 1]
type = Explod
triggerall = NumExplod(19204) = 0
trigger1 = time = 0
anim = 19204
id = 19204
pos = 0,0
postype = p1
sprpriority = 9
removetime = 12
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19103, 2]
type = ChangeState
trigger1 = Time = 402
value = 19104
ctrl = 0

;---------------------------------------------------------------------------
;esmeralda disparait
[Statedef 19104]
type = S
movetype = A
physics = S
Anim = 19205
juggle = 0
velset = 0
ctrl = 0

[State 19104, 1]
type = Explod
triggerall = NumExplod(19205) = 0
trigger1 = time = 0
anim = 19205
id = 19205
pos = 0,0
postype = p1
sprpriority = 9
removetime = 100
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19104, 1]
type = DestroySelf
trigger1 = Time = 100

;----------------------------------------------------------------
;Intro VS docrates
[Statedef 19300]
type = S
ctrl = 0
anim = 193
velset = 0,0,0

[state 19300: 	assertspecial] 
type 			= assertspecial
trigger1 		= 1
flag 			= intro

[State 19300, 0]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = intro

[State 19300, phoenix]
type = PlaySnd
trigger1 = time = 0
value = 190, 0

[State 19300, impact]
type = PlaySnd
trigger1 = time = 26
value = 190, 2
volume = 50

[State 19300, tremblement impact]
type = EnvShake
trigger1 = time = 26
time = 16
persistent = 0
ignorehitpause = 1

[State 19300, colone]
type = PlaySnd
trigger1 = time = 32
value = 190, 1
volume = 50

;bg flamme
[state 19300, explod]
type = Explod
triggerall = NumExplod(19000) = 0
triggerall = stateno = 193
trigger1 = time = 0
anim = 19000
id = 19000
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 57
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 19300, colone de feux]
type = Explod
trigger1 = time = 26  
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

;Signe
[State 19300 , Sign]
type = Explod
ID = 1980
trigger1 = time = 50
anim = 1980
sprpriority = -3
postype = p1
pos = 0,30
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 19300, Voix]
type = PlaySnd
trigger1 = Time = 62
value = 193, 0
channel = 0

[State 19300, 9]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 1

[State 19300, 10]
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 0

;----------------------------------------------------------------
; intro avec armure
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,550]
flag = Intro

;phoenix ouverture
[State 191, 0.1]
type = PlaySnd
trigger1 = time = 120
value = 190, 0

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 190, 1

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 14
Y = -5

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 15
Y = -5

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 16
Y = -7

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 17
Y = -7

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 18
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 19
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 20
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 21
Y = -8

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 22
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 23
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 24
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 25
Y = -6

[state 191, 0.2]
type = posadd
trigger1 = AnimElem = 26
Y = -6

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 29;Jambe
trigger2 = AnimElem = 34;Bras1
trigger3 = AnimElem = 42;Torse
trigger4 = AnimElem = 47;Dos
trigger5 = AnimElem = 52;Casque
value = 190,3

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 32;Jupe
trigger2 = AnimElem = 40;Bras2
trigger3 = AnimElem = 44;Epaule1
trigger4 = AnimElem = 49;Epaule2
value = 190, 4

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 59
value = 190,2

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 59
value = 190,5

[state 191, pos]
type = posadd
trigger1 = AnimElem = 61
Y = 20
X = 0

[state 191, pos]
type = posadd
trigger1 = AnimElem = 62
Y = 20
X = 0

[state 191, pos]
type = posadd
trigger1 = AnimElem = 63
Y = 20
X = 0

[state 191, pos]
type = posadd
trigger1 = AnimElem = 64
Y = 20
X = 0

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 64
value = 52,0

;Bg effect
[State 191, super]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 200
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

;BG Stars
[State 191, 1]
type = Explod
trigger1 = AnimElem = 25
anim = 20000
id = 20000
pos = 0,0
postype = back
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(20000) = 1
trigger1 = animelem = 65
ID = 20000

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,2
channel = 0

;Box
[state 191,1]
type = explod
trigger1 = AnimElem = 10
id = 1910
anim = 1910
pos = 25, 0
postype = p1
removetime = 75
sprpriority = 4

[State 191, Shake1]
type = EnvShake
trigger1 = AnimElem = 10, = 19
time = 4

[State 191, BoxHit1]
type = PlaySnd
trigger1 = AnimElem = 10, = 19
value = 190,3
volume = 50

[State 191, Shake2]
type = EnvShake
trigger1 = AnimElem = 10, = 27
time = 4

[State 191, BoxHit2]
type = PlaySnd
trigger1 = AnimElem = 10, = 27
value = 1,2
volume = 50

;Explod ouverture box
[state 191,1]
type = explod
trigger1 = AnimElem = 10, = 31
id = 1913
anim = 1913
pos = 25, 0
postype = p1
removetime = 20
sprpriority = 5
ownpal = 1

;Lumière verticale ouverture box
[state 191,1]
type = explod
trigger1 = AnimElem = 12
id = 1914
anim = 1914
pos = 25, 0
postype = p1
removetime = 32
sprpriority = -4
ownpal = 1

;Box open sol
[state 191,1]
type = explod
trigger1 = AnimElem = 19
id = 1911
anim = 1911
pos = 10,35
postype = p1
removetime = 12
sprpriority = -2
ownpal = 1

;Armure
[state 191,1]
type = explod
trigger1 = AnimElem = 12
id = 1920
anim = 1920
pos = 25, -60
postype = p1
removetime = 255
sprpriority = -3
ownpal = 1

[State 191, FlashClothes]
type = PalFX
trigger1 = AnimElem = 27
time = 2
add = 0,50,150

;oiseau flamme
[State 191 , 8]
type = Explod
ID = 1960
trigger1 = AnimElem = 60
anim = 1960
sprpriority = -2
postype = p1
pos = 0,0
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 191 , 10]
type = EnvShake
trigger1 = AnimElem = 60
time = 10

[State 191, Flash]
type = EnvColor
trigger1 = AnimElem = 60
value = 200,130,0
time = 3

;Constellation
[State 191 , 6]
type = Explod
ID = 1970
trigger1 = AnimElem = 60
anim = 1970
sprpriority = -4
postype = p1
pos = 0,90
removetime = -1
bindtime = 1
supermove = 1
ownpal = 1

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(1970) = 1
trigger1 = animelem = 65
ID = 1970

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(1980) = 1
trigger1 = animelem = 65
ID = 1980

[State 191, 11] ;Intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 191, 12] ;Intro over, set v9 to 0
type = VarSet
trigger1 = Time = 549
v = 9
value = 0

[State 191, 14]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;----------------------------------------------------------------
;intro vs black
[statedef 192]
type = s
ctrl = 0
anim = 192
velset = 0,0,0

[state 192: 	assertspecial] 
type 			= assertspecial
trigger1 		= 1
flag 			= intro

[State 192, 0]
type = AssertSpecial
trigger1 = Time = [0,460]
flag = intro

[State 192, voix]
type = PlaySnd
trigger1 = time = 0
value = 192, 0
channel = 0

[state 192, 3]
type = changestate
trigger1 = time = 460
value = 0
ctrl = 0

;----------------------------------------------------------------
;Intro VS Agora/Shiva
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0,0

[state 193: 	assertspecial] 
type = assertspecial
trigger1 = 1
flag = intro

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = intro

[State 193, phoenix]
type = PlaySnd
trigger1 = time = 0
value = 190, 0

[State 193, impact]
type = PlaySnd
trigger1 = time = 26
value = 190, 2
volume = 50

[State 193, tremblement impact]
type = EnvShake
trigger1 = time = 26
time = 16
persistent = 0
ignorehitpause = 1

[State 193, colone]
type = PlaySnd
trigger1 = time = 32
value = 190, 1
volume = 50

;bg flamme
[state 193, explod]
type = Explod
triggerall = NumExplod(19000) = 0
triggerall = stateno = 193
trigger1 = time = 0
anim = 19000
id = 19000
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 57
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 193, colone de feux]
type = Explod
trigger1 = time = 26  
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

;Signe
[State 193, Sign]
type = Explod
ID = 1980
trigger1 = time = 50
anim = 1980
sprpriority = -3
postype = p1
pos = 0,30
removetime = 74
bindtime = 1
supermove = 1
ownpal = 1

[State 193, Voice]
type = PlaySnd
triggerall = Anim = 193
trigger1 = AnimElem = 4
value = 193,1
channel = 0

[State 19300, 9]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 1

[State 193, 10]
type = ChangeState
trigger1 = Time = 240
value = 0
ctrl = 0

;----------------------------------------------------------------
;Intro Vs Gold/Silver ( Effet )
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0,0

[State 194, 0]
type = AssertSpecial
trigger1 = Time = [0,650]
flag = intro

[State 194, 0] 
type = AssertSpecial
trigger1 = Time = [0,650]
flag = nomusic

[State 198, phoenix]
type = PlaySnd
trigger1 = time = 0
value = 190, 0

;Bg Fond
[State 191 , 6]
type = Explod
ID = 19000
trigger1 = time = 0
anim = 19000
sprpriority = -4
postype = left
pos = 0,185
removetime = 57
bindtime = 1
supermove = 1
ownpal = 1

[State 194, descente du phoenix]
type = Explod
trigger1 = time = 0  
anim = 1940
sprpriority = 3
postype = p1
pos = -75,-210
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.3,0.3

[State 194, descente du phoenix 2]
type = Explod
trigger1 = time = 5  
anim = 1940
sprpriority = 3
postype = p1
pos = -75,-180
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.3,0.3

[State 194, descente du phoenix 3]
type = Explod
trigger1 = time = 9 
anim = 1940
sprpriority = 3
postype = p1
pos = -65,-140
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.3,0.3

[State 194, descente du phoenix 4]
type = Explod
trigger1 = time = 13  
anim = 1940
sprpriority = 3
postype = p1
pos = -45,-100
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.4,0.4

[State 194, descente du phoenix 5]
type = Explod
trigger1 = time = 17  
anim = 1940
sprpriority = 3
postype = p1
pos = -25,-60
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.5,0.5

[State 194, descente du phoenix 6]
type = Explod
trigger1 = time = 21  
anim = 1940
sprpriority = 3
postype = p1
pos = -5,-20
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.6,0.6

[State 194, descente du phoenix 7]
type = Explod
trigger1 = time = 25  
anim = 1940
sprpriority = 3
postype = p1
pos = 5,0
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.7,0.7

[State 194, impact]
type = PlaySnd
trigger1 = time = 26
value = 190, 2
volume = 50

[State 194, tremblement impact]
type = EnvShake
trigger1 = time = 26
time = 16
persistent = 0
ignorehitpause = 1

[State 194, colone]
type = PlaySnd
trigger1 = time = 32
value = 190, 1
volume = 50

[State 194, colone de feux]
type = Explod
trigger1 = time = 26  
anim = 1941
sprpriority = 3
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

;Signe
[State 194 , Sign]
type = Explod
ID = 1980
trigger1 = time = 50
anim = 1980
sprpriority = -3
postype = p1
pos = 0,30
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 194, Voix]
type = PlaySnd
trigger1 = Animelem = 4
value = 194,0
channel = 0

[State 194, Voix]
type = PlaySnd
trigger1 = Time = 230
value = 194,1
channel = 0

[State 194, 9]
type = changestate
trigger1 = time = 650
value = 0
ctrl = 0

;----------------------------------------------------------------
; intro vs hyoga / seiya
[statedef 195]
type = s
ctrl = 0
anim = 195
velset = 0,0,0

[state 195: 	assertspecial] 
type 			= assertspecial
trigger1 		= 1
flag 			= intro

[State 195, 0]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = intro

[State 195, voix]
type = PlaySnd
trigger1 = Time = 0
value = 195, 0
channel = 0

;casque
[state 195 , 2]
type = explod
trigger1 = time = 0
anim = 1950
sprpriority = 1
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 195, Tux]
type = ChangeAnim
triggerall = Anim = 195
trigger1 = AnimTime = 0
value = 192

[state 195, 3]
type = changestate
trigger1 = time = 300
value = 0
ctrl = 0

;----------------------------------------------------------------
; intro galactique
[Statedef 196]
type = A
ctrl = 0
anim = 183
velset = 0,0,0

[State 196, a]
type = AssertSpecial
trigger1 = Anim != 0
flag = Intro

[State 196, b]
type = ScreenBound
trigger1 = 1
value = 0

[State 196, 1]
type = PosAdd
trigger1 = time = 0
x = -250
y = -150

[State 196, 2]
type = VelSet
trigger1 = time = 25
x = 10
y = 6

[State 196, 3]
type = ChangeAnim
trigger1 = Pos Y > -1
value = 184
persistent = 0

[State 196, 4]
type = VelSet
trigger1 = Anim = 184
x = 0
y = 0
persistent = 0

[State 196, 5]
type = PosSet
trigger1 = Anim = 184
y = 0
persistent = 0

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 2
value = 52,0

[State 196, Tux2]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 8
value = 4,1
volume = 255

[State 196 , snd]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 11
value = 196,0
volume = 255
channel = 0

[State 196, 10]
type = ChangeAnim
triggerall = Anim = 184
trigger1 = AnimTime = 0
value = 185
persistent = 0

[State 196, 10]
type = ChangeAnim
triggerall = Anim = 184
trigger1 = Time = 321
value = 185
persistent = 0

[State 196, 4]
type = ChangeState
trigger1 = Time = 500
value = 0
ctrl = 0

;-----------------------------------
; intro Sauver shun
[Statedef 197]
type = S
anim = 197

[State 197, 1]
type = AssertSpecial
trigger1 = time = [0, 501]
flag 			= intro

[State 197 , shun]
type = Explod
trigger1 = AnimElem = 1
anim = 4139
sprpriority = 9
postype = p1
pos = 50,20
removetime = 550
bindtime = 1
supermove = 1
ownpal = 1

[State 197 , Projectile]
type = Projectile
trigger1 = time = 30
attr = S, SP
ignorehitpause = 1
projanim = 3512
projhitanim = -1
offset = -100,-13
velocity = 5
damage = 0,0
animtype = light
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
projremove = 0
projremovetime = 20

[State 197 , hit]
type = Explod
trigger1 = Time = 50
anim = 8104
sprpriority = 2
postype = p2
pos = -10,-110
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.5,0.5

[State 197 , snd hit]
type = PlaySnd
trigger1 = Time = 50
value = 130,0

[State 197 , Projectile]
type = Projectile
trigger1 = time = 60
attr = S, SP
ignorehitpause = 1
projanim = 3512
projhitanim = -1
offset = -100,-13
velocity = 5
damage = 0,0
animtype = light
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
projremove = 0
projremovetime = 20

[State 197 , hit]
type = Explod
trigger1 = Time = 70
anim = 8104
sprpriority = 2
postype = p2
pos = -10,-110
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.5,0.5

[State 197 , snd hit]
type = PlaySnd
trigger1 = Time = 70
value = 130,0

[State 197 , Projectile]
type = Projectile
trigger1 = time = 80
attr = S, SP
ignorehitpause = 1
projanim = 3512
projhitanim = -1
offset = -100,-13
velocity = 5
damage = 0,0
animtype = light
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
projremove = 0
projremovetime = 20

[State 197 , explod]
type = Explod
trigger1 = Time = 100
anim = 8104
sprpriority = 2
postype = p2
pos = -10,-110
bindtime = 1
supermove = 1
ownpal = 1
scale = 0.5,0.5

[State 197 , snd hit]
type = PlaySnd
trigger1 = Time = 100
value = 130,0

[State 197, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190,0

[State 197, snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 52,0

[State 197, Tux]                        
type = PlaySnd
trigger1 = AnimElem = 11
value = 4,1

[State 197, snd]                        
type = PlaySnd
trigger1 = AnimElem = 14
value = 197,0
volume = 255
channel = 0

[State 197, snd]                        
type = PlaySnd
trigger1 = AnimElem = 29
value = 2, 8

[State 197, snd]                        
type = PlaySnd
trigger1 = Time = 480
value = 2000, 0

[State 197 , end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;------------------------------------
;Intro VS Nachi
[Statedef 198]
type    = S
ctrl = 0
anim = 185
velset = 0,0,0

[State 198]
type = AssertSpecial
trigger1 = time = [0, 80]
flag 			= intro
ignorehitpause = 1


[State 198 , snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 198,0
volume = 255
channel = 0

[state 198, 3]
type = changestate
trigger1 = Time = 80
value = 0
ctrl = 0

;----------------------------------------------------------------
; WinPose Esmeralda
[statedef 199]
type = s
ctrl = 0
anim = 199
velset = 0,0,0

[State 199, 0]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 199, 1]
type = AssertSpecial
trigger1 = Time = [0,175]
flag = RoundNotOver

[state 199, 0.1]
type = playsnd
trigger1 = animelem = 1
value = 199, 1
channel = 0

;explod
[state 199 , 6]
type = explod
trigger1 = time = 0
anim = 9999
sprpriority = 0
postype = p1
pos = -20,0
bindtime = 1
supermove = 1
ownpal = 1

;explod
[state 199 , 7]
type = explod
trigger1 = time = 77
anim = 9999
sprpriority = 0
postype = p1
pos = -20,0
bindtime = 1
supermove = 1
ownpal = 1

;bg effect
[state 199, super]
type = bgpalfx
trigger1 = time = 0
ignorehitpause = 1
time = 150
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0
;----------------------------
;----------------------------------------------------------------
; Stand Light Punch Far
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 23, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s30000
guard.sparkno = S30040
sparkxy =-10, -90;-10, -80
hitsound = s1,0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

 ;voix
[State 200, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

  ;vent
[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Punch Far
[Statedef 216]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 5,0
ctrl = 0
anim = 205
poweradd = 20
sprpriority = 2

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
;trigger3 = AnimElem = 4
attr = S, NA
damage = 23, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10, -80
hitsound = s1,1
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

 ;voix
[State 205, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

 ;vent
[State 205, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 205, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Standing strong Punch
[Statedef 500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0
[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = 15
y = 0
;ignorehitpause =
;persistent =

[State 210, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 100,10
guardflag = MA
pausetime = 15,15
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-80
hitsound   = s1,88
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
; Stand Punch Close
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 215
poweradd = 20
sprpriority = 2

[State 215, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 23, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10, -85
hitsound = s1,0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 215, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

;vent
[State 215, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 215, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
; Stand Fast Punch
[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 211
poweradd = 30
sprpriority = 2

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -30, -85
hitsound = s1,1
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7
airguard.velocity = -4,-.8
air.type = High
air.velocity = -4,-3
air.hittime = 12

;voix
[State 215, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

;vent
[State 215, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 215, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
; Stand Light Kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 220
poweradd = 20
sprpriority = 2

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 23, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10, -60
hitsound = s1,0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 220, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

 ;vent
[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 220, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Kick
[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 225
poweradd = 20
sprpriority = 2

 ;voix
[State 225, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 2, 4

;vent
[State 225, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = high
damage    = 57
guardflag = MA
pausetime = 14,17
sparkno = S30002 ;1
guard.sparkno = S30040
sparkxy = -10,-70
hitsound   = s1,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 225, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Standing strong Kick
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 230
sprpriority = -1

[State 230, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 230, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 23, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10, -70
hitsound = s1,1
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 25
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 230, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 23, 0
animtype = high
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -30, -90
hitsound = s1,2
guardsound = 6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

   ;voix
[State 230, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

   ;vent
[State 230, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
; Stand Light Kick Close
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 235
poweradd = 20
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 23, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10, -76
hitsound = s1,0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

    ;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

  ;vent
[State 235, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 235, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
; Stand Medium Kick Close
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 240
poweradd = 20
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
attr = S, NA
damage = 15, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10, -76
hitsound = s1,0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

    ;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

  ;vent
[State 235, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 235, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
; Stand Hard Kick Close
[Statedef 236]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,-6
ctrl = 0
anim = 245
poweradd = 25
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 60, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30002
guard.sparkno = S30040
sparkxy = -30, -65
hitsound = s1500,0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -8
airguard.velocity = -3,-.8
air.type = High
air.velocity = -3,-3
air.hittime = 12
fall = 1

;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 6

;vent
[State 235, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 235, 7]
type = ChangeState
trigger1 = AnimElem = 8
value = 50
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
;Crouching Light Punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
sprpriority = 2

  ;vent
[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 23
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-50
hitsound   = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
;----------------------------------------------------------------
;Crouching Medium Punch
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

  ;vent
[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 37
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-45
hitsound   = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching Strong Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

  ;voix
[State 420, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

  ;vent
[State 420, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 36
animtype  = hard
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-100
hitsound   = s1,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
;Crouching Light Kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 430
sprpriority = 2

 ;voix
[State 430, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

   ;vent
[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 23
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s30000
guard.sparkno = S30040
sparkxy = 0,-10
hitsound   = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 430, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;----------------------------------------------------------------
;Crouching Médium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

  ;voix
[State 440, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 2, 4

  ;vent
[State 440, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 37
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-20
hitsound   = s1,1
guardsound = 6,0
ground.type = trip
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,-4
air.velocity = -2,-4

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching Strong Kick
[Statedef 445]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

  ;voix
[State 450, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 2, 5

 ;vent
[State 450, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 37
animtype  = hard
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-55
hitsound   = s1,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;----------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600
sprpriority = 2

;voix
[State 600, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

;vent
[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -10,-100
hitsound   = s1,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

;----------------------------------------------------------------
;Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610
sprpriority = 2

;voix
[State 610, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 2, 4

;vent
[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 72
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-55
hitsound   = s1,1
guardsound = 6,0
animtype = Medium
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;----------------------------------------------------------------
;Jump Hard Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 620
sprpriority = 2

;voix
[State 620, 2]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 2
value = 2, 5

;vent
[State 620, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 72
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-55
hitsound   = s1,2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;----------------------------------------------------------------
;----------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

;voix
[State 630, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 2, 2

;vent
[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 26
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s30000
guard.sparkno = S30040
sparkxy = -5,-70
hitsound   = s1,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;----------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

;vox
[State 640, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 2, 4

;vent
[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A, NA
damage    = 70
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-65
hitsound   = s1,1
guardsound = 6,0
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

;----------------------------------------------------------------
;Jump Hard Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650
sprpriority = 2

;voix
[State 650, 2]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 2
value = 2, 5

;vent
[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage    = 100,10
guardflag = HA
priority = 4
pausetime = 15,15
sparkno = S30002
guard.sparkno = S30040
sparkxy = -10,-65
hitsound   = s1,88
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1





;===========================================================================
;iki Throw - Attempt
;===========================================================================
;sac De Frappe humain
[statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800

;===============================
;paramétre spétial
;===============================
;[state 1000 , 2]
;type = superpause
;trigger1 = time = 85
;time = 30
;anim = -1
;darken = -1
;pos = 0,0

[state 800, 5]
type = envshake
trigger1 = animelem = 5
trigger2 = animelem = 7
time = 10
ampl = 4

[state 800, 5]
type = envshake
trigger1 = animelem = 9
time = 40
ampl = 8
;===============================
;SND
;===============================
;tenir
[state 800, p2 tenir]
type = playsnd
trigger1 = animelem = 2
value = s1,6

;===============================
 ;HIT ATTAQUE
;===============================
[state 800, 1]
type = hitdef
trigger1 = time = 0
attr = s, NT
getpower  = 50
givepower = 30
damage = 40
hitflag = M
guardflag = -1
sparkno = -1
priority = 3, miss  
pausetime = 25,25
p2facing = 1
p2stateno = 810
hitsound = 1100,1
fall.damage = 20

[state 800, 2]
type = changestate
triggerall = MoveHit
trigger1 = animtime = 0
value = 801
ctrl = 0

[state 800, 3]
type = changestate
triggerall = !MoveHit
trigger1 = animtime = 0
value = 0
ctrl = 1
;===============================
;sac De Frappe humain suit
[statedef 801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 801

 ;===============================
;paramétre spétial
;===============================
[State 800, TargetLifeAdd]
type = TargetLifeAdd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
value = -10
ID = -1
;kill = 1
;absolute = 0
;ignorehitpause =
;persistent =

;===============================
;SND
;===============================
;vent
[state 800, 1]
type = playsnd
trigger1 = time = 0
value = 0, 1

;voix
[state 800, p1 voix frapland]
type = playsnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = s2,0

;voix (shiné)
[state 800, 1]
type = playsnd
trigger1 = animelem = 6
value = S2, 7

 ;frape lande
[state 800, 1]
type = playsnd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
value =s1,2

 ;frap fin
[state 800, 2]
type = playsnd
trigger1 = animelem = 6
value = 1500,0

;===============================
;EXPLOD
;===============================

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
anim = 30002
;ID =
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 6
anim = 30002
;ID =
pos = 0,-100
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[state 801, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;==============================================
;iki Throw p2 lande
;==============================================
;Target p2
[Statedef 810]
type    = A
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[state 810, 0]
type = changeanim2
trigger1 = time = 0
value = 810

[state 810, 2]
type = hitby
trigger1 = 1
value = sca
time = 1


[state 810, 3]
type = sprpriority
trigger1 = animelem = 5
trigger1 = animelem = 7
value = 2

[state 810, 8]
type = changestate
trigger1 = animtime = 0
value = 820
ctrl = 0
;==============================================
;p2 air launch
[statedef 820]
type = A
movetype = H
physics = N

[state 820 , 1]
type = velset
trigger1 = time = 0
x = 0
y = -5
z = 0

[state 820 , 2]
type = changeanim2
trigger1 = time >= 0
value = 820

[state  820 , 3]
type = changestate
trigger1 = hitshakeover = 1
value =  821
;==============================================
;p2 aie
[statedef  821]
type = A
movetype = H
physics = N
velset = -1.7,-11

[state  821 , 1]
type = veladd
trigger1 = time > 0
y = .4

[state  821 , 2]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100
;===========================================================================
;===========================================================================
;auto garde (désactivé)
;===========================================================================
;===========================================================================
;super Guard 1
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100,nohit ]
type = varset
trigger1 = time = 0
value = 1
v = 23

[State 1100, rev]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
reversal.attr = SAC,NA,SA,HA,S,SP
guard.sparkno = -1
pausetime = 0,0
p1stateno = 1101

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================

[Statedef 1101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1101,env ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1101,nohit ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1101,nohit ]
type = poweradd
trigger1 = time = 0
value = 250

[State 1101,fire ]
type = Explod
triggerall = NumExplod(1102) = 0
triggerall = stateno = 1101
trigger1 = time = 20
anim = 1102
id = 1102
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 1101, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 80,0
sparkno = 1
guard.sparkno = -1
sparkxy = 0,-100
hitsound = s1000,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1101, 6]
type = ChangeState
trigger1 = Time = 100
value = 1102
ctrl = 0

;==============================================

[Statedef 1102]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1102,nohit ]
type = varset
trigger1 = time = 0
value = 0
v = 23

[State 1102, 6]
type = ChangeState
trigger1 = time = 2
value = 0
ctrl = 1

;===========================================================================
;auto garde (désactivé)
;===========================================================================
;super Guard 2
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200,nohit ]
type = varset
trigger1 = time = 0
value = 1
v = 23

[State 1200, rev]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
reversal.attr = SAC,NA,SA,HA,S,SP
guard.sparkno = -1
pausetime = 0,0
p1stateno = 1201

[State 1200, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================

[Statedef 1201]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1201
poweradd = 0
ctrl = 0

[State 1201,env ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1201,nohit ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1201,nohit ]
type = poweradd
trigger1 = time = 0
value = 250

[State 1201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 80,0
sparkno = 1
guard.sparkno = -1
sparkxy = 0,-80
hitsound = s1000,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1201, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0

;==============================================

[Statedef 1202]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 1201
poweradd = 0
ctrl = 0

[State 1202,nohit ]
type = varset
trigger1 = time = 0
value = 0
v = 23

[State 1202, 6]
type = ChangeState
trigger1 = time = 2
value = 0
ctrl = 1

;===========================================================================
;Provoking
;===========================================================================
;Provoking
[Statedef 1990]
type = S
movetype = I
physics = S
anim = 1990
velset = 0
ctrl = 0

[state 1990, Tux]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 1990, 1A]
type = PlaySnd
triggerall = var(2) = [0,49]
trigger1 = AnimElem = 1
value = 1990,0
channel = 0

[State 1990, 1B-1]
type = PlaySnd
triggerall = var(2) = [50,99]
trigger1 = AnimElem = 6
value = 2,13
channel = 0

[State 1990, 1B-2]
type = PlaySnd
triggerall = var(2) = [50,99]
trigger1 = AnimElem = 9
value = 1990,1
channel = 0

[State 0, StopSnd]
type = StopSnd
type = ChangeState
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "holdfwd"
trigger8 = command = "holdback"
trigger9 = command = "holdup"
trigger10 = command = "holddown"
channel = 0

[State 1990, 2]
type = CtrlSet
trigger1 = Time = 175
value = 1

[State 1990 , 3]
type = ChangeState
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "holdfwd"
trigger8 = command = "holdback"
trigger9 = command = "holdup"
trigger10 = command = "holddown"
trigger11 = time = 175
value = 0
ctrl = 1

;===========================================================================
;  cosmos charge
;===========================================================================
; cosmos charge
[Statedef 1960, charge cosmos]
type = S
movetype = I
physics = S
anim = 1900
ctrl = 0
;===============================
;paramétre spétial
;==============================
[State 1960, PowerAdd]
type = PowerAdd
trigger1 = Anim = 1900
value = 8
;===============================
;SND
;===============================
  ;voix
[State 1960 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,8
channel = 0

 ;charge
[State 1960 , 1]
type = PlaySnd
trigger1 = Time
trigger1 = Time%30=0
value = 2000,1

[State 1960, StopSnd]
type = StopSnd
trigger1 = command != "holdpowercosmos z"
trigger1 = command != "holdpowercosmos c"
channel = -1
;ignorehitpause =
;persistent =

[State 1960, Tux1]
type = EnvShake
trigger1 = Time
trigger1 = Time%30 = 0
time = 30

;===============================
;EXPLOD
;===============================
[State 1960, Cosmos]
type = Explod
;triggerall = NumExplod(7002) = 0
trigger1 = AnimElem = 4
anim = 7002
id = 7002
pos = 0,0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 1960, charge Cosmos]
type = Explod
;triggerall = NumExplod(2002) = 0
trigger1 =  AnimElem = 4
anim =8123
id = 8123
pos = 0,10
postype = p1
sprpriority = 2
removetime = -1
bindtime = -1
ownpal = 1
supermove = -2
removeongethit = 1
;supermovetime = 700

[State 1960, Tux2]
type = Explod
trigger1 = Time >= 28
anim = 1980
id = 1980
pos = 0,0
postype = p1
sprpriority = -3
removetime = 1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;=========================
;ChangeState
;========================
[State 1960, 2]
type = ChangeState
trigger1 = Power >= 3000
value =1980
ctrl = 0

[State 1960, ChangeState]
type = ChangeState
trigger1 = command != "holdpowercosmos z"
trigger1 = command != "holdpowercosmos c"
trigger2 = Power >= 3000
value = 0
ctrl = 1
;===============================
;Charge (Fin
;===============================
; Charge (Fin)
[Statedef 1980]
type = S
movetype = I
physics = S
anim = 198

[State 1980, nothit]
type = NotHitBy
trigger1 = Anim=198
value = SCA
time = 1

[State 1980, Tux]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

;[State 1980, 1]
;type = BGpalfx
;triggerall = power >= 3000
;trigger1 = time = 0
;time = 50
;add = 0,50,255

[State 1980, 1]
type = EnvShake
triggerall = power >= 3000
trigger1 = time >= 0
time = 50
freq = 60

[State 1980, 1]
type = PlaySnd
triggerall = power >= 3000
trigger1 = Time= 1
value = 2000,2;s197,1

[State 1980, EXPLOS Cosmos]
type = Explod
triggerall = NumExplod(8108) = 0
trigger1 =  Anim=198;Elem=1
trigger1 =AnimElem=1
anim =8108
id = 8108
pos = 0,10
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
supermove = -2
removeongethit = 1
supermovetime = 700

[State 1980, 2]
type = ChangeState
trigger1 = AnimTime= 0
value = 0
ctrl = 1


;----------------------------------------------------------------
;----------------------------------------------------------------
;explosion cosmos (charge crâne)
[Statedef 2100]
type = S
movetype = I
physics = S
anim = 1900
poweradd = -3000
velset = 0
ctrl = 0

[State 2100, Tux]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 9
channel = 0

;bg flamme
[state 2100, explod]
type = Explod
triggerall = NumExplod(2101) = 0
triggerall = stateno = 2100
trigger1 = time = 0
anim = 2101
id = 2101
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 60
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;sign
[State 2100, 0]
type = Explod
triggerall = NumExplod(2102) = 0
triggerall = stateno = 2100
trigger1 = Time = 0
anim = 2102
id = 2102
pos = 0,0
postype = p1
sprpriority = -3
removetime = 50
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1


[State 2100, EXPLOS Cosmos]
type = Explod
;triggerall = NumExplod(2002) = 0
trigger1 =  AnimElem = 1;Elem=1
anim =8108
id = 2002
pos = 0,10
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
supermove = -2
removeongethit = 1
supermovetime = 700


;7ème sens
[state 2100, 7sens]
type = explod
triggerall = NumExplod(2104) = 0
triggerall = stateno = 2100
trigger1 = time = 0
anim = 2104
id = 2104
pos = 0,0
postype = left
sprpriority = -2
supermove = 1
removetime = 48
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 2100 , 2]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 2100, palfx]
type = PalFX
triggerall = Var(48) = 1
trigger1 = time = 0
time = 450
add = 5,5,5
sinadd = 40,40,40,3

[State 2100, palfx]
type = PalFX
triggerall = Var(48) = 2
trigger1 = time = 0
time = 900
add = 5,5,5
sinadd = 40,40,40,3

;cosmo standing remove
[State 2100,2]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 2100 , 3]
type = EnvShake
trigger1 = Time = 0
time = 50

[State 2100 , 3]
type = PlaySnd
trigger1 = Time = 4
value = 3000,0

[State 2100 , 7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,2

[State 2100 , 8]
type = LifeAdd
trigger1 = AnimElem = 3
value = 100

;ultra power
[State 2100, 10]
type = AttackMulSet
triggerall = Var(48) = 1
trigger1 = time = [0,450]
value = 2

[State 2100, 10]
type = AttackMulSet
triggerall = Var(48) = 2
trigger1 = time = [0,900]
value = 2

;ultra defence
[State 2100, 11]
type = DefenceMulSet
triggerall = Var(48) = 1
trigger1 = time = [0,450]
value = -2

[State 2100, 11]
type = DefenceMulSet
triggerall = Var(48) = 2
trigger1 = time = [0,900]
value = -2

[State 2100]
type = varadd
triggerall = var(48) < 3
trigger1 = time = 0
v = 48
value = 1
ignorehitpause = 1

[State 2100 , 12.1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;===============================
;Hit Voices
;===============================
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
trigger
value = 5000,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 5000,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 5000,0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 5000,1

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 5000,1

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 5000,1

[State -2]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno = 5030
trigger1 = Alive = 1
value = 5000,2

;===============================
;Crane mode
;===============================
;Face Left
[State -2, faceVar] 
type = VarSet
triggerall = Var(10) != 2
trigger1 = Facing = 1
v = 10
value = 1

;Face Right
[State -2, faceVar] 
type = VarSet
triggerall = Var(10) != 1
trigger1 = Facing = -1
v = 10
value = 2

;Crane Remove
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8109) != 0
trigger1 = stateno = 5150
trigger2 = stateno = [3030,3040]
trigger3 = stateno = 4301
trigger4 = stateno = 3046
Id = 8109

;Crane Remove
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8119) != 0
trigger1 = stateno = 5150
trigger2 = stateno = [3030,3040]
trigger3 = stateno = 4301
trigger4 = stateno = 3046
Id = 8119

;Crane Remove
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8129) != 0
trigger1 = stateno = 5150
trigger2 = stateno = [3030,3040]
trigger3 = stateno = 4301
trigger4 = stateno = 3046
Id = 8129

;Crane Left 1
[State -2 ,2]
type = Explod
triggerall = NumExplod(8109) = 0
triggerAll = Var(10) = 1
triggerall = var(48) = 1
trigger1 = stateno = 2100
anim = 8109
id = 8109
postype = left
pos = 90,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
supermove = 1
removetime = -1

;Crane Left 1 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(10) = 1
triggerall = var(48) >= 1
trigger1 = (p2life > 0) && (p2life <= 100)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8109
trans = addalpha
alpha = 150

;Crane Left 1 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(10) = 1
triggerall = var(48) >= 1
trigger1 = p2life > 100
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8109
trans = none

;Crane Left 2
[State -2 ,2]
type = Explod
triggerall = NumExplod(8119) = 0
triggerAll = Var(10) = 1
triggerall = var(48) = 2
trigger1 = stateno = 2100
anim = 8110
id = 8119
postype = left
pos = 105,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
supermove = 1
removetime = -1

;Crane Left 2 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(10) = 1
triggerall = var(48) >= 2
trigger1 = (p2life > 0) && (p2life <= 250)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8119
trans = addalpha
alpha = 150

;Crane Left 2 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(10) = 1
triggerall = var(48) >= 2
trigger1 = p2life > 250
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8119
trans = none

;Crane Left 3
[State -2 ,2]
type = Explod
triggerall = NumExplod(8129) = 0
triggerAll = Var(10) = 1
triggerall = var(48) = 3
trigger1 = stateno = 2100
anim = 8111
id = 8129
postype = left
pos = 120,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
supermove = 1
removetime = -1

;Crane Left 3 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(10) = 1
triggerall = var(48) = 3
trigger1 = (p2life > 0) && (p2life <= 400)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8129
trans = addalpha
alpha = 150

;Crane Left 3 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(10) = 1
triggerall = var(48) = 3
trigger1 = p2life > 400
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8129
trans = none

;Crane Right 1
[State -2 ,2]
type = Explod
triggerall = NumExplod(8109) = 0
triggerAll = Var(10) = 2
triggerall = var(48) = 1
trigger1 = stateno = 2100
anim = 8109
id = 8109
postype = right
pos = -110,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
supermove = 1
removetime = -1

;Crane Right 1 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(10) = 2
triggerall = var(48) >= 1
trigger1 = (p2life > 0) && (p2life <= 100)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8109
trans = addalpha
alpha = 150

;Crane Right 1 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(10) = 2
triggerall = var(48) >= 1
trigger1 = p2life > 100
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8109
trans = none

;Crane Right 2
[State -2 ,2]
type = Explod
triggerall = NumExplod(8119) = 0
triggerAll = Var(10) = 2
triggerall = var(48) = 2
trigger1 = stateno = 2100
anim = 8110
id = 8119
postype = right
pos = -95,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
supermove = 1
removetime = -1

;Crane Right 2 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(10) = 2
triggerall = var(48) >= 1
trigger1 = (p2life > 0) && (p2life <= 250)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8119
trans = addalpha
alpha = 150

;Crane Right 2 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(10) = 2
triggerall = var(48) >= 1
trigger1 = p2life > 250
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8119
trans = none

;Crane Right 3
[State -2 ,2]
type = Explod
triggerall = NumExplod(8129) = 0
triggerAll = Var(10) = 2
triggerall = var(48) = 3
trigger1 = stateno = 2100
anim = 8111
id = 8129
postype = right
pos = -80,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
supermove = 1
removetime = -1

;Crane Right 3 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(10) = 2
triggerall = var(48) >= 1
trigger1 = (p2life > 0) && (p2life <= 400)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8129
trans = addalpha
alpha = 150

;Crane Right 3 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(10) = 2
triggerall = var(48) >= 1
trigger1 = p2life > 400
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = !(stateno = [3030,3040])
trigger1 = stateno != 3046
id = 8129
trans = none

;Crane Dead
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8109) != 0
trigger1 = (Life <= 0) || (P2Life <= 0)
Id = 8109

;Crane Dead
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8119) != 0
trigger1 = (Life <= 0) || (P2Life <= 0)
Id = 8119

;Crane Dead
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8129) != 0
trigger1 = (Life <= 0) || (P2Life <= 0)
Id = 8129

[State -2, Var]
type = VarSet
trigger1 = (Life <= 0) || (P2Life <= 0)
v = 48
value = 0

;===============================
;COSMOS
;===============================
 ;COSMOS CHARGE
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(7002) = 1
trigger1 = stateno != 1960
trigger1 = anim!= 1900
ID = 7002

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(7002) = 1
trigger1 = stateno = [5000,5999]
ID = 7002
;========================================
   ;COSMOS CHARGE éffet
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno != 1960
trigger1 = anim!= 1900
ID = 8123

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno = [5000,5999]
ID =  8123

 ;========================================
 
;la mort explod
;[state -2,remove]
;type = removeexplod
;triggerall = numexplod( 8010) = 1
;trigger1 = anim!= 3035
;trigger1 = time=20
;id =   8010


[State -2,remove]
type = RemoveExplod
;triggerall =anim = 3037;NumExplod( 8010) = 1
triggerall = numexplod(8010)
trigger1 =time= 500
ID = 8010

;========================================
 ;COSMOS genmaken
[state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 = anim=3037
id = 7003

;[State -2,remove]
;type = RemoveExplod
;triggerall = NumExplod(7003) = 1
;trigger1 = stateno = [5000,5999]
;ID = 7004

 ;COSMOS genmaken
[state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 =  stateno=198
id = 2002
;========================================
;remouve Ultime Phoenix
; brat
[state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 = stateno = 4059
id =   8130

;roché
[state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 = stateno = 4058
id =    8050

;========================================
;Serres du phénix
;========================================
[state -2,remove]
type = removeexplod
triggerall = numexplod(8124) = 1
;trigger1 = Pos Y >= 29
trigger1 =time = 1
id = 8124

;===============================
;remove EXplod 3007 AIRE Hô yoku ten shô
;===============================
; aire lingt hoyoku remouve explod
 [state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 = stateno =50
trigger2 = stateno =0
;trigger3 = stateno =U
id =  8022

;===============================
;remove EXplod 3008 AIRE Hô yoku ten shô
;===============================
; aire lingt hoyoku remouve explod
 [state -2,remove]
type = removeexplod
;triggerall = numexplod(7003) = 1
trigger1 = animelem= 83
id =  8022

;===============================
;No Music in Fatality Nightmares
;===============================
[State -2, TuxAssSpec]
type = AssertSpecial
trigger1 = stateno = 3037
trigger2 = stateno = 3048
trigger3 = stateno = 3041
trigger4 = stateno = 3050
trigger5 = stateno = 3060
trigger6 = stateno = 3061
flag = nomusic

;===============================
;Anti-Bug to avoid going under the floor
;===============================
[State -2, TuxAntiBug]
type = PosSet
trigger1 = Pos Y > 50
y = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3 , Remove]
type = RemoveExplod
triggerall = NumExplod(4139) != 0
trigger1 = Life <= 0
Id = 4139

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno != 0
ID = 2

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = anim = 5
ID = 2

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = stateno != 0
ID = 3

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 5
ID = 3
;-----------------------------------------------------------
