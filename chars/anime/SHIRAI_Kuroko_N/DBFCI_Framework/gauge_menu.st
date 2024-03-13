;Main Power Gauge
[Statedef 20100]
type = A
physics = N
anim = 9741
ctrl = 0

;--------------- Pos fix -----------------------
[State 20100,pos fix]
type = posset
trigger1 = !time
x = Floor(-(GameWidth / 2.1) * facing);		GameWidth will change with stagezoom
y = 20

;--------------- Vars --------------------------
[State 20100, P1 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(1) = Floor(0 + Const720p(80))

[State 20100, P2 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(2) = Floor(ScreenWidth - Const720p(80))

[State 20100, comm Base Y]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(3) = Floor(ScreenHeight - Const720p(60))

[State 20100, Calculate Delayed Power Level]
type = varset
trigger1 = 1
var(23) = Floor(var(21)/1000)

[State 20100, Get Parent Power reading]
type = varset
trigger1 = IsHelper
var(21) = Parent,Power
ignorehitpause = 1

[State 20100, Get Parent Trump No]
type = varset
trigger1 = IsHelper
trigger1 = var(22) != Parent,var(22)
var(22) = Parent,var(22)
ignorehitpause = 1

[State 20100, Sync Parent var(24) Trump timer]
type = varset
trigger1 = IsHelper
trigger1 = var(24) != Parent,var(24)
var(24) = Parent,var(24)
ignorehitpause = 1


[State 20100, Clear Power Change Flag]
type = varset
trigger1 = var(51) != 0
var(51) = 0
ignorehitpause = 1

[State 20100, Reset Counter]
type = varset
triggerall = var(6) != 0
trigger1 = var(51)
trigger2 = var(23) != Floor(var(21)/1000)
trigger3 = var(6) >= 16777215
var(6) = 0
ignorehitpause = 1

;--------------- Main Body ---------------------------
[State 20100, Clear explod workaround for layer problem]
type = RemoveExplod
trigger1 = NumExplod(20100)
trigger1 = var(51):= 1
ID = 20100
ignorehitpause = 1

[State 20100, Gauge Explod]
type = Explod
triggerall = !(var(18) & 2)
trigger1 = !NumExplod(20100)
anim = 20100
ID = 20100
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1),fvar(2)),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Clear outdated explod]
type = RemoveExplod
trigger1 = NumExplod(20110)
trigger1 = var(21) >= 1000
trigger1 = var(51):= 1
ID = 20110
ignorehitpause = 1

[State 20100, Clear outdated explod]
type = RemoveExplod
trigger1 = NumExplod(20111)
trigger1 = var(21) != [1000,1999]
trigger1 = var(51):= 1
ID = 20111
ignorehitpause = 1

[State 20100, Clear outdated explod]
type = RemoveExplod
trigger1 = NumExplod(20112)
trigger1 = var(21) != [2000,2999]
trigger1 = var(51):= 1
ID = 20112
ignorehitpause = 1

[State 20100, Clear outdated explod]
type = RemoveExplod
trigger1 = NumExplod(20113)
trigger1 = var(21) != [3000,3999]
trigger1 = var(51):= 1
ID = 20113
ignorehitpause = 1

[State 20100, Clear outdated explod]
type = RemoveExplod
trigger1 = NumExplod(20114)
trigger1 = var(21) < 4000
trigger1 = var(51):= 1
ID = 20114
ignorehitpause = 1


[State 20100, Power Explod 00 Orange]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20110)
trigger1 = var(21) < 1000
anim = 20110
ID = 20110
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 45,fvar(2) - 45),fvar(3) - 1
removetime = -1
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
supermovetime = 65535
pausemovetime = 65535
sprpriority = 2
ontop = 1
shadow = 0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power Explod 01 Green]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20111)
trigger1 = var(21) = [1000,1999]
anim = 20110
ID = 20111
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 45,fvar(2) - 45),fvar(3) - 1
removetime = -1
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
sprpriority = 2
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power Explod 02 Yellow]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20112)
trigger1 = var(21) = [2000,2999]
anim = 20110
ID = 20112
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 45,fvar(2) - 45),fvar(3) - 1
removetime = -1
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
sprpriority = 2
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power Explod 03 Blue]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20113)
trigger1 = var(21) = [3000,3999]
anim = 20110
ID = 20113
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 45,fvar(2) - 45),fvar(3) - 1
removetime = -1
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
sprpriority = 2
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power Explod 04 Purple]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20114)
trigger1 = var(21) >= 4000
anim = 20110
ID = 20114
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 45,fvar(2) - 45),fvar(3) - 1
removetime = -1
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
sprpriority = 2
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Remove outdated power ring]
type = RemoveExplod
triggerall = NumExplod(20120)
trigger1 = var(51)
ID = 20120

[State 20100, Power Ring]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20120)
trigger1 = time = 0
trigger2 = var(51)
anim = 20120
ID = 20120
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1),fvar(2)),fvar(3)
removetime = -1
scale = 1,1
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Remove outdated power Number]
type = RemoveExplod
triggerall = NumExplod(20150)
trigger1 = var(51)
trigger2 = var(23) != Floor(var(21)/1000)
ID = 20150

[State 20100, Power Number]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20150)
trigger1 = time = 0
trigger2 = var(51)
trigger3 = var(23) != Floor(var(21)/1000)
anim = 20150 + IFElse(Floor(var(21)/1000) > 9,9,Floor(var(21)/1000))
ID = 20150
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1),fvar(2)),fvar(3)
removetime = -1
scale = 1.5, 1.5
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Power color and move]
type = ModifyExplod
trigger1 = NumExplod(20110)
ID = 20110
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power color and move]
type = ModifyExplod
trigger1 = NumExplod(20111)
ID = 20111
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power color and move]
type = ModifyExplod
trigger1 = NumExplod(20112)
ID = 20112
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power color and move]
type = ModifyExplod
trigger1 = NumExplod(20113)
ID = 20113
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1

[State 20100, Power color and move]
type = ModifyExplod
trigger1 = NumExplod(20114)
ID = 20114
scale = IFElse(var(21)>= 5000,1.0,((var(21)%1000) + 1)/1000.0), 1.0
ownpal = 1
remappal = 20110,IFElse(Floor(var(21)/1000.0) > 4,4,Floor(var(21)/1000.0))
ignorehitpause = 1


[State 20100, Gauge Flash]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20106) && time != 0
trigger1 = var(6) = 0
anim = 20106
ID = 20106
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1),fvar(2)),fvar(3)
removetime = -2
scale = 1,1
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Bar Flash]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20116) && time != 0
trigger1 = var(6) = 0
anim = 20116
ID = 20116
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 45,fvar(2) - 45),fvar(3) - 1
removetime = -2
scale = 1,1
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Gauge Bust]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20107) && time != 3
trigger1 = var(6) = 3
anim = 20107
ID = 20107
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1),fvar(2)),fvar(3)
removetime = -2
scale = 0.3, 0.3
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Gauge Bust grow 1]
type = ModifyExplod
triggerall = NumExplod(20107)
trigger1 = var(6) = [3,9]
ID = 20107
scale = 0.3 + (var(6)-3)*0.05, 0.3 + (var(6)-3)*0.05
trans = add
alpha = 220,256
ignorehitpause = 1

[State 20100, Gauge Bust grow 2]
type = ModifyExplod
triggerall = NumExplod(20107)
trigger1 = var(6) = [9,14]
ID = 20107
scale = 0.6 + (var(6)-9)*0.005, 0.6 + (var(6)-9)*0.005
trans = add
alpha = 220 - (var(6)-9)*32,256
ignorehitpause = 1


[State 20100, Bar Bust]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20117) && time != 2
trigger1 = var(6) = 2
anim = 20117
ID = 20117
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1)+180,fvar(2)-180),fvar(3) + 8
removetime = -2
scale = 1.2, 1.1
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
trans = add
alpha = 256,256
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Bar Bust grow 1]
type = ModifyExplod
triggerall = NumExplod(20117)
trigger1 = var(6) = [2,5]
ID = 20117
scale = 1.2 + (var(6)-2)*0.95, 1.1 + (var(6)-2)*0.01
trans = add
alpha = 256,256
ignorehitpause = 1

[State 20100, Bar Bust grow 2]
type = ModifyExplod
triggerall = NumExplod(20117)
trigger1 = var(6) = [6,14]
ID = 20117
scale = 4.05,1.13 - (var(6)-6)*0.12
trans = add
alpha = 256 - (var(6)-6)*25, 256
ignorehitpause = 1

[State 20100, Bar bust smoke]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20118) && time != 6
trigger1 = var(6) = 6
anim = 20118
ID = 20118
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1)+180,fvar(2)-180),fvar(3) + 8
removetime = -2
scale = 2.5, 2.5
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
trans = add
alpha = 256,256
vel = 2 * facing,0
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Bar bust smoke grow 1]
type = ModifyExplod
triggerall = NumExplod(20118)
trigger1 = var(6) = [6,17]
ID = 20118
scale = 2.5 + (var(6)-6)*0.083 , 2.5 + (var(6)-6)*0.04
trans = add
alpha = 256 - (var(6)-6) * 12, 256
ignorehitpause = 1

[State 20100, Bar bust smoke grow 2]
type = ModifyExplod
triggerall = NumExplod(20118)
trigger1 = var(6) = [18,24]
ID = 20118
scale = 3.5, 2.94
trans = add
alpha = 124 - (var(6)-18) * 10, 256
ignorehitpause = 1

;---------- Trump Cards ------------
[State 20100, Trump Base 01]
type = Explod
triggerall = !(var(18) & 2)
trigger1 = !NumExplod(20133)
anim = 20130
ID = 20133
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 62,fvar(2) -62),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Trump Base 02]
type = Explod
triggerall = !(var(18) & 2)
trigger1 = !NumExplod(20134)
anim = 20130
ID = 20134
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 97,fvar(2) -97),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Remove Trump Card 01]
type = RemoveExplod
triggerall = NumExplod(20131)
trigger1 = var(22) < 1
ID = 20131
ignorehitpause = 1

[State 20100, Remove Trump Card 02]
type = RemoveExplod
triggerall = NumExplod(20132)
trigger1 = var(22) < 2
ID = 20132
ignorehitpause = 1

[State 20100, Trump Card 01]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20131)
trigger1 = var(22)
anim = 20131 + Parent,var(23)
ID = 20131
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 62,fvar(2) -62),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Trump Card 02]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20132)
trigger1 = var(22) >= 2
anim = 20131 + Parent,var(23)
ID = 20132
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 97,fvar(2) -97),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Trump Card brust flash]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20136)
trigger1 = Parent,StateNo = 2900
trigger1 = Parent,AnimElemtime(1) <= 1
anim = 20136
ID = 20136
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + IFElse(var(22),97,62),fvar(2) - IFElse(var(22),97,62)),fvar(3)-24
removetime = -2
scale = 1.0, 1.0
sprpriority = 2
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Trump Card brust lighting]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20137)
trigger1 = Parent,StateNo = 2900
trigger1 = Parent,AnimElemtime(1) = 8
anim = 20137
ID = 20137
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + IFElse(var(22),97,62),fvar(2) - IFElse(var(22),97,62)),fvar(3)-24
removetime = -2
scale = 1.0, 1.0
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
remappal = 20137,Parent,var(23)
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Remove Trump Gauge]
type = RemoveExplod
triggerall = NumExplod(20140)
trigger1 = !var(24)
ID = 20140
ignorehitpause = 1

[State 20100, Remove Trump Gauge]
type = RemoveExplod
triggerall = NumExplod(20142)
trigger1 = !var(24)
ID = 20142
ignorehitpause = 1

[State 20100, Trump Gauge Left]
type = Explod
triggerall = !NumExplod(20140)
trigger1 = var(24)
anim = 20140
ID = 20140
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 138,fvar(2) -138),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Trump Gauge Bar]
type = Explod
triggerall = !NumExplod(20142)
trigger1 = var(24)
anim = 20142
ID = 20142
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 138,fvar(2) -138),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20100, Trump Gauge Bar shrink 1]
type = ModifyExplod
triggerall = NumExplod(20142)
trigger1 = var(24)
ID = 20142
scale = var(24)/1200.0, 1.0
ignorehitpause = 1

[State 20100, Remove Trump Gauge Right]
type = RemoveExplod
trigger1 = NumExplod(20141)
ID = 20141
ignorehitpause = 1

[State 20100, Trump Gauge Right]
type = Explod
triggerall = !NumExplod(20141)
trigger1 = var(24)
anim = 20141
ID = 20141
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 138 + Floor(159*(var(24) / 1200.0)), fvar(2) - 138 - Floor(159*(var(24) / 1200.0))),fvar(3)-24
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
vel = -0.1325 * facing,0
ignorehitpause = 1

;------------- Consume Trump Gague -----------
[State 20100, Consume var(24) on Hit]
type = varadd
triggerall = var(24) && Parent,MoveType = H
triggerall = Parent,GetHitVar(hitcount) = 1 && Parent,time = 1
trigger1 = Parent,StateNo = 5000 || Parent,StateNo = 5010 || Parent,StateNo = 5020
var(24) = -IFElse(var(24) < 150, var(24),150)
ignorehitpause = 1

[State 20100, Consume var(24)]
type = varadd
triggerall = !((Parent,StateNo = [3000,4999]) || (P2StateNo = [3000,4999]))
trigger1 = var(24)
var(24) = -1

[State 20100, Update var(24)]
type = ParentVarSet
trigger1 = Parent,var(24) != var(24)
var(24) = var(24)
ignorehitpause = 1


[State 20100, End]
type = DestroySelf
trigger1 = RoundState != [2,3]
removeexplods = 1
recursive = 1

[State 20100, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(21)=%d | var(22)=%d | var(23)=%d | counter=%d"
params = var(21), var(22), var(23),var(6)
ignorehitpause = 1

[State 20100, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1



;Partner Power Gauge
[Statedef 20110]
type = A
physics = N
anim = 9741
ctrl = 0

;--------------- Pos fix -----------------------
[State 20110,pos fix]
type = posset
trigger1 = !time
x = Floor(-(GameWidth / 2.1) * facing);		GameWidth will change with stagezoom
y = 40

;--------------- Vars --------------------------
[State 20110, P1 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(1) = Floor(0 + Const720p(80))

[State 20110, P2 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(2) = Floor(ScreenWidth - Const720p(80))

[State 20110, comm Base Y]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(3) = Floor(ScreenHeight - Const720p(60))

[State 20110, Calculate Delayed Power Level]
type = varset
trigger1 = 1
var(23) = Floor(var(21)/1000)

[State 20110, Get Parent Power reading]
type = varset
trigger1 = IsHelper
var(21) = Parent,Power
ignorehitpause = 1

[State 20110, Get Parent Trump No]
type = varset
trigger1 = IsHelper
trigger1 = var(22) != Parent,var(22)
var(22) = Parent,var(22)
ignorehitpause = 1

[State 20110, Sync Parent var(24) Trump timer]
type = varset
trigger1 = IsHelper
trigger1 = var(24) != Parent,var(24)
var(24) = Parent,var(24)
ignorehitpause = 1

[State 20110, Clear Power Change Flag]
type = varset
trigger1 = var(51) != 0
var(51) = 0
ignorehitpause = 1

[State 20110, Reset Counter]
type = varset
triggerall = var(6) != 0
trigger1 = var(51)
trigger2 = var(23) != Floor(var(21)/1000)
trigger3 = var(6) >= 16777215
var(6) = 0
ignorehitpause = 1

;---------- Trump Cards ------------
[State 20110, Trump Base 01]
type = Explod
triggerall = !(var(18) & 2)
trigger1 = !NumExplod(20133)
anim = 20130
ID = 20133
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 62,fvar(2) -62),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1

[State 20110, Trump Base 02]
type = Explod
triggerall = !(var(18) & 2)
trigger1 = !NumExplod(20134)
anim = 20130
ID = 20134
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 97,fvar(2) -97),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1

[State 20110, Remove Trump Card 01]
type = RemoveExplod
triggerall = NumExplod(20131)
trigger1 = var(22) < 1
ID = 20131
ignorehitpause = 1

[State 20110, Remove Trump Card 02]
type = RemoveExplod
triggerall = NumExplod(20132)
trigger1 = var(22) < 2
ID = 20132
ignorehitpause = 1

[State 20110, Trump Card 01]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20131)
trigger1 = var(22)
anim = 20131 + Parent,var(23)
ID = 20131
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 62,fvar(2) -62),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20110, Trump Card 02]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20132)
trigger1 = var(22) >= 2
anim = 20131 + Parent,var(23)
ID = 20132
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 97,fvar(2) -97),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20110, Trump Card brust flash]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20136)
trigger1 = Parent,StateNo = 2900
trigger1 = Parent,AnimElemtime(1) <= 1
anim = 20136
ID = 20136
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + IFElse(var(22),97,62),fvar(2) - IFElse(var(22),97,62)),fvar(3)-56
removetime = -2
scale = 1.0, 1.0
sprpriority = 2
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1

[State 20110, Trump Card brust lighting]
type = Explod
triggerall = !(var(18) & 2)
triggerall = !NumExplod(20137)
trigger1 = Parent,StateNo = 2900
trigger1 = Parent,AnimElemtime(1) = 8
anim = 20137
ID = 20137
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + IFElse(var(22),97,62),fvar(2) - IFElse(var(22),97,62)),fvar(3)-56
removetime = -2
scale = 1.0, 1.0
sprpriority = 3
supermovetime = 65535
pausemovetime = 65535
remappal = 20137,Parent,var(23)
ontop = 1
shadow = 0
ownpal = 1

[State 20110, Remove Trump Gauge]
type = RemoveExplod
triggerall = NumExplod(20140)
trigger1 = !var(24)
ID = 20140
ignorehitpause = 1

[State 20110, Remove Trump Gauge]
type = RemoveExplod
triggerall = NumExplod(20142)
trigger1 = !var(24)
ID = 20142
ignorehitpause = 1

[State 20110, Trump Gauge Left]
type = Explod
triggerall = !NumExplod(20140)
trigger1 = var(24)
anim = 20140
ID = 20140
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 138,fvar(2) -138),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20110, Trump Gauge Bar]
type = Explod
triggerall = !NumExplod(20142)
trigger1 = var(24)
anim = 20142
ID = 20142
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 138,fvar(2) -138),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
ignorehitpause = 1

[State 20110, Trump Gauge Bar shrink 1]
type = ModifyExplod
triggerall = NumExplod(20142)
trigger1 = var(24)
ID = 20142
scale = var(24)/1200.0, 1.0
ignorehitpause = 1

[State 20100, Remove Trump Gauge Right]
type = RemoveExplod
trigger1 = NumExplod(20141)
ID = 20141
ignorehitpause = 1

[State 20100, Trump Gauge Right]
type = Explod
triggerall = !NumExplod(20141)
trigger1 = var(24)
anim = 20141
ID = 20141
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 138 + Floor(159*(var(24) / 1200.0)), fvar(2) - 138 - Floor(159*(var(24) / 1200.0))),fvar(3)-56
removetime = -1
scale = 1.0, 1.0
sprpriority = 1
supermovetime = 65535
pausemovetime = 65535
ontop = 1
shadow = 0
ownpal = 1
vel = -0.1325 * facing,0
ignorehitpause = 1


;------------- Consume Trump Gague -----------
[State 20110, Consume var(24) on Hit]
type = varadd
triggerall = var(24) && Parent,MoveType = H
triggerall = Parent,GetHitVar(hitcount) = 1 && Parent,time = 1
trigger1 = Parent,StateNo = 5000 || Parent,StateNo = 5010 || Parent,StateNo = 5020
var(24) = -IFElse(var(24) < 150, var(24),150)
ignorehitpause = 1

[State 20110, Consume var(24)]
type = varadd
triggerall = !((Parent,StateNo = [3000,4999]) || (P2StateNo = [3000,4999]))
trigger1 = var(24)
var(24) = -1

[State 20110, Update var(24)]
type = ParentVarSet
trigger1 = Parent,var(24) != var(24)
var(24) = var(24)
ignorehitpause = 1

[State 20110, End]
type = DestroySelf
trigger1 = RoundState != [2,3]
removeexplods = 1
recursive = 1

[State 20110, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(21)=%d | var(22)=%d | var(23)=%d | counter=%d"
params = var(21), var(22), var(23),var(6)
ignorehitpause = 1

[State 20110, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1















;Sub Character Select Menu
[Statedef 20220]
type = A
physics = N
anim = 9741
ctrl = 0

;--------------- Vars --------------------------
[State 20220, P1 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(1) = Floor(0 + Const720p(70))

[State 20220, P2 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(2) = Floor(ScreenWidth - Const720p(70))

[State 20220, comm Base Y]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(3) = Floor(0 + Const720p(190))

[State 20220, No of sub chars can be selected]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
var(2) = 8; current 47 max

[State 20220, current selection]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
var(3) = 0

[State 20220, Previous current selection]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
var(4) = 0

[State 20220, max allowed rows to display]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
var(7) = 3;	allowed 4 lins 0 to 3

[State 20220, current displayed rows]
type = varset
triggerall = !PrevStateNo
trigger1 = var(5) = 2
var(8) = IFElse(NumExplod(30099),1,0) + IFElse(NumExplod(30899),1,0) + IFElse(NumExplod(31699),1,0) + IFElse(NumExplod(32499),1,0) + IFElse(NumExplod(33299),1,0) + IFElse(NumExplod(34099),1,0) + IFElse(NumExplod(34899),1,0) + IFElse(NumExplod(35699),1,0) + IFElse(NumExplod(36499),1,0) + IFElse(NumExplod(37299),1,0) + IFElse(NumExplod(38099),1,0) + IFElse(NumExplod(38899),1,0) + IFElse(NumExplod(39699),1,0) 

[State 20220, current down scroll level]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
var(9) = 0

;--------------- Phase controller ------------

[State 20220, Phase 0-1]; 30 frame for menu move in menu stop at phase 1
type = varset
trigger1 = var(5) = 0
trigger1 = var(6) >= 30
trigger1 = var(6):= 1
var(5) = 1

[State 20220, Phase 1-2]; in this phase 1 stop menu and creation sub char slots in 8 frames and text fade in
type = varset
trigger1 = var(5) = 1
trigger1 = var(6) >= 17
trigger1 = var(6):= 1
var(5) = 2


;--------------- Scroll vars ------------------------------------
[State 20220, scroll down]
type = varset
triggerall = var(5) = 2 && var(6)
trigger1 = Floor(var(3) / 8) > (var(7) + var(9))
trigger1 = var(5):=11
trigger1 = var(6):=1
var(9) = var(9)+1

[State 20220, scroll up]
type = varset
triggerall = var(5) = 2 && var(6)
trigger1 = Floor(var(3) / 8) < var(9)
trigger1 = var(5):=12
trigger1 = var(6):=1
var(9) = var(9)-1

[State 20220, Phase scroll to normal]; from page updown to normal
type = varset
trigger1 = var(5) = 11 || var(5) = 12
trigger1 = var(6) > 16 
trigger1 = var(6):= 1
var(5) = 2


;---------------------------------------------

[State 20220, flash by remove Menu BG]
type = RemoveExplod
trigger1 = NumExplod(20220)
trigger1 = var(5) = 1
ID = 20220

[State 20220, Menu BG S0 start]
type = Explod
trigger1 = !NumExplod(20220)
trigger1 = var(5) = 0
anim = 20220
ID = 20220
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) - 600,fvar(2) + 600),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -5
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = (600 / 30.0) * facing, 0

[State 20220, Menu BG S1 stable]
type = Explod
trigger1 = !NumExplod(20220)
trigger1 = var(5) = 1
anim = 20220
ID = 20220
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1),fvar(2)),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -5
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1


[State 20220, Menu Text]
type = Explod
trigger1 = !NumExplod(20221)
trigger1 = var(5) = 1
anim = 20221
ID = 20221
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 210,fvar(2) - 210),fvar(3) - 40
removetime = -1
scale = 1.0, 1.0
sprpriority = -4
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20220, Menu Text display]
type = ModifyExplod
trigger1 = NumExplod(20221)
trigger1 = var(5) = 1
trigger1 = var(6) = [1,10]
ID = 20221
trans = add
alpha = 25*var(6) + 6, 256

[State 20220, Hold Cancel 1]
type = RemoveExplod
trigger1 = NumExplod(20222)
trigger1 = var(5) >= 1
trigger1 = root,var(1) >= 10000
ID = 20222

[State 20220, Hold Cancel 2]
type = RemoveExplod
trigger1 = NumExplod(20223)
trigger1 = var(5) >= 1
trigger1 = root,var(1) < 10000
ID = 20223

[State 20220, Hold Cancel 2]
type = RemoveExplod
trigger1 = NumExplod(20224)
trigger1 = !NumExplod(20223)
ID = 20224

[State 20220, Menu Text Hold Start 1]
type = Explod
trigger1 = !NumExplod(20222) && !NumExplod(20223)
trigger1 = var(5) >= 1
trigger1 = root,var(1) < 10000
anim = 20222
ID = 20222
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 70,fvar(2) - 70),fvar(3) + 420
removetime = -1
scale = 1.0, 1.0
sprpriority = -4
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20220, Menu Text Hold Start 2]
type = Explod
trigger1 = !NumExplod(20222) && !NumExplod(20223)
trigger1 = var(5) >= 1
trigger1 = root,var(1) >= 10000
anim = 20223
ID = 20223
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 70,fvar(2) - 70),fvar(3) + 420
removetime = -1
scale = 1.0, 1.0
sprpriority = -4
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20220, Menu Text Color]
type = Explod
trigger1 = !NumExplod(20224)
trigger1 = NumExplod(20223)
anim = 20224
ID = 20224
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 260,fvar(2) - 260),fvar(3) + 420
removetime = -1
scale = 1.0, 1.0
sprpriority = -4
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

;------------------ Sub Character list ---------------------
[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(30099)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 30099

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(30899)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 30899

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(31699)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 31699

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(32499)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 32499

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(33299)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 33299

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(34099)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 34099

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(34899)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 34899

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(35699)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 35699

[State 20220, Remove sub slot rows]
type = RemoveExplod
triggerall = NumExplod(36499)
trigger1 = var(5) = [11,12]
trigger1 = var(6) = 1 || var(6) = 9
ID = 36499

[State 20220, Sub slot row 00]
type = Explod
triggerall = NumExplod(30099) < 8
triggerall = (0 - var(9)) = [0,var(7)]
trigger1 = var(5) = [1,2]
trigger1 = var(6) = [1,8]
trigger2 = var(5) = [11,12]
trigger2 = var(6) = [1,8]
anim = IFElse(AnimExist(30099 + 100*(var(6) - 1)),30099 + 100*(var(6) - 1),30099)
ID = 30099
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * ((var(6)-1)%8)),fvar(2) - (66 * ((var(6)-1)%8))),fvar(3) + 66 * (0 - var(9))
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = 0,-8.2 * (var(5)=11) + 8.2 * (var(5)=12)

[State 20220, Sub slot row 01]
type = Explod
triggerall = NumExplod(30899) < 8
triggerall = (1 - var(9)) = [0,var(7)]
trigger1 = var(5) = [1,2]
trigger1 = var(6) = [1,8]
trigger2 = var(5) = [11,12]
trigger2 = var(6) = [1,8]
anim = IFElse(AnimExist(30899 + 100*(var(6) - 1)),30899 + 100*(var(6) - 1),30099)
ID = 30899
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * ((var(6)-1)%8)),fvar(2) - (66 * ((var(6)-1)%8))),fvar(3) + 66 * (1 - var(9))
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = 0,-8.2 * (var(5)=11) + 8.2 * (var(5)=12)

[State 20220, Sub slot row 02]
type = Explod
triggerall = NumExplod(31699) < 8
triggerall = (2 - var(9)) = [0,var(7)]
trigger1 = var(5) = [1,2]
trigger1 = var(6) = [1,8]
trigger2 = var(5) = [11,12]
trigger2 = var(6) = [1,8]
anim = IFElse(AnimExist(31699 + 100*(var(6) - 1)),31699 + 100*(var(6) - 1),30099)
ID = 31699
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * ((var(6)-1)%8)),fvar(2) - (66 * ((var(6)-1)%8))),fvar(3) + 66 * (2 - var(9))
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = 0,-8.2 * (var(5)=11) + 8.2 * (var(5)=12)

[State 20220, Sub slot row 03]
type = Explod
triggerall = NumExplod(32499) < 8
triggerall = (3 - var(9)) = [0,var(7)]
trigger1 = var(5) = [1,2]
trigger1 = var(6) = [1,8]
trigger2 = var(5) = [11,12]
trigger2 = var(6) = [1,8]
anim = IFElse(AnimExist(32499 + 100*(var(6) - 1)),32499 + 100*(var(6) - 1),30099)
ID = 32499
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * ((var(6)-1)%8)),fvar(2) - (66 * ((var(6)-1)%8))),fvar(3) + 66 * (3 - var(9))
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = 0,-8.2 * (var(5)=11) + 8.2 * (var(5)=12)

[State 20220, Sub slot row 04]
type = Explod
triggerall = NumExplod(33299) < 8
triggerall = (4 - var(9)) = [0,var(7)]
trigger1 = var(5) = [1,2]
trigger1 = var(6) = [1,8]
trigger2 = var(5) = [11,12]
trigger2 = var(6) = [1,8]
anim = IFElse(AnimExist(33299 + 100*(var(6) - 1)),33299 + 100*(var(6) - 1),30099)
ID = 33299
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * ((var(6)-1)%8)),fvar(2) - (66 * ((var(6)-1)%8))),fvar(3) + 66 * (4 - var(9))
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = 0,-8.2 * (var(5)=11) + 8.2 * (var(5)=12)

[State 20220, Sub slot row 05]
type = Explod
triggerall = NumExplod(34099) < 8
triggerall = (5 - var(9)) = [0,var(7)]
trigger1 = var(5) = [1,2]
trigger1 = var(6) = [1,8]
trigger2 = var(5) = [11,12]
trigger2 = var(6) = [1,8]
anim = IFElse(AnimExist(34099 + 100*(var(6) - 1)),34099 + 100*(var(6) - 1),30099)
ID = 34099
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * ((var(6)-1)%8)),fvar(2) - (66 * ((var(6)-1)%8))),fvar(3) + 66 * (5 - var(9))
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
vel = 0,-8.2 * (var(5)=11) + 8.2 * (var(5)=12)


;------------ Cursor Selection -------------
[State 20220, Cursor var 3 new Human]
type = varset
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel = 0
trigger1 = command != "holdstart"
trigger1 = command = "up" || command = "down" || command = "fwd" || command = "back"
var(3) = var(4) + IFElse(command = "fwd" && var(4)>=var(2),0,command = "fwd") - IFElse(command = "back" && var(4)<=0,0,command = "back") + IFElse(command = "down" && (var(4)+8)>=var(2),var(2)-var(4),(command = "down") * 8) - IFElse(command = "up" && (var(4)-8)<0,var(4),(command = "up") * 8)

[State 20220, Cursor var 3 AI random var buffer clear]
type = varset
trigger1 = var(58)
var(58) = 0

[State 20220, Cursor var 3 new AI]
type = varset
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
triggerall = var(6) < (360 + 220*(facing != 1)); 6 Seconds to select
trigger1 = Parent,AILevel > 0
trigger1 = random < IFElse(Facing = 1,300,60)
trigger1 = var(58):= Random%(var(2)+1)
var(3) = var(58)

;Mikoto
[State 20220, force AI Select someone]
type = varset
triggerall = Parent,Name = "MISAKA Mikoto"
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel > 0
trigger1 = var(3) <= 0
var(3) = 1

;Mikoto
[State 20220, force AI Select someone]
type = varset
triggerall = Parent,Name = "SHIRAI Kuroko"
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel > 0
trigger1 = var(3) <= 0
var(3) = 4

;Mikoto
[State 20220, force AI Select someone]
type = varset
triggerall = Parent,Name = "SHIBA Miyuki"
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel > 0
trigger1 = var(3) <= 0
var(3) = 8

[State 20220, Snd moving cursor]
type = PlaySnd
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel = 0
trigger1 = command = "up" || command = "down" || command = "fwd" || command = "back"
trigger2 = Parent,AILevel > 0
trigger2 = var(58)
value = 20220,1
volumescale = 100
channel = 2

[State 20220, Sub Char Voice moving cursor]
type = PlaySnd
triggerall = NumExplod(30000)
triggerall = var(3)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = var(16) = 100
value = 30000 + (var(3) * 100),20220 + Random%2
volumescale = 100
channel = 0

[State 20220, Create Cursor]
type = Explod
triggerall = !NumExplod(30000)
trigger1 = var(5) = 2
trigger1 = var(6) > 8
trigger1 = var(16):= 1
anim = 30000
ID = 30000
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + (66 * (var(3)%8)),fvar(2) - (66 * (var(3)%8))),fvar(3) + (Floor(var(3)/8.0) - var(9)) * 66
removetime = -1
scale = 1.0, 1.0
sprpriority = -4
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20220, Reflash Cursor]
type = RemoveExplod
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel = 0
trigger1 = command != "holdstart"
trigger1 = command = "up" || command = "down" || command = "fwd" || command = "back"
trigger2 = Parent,AILevel > 0
trigger2 = var(58)
ID = 30000

[State 20220, Cursor var 4 record position]
type = varset
trigger1 = var(3) != var(4)
var(4) = var(3)

;------------- foot bar -----------------
[State 20220, Flash Bar]
type = RemoveExplod
triggerall = NumExplod(30098)
trigger1 = var(16) = 1
ID = 30098

[State 20220, Create Bar]
type = Explod
triggerall = !NumExplod(30098)
triggerall = var(5) = 2 && NumExplod(30000)
trigger1 = var(16)
anim = IFElse(AnimExist(30098 + (var(3) * 100)),30098 + (var(3) * 100),30098)
ID = 30098
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 232 ,fvar(2) - 232),fvar(3) + 276
removetime = -1
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20220, Create Bar]
type = ModifyExplod
triggerall = NumExplod(30098)
trigger1 = var(16) = [1,16]
ID = 30098
scale = 1, var(16)/16.0


[State 20220, Snd finish]
type = PlaySnd
triggerall = NumExplod(30000)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel = 0
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = Parent,AILevel
trigger2 = var(3)
trigger2 = var(6) > (40 + 220*(facing != 1)); var(6) > (760 + 220*(facing != 1)); 6 Seconds + 300 to Finish
trigger3 = RoundState > 1
value = 20220,2
volumescale = 100
channel = 3
persistent = 0

[State 20220, Sub Char Voice Finish]
type = PlaySnd
triggerall = NumExplod(30000)
triggerall = var(3)
triggerall = var(5) = 2 && var(6) > 8
trigger1 = Parent,AILevel = 0
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = Parent,AILevel
trigger2 = var(3)
trigger2 = var(6) > (40 + 220*(facing != 1)); var(6) > (760 + 220*(facing != 1)); 6 Seconds + 300 to Finish
trigger3 = RoundState > 1
value = 30000 + (var(3) * 100),20220 + 2
volumescale = 100
channel = 0
persistent = 0

[State 20220, Push result to root]
type = ParentVarset
trigger1 = Parent,var(31) != var(3)
var(31) = IFElse(var(3) && AnimExist(var(3) * 100 + 30099 ),var(3),0)

[State 20220, End]
type = DestroySelf
trigger1 = RoundState > 1
trigger2 = NumExplod(30000) && var(5) = 2
trigger2 = Parent,AILevel
trigger2 = var(3)
trigger2 = var(6) > (40 + 220*(facing != 1)); var(6) > (760 + 220*(facing != 1)); 6 Seconds + 300 to Finish
removeexplods = 1
recursive = 1

[State 20220, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(6)=%d | var(16)=%d | var(3)=%d | error:%d"
params = var(5), var(6), var(16), var(3), var(50)
ignorehitpause = 1

[State 20220, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 20220, Run Counter]
type = varadd
trigger1 = var(16) < 16777215
var(16) = 1
ignorehitpause = 1














;Sub Character action Box
[Statedef 20300]
type = A
physics = N
anim = 9741
ctrl = 0

;--------------- Pos fix -----------------------
[State 20300,pos fix]
type = posset
trigger1 = 1;		Need to move with screen to pan Sound when speaking
x = Floor(-(GameWidth / 2.28) * facing);		GameWidth will change with stagezoom
y = -Floor(GameHeight*0.54)

;--------------- Vars --------------------------
[State 20300, Get Previous Round win or Loss]
type = varset
triggerall = !PrevStateNo && !time
trigger1 = var(0) != Parent,var(0)
var(0) = Parent,var(0)

[State 20300, Get Sub Char ID]
type = varset
triggerall = !PrevStateNo
trigger1 = var(31) != Parent,var(31)
var(31) = Parent,var(31)

; Var(32) = Talk type var

[State 20300, P1 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(1) = Floor(0 + Const720p(74))

[State 20300, P2 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(2) = Floor(ScreenWidth - Const720p(74))

[State 20300, comm Base Y]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(3) = Floor(0 + Const720p(132))

;Character charage cool down timer
[State 20300, Init charge time]
type = varset
triggerall = !PrevStateNo && !time
trigger1 = !fvar(5)
fvar(5) = 500

;Touma
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 1
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 500

;Mikoto
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 2
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 250

;Accelerator
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 3
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 500

;Uiharu
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 4
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 400

;Kuroko
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 5
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 200

;Misaki
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 6
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 500

;Miyuki
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 7
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 200

;Tatsuya
[State 20300, Overwrite]
type = varset
triggerall = var(31) = 8
trigger1 = !time
trigger2 = var(6) = 2
fvar(5) = 500


;--------------- Phase -----------------
[State 20300, to sub action]; switch to sub action! no charging no calls black picture
type = varset
trigger1 = var(5) = 0 || var(5) = 3
trigger1 = NumHelper(30000)
trigger1 = var(6):= 1
var(5) = 1

[State 20300, to charge]; sub action finished start charging
type = varset
trigger1 = var(5) = 1
trigger1 = !NumHelper(30000)
trigger1 = var(6):= 1
var(5) = 2

[State 20300, charge finshed]; charging over
type = varset
trigger1 = var(5) = 2
trigger1 = !NumHelper(30000)
trigger1 = var(6) >= fvar(5)
trigger1 = var(6):= 1
var(5) = 3


;-------------- Box Framework ---------------
[State 20300, Sub Char Box]
type = Explod
triggerall = !NumExplod(20300)
trigger1 = !time
anim = 20300
ID = 20300
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20300, Sub Char]
type = Explod
triggerall = NumExplod(20300)
triggerall = !NumExplod(30097)
trigger1 = AnimExist(30097 + var(31)*100)
anim = 30097 + var(31)*100
ID = 30097
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 0

[State 20300, Back and white]
type = PalFx
trigger1 = var(5) = [1,2]
time = 1
color = 0

[State 20300, Charge Mask]
type = Explod
triggerall = NumExplod(20300)
triggerall = !NumExplod(20301)
trigger1 = var(5) = 2 && var(6)
anim = 20301
ID = 20301
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = fvar(5)
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 0
trans = sub

[State 20300, Charge Mask grow]
type = ModifyExplod
triggerall = NumExplod(20301)
trigger1 = var(5) = 2 && var(6) <= fvar(5)
ID = 20301
scale = 1.0, 1-(var(6)/fvar(5))

[State 20300, flash Mask]
type = Explod
triggerall = NumExplod(20300)
triggerall = !NumExplod(20302)
trigger1 = var(5) = 3 && var(6) = 1
anim = 20302
ID = 20302
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = 60
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 0

[State 20300, Charge Mask grow]
type = ModifyExplod
triggerall = NumExplod(20302)
trigger1 = var(5) = 3 && var(6) = [1,60]
ID = 20302
trans = add
alpha = Floor(256 - (4.26 * var(6))),256

;---------- Charge Over -------------------------
[State 20300, Ready talk var]
type = varset
triggerall = RoundState = 2
triggerall = NumExplod(20300)
triggerall = !NumExplod(20303)
triggerall = AnimExist(30097 + var(31)*100)
trigger1 = var(5) = 3 && var(6) = 1
var(32) = Random%2

[State 20300, Sub Char talbox]
type = Explod
triggerall = RoundState = 2
triggerall = NumExplod(20300)
triggerall = !NumExplod(20303)
triggerall = AnimExist(30097 + var(31)*100)
trigger1 = var(5) = 3 && var(6) = 1
anim = 20303
ID = 20303
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = 180
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20300, Sub Char Text]
type = Explod
triggerall = RoundState = 2
triggerall = NumExplod(20303) && !NumExplod(20380)
triggerall = AnimExist(30097 + var(31)*100)
trigger1 = var(5) = 3 && var(6) = 1
anim = (30000 + var(31)*100) + 80 + var(32)
ID = 20380
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = 180
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20300, SND Voice Char Ready]
type = PlaySnd
triggerall = var(31)
triggerall = RoundState = 2
triggerall = NumExplod(20303)
trigger1 = var(5) = 3 && var(6) = 1
value = 30000 + var(31)*100, 20300 + var(32)
volumescale = 100
channel = 0
;abspan = 0



;------------ Support Climax ----------
[State 20300, Update Parent Support Climax]
type = ParentVarset
triggerall = (parent,var(21) & 2)
trigger1 = NumHelper(30000) = 0
trigger2 = Parent,Ctrl || Parent,MoveType != A || Parent,StateNo < 3000
trigger3 = (Parent,StateNo = [3000,4999]) && Parent,time > 24
var(21) = parent,var(21) - 2

[State 20300, Update Parent Support Climax]
type = ParentVarset
triggerall = !(parent,var(21) & 2)
triggerall = NumHelper(30000)
;Tatsuya Support 2
trigger1 = var(31) = 8
trigger1 = Helper(30000),StateNo = 30870 || Helper(30000),var(5) = 99
trigger1 = Parent,StateNo = [3000,4999]
trigger1 = Parent,time = 24
trigger1 = var(29) := 148
var(21) = parent,var(21) + 2

[State 20300, Support Climax Snd]
type = PlaySnd
trigger1 = var(31)
trigger1 = var(29) = 148
value = 30000 + var(31)*100,222
volumescale = 100
channel = 0
;abspan = 0

[State 20300, flash Mask]
type = Explod
triggerall = NumExplod(20300)
triggerall = !NumExplod(20302)
trigger1 = var(29) = 140
anim = 20302
ID = 20302
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = 32
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 0

[State 20300, Charge Mask grow]
type = ModifyExplod
triggerall = NumExplod(20302)
trigger1 = var(29) = [108,140]
ID = 20302
trans = add
alpha = 8*(var(29) - 108),256

[State 20300, brust lighting]
type = Explod
triggerall = !NumExplod(20137)
trigger1 = var(29) = 140
anim = 20137
ID = 20137
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3) + 40
removetime = -2
scale = 6,6
angle = -20
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
remappal = 20137,1
shadow = 0
ownpal = 1
ignorehitpause = 1


[State 20300, Support Climax Bar Clear]
type = RemoveExplod
triggerall = NumExplod(30095)
trigger1 = !var(29)
trigger2 = var(29) && var(29) = 140
ID = 30095

[State 20300, Support Climax Bar Clear]
type = RemoveExplod
triggerall = NumExplod(20424)
trigger1 = !var(29)
trigger2 = var(29) && var(29) = 140
ID = 20424

[State 20300, Support Climax Bar INIT]; Long = 623
type = Explod
triggerall = !NumExplod(30095)
trigger1 = var(29) = 148
anim = 30000 + var(31)*100 + 95 + IFElse(facing = 1,0,1)
ID = 30095
space = Screen
pos = IFElse(facing = 1,0,ScreenWidth), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 20
vel = 623 / 8.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = none
;alpha = var(11),var(12)
sprpriority = -9
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20300, support Climax Letter INIT]; Long = 623
type = Explod
triggerall = !NumExplod(20424)
trigger1 = var(29) = 148
anim = 20424 + IFELse(facing = 1,0,10)
ID = 20424
space = Screen
pos = IFElse(facing = 1,0,ScreenWidth), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 20
vel = 623 / 8.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = add
;alpha = var(11),var(12)
sprpriority = -8
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20300, Support Climax Bar Stable]; Long = 623
type = Explod
triggerall = !NumExplod(30095)
trigger1 = var(29) = 140
anim = 30000 + var(31)*100 + 95 + IFElse(facing = 1,0,1)
ID = 30095
space = Screen
pos = IFElse(facing = 1,0 + 623,ScreenWidth - 623), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 140
;vel = 623 / 20.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = none
;alpha = var(11),var(12)
sprpriority = -9
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20300, Support Climax Letter Stable]; Long = 623
type = Explod
triggerall = !NumExplod(20424)
trigger1 = var(29) = 140
anim = 20424 + IFELse(facing = 1,0,10)
ID = 20424
space = Screen
pos = IFElse(facing = 1,0 + 623,ScreenWidth - 623), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 140
;vel = 623 / 20.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = add
;alpha = var(11),var(12)
sprpriority = -8
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20300, Potential Bar Stable Fad out]
type = ModifyExplod
triggerall = NumExplod(30095)
trigger1 = var(29) = [1,16]
ID = 30095
trans = add
alpha = 16*(var(29)), 256 - 16*(var(29))

[State 20300, Potential Bar Stable Fad out]
type = ModifyExplod
triggerall = NumExplod(20424)
trigger1 = var(29) = [1,16]
ID = 20424
trans = add
alpha = 16*(var(29)), 256 - 16*(var(29))


;------------ Round over --------------------
[State 20300, Ready talk var]
type = varset
triggerall = !var(32)
triggerall = NumExplod(20300)
triggerall = !NumExplod(20303)
triggerall = AnimExist(30097 + var(31)*100)
triggerall = RoundState = 4
trigger1 = var(0) = 0 || (var(0) = [1,3])
trigger1 = Lose
;Lose
trigger2 = (var(0) = [1,3])
trigger2 = WIN
;WIN
var(32) = (Random < 500) + 1
persistent = 0

[State 20300, Sub Char talbox]
type = Explod
triggerall = var(32)
triggerall = NumExplod(20300)
triggerall = !NumExplod(20303)
triggerall = AnimExist(30097 + var(31)*100)
trigger1 = RoundState = 4 && var(16) = (90 + 80*Parent,Win)
anim = 20303
ID = 20303
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = 999
scale = 1.0, 1.0
sprpriority = -1
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20300, Sub Char Text]
type = Explod
triggerall = var(32)
triggerall = NumExplod(20303)
triggerall = AnimExist(30097 + var(31)*100)
trigger1 = RoundState = 4 && var(16) = (90 + 80*Parent,Win)
anim = 30000 + var(31)*100 + IFElse(WIN,86,83) + (var(32)-1)
ID = 20380
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 90 ,fvar(2) - 90),fvar(3) + 100
removetime = 999
scale = 1.0, 1.0
sprpriority = 0
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1


[State 20300, SND Voice Char WIN or LOSE]
type = PlaySnd
triggerall = var(32)
triggerall = var(31)
triggerall = NumExplod(20303)
trigger1 = RoundState = 4 && var(16) = (90 + 80*Parent,Win)
value = 30000 + var(31)*100, (170 + 10*Parent,Win) + (var(32) - 1)
volumescale = 100
channel = 0
;abspan = 0

[State 20300, Round Not over]
type = AssertSpecial
triggerall = NumExplod(20303)
trigger1 = RoundState = 4
flag = roundnotover


;-------------- End and debug ---------------
[State 20300, End]
type = DestroySelf
trigger1 = RoundState != [2,4]
trigger2 = RoundState = 4 && var(16) > 400
removeexplods = 1
recursive = 1

[State 20300, Debug]
type = displaytoclipboard
trigger1 = 1
text = "var(5)=%d | var(6)=%d | var(16)=%d | var(29)=%d | RoundState:%d"
params = var(5), var(6), var(16), var(29), RoundState
ignorehitpause = 1

[State 20300, Run Counter]
type = varadd
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 20300, Run Counter]
type = varadd
trigger1 = RoundState = 4
trigger1 = var(16) < 16777215
var(16) = 1
ignorehitpause = 1

[State 20300, Support Climax Counter] 
type = varadd
trigger1 = var(29) > 0
var(29) = -1

[State 20300, Extra Counter Speed Up]
type = varadd
triggerall = var(6) < 16777215
triggerall = var(6) > 3
trigger1 = Parent,Name = "SHIBA Miyuki"
trigger1 = (Parent,var(21) & 8)
var(6) = 1
ignorehitpause = 1







;Blast Box
[Statedef 20400]
type = A
physics = N
anim = 9741
ctrl = 0

;--------------- Pos fix -----------------------
[State 20400,pos fix]
type = posset
trigger1 = !time
x = Floor(-(GameWidth / 3.42) * facing);		GameWidth will change with stagezoom
y = -Floor(GameHeight*0.676 - 50 * Const(size.proj.doscale))

[State 20400, copy Parent var19]
type = varset
trigger1 = var(19) != Parent,var(19)
var(19) = Parent,var(19)
ignorehitpause = 1

[State 20400, copy Parent var21]
type = varset
trigger1 = var(21) != Parent,var(21)
var(21) = Parent,var(21)
ignorehitpause = 1

[State 20400, copy Parent var32]
type = varset
trigger1 = var(32) != Parent,var(32)
var(32) = Parent,var(32)
ignorehitpause = 1

;--------------- Vars --------------------------
;Power UP Normal Active = 500 ticket + 1000 Power + 150 Life
;Power UP Charge time = 2500 ticket
;Power UP Strong Active = 500 ticket
;Power UP Charge time = 2500 ticket
;Cancel Charge time = 2500 ticket
;Escape Charge time = 6668 ticket

;#need to be saved
;#var(5)  Phase of this helper
;#var(6)  Counter
;#var(7)  Counter
;var(19) same as parent DBFCI var
;var(21) same as parent DBFCI var
;var(31) Power Up Active time
;var(32) Parent Close Enemy ID
;fvar(1) P1 X
;fvar(2) P2 X
;fvar(3) Y
;fvar(31) Charge Time
;fvar(32) Charge Time Percentage
;var(40) Parent var(3) Hit Target ID

;var(20) Potential Type flag 0=None 1=30% LV1 2=30% LV2
;var(29) Potential Tick counter
;----------- END Vars ------------------------




[State 20400, Init PowerUp Active time length]
type = varset
triggerall = !PrevStateNo
trigger1 = !var(31)
var(31) = 500

[State 20400, Init Charge time length]
type = varset
trigger1 = var(5) = 0 || var(5) = 3
fvar(31) = IFElse((var(19) & 8),6668.0,2500.0)

[State 20400, Custom mode advantage for Cancel]
type = varset
trigger1 = (Parent,var(1)>=10000 && Parent,PalNo%3 = 2)
trigger1 = fvar(31) && (var(19) & 4)
trigger1 = var(5) = 11 && var(6) = 2
fvar(31) = fvar(31)/2

[State 20400, Custom mode advantage for Escape]
type = varset
trigger1 = (Parent,var(1)>=10000 && Parent,PalNo%3 = 0)
trigger1 = fvar(31) && (var(19) & 8)
trigger1 = var(5) = 2 && var(6) = 2
fvar(31) = fvar(31)/2


[State 20400, PowerUp charge percentage]
type = varset
triggerall = fvar(31)
trigger1 = var(6)
fvar(32) = var(6)/fvar(31)

[State 20400, P1 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(1) = Floor(0 + Const720p(282))

[State 20400, P2 Base X]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(2) = Floor(ScreenWidth - Const720p(282))

[State 20400, comm Base Y]
type = varset
triggerall = !PrevStateNo
trigger1 = !time
fvar(3) = Floor(0 + Const720p(146) + 50 * Const(size.proj.doscale))


;--------------- Load & Save --------------
;--------------- Load from Main -----------
[State 20400, Load from Main]
type = varset
triggerall = RoundState <= 2
triggerall = !PrevStateNo
triggerall = Time = 0
trigger1 = Parent,var(5) != var(5)
var(5) = Parent,var(5)

[State 20400, Correct]
type = varset
triggerall = RoundState <= 2
triggerall = !PrevStateNo
triggerall = Time = 0
trigger1 = !((var(5) = [0,3]) || (var(5) = [11,12]))
var(5) = 0

[State 20400, Load from Main]
type = varset
triggerall = RoundState <= 2
triggerall = !PrevStateNo
triggerall = Time = 0
trigger1 = Parent,var(6) != var(6)
var(6) = Parent,var(6)

[State 20400, Load from Main]
type = varset
triggerall = RoundState <= 2
triggerall = !PrevStateNo
triggerall = Time = 0
trigger1 = Parent,var(7) != var(7)
var(7) = Parent,var(7)

;--------------- Save to Main -------------
[State 20400, Save to Main]
type = Parentvarset
triggerall = RoundState = 3
trigger1 = Parent,var(5) != var(5)
var(5) = var(5)

[State 20400, Save to Main]
type = Parentvarset
triggerall = RoundState = 3
trigger1 = Parent,var(6) != var(6)
var(6) = var(6)

[State 20400, Save to Main]
type = Parentvarset
triggerall = RoundState = 3
trigger1 = Parent,var(7) != var(7)
var(7) = var(7)


;--------------- Monitor Target State -----
[State 20400, Clear Target ID]
type = varset
triggerall = var(40)
trigger1 = PlayerIDExist(var(40)) = 0
trigger2 = PlayerIDExist(var(40))
trigger2 = PlayerID(var(40)),MoveType != H
var(40) = 0
ignorehitpause = 1

[State 20400, Set Target ID]
type = varset
trigger1 = NumHelper(985) && Parent,var(3)
trigger1 = Helper(985),MoveHit = [1,2]
var(40) = Parent,var(3)
ignorehitpause = 1




;--------------- Phase -----------------
;----------- Power Up ------------------
[State 20400, Power Blast 1]; From Idel to Active Power Up stage
type = varset
triggerall = var(5) = 0 || var(5) = 3
triggerall = (var(19) & 2)
trigger1 = Parent,StateNo = 980 && (Parent,Anim = [980,982])
trigger1 = Parent,AnimElemNo(0) = 3
trigger1 = var(6):= 1
var(5) = 1

[State 20400, Power Blast 2]; Active Power Up stage to Charging State
type = varset
trigger1 = var(5) = 1
trigger1 = var(6) >= var(31)
trigger1 = var(6):= 1
var(5) = 2

[State 20400, Power Blast 3]; Charing to Finish ready to go again
type = varset
trigger1 = var(5) = 2
trigger1 = var(6) && fvar(31)
trigger1 = fvar(32) >= 1
trigger1 = var(6):= 1
var(5) = 3

;---------- Cancel -------------------
[State 20400, Cancel Blast 1]; From WAIT to Charge
type = varset
triggerall = var(5) = 11 && var(6)
trigger1 = var(40) = 0
trigger1 = var(6):= 1
var(5) = 2

[State 20400, Cancel Blast 1]; From Idel to Cancel WAIT
type = varset
triggerall = var(5) = 0 || var(5) = 3
triggerall = (var(19) & 4)
trigger1 = Parent,StateNo = 980 && (Parent,Anim = [980,982])
trigger1 = Parent,AnimElemNo(0) = 3
trigger1 = var(6):= 1
var(5) = 11

;---------- Wait hit by super or grab -------------
[State 20400, wait clear]; From WAIT to Ready
type = varset
triggerall = var(5) = 12 && var(6)
trigger1 = Parent,MoveType != H
trigger1 = var(6):= 1
var(5) = 0

[State 20400, WAIT for Hit by super]; From Idel to WAIT
type = varset
triggerall = !(Parent,StateNo = 1115080 || Parent,StateNo = 1115110)
triggerall = var(5) = 0 || var(5) = 3
triggerall = Parent,MoveType = H && Parent,Time <= 3 && !(Parent,StateNo = [140,159])
trigger1 = Parent,var(58) != [GameTime - 2, GameTime + 2]
trigger1 = var(6):= 1
;Parent in Custom State
trigger2 = (PlayerID(var(32)),StateNo = [3000,4999]) || (PlayerID(var(32)),HitDefAttr = SCA, HA, HP, HT)
trigger2 = var(6):= 1
;Parent Hit by Super
var(5) = 12
ignorehitpause = 1


;---------- Escape -------------------
[State 20400, Escape Blast 1]; From Idel to Escape Charge
type = varset
triggerall = var(5) = 0 || var(5) = 3
triggerall = (var(19) & 8)
trigger1 = Parent,StateNo = 980 && (Parent,Anim = [980,982])
trigger1 = Parent,AnimElemNo(0) = 3
trigger1 = var(6):= 1
var(5) = 2



;-------------- Update Parent var(19) -----------
[State 20400, Charging clear parent power up blast flag]
type = ParentVarSet
trigger1 = (Parent,var(19) & 2)
trigger1 = var(5) = 2 && var(6) > 2
var(19) = Parent,var(19) - 2

[State 20400, Charging clear parent Cancel blast flag]
type = ParentVarSet
trigger1 = (Parent,var(19) & 4)
trigger1 = var(5) = 2 && var(6) > 2
var(19) = Parent,var(19) - 4

[State 20400, Charging clear parent Escape blast flag]
type = ParentVarSet
trigger1 = (Parent,var(19) & 8)
trigger1 = var(5) = 2 && var(6) > 2
var(19) = Parent,var(19) - 8

[State 20400, Parent powering up flag]
type = ParentVarSet
trigger1 = !(Parent,var(19) & 16)
trigger1 = var(5) = 1
var(19) = Parent,var(19) + 16

[State 20400, Clear Parent powering up flag]
type = ParentVarSet
trigger1 = (Parent,var(19) & 16)
trigger1 = var(5) != 1
var(19) = Parent,var(19) - 16


;-------------- Box Framework ---------------
[State 20400, Blast PowerUp Box]
type = Explod
triggerall = !NumExplod(20400)
trigger1 = !time
anim = 20400
ID = 20400
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -5
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
remappal = 20400,IFElse(PalNo%3 = 1,0,IFElse(PalNo%3 = 2,1,2))

[State 20400, Blast Char]
type = Explod
triggerall = !NumExplod(20405)
trigger1 = !time
anim = 20405
ID = 20405
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -4
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

;---------- States ----------------------------
[State 20400, Blast OK Clear]
type = RemoveExplod
triggerall = NumExplod(20410)
trigger1 = var(5) != 0
ID = 20410

[State 20400, Blast OK]
type = Explod
triggerall = !NumExplod(20410)
trigger1 = var(5) = 0 || var(5) = 3
trigger1 = var(6)
anim = 20410
ID = 20410
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 34 ,fvar(2) - 34),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, Blast OK Flash]
type = Explod
triggerall = !NumExplod(20401)
trigger1 = var(5) = 3 && var(6) = 1
anim = 20401
ID = 20401
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2)),fvar(3)
removetime = -2
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, Blast OK Sound]
type = PlaySnd
trigger1 = var(5) = 3 && var(6) = 1
value = 20400,0
volumescale = 100
channel = 1
;abspan = 0

;---------- Power Up Active -------------
[State 20400, PowerUp Clear]
type = RemoveExplod
triggerall = NumExplod(20411)
trigger1 = var(5) != 1
ID = 20411

[State 20400, PowerUp]
type = Explod
triggerall = !NumExplod(20411)
trigger1 = var(5) = 1 && var(6)
anim = 20411
ID = 20411
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 34 ,fvar(2) - 34),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, PowerUp Flash]
type = Explod
triggerall = !NumExplod(20401)
trigger1 = var(5) = 1 && var(6) = 1
anim = 20401
ID = 20401
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2)),fvar(3)
removetime = -2
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, PowerUp Flash 1]
type = Explod
triggerall = !NumExplod(20402)
trigger1 = var(5) = 1 && var(6) = 3
anim = 20402
ID = 20402
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2)),fvar(3)
removetime = -2
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, PowerUp Flash grow]
type = ModifyExplod
triggerall = NumExplod(20402)
trigger1 = var(5) = 1 && var(6) = [3,6]
ID = 20402
Scale = IFElse(var(6)=3,2.0,3),IFElse(var(6)=3,2.0,3)
trans = add
alpha = 256 - IFElse(var(6)>=5,(var(6)-4)*80,0),256

[State 20400, PowerUp Flash 2 V]
type = Explod
triggerall = !NumExplod(20403)
trigger1 = var(5) = 1 && var(6) = 1
anim = 20403
ID = 20403
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2)),fvar(3)
removetime = -2
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, PowerUp Flash 2 H]
type = Explod
triggerall = !NumExplod(20404)
trigger1 = var(5) = 1 && var(6) = 1
anim = 20404
ID = 20404
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2)),fvar(3)
removetime = -2
scale = 1.0, 1.0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, PowerUp Flash 2 V Grow]
type = ModifyExplod
triggerall = NumExplod(20403)
trigger1 = var(5) = 1 && var(6) = [1,4]
ID = 20403
Scale = 1 + var(6)/4.0, 1 + var(6)/4.0
trans = add
alpha = 256 - IFElse(var(6)>=3,(var(6)-2)*80,0),256

[State 20400, PowerUp Flash 2 H Grow]
type = ModifyExplod
triggerall = NumExplod(20404)
trigger1 = var(5) = 1 && var(6) = [1,4]
ID = 20404
Scale = 1 + var(6)/4.0, 1 + var(6)/4.0
trans = add
alpha = 256 - IFElse(var(6)>=3,(var(6)-2)*80,0),256



;---------- WAIT ----------------------
[State 20400, WAIT - Clear]
type = RemoveExplod
triggerall = NumExplod(20412)
trigger1 = var(5) != [11,12]
ID = 20412

[State 20400, WAIT]
type = Explod
triggerall = !NumExplod(20412)
trigger1 = (var(5) = [11,12]) && var(6)
anim = 20412
ID = 20412
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 34 ,fvar(2) - 34),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1



;---------- Charging ------------------

[State 20400, Charging Clear]
type = RemoveExplod
triggerall = NumExplod(20413)
trigger1 = var(5) != 2
ID = 20413

[State 20400, Charging]
type = Explod
triggerall = !NumExplod(20413)
trigger1 = var(5) = 2 && var(6)
anim = 20413
ID = 20413
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 2 ,fvar(2) - 2),fvar(3) - 10
removetime = -1
scale = 0.6, 0.6
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, Charging Clear digis]
type = RemoveExplod
triggerall = NumExplod(20415)
trigger1 = var(5) != 2
trigger2 = fvar(32)
ID = 20415

[State 20400, Charging Clear digis]
type = RemoveExplod
triggerall = NumExplod(20416)
trigger1 = var(5) != 2
trigger2 = fvar(32)
ID = 20416

[State 20400, Charging Clear digis dot]
type = RemoveExplod
triggerall = NumExplod(20417)
trigger1 = var(5) != 2
ID = 20417

[State 20400, Charging Clear digis]
type = RemoveExplod
triggerall = NumExplod(20418)
trigger1 = var(5) != 2
trigger2 = fvar(32)
ID = 20418

[State 20400, Charging Clear digis precent]
type = RemoveExplod
triggerall = NumExplod(20419)
trigger1 = var(5) != 2
ID = 20419


[State 20400, Charging Tenth digi]
type = Explod
triggerall = !NumExplod(20415)
trigger1 = var(5) = 2 && var(6)
trigger1 = fvar(32) > 0 && fvar(32) < 1
anim = 20150 + Floor(fvar(32) * 10)
ID = 20415
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 20 ,fvar(2) - 84),fvar(3) + 4
removetime = -1
scale = 1.12, 1.12
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
trans = add
alpha = 256,256

[State 20400, Charging Oneth digi]
type = Explod
triggerall = !NumExplod(20416)
trigger1 = var(5) = 2 && var(6)
trigger1 = fvar(32) > 0 && fvar(32) < 1
anim = 20150 + Floor(fvar(32) * 100)%10
ID = 20416
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 42 ,fvar(2) - 64),fvar(3) + 4
removetime = -1
scale = 1.12, 1.12
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
trans = add
alpha = 256,256

[State 20400, Charging dot]
type = Explod
triggerall = !NumExplod(20417)
trigger1 = var(5) = 2 && var(6)
trigger1 = fvar(32) > 0 && fvar(32) < 1
anim = 20160
ID = 20417
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 59 ,fvar(2) - 47),fvar(3) + 4
removetime = -1
scale = 1.12, 1.12
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
trans = add
alpha = 256,256

[State 20400, Charging one tenth digi]
type = Explod
triggerall = !NumExplod(20418)
trigger1 = var(5) = 2 && var(6)
trigger1 = fvar(32) > 0 && fvar(32) < 1
anim = 20150 + (Floor(fvar(32) * 1000)%100)%10
ID = 20418
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 64 ,fvar(2) - 42),fvar(3) + 6
removetime = -1
scale = 0.8, 0.8
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
trans = add
alpha = 256,256

[State 20400, Charging one tenth digi]
type = Explod
triggerall = !NumExplod(20419)
trigger1 = var(5) = 2 && var(6)
trigger1 = fvar(32) > 0 && fvar(32) < 1
anim = 20161
ID = 20419
space = screen
facing = 1
pos = IFElse(facing = 1,fvar(1) + 84 ,fvar(2) - 20),fvar(3) + 4
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1
trans = add
alpha = 256,256


;------------- Universal Potential ----------

[State 20400, Potential INIT]
type = ParentVarset
triggerall = !PrevStateNo && !time
triggerall = var(6) = 0
trigger1 = (parent,var(21) & 4)
var(21) = var(21) - 4

[State 20400, Clear Potential Type]
type = varset
triggerall = var(20)
trigger1 = !var(29)
var(20) = 0

[State 20400, Potential Trigger less 30 precent]
type = varset
triggerall = Parent,Alive
triggerall = Parent,MoveType != H || Parent,StateNo = 5120
trigger1 = (1.0 * Parent,Life / Parent,LifeMax) < 0.3
trigger1 = var(29) := (60 * 20)
var(20) = 1 + (Parent,var(0) = [5,7])
persistent = 0;				;Only once

[State 20400, Potential Trigger Personal Actions]
type = varset
triggerall = Parent,Alive
triggerall = Parent,MoveType != H || Parent,StateNo = 5120
triggerall = NumHelper(20900) && var(20) != 3
trigger1 = Helper(20900),var(20)
trigger1 = var(29) := (60 * 20)
var(20) = 3
persistent = 1;				;Many Time

[State 20400, Update Parent Universal]
type = ParentVarset
triggerall = (parent,var(21) & 4)
triggerall = !var(29)
trigger1 = !(var(20) = [1,2])
var(21) = parent,var(21) - 4

[State 20400, Update Parent Universal]
type = ParentVarset
triggerall = !(parent,var(21) & 4)
trigger1 = (var(20) = [1,2])
var(21) = parent,var(21) + 4

[State 20400, Update Parent Personal]
type = ParentVarset
triggerall = (parent,var(21) & 8)
triggerall = !var(29)
trigger1 = !(var(20) = 3)
var(21) = parent,var(21) - 8

[State 20400, Update Parent Personal]
type = ParentVarset
triggerall = !(parent,var(21) & 8)
trigger1 = (var(20) = 3)
var(21) = parent,var(21) + 8


[State 20400, Potential Sound]
type = PlaySnd
trigger1 = var(29) = (60 * 20)
value = 20400,0
volumescale = 100
channel = 1
;abspan = 0

[State 20400, Potential Bar Clear]
type = RemoveExplod
triggerall = NumExplod(20420)
trigger1 = !var(29)
trigger2 = var(29) && var(29) = ((60 * 20)-8)
ID = 20420

[State 20400, Potential Bar INIT]; Long = 623
type = Explod
triggerall = var(20)
trigger1 = var(29) = (60 * 20)
anim = 20420 + 10*(facing = -1)
ID = 20420
space = Screen
pos = IFElse(facing = 1,0,ScreenWidth), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 20
vel = 623 / 8.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = none
;alpha = var(11),var(12)
sprpriority = -9
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20400, Potential Letter INIT]; Long = 623
type = Explod
triggerall = var(20)
trigger1 = var(29) = (60 * 20)
anim = (20420 + var(20)) + 10*(facing = -1)
ID = 20420
space = Screen
pos = IFElse(facing = 1,0,ScreenWidth), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 20
vel = 623 / 8.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = add
;alpha = var(11),var(12)
sprpriority = -8
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20400, Potential Bar Stable]; Long = 623
type = Explod
triggerall = var(20)
trigger1 = var(29) = ((60 * 20)-8)
anim = 20420 + 10*(facing = -1)
ID = 20420
space = Screen
pos = IFElse(facing = 1,0 + 623,ScreenWidth - 623), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 60 * 2 + 10
;vel = 623 / 20.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = none
;alpha = var(11),var(12)
sprpriority = -9
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20400, Potential Letter Stable]; Long = 623
type = Explod
triggerall = var(20)
trigger1 = var(29) = ((60 * 20)-8)
anim = (20420 + var(20)) + 10*(facing = -1)
ID = 20420
space = Screen
pos = IFElse(facing = 1,0 + 623,ScreenWidth - 623), Floor(ScreenHeight * 0.5)
;bindID = ID
;bindtime = -1
facing = 1
removetime = 60 * 2 + 10
;vel = 623 / 20.0 * facing , 0
;accel = -0.04  * facing, 0.04
supermovetime = 65535
pausemovetime = 65535
scale = 1 , 1
angle = 0
trans = add
;alpha = var(11),var(12)
sprpriority = -8
ownpal = 1
;remappal = 7721,0
ignorehitpause = 0

[State 20400, Potential Bar Stable Fad out]
type = ModifyExplod
triggerall = NumExplod(20420)
trigger1 = var(29) = [1062,1072]
ID = 20420
trans = add
alpha = 25*(var(29)-1062), 256 - 25*(var(29)-1062)


[State 20400, Potential Char Flashing Clear]
type = RemoveExplod
triggerall = NumExplod(20406)
trigger1 = !var(29)
ID = 20406

[State 20400, Potential Char Flashing]
type = Explod
triggerall = !NumExplod(20406)
trigger1 = var(29)
anim = 20406
ID = 20406
space = screen
facing = facing
pos = IFElse(facing = 1,fvar(1) ,fvar(2) ),fvar(3)
removetime = -1
scale = 1.0, 1.0
sprpriority = -3
trans = add
alpha = 256,256
supermovetime = 65535
pausemovetime = 65535
ontop = 0
shadow = 0
ownpal = 1

[State 20400, Potential Char Flashing]
type = ModifyExplod
triggerall = NumExplod(20406)
trigger1 = var(29)
ID = 20406
trans = add
alpha = Floor(160 * Abs(Sin(var(29)* 8 * Pi/180.0))),256

;----------- END Universal Potential ---------

;-------------- End and debug ---------------
[State 20400, End]
type = DestroySelf
trigger1 = RoundState != [1,3]
removeexplods = 1
recursive = 1

[State 20400, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Phase=%d | COUNT=%d | Type=%d | fvar(31)=%d | Potenal:%d"
params = var(5), var(6),var(19), fvar(31), var(29),
ignorehitpause = 1

[State 20400, Run Counter]
type = varadd
triggerall = RoundState = 2
trigger1 = var(6) < 16777215
var(6) = 1
ignorehitpause = 1

[State 20400, Potential Tick Counter] 
type = varadd
trigger1 = var(29) > 0
var(29) = -1