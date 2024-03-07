;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Attempt X
[Statedef 1000]
type = S
movetype = A
physics = S
poweradd = 20
sprpriority = 2
velset = 0,0
anim = Var(5)+1000
ctrl = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 1

[State 1000, HitDef]
type = HitDef
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1001
p2stateno = 1002
fall = 1
numhits = 0
getpower = 0,0

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi X
[Statedef 1001]
type = S
movetype = A
physics = N
poweradd = 0
anim = Var(5)+1001
ctrl = 0

[State 1001, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,1
channel = 0

[State 1001, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 1001, Bind 2-3]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
pos = 35, 0

[State 1001, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -3, -20

[State 1001, Bind 5-12]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
pos = -3, -20

[State 1001, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = -5, -20

[State 1001, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = -5, -16

[State 1001, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = -5, -65

[State 1001, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0, -55

[State 1001, Bind 17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 0, -55

[State 1001, Bind 18-20]
type = TargetBind
trigger1 = AnimElem = 18
trigger1 = AnimElem = 19
trigger1 = AnimElem = 20
pos = 0, -22

[State 1001, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
trigger9 = AnimElem = 13
trigger10 = AnimElem = 14
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
value = 1

[State 1001, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
trigger10 = AnimElem = 15
value = -1

[State 1001, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = -6

[State 1001, Veladd]
type = Veladd
trigger1 = AnimElem = 10
y = .9

[State 1001, VelSet]
type = VelSet
trigger1 = AnimElem = 12
y = -2

[State 1001, VelSet]
type = VelSet
trigger1 = AnimElem = 14
y = .7

[State 1001, VelSet]
type = Velset
trigger1 = AnimElem = 15
y = 2.75

[State 1001, VelSet]
type = Velset
trigger1 = AnimElem = 16
y = 5.5

[State 1001, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
y = 2

[State 1001, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -10

[State 1001, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = -7
y = -8

[State 1001, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= (Pos Y + Vel Y) >= 50;pos y > -vel y
value = 1003
ctrl = 0

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi X - State for Opponent
[Statedef 1002]
type = S
movetype = H
physics = N
sprpriority = 0

[State 1002, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1002

[State 1002, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1002, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi End
[Statedef 1003]
type = S
movetype = A
physics = N
poweradd = 100
anim = Var(5)+1003
ctrl = 0

[State 1003, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1
channel = 0

[State 1003, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -90

[State 1003, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 1004

[State 1003, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8020
ID = 1003
postype = p2
pos = 0, 2
bindtime = 1
sprpriority = 9
ownpal = 1

[State 1003, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 16
freq = 60
ampl = 8
persistent = 0

[State 1003, Velset]
type = Velset
trigger1 = Time = 0
y = 0

[State 1003, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1003, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1099
ctrl = 0

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Opponent End
[Statedef 1004]
type = S
movetype = H
physics = N
velset = 0,0

[State 1004, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1004

[State 1004, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1004, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = -2

[State 1004, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Attempt Y
[Statedef 1010]
type = S
movetype = A
physics = S
poweradd = 20
sprpriority = 2
velset = 0,0
anim = Var(5)+1010
ctrl = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 1

[State 1010, HitDef]
type = HitDef
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1011
p2stateno = 1012
fall = 1
numhits = 0
getpower = 0,0

[State 1010, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>= 0
movetype = I

[State 1010, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Y
[Statedef 1011]
type = S
movetype = A
physics = N
poweradd = 0
anim = Var(5)+1001
ctrl = 0

[State 1011, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,1
channel = 0

[State 1011, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 1011, Bind 2-3]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
pos = 35, 0

[State 1011, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -3, -20

[State 1011, Bind 5-12]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
pos = -3, -20

[State 1011, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = -5, -20

[State 1011, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = -5, -16

[State 1011, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = -5, -65

[State 1011, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0, -55

[State 1011, Bind 17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 0, -55

[State 1011, Bind 18-20]
type = TargetBind
trigger1 = AnimElem = 18
trigger1 = AnimElem = 19
trigger1 = AnimElem = 20
pos = 0, -22

[State 1011, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
trigger9 = AnimElem = 13
trigger10 = AnimElem = 14
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
value = 1

[State 1011, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
trigger10 = AnimElem = 15
value = -1

[State 1011, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = -9

[State 1011, Veladd]
type = Veladd
trigger1 = AnimElem = 10
y = .9

[State 1011, VelSet]
type = VelSet
trigger1 = AnimElem = 12
y = -5

[State 1011, VelSet]
type = VelSet
trigger1 = AnimElem = 14
y = .7

[State 1011, VelSet]
type = Velset
trigger1 = AnimElem = 15
y = 2.75

[State 1011, VelSet]
type = Velset
trigger1 = AnimElem = 16
y = 6.5

[State 1011, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
y = 3

[State 1011, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -10

[State 1011, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = -7
y = -8

[State 1011, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= (Pos Y + Vel Y) >= 50;pos y > -vel y
value = 1013
ctrl = 0

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Y - State for Opponent
[Statedef 1012]
type = S
movetype = H
physics = N
sprpriority = 0

[State 1012, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1002

[State 1012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1012, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi End
[Statedef 1013]
type = S
movetype = A
physics = N
poweradd = 100
anim = Var(5)+1003
ctrl = 0

[State 1003, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1
channel = 0

[State 1013, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -110

[State 1013, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 1004

[State 1013, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8020
ID = 1013
postype = p2
pos = 0, 2
bindtime = 1
sprpriority = 9
ownpal = 1

[State 1013, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 16
freq = 60
ampl = 8
persistent = 0

[State 1013, Velset]
type = Velset
trigger1 = Time = 0
y = 0

[State 1013, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1013, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1099
ctrl = 0

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Attempt EX
[Statedef 1020]
type = S
movetype = A
physics = S
poweradd = -500
sprpriority = 2
velset = 0,0
anim = Var(5)+1020
ctrl = 0

[State 1020, AfterImage]
type = AfterImage
trigger1 = Time = 0
length = 10
PalBright = 0,0,0
PalContrast = 160,160,32
palPostBright = 0,0,0
PalAdd = 0,0,0
PalMul = 0.75,0.75,0.75
TimeGap = 1
FrameGap = 5
Trans = Add
time = 20

[State 1020, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 37
time = 2

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 25,0
channel = 2

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 1

[State 1020, HitDef]
type = HitDef
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1021
p2stateno = 1022
fall = 1
numhits = 0
getpower = 0,0

[State 1020, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>= 0
movetype = I

[State 1020, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi EX
[Statedef 1021]
type = S
movetype = A
physics = N
poweradd = 0
anim = Var(5)+1001
ctrl = 0

[State 1021, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,2
channel = 1

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,1
channel = 0

[State 1020, AfterImage]
type = AfterImage
trigger1 = Time = 0
length = 10
PalBright = 0,0,0
PalContrast = 160,160,32
palPostBright = 0,0,0
PalAdd = 0,0,0
PalMul = 0.75,0.75,0.75
TimeGap = 1
FrameGap = 5
Trans = Add
time = 95

[State 1021, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 1021, Bind 2-3]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
pos = 35, 0

[State 1021, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -3, -20

[State 1021, Bind 5-12]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
pos = -3, -20

[State 1021, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = -5, -20

[State 1021, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = -5, -16

[State 1021, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = -5, -65

[State 1021, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0, -55

[State 1021, Bind 17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 0, -55

[State 1021, Bind 18-20]
type = TargetBind
trigger1 = AnimElem = 18
trigger1 = AnimElem = 19
trigger1 = AnimElem = 20
pos = 0, -22

[State 1021, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
trigger9 = AnimElem = 13
trigger10 = AnimElem = 14
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
value = 1

[State 1021, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
trigger10 = AnimElem = 15
value = -1

[State 1021, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = -13

[State 1021, Veladd]
type = Veladd
trigger1 = AnimElem = 10
y = .9

[State 1021, VelSet]
type = VelSet
trigger1 = AnimElem = 12
y = -8

[State 1021, VelSet]
type = VelSet
trigger1 = AnimElem = 14
y = .7

[State 1021, VelSet]
type = Velset
trigger1 = AnimElem = 15
y = 2.75

[State 1021, VelSet]
type = Velset
trigger1 = AnimElem = 16
y = 7.5

[State 1021, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
y = 4

[State 1021, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -10

[State 1021, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = -7
y = -8

[State 1021, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= (Pos Y + Vel Y) >= 50;pos y > -vel y
value = 1023
ctrl = 0

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi EX - State for Opponent
[Statedef 1022]
type = S
movetype = H
physics = N
sprpriority = 0

[State 1022, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1002

[State 1022, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1022, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi End
[Statedef 1023]
type = S
movetype = A
physics = N
poweradd = 0
anim = Var(5)+1003
ctrl = 0

[State 1023, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1
channel = 0

[State 1023, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -135

[State 1023, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 1024

[State 1023, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8020
ID = 1023
postype = p2
pos = 0, 2
bindtime = 1
sprpriority = 9
ownpal = 1

[State 1023, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 16
freq = 70
ampl = 10
persistent = 0

[State 1023, Velset]
type = Velset
trigger1 = Time = 0
y = 0

[State 1023, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1023, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1099
ctrl = 0

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Opponent End
[Statedef 1024]
type = S
movetype = H
physics = N
velset = 0,0

[State 1024, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1004

[State 1024, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = -3

[State 1024, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;---------------------------------------------------------------------------
; Saiunricchu Mozuotoshi Jump Back
[Statedef 1099]
type = S
movetype = I
physics = N
poweradd = 0
anim = Var(5)+1099
ctrl = 0

[State 1099, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
y = -15

[State 1099, VelSet]
type = VelSet
trigger1 = Time = 4
X = -3.5
Y = -5

[State 1099, VelAdd]
type = VelAdd
trigger1 = Time > 4
Y = 0.5

[State 1099, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = (Pos Y + Vel Y) >= 7
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Kikkajyunikou Jibashiri X
[Statedef 1100]
type = S
movetype = I
physics = S
poweradd = 50
velset = 0,0
anim = Var(5)+1100
ctrl = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 15

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 7

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 12, = 1
x = 3

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kikkajyunikou Jibashiri Y
[Statedef 1110]
type = S
movetype = I
physics = S
poweradd = 50
velset = 0,0
anim = Var(5)+1110
ctrl = 0

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 23

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 15

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 7

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 12, = 1
x = 3

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 0

[State 1110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kikkajyunikou Jibashiri EX
[Statedef 1120]
type = S
movetype = I
physics = S
poweradd = -500
velset = 0,0
anim = Var(5)+1120
ctrl = 0

[State 1120, AfterImage]
type = AfterImage
trigger1 = Time = 0
length = 10
PalBright = 0,0,0
PalContrast = 160,160,32
palPostBright = 0,0,0
PalAdd = 0,0,0
PalMul = 0.75,0.75,0.75
TimeGap = 1
FrameGap = 5
Trans = Add
time = 24

[State 1120, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 22
time = 2

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 25,0
channel = 2

[State 1120, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 27

[State 1120, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(14) < 0
value = 0

[State 1120, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 7

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 12, = 1
x = 3

[State 1120, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 0

[State 1120, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Utsusemi Air
[Statedef 1150]
type = A
movetype = I
physics = N
poweradd = 50
anim = Var(5)+1150
ctrl = 0

[State 1150, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1150, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1159
ctrl = 0

;---------------------------------------------------------------------------
; Utsusemi Air Landing
[Statedef 1159]
type = C
movetype = I
physics = N
poweradd = 50
anim = Var(5)+1159
ctrl = 0

[State 1159, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = 11

[State 1159, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1159, GameMakeAnim]
type = GameMakeAnim
trigger1 = AnimElem = 5
value = 120
pos = 0,0

[State 1159, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0

[State 1150, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Gekkouippa Makigeri A
[Statedef 1200]
type = S
movetype = A
physics = S
poweradd = 20
juggle = 7
velset = 0,0
anim = Var(5)+1200
ctrl = 0

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 16

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,0
channel = 1

[State 1200, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
damage = 85, 5
animtype = Back
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -20, -50
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.5, -10
airguard.velocity = -2,-1
fall = 1
fall.recover = 1
fall.recovertime = 120
air.type = High
air.hittime = 12
air.velocity = -1.5, -7
yaccel = .5
getpower = 95,40

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Gekkouippa Makigeri B
[Statedef 1210]
type = S
movetype = A
physics = S
poweradd = 20
juggle = 6
velset = 0,0
anim = Var(5)+1210
ctrl = 0

[State 1210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 16

[State 1210, Velset]
type = Velset
trigger1 = AnimElem = 5
x = 5

[State 1210, Velset]
type = Velset
trigger1 = AnimElem = 6, = 1
x = 0

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,0
channel = 1

[State 1210, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
damage = 75, 5
animtype = Back
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -20, -50
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.5, -10
airguard.velocity = -2,-1
fall = 1
fall.recover = 1
fall.recovertime = 120
air.type = High
air.hittime = 12
air.velocity = -1.5, -7
yaccel = .5
getpower = 90,35

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 1210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Gekkouippa Makigeri EX
[Statedef 1220]
type = S
movetype = A
physics = S
poweradd = -500
juggle = 6
velset = 0,0
anim = Var(5)+1220
ctrl = 0

[State 1220, AfterImage]
type = AfterImage
trigger1 = Time = 0
length = 10
PalBright = 0,0,0
PalContrast = 160,160,32
palPostBright = 0,0,0
PalAdd = 0,0,0
PalMul = 0.75,0.75,0.75
TimeGap = 1
FrameGap = 5
Trans = Add
time = 52

[State 1220, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 54
time = 2

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 25,0
channel = 2

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,1
channel = 1

[State 1220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 16

[State 1220, VelSet]
type = VelSet
trigger1 = AnimElem = 13
x = 5

[State 1220, VelSet]
type = VelSet
trigger1 = AnimElem = 16, = 2
x = 0

[State 1220, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
damage = 40, 5
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 6, 6
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -20, -50
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 14
ground.hittime  = 20
ground.velocity = -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-4
air.fall = 1
getpower = 0,0

[State 1220, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 13
attr = S, SA
damage = 37, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 0
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -20, -50
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.5, -10
airguard.velocity = -2,-1
air.type = High
air.velocity = -1.5, -7
fall = 1
air.fall = 1
fall.animtype = Hard
fall.recover = 0
yaccel = .5
getpower = 0,0

[State 1220, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 14
attr = S, SA
damage = 35, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -25, -120
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.5, -10
airguard.velocity = -2,-1
fall = 1
fall.recover = 1
fall.recovertime = 120
air.type = High
air.velocity = -1.5, -7.5
fall = 1
air.fall = 1
fall.animtype = Hard
fall.recover = 0
yaccel = .5
getpower = 0,0

[State 1220, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 15
attr = S, SA
damage = 35, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
sparkno = S8020
guard.sparkno =	S8400
sparkxy = -8, -146
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.5, -10
airguard.velocity = -2,-1
fall = 1
fall.recovertime = 50
air.type = High
air.velocity = -1.5, -8
fall = 1
air.fall = 1
fall.animtype = Hard
fall.recover = 0
yaccel = .5
getpower = 0,0

[State 1220, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(16)>= 0
movetype = I

[State 1220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
