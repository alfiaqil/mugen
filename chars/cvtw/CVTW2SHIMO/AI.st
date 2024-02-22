;STANDING
[Statedef 99900]
type = S
physics = S
moveType = I
ctrl = 0
sprpriority = 0
FACEP2 = 1

[State 0, 2]
type = VelSet
trigger1 = !Time
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim != 0
value = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = IsHelper
			[STATE 200, END]
TYPE = CHANGESTATE
trigger1 = RoundState != 2 
VALUE = 0
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
TRIGGER1 = time = 85
TRIGGER2 = (P2BodyDist x = [0,50]) && time = 5
VALUE = 0
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,45]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 230, 220)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,30]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 200, 210)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 240, 250)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 410, 420)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 440, 450)
CTRL = 1

[State -1, AI Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155])
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A 
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

;==============================================================
;WALKING
[Statedef 99920]
type = S
physics = S
ctrl = 0
sprpriority = 0
FACEP2 = 1

[State 20, Vel]
type = velset
trigger1 = 1  
x = const(velocity.walk.fwd.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,45]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 230, 220)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,30]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H 
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 200, 210)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 240, 250)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 410, 420)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 440, 450)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
trigger1 = RoundState != 2 
VALUE = 0
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
TRIGGER1 = time = 42
VALUE = 99900
CTRL = 1

[State -1, AI Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155])
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A 
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

;==============================================================
;WALKING
[Statedef 99921]
type = S
physics = S
ctrl = 0
sprpriority = 0
FACEP2 = 1

[State 20, Vel]
type = velset
trigger1 = 1 
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,45]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 230, 220)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,30]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 200, 210)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 240, 250)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 410, 420)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,75]) && EnemyNear, vel y >= 0 
triggerAll = P2MOVETYPE != H && P2STATETYPE != A
TRIGGER1 = RANDOM < (150 * (AILEVEL ** 2 / 64.0))
VALUE = IFELSE(RANDOM < 500, 440, 450)
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
trigger1 = RoundState != 2 
VALUE = 0
CTRL = 1
			[STATE 200, END]
TYPE = CHANGESTATE
TRIGGER1 = time = 51
VALUE = 99900
CTRL = 1

[State -1, AI Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155])
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A 
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))
