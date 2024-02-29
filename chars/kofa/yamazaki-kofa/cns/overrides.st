[Statedef 0]
type = S
physics = S
sprpriority = 0
[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger1 = !Time
trigger2 = Anim = 5 && !AnimTime
value = 0
[State 0, 2]
type = VelSet
trigger1 = !Time
y = 0
[State 0, StopSND]
type = StopSND
trigger1 = 1
channel = 3
[State 0, 3]
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0
[Statedef 20]
type    = S
physics = S
sprpriority = 0
[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3
[State 20, WalkF Velocity]
type = VelSet
trigger1 = Command = "holdfwd"
x = Const(velocity.walk.fwd.x)
[State 20, WalkB Velocity]
type = VelSet
trigger1 = Command = "holdback"
x = Const(velocity.walk.back.x)
[State 20, Walk Forward Anim]
type = ChangeAnim
triggerall = Vel x > 0
trigger1 = Anim != 20 && Anim != 5 
trigger2 = Anim = 5 && !AnimTime 
value = 20 
[State 20, Walk Backward Anim]
type = ChangeAnim
triggerall = Vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 21 
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3
[State 40, AI]
type = VarSet
triggerall = var(33) = 1
trigger1 = !Time
trigger1 = p2bodydist x > 0
var(1) = 2
[State 40, Invincible]
type = NotHitBy
trigger1 = !Time
value = SC,NT
[State 40, 4]
type = VarSet
trigger1 = !Time
var(1) = 0
[State 40, 5]
type = VarSet
trigger1 = Command = "holdfwd"
trigger1 = var(1) != 2
var(1) = 1
[State 40, 6]
type = VarSet
trigger1 = Command = "holdback"
trigger1 = var(1) != -2
var(1) = -1
[State 40, 7]
type = VarSet
triggerall = !Time
triggerall = Command = "holdfwd"
trigger1 = Command = "longjump"
trigger2 = PrevStateNo = 100
trigger3 = Prevstateno = [10,12]
var(1) = 2
[State 40, 8]
type = VarSet
triggerall = !Time
triggerall = Command = "holdback"
trigger1 = Command = "longjump"
trigger2 = Prevstateno = [10,12]
var(1) = -2
[State 40, 9]
type = StopSnd
trigger1 = !Time
channel = 1
[State 40, 10]
type = ChangeState
triggerall = !AnimTime 
trigger1 = Command != "holdup"
value = 243
[State 40, 11]
type = VelSet
trigger1 = !AnimTime
x = IfElse(var(1)= 0, Const(velocity.jump.neu.x), IfElse(var(1)>0, Const(velocity.jump.fwd.x),  Const(velocity.jump.back.x)))
y = Const(velocity.jump.y)
[State 40, 13]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1
[Statedef 50]
type    = A
physics = A
ctrl = 1
[State 50, Fwd]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = 2
x = 4
[State 50, Back]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = -2
x = -4
[State 50, shadow]
type = PlaySnd
triggerall = !Time
trigger1 = var(1) = -2
trigger2 = var(1) = 2
value = 1,4
volume = 0
[State 50, 3]
type = Afterimage
triggerall = Time = 1
triggerall = vel x != 0
trigger1 = var(1) = -2
trigger2 = var(1) = 2
time = 10
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
[State 50, Control Limiter]
type = ctrlset
trigger1 = !Time
trigger1 = prevstateno = 5040
trigger1 = prevstateno = 5210
value = 0
[State 50, Play Sound] 
type = PlaySnd
triggerall = !Time
trigger1 = var(1) != -2
trigger2 = var(1) != 2
value = 1,3
[State 50, 1]
type = VarSet
trigger1 = !Time
sysvar(1) = 0
[State 50, 2]
type = ChangeAnim
trigger1 = !Time
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))
[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3
[Statedef 243]
type    = A
physics = N
anim = 41
velset = 0, -6.8
ctrl = 1
[State 243, Control Limiter] 
type = ctrlset
trigger1 = !Time
trigger1 = prevstateno = 5040
trigger1 = prevstateno = 5210
value = 0
[State 243, 1]
type = PlaySnd
trigger1 = !Time
trigger1 = var(1) != -2
trigger1 = var(1) != 2
value = 1,3
volume = 0
[State 243, 2]
type = PlaySnd
triggerall = !Time
trigger1 = var(1) = -2
trigger2 = var(1) = 2
value = 1,4
volume = 0
[State 243, 3] 
type = Afterimage
triggerall = Time = 1
triggerall = vel x != 0
trigger1 = var(1) = -2
trigger2 = var(1) = 2
time = 10
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
[State 243, 4] 
type = Afterimage
trigger1 = Time = 11
!Time
[State 243, PUSH]
type = playerpush
triggerall = anim = 41
triggerall = p2statetype != A
triggerall = animelem = 2, >= 0
triggerall = animelem = 5, <= 0
trigger1 = var(1) = -2
trigger2 = var(1) = 2
value = 0
[State 243, 6]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = 1
x = 3
[State 243, 8]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = -1
x = -3
[State 243, 7]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = 2
x = 4
[State 243, 9]
type = VelSet
trigger1 = !Time
trigger1 = Var(1) = -2
x = -4
[State 243, 9]
type = Veladd
trigger1 = 1
y = .55
[State 243, 15]
type = Changestate
trigger1 = pos y >= 5
value = 52
ctrl = 0
[Statedef 52]
type    = S
physics = S
anim = 47
ctrl = 0
velset = 0,0
[State 52, 1]
type = VelSet
trigger1 = !Time
y = 0
[State 52, 2]
type = PosSet
trigger1 = !Time
y = 0
[State 52, 3]
type = PlaySnd
trigger1 = !Time
value = 1,5
[State 52, 4]
type = CtrlSet
trigger1 = time = 1
value = 1
[State 52, 5]
type = turn
triggerall = time = 1 && P2Dist x < 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
[State 52, 6]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
[Statedef 100]
type = S
physics = S
anim = 100
ctrl = 0
[State 100, 2]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 3
loop = 1
[State 100, 3]
type = StopSnd
triggerall = var(33) != 1
trigger1 = AnimElem = 2, >= 0
trigger1 = stateno != 100 && command != "holdfwd"
channel = 3
[State 100, VELSET]
type = VelSet
trigger1 = time > 2
x = const(velocity.run.fwd.x)
[State 100, Control]
type = Ctrlset
triggerall = time >= 12
trigger1 = var(33) = 1 
trigger2 = Command != "holdfwd"
trigger3 = command = "holdup" 
trigger4 = command = "holdback" 
value = 1 
[State 100, 5]
type = ChangeState
triggerall = var(33) = 1
triggerall = time >=12
triggerall = p2movetype != H
trigger1 = P2BodyDist x <= 10 
trigger2 = P2MoveType = A
value = 101
ctrl = 1
[State 100, SPECIAL]
type = AssertSpecial
trigger1 = 1
flag = NoWalk 
[State 100, Change State]
type = ChangeState
triggerall = time >= 12
trigger1 = var(33) != 1 && Command != "holdfwd"
value = 101
ctrl = 1
[Statedef 101]
type = S
physics = S
velset = 0,0
ctrl = 0
[State 101, Velocity]
type = VelMul
trigger1 = !Time
x = 0
y = 0
[State 101, CHANGE ANIMATION]
type = ChangeAnim
trigger1 = !Time
trigger1 = anim != 101
value = 47
[State 101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
[Statedef 105]
type = S
physics = S
anim = 47
velset = 0
ctrl = 0
[State 105, NOTHITBY]
type = NotHitBy
trigger1 = 1
value = SC, AT
[State 105, Next]
type = ChangeState
trigger1 = !AnimTime
value = 106
[Statedef 106]
type = A
physics = N
anim = 105
[State 106, Dash Velocities]
type = VelSet
trigger1 = !Time
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 106, Dash Back Sound]
type = PlaySnd
trigger1 = !Time
value = 1,6
[State 106, Friction]
type = veladd
trigger1 = time = 10
x = .1
[State 106, Gravity]
type = VelAdd
trigger1 = Time > 2
y = .8
[State 106, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
[Statedef 107]
type = S
physics = S
anim = 107
velset = 0,0
[State 107, 1]
type = PosSet
trigger1 = !Time
y = 0
[State 107, 2]
type = PlaySnd
trigger1 = !Time
value = 1,5
[State 107, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
[Statedef 5071]
type    = A
movetype= H
physics = N
[State 5071, Bounce]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1
[State 5071, Accel]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)
[State 5071, Recover]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200
[State 5071, Bounce]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 5100
[Statedef 5201]
type    = S
movetype= H
physics = S
anim = 5200
ctrl = 0
[State 5201, Yamazaki SND]
type = PlaySnd
trigger1 = !Time
value = 0,0
channel = 0
[State 5201, Turn]
type = Turn
trigger1 = !Time
trigger1 = P2Dist X < -5
[State 5201, VelSet]
type = VelSet
trigger1 = !Time
y = 0
[State 5201, Roll Back Vel]
type = VelSet
trigger1 = Time = [0,12]
x = -4
[State 5201, PosSet]
type = PosSet
trigger1 = !Time
y = 0
[State 5201, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5000, 1]
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)
[State 5000, 2]
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030
[State 5000, 3]
type = ChangeAnim
trigger1 = !Time
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)
[State 5000, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim
[State 5000, 5]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a
[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001
[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030
[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square
[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3
[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140
[Statedef 5001]
type    = S
movetype= H
physics = S
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5001, 1]
type = HitVelSet
trigger1 = !Time
x = 1
[State 5001, 2]
type = ChangeAnim
trigger1 = !AnimTime
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10
[State 5001, 3]
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6
[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0
[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1
[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5010, 1]
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)
[State 5010, 2]
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030
[State 5010, 3]
type = ChangeAnim
trigger1 = !Time
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)
[State 5010, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim
[State 5010, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5011
[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 5030
[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square
[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3
[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140
[Statedef 5011]
type    = C
movetype= H
physics = C
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5011, 1]
type = HitVelSet
trigger1 = !Time
x = 1
[State 5011, 2]
type = ChangeAnim
trigger1 = !AnimTime
value = 5025 + GetHitVar(animtype)
[State 5011, 3]
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6
[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0
[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1
[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5020, 1]
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)
[State 5020, 2]
type = ChangeAnim
trigger1 = !Time
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030
[State 5020, 3]
type = ChangeAnim
trigger1 = !Time
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)
[State 5020, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim
[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030
[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square
[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3
[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5030, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)
[State 5030, 2]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1
[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5040
[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5050
[State 5030, 5]
type = ChangeState
trigger1 = !AnimTime
value = 5035
[Statedef 5035]
type    = A
movetype= H
physics = N
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5035, 1]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059]
trigger1 = Anim != 5090
value = 5035
[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)
[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = Vel Y > 0
trigger3 = Pos Y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040
[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = Vel Y > 0
trigger3 = Pos Y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050
[Statedef 5040]
type    = A
movetype= H
physics = N
ctrl = 0
[State 5040, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA
[State 5040, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050
[State 5040, 2]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim != 5040
trigger2 = !Time
trigger2 = Anim != 5035
value = 5040
[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I
[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)
[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
[Statedef 5050]
type    = A
movetype= H
physics = N
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5050, 1]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
trigger2 = !Time
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050
[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0
[State 5050, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)
[State 5050, 4]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200
[State 5050, 5]
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210
[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070
[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071
[State 5070, 3]
type = ForceFeedback
trigger1 = !Time
time = 12
waveform = sinesquare
ampl = 140
[Statedef 5071]
type    = A
movetype= H
physics = N
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5071, 1]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1
[State 5071, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)
[State 5071, 3]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5080, 1]
type = VarSet
trigger1 = !Time
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)
[State 5080, 2]
type = VarAdd
trigger1 = !Time
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10
[State 5080, 3]
type = VarSet
trigger1 = !Time
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030
[State 5080, 3]
type = ChangeAnim
trigger1 = 1
value = sysvar(2)
[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081
[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030
[Statedef 5081]
type    = L
movetype= H
physics = C
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5081, 1]
type = HitVelSet
trigger1 = !Time
x = 1
[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0
[State 5081, 3]
type = VarSet
trigger1 = !Time
sysvar(0) = 1
[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110
[Statedef 5100]
type    = L
movetype= H
physics = N
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5100, 1]
type = VelSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1
[State 5100, EnvShake]
type = FallEnvShake
trigger1 = !Time
[State 5100, Var]
type = VarSet
trigger1 = !Time
sysvar(1) = floor(vel y)
[State 5100, 2]
type = ChangeAnim
triggerall = !Time
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100
[State 5100, 3]
type = ChangeAnim
trigger1 = !Time
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)
[State 5100, 4]
type = PosSet
trigger1 = !Time
y = 0
[State 5100, 5]
type = VelSet
trigger1 = !Time
y = 0
[State 5100, 6]
type = VelMul
trigger1 = !Time
x = 0.75
[State 5100, 7]
type = ChangeState
trigger1 = !Time
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110
[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10
[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3
[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 5100, 11]
type = PosFreeze
trigger1 = 1
[State 5100, 12]
type = ChangeState
trigger1 = !AnimTime
value = 5101
[State 5100, 13]
type = ForceFeedback
trigger1 = !Time
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20
[Statedef 5101]
type    = L
movetype= H
physics = N
[State 5000, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5101, 1]
type = ChangeAnim
triggerall = !Time
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160
[State 5101, 2]
type = ChangeAnim
triggerall = !Time
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)
[State 5101, 3]
type = HitFallVel
trigger1 = !Time

[State 5101, 4]
type = velset
triggerall = fvar(36) = 1
trigger1 = Time = 0
x = -1.5
y = -7.2

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .6

[State 5101, 6]
type = ChangeState
trigger1 = Pos Y >= -8 && Vel Y > 0
value = 5110

[Statedef 5110]
type    = L
movetype= H
physics = N
[State 5150, 1]
type = PosAdd
trigger1 = PrevStateNo = 5130
trigger1 = Anim = 5112
x = 80
persistent = 0
[State 5150, StopSnd]
type = StopSnd
trigger1 = 1
channel = 3
[State 5110, EnvShake]
type = FallEnvShake
trigger1 = !Time
[State 5110, 1]
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)
[State 5110, 2]
type = ChangeAnim
triggerall = !Time
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170
[State 5110, 3]
type = ChangeAnim
triggerall = !Time
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)
[State 5110, 4]
type = HitFallDamage
trigger1 = !Time
[State 5110, 5]
type = PosSet
trigger1 = !Time
y = 0
[State 5110, Var]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)
[State 5110, 6]
type = PlaySnd
trigger1 = !Time
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 5110, 7]
type = GameMakeAnim
trigger1 = !Time
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10
[State 5110, 8]
type = VelSet
trigger1 = !Time
y = 0
[State 5110, 9]
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = !AnimTime
trigger2 = SysVar(0)
value = 5110 + (anim % 10)
[State 5110, 10]
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = !AnimTime
trigger2 = SysVar(0)
value = 5110
[State 5110, 11]
type = ChangeState
triggerall = !alive
trigger1 = !AnimTime
trigger2 = SysVar(0)
trigger3 = Anim = [5110,5119]
value = 5150
[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = !Time
sysvar(0) = 0
[State 5110, 13]
type = VelMul
trigger1 = 1
x = 0.85
[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = !Time
time = 8
ampl = 240
waveform = sine
[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = !Time
ampl = 200, 7, -.467
time = 30
waveform = sine
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3
value = 5112
[State 5150, 1]
type = ChangeAnim
triggerall = !Time
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140
[State 5150, 3]
type = ChangeAnim
trigger1 = !Time
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)
[State 5150, 4]
type = ChangeAnim
persistent = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10
[State 5150, 5]
type = ChangeAnim
trigger1 = !Time
trigger1 = PrevStateNo != 133
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110
[State 5150, 6]
type = VelMul
trigger1 = 1
x = 0.85
[State 5150, 7]
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0
[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[Statedef 5900]
type = S
[State 5900, Turns Mode Intro]
type = ChangeState
trigger1 = teammode = turns
trigger1 = roundno > 1
trigger1 = roundsexisted <= 0
trigger1 = roundstate = 0
value = 191
[State 5900, 3]
type = ChangeState
trigger1 = roundno = 1
value = 190
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0
[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
