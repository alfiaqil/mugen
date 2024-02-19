
[Statedef 6000]
type    = A
movetype= H
physics = N
anim = 5012
velset = 0,0

[State 6000, 1]
type = ChangeState
trigger1 = HitShakeOver
value = 6001

[State 6000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 6000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 6000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------

[Statedef 6001]
type    = A
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 6001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 6001, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 6001, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059]
trigger1 = Anim != 5090
value = 5035

[State 6001, 4]
type = ChangeAnim
triggerall = AnimTime = 0
trigger1 = anim = 5030
trigger2 = anim = 5035
value = 5050

[State 6001, 4]
type = ChangeAnim
trigger1 = anim = 5030 && time = 10
trigger2 = anim = 5035 && time = 10
value = 5050

[State 6001, 5]
type = EnvShake
trigger1 = (Vel y > 0) && (Pos y >= 5)
time = 20
freq = 60
ampl = -5
persistent = 0

[State 6001, 6]
type = changestate
trigger1 = BackEdgeDist <= 10
value = 6002

[State 6001, 7]
type = changestate
trigger1 = FrontEdgeDist <= 10
value = 6003

[State 6001, 8]
type = ChangeState
trigger1 = (Vel y > 0) && (Pos y >= 5)
trigger1 = alive
value = 6005

[State 6001, 9]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
trigger1 = alive = 0
value = 5100

;---------------------------------------------------------
; Custom VS Series Hit Back - Wall Explod Trigger (1)
[Statedef 6002]
type    = A
movetype= H
physics = N

[State 6002, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3


[State 6002, 3]
type = ChangeState
trigger1 = time = 1
value = 6004

[State 6002, 4]
type = ForceFeedback
trigger1 = time = [30,72]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------
; Custom VS Series Hit Back - Wall Explod Trigger (2)
[Statedef 6003]
type    = A
movetype= H
physics = N

[State 6003, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = front
sprpriority = 3


[State 6003, 3]
type = ChangeState
trigger1 = time = 1
value = 6004

[State 6003, 4]
type = ForceFeedback
trigger1 = time = [30,72]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------
; Custom VS Series Hit Back - Fly Back Continue
[Statedef 6004]
type    = A
movetype= H
physics = N
ctrl = 0

[State 6004, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 6004, 2]
type = ChangeAnim
triggerall = AnimTime = 0
trigger1 = anim = 5030
trigger2 = anim = 5035
value = 5050

;[State 6004, 3]
;type = EnvShake
;trigger1 = (Vel y > 0) && (Pos y >= 15)
;time = 10

[State 6004, 4]
type = ChangeState
trigger1 = (Vel y > 0) && (Pos y >= 15)
trigger1 = alive
value = 6005

[State 6004, 5]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
trigger1 = alive = 0
value = 5100

;---------------------------------------------------------
; Custom VS Series Hit Back - Recover
[Statedef 6005]
type    = A
movetype= I
physics = N
anim = 5100


[State 192, 0]; Too lazy to rip the actual ground shock
type = GameMakeAnim
trigger1 = !time
pos = 0,0
value = 62

[State 192, 0]
type = PlaySnd
trigger1 = !time
value = f7, 0
volume = -50

[State 6005, 0]
type = ChangeAnim
trigger1 = Time = 3
trigger1 = anim = 5100
value = 5200

[State 6005, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 6005, 2]
type = VelSet
trigger1 = Time = 0
y = -3

[State 6005, 3]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x > 0
x = 3

[State 6005, 4]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x < 0
x = -3

[State 6005, 5]
type = VelAdd
trigger1 = 1
y = .4

[State 6005, 6]
type = PosSet
trigger1 = Time = 0
y = 0

[State 6005, 7]
type = NotHitBy
trigger1 = 1
value = SCA
time = 2

[State 6005, 8]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 52
ctrl = 1
