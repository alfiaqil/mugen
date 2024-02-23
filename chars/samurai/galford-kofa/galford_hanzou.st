;===========================================================================
;Strikers!!!!!!!!!
;===========================================================================
;state9050-9110
;---------------------------------------------------------------------------
;Hanzou slam
[Statedef 9050]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 9107

[State 9050, 1]
type = Helper
trigger1 = Time = 5
ID = 9100
pos = -30, -65
postype = back
stateno = 9100
helpertype = normal
keyctrl = 0
ownpal = 0

[State 6666, 1] 
type = Explod
trigger1 = Time = 5
anim = 3570
pos = 70,30
postype = back
supermove = 1
facing = 1 
bindtime = 20
sprpriority = -2
removetime = 30

[State 6666, env]
type = bgpalfx 
trigger1 = time = 5 
time = 20
add = -80,-80,-80

[State 6666, 2]
type = PlaySnd
trigger1 = Time = 5
value = 15,12

[State 9050, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3

[State 9050, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------

[Statedef 9100]
type = A
movetype = I
velset = 10, 1   
anim = 9100
sprpriority = 4

[State 9100, 1]
type = VelAdd
trigger1 = Time > 10
trigger1 = Anim = 9100
y = 1   

[State 9100, 2]
type = VelSet
trigger1 = Pos Y > -5
trigger1 = Anim = 9100
y = 0

[State 9100, 3]
type = PosSet
trigger1 = Vel Y = 0
trigger1 = Anim = 9100
y = 0

[State 9100, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y = 0
value = 9101   

;---------------------------------------------------------------------------
[Statedef 9101]
type    = S                      
movetype= I                      
velset = 0,0                     
ctrl = 0                         
anim = 9101                       
poweradd = 0 

[State 9101, 1]
type = PlaySnd
trigger1 = Time = 0
value = 9,2

[State 9101, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 9110
                   
;---------------------------------------------------------------------------

[Statedef 9110]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 9110                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 9110, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 0

[State 9110, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 7,8

[State 9110,3]
type = EnvShake
trigger1 = AnimElem = 6
time = 60

[State 9110,4]
type = Explod
trigger1 = AnimElem = 6
anim = 1080
pos = 17,5
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 28
bindtime = 1

[State 9110, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 150,15                   ;Damage that move inflicts
animtype = Back                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,15                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = LH                    ;Flags of conditions that move can hit
priority = 7, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4,4                  ;Time attacker pauses, time victim shakes
guard.pausetime = 0,10
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -5,0                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Trip                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 20             ;Time victim is in hit state
ground.velocity = -3,-5             ;Velocity at which victim is pushed
groundguard.velocity = -4,0
airguard.velocity = -1.9,-.8   
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1


[State 9110, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 9111

;---------------------------------------------------------------------------
[Statedef 9111]
type    = S                      
movetype= I                      
velset = 0,0                     
ctrl = 0                         
anim = 9111                       
poweradd = 0 

[State 9111, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,5

[State 9111, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 7,6

[State 9111, 1]
type = PlaySnd
trigger1 = AnimElem = 12
value = 7,7

[State 9111, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 9102
;---------------------------------------------------------------------------
[Statedef 9102]
type    = S                      
movetype= I                      
velset = 0,0                     
ctrl = 0                         
anim = 9102                       
poweradd = 0 

[State 9101, 1]
type = PlaySnd
trigger1 = Time = 2
value = 9,1

[State 9101, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 9103
;---------------------------------------------------------------------------

[Statedef 9103]
type = S
movetype = I
velset = -10, -1
anim = 9100

[State 9101, 1]
type = DestroySelf
trigger1 = backEdgeDist < 10

;=========================================================================================
;Hanzou anti air
[Statedef 9200]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 9200  

[State 9050, 1]
type = Helper
trigger1 = Time =  0
ID = 9201
pos = -2, -85   
postype = p1   
stateno = 9201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 6666, 1] 
type = Explod
trigger1 = Time = 0
anim = 3570
pos = 70,30
postype = back
supermove = 1
facing = 1 
bindtime = 20
sprpriority = -2
removetime = 30

[State 6666, env]
type = bgpalfx 
trigger1 = time = 0 
time = 20
add = -80,-80,-80

[State 6666, 2]
type = PlaySnd
trigger1 = Time = 0
value = 15,12

[State 9050, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,5

[State 9050, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 105   
ctrl = 1

;-----------------------------------------------------------
[Statedef 9201];hanzou appear
type = A
movetype = I
velset = 1, 4   
anim = 9201
sprpriority = 4

[State 9201,4];smoke
type = Explod
trigger1 = Time = 0
anim = 9112
pos = 0,5
postype = P1
sprpriority = 5
ontop = 1
supermove = 1
ownpal = 1
removetime = 27
bindtime = 1

[State 9201, 2];smoke sound
type = PlaySnd
trigger1 = time = 1
value = 9,4

[State 9201, 2];hanzou huu!!
type = PlaySnd
trigger1 = Time = 0
value = 7,5

type = VelAdd
trigger1 = Time > 20
trigger1 = Anim = 9201
y = 20   

[State 9201, 2]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Anim = 9201
y = 0

[State 9201, 3]
type = PosSet
trigger1 = Vel Y = 0
trigger1 = Anim = 9201
y = 0

[State 9201, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y = 0
value = 9202

;---------------------------------------------
[Statedef 9202];hanzou slice ground
type    = S                      
movetype= I                      
velset = 0,0                     
ctrl = 0                         
anim = 9202                       
poweradd = 0 
sprpriority = 4

[State 9110,3]
type = EnvShake
trigger1 = AnimElem = 2
time = 45

[State 9201, 2];botai sho....
type = PlaySnd
trigger1 = time = 0
value = 15,5

[State 9201, 2];burst sound
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,8

[State 6000, EXPLOSION]
type = Explod
trigger1 = AnimElem = 2 
anim = 9204
id = 9204
pos = 10,0
postype = p1
ontop = 1
ownpal = 1

[State 6000, 2]
type = Projectile
trigger1 = AnimElem = 2  
projid = 9204
projanim = 9205
projremanim = -1
offset = 10, 0
postype = p1
velocity = 0, 0
accel = 0, 0
attr = S, HP
projremovetime = 36
animtype  = Heavy
damage    = 150,20
getpower = 0
givepower = 100
guardflag = HL
hitflag = HAL
pausetime = 0,10
guard.pausetime = 0,8
sparkno = s30002
guard.sparkno = s30040
sparkxy = -15,-40
hitsound   = S15,6
guardsound = S15,7
ground.type = Low
air.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0, -10
groundguard.velocity = -4,0
airguard.velocity = -3,-.8   
air.velocity = -0, -9
fall = 1
fall.recover = 0
projhits = 1
palfx.time = 60
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 0,-70
postype = p2
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
anim = 1013
persistent = 0
vel = 0,-0.7
pos = -20,-40
postype = p2
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
anim = 1013
persistent = 0
vel = 0,-1
pos = 10,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
ontop = 1
bindtime = 1
ownpal = 1

[State hit effect] 
type = explod
trigger1 = ProjHit = 1
anim = 1013
persistent = 0
vel = 0,-0.7
pos = 5,-30
postype = p2
ontop = 1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ownpal = 1

[State 9101, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 9203

;----------------------------------------------
[Statedef 9203]
type = S
movetype = I
velset = 0,0
anim = 9203

[State 9201, 2];yami....
type = PlaySnd
trigger1 = AnimElem = 13
value = 7,1

[State 9201, 2];sword swing
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,4

[State 9201, 2];smoke sound
type = PlaySnd
trigger1 = AnimElem = 15
value = 9,4

[State 9101, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 9204
;----------------------------------------------
[Statedef 9204]
type = S
movetype = I
velset = -10, -2
anim = 9100

[State 9101, 1]
type = DestroySelf
trigger1 = backEdgeDist < 20

;======================================================================
;---------------------------------------------------------------------------
;Hanzou elbow charge
[Statedef 9300]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 9107

[State 9300, 1]
type = Helper
trigger1 = Time = 5
ID = 9301
pos = -140,0
postype = back
stateno = 9301
helpertype = normal
keyctrl = 0
ownpal = 0

[State 6666, 1] 
type = Explod
trigger1 = Time = 5
anim = 3570
pos = 70,30
postype = back
supermove = 1
facing = 1 
bindtime = 20
sprpriority = -2
removetime = 30

[State 6666, env]
type = bgpalfx 
trigger1 = time = 5 
time = 20
add = -80,-80,-80

[State 6666, 2]
type = PlaySnd
trigger1 = Time = 5
value = 15,13

[State 9050, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3

[State 9050, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 9301];hanzou appear
type = S
movetype = I
velset = 8,0   
anim = 9300
sprpriority = 4

type = VelAdd
trigger1 = Time = 0
trigger1 = Anim = 9300
x = .50  

[State 100, 1.5]
type = PlaySnd
trigger1 = TimeMod = 10, 0
value = 6,4

[State 9301, 3]
type = ChangeState
trigger1 = p2bodydist X < 60
value = 9302


[State 9301, 3]
type = ChangeState
trigger1 = AnimTime = 600
value = 9305

;------------------------------------------------------------------------
[Statedef 9302];hanzou elbow slam start
type    = S
movetype= I
physics = S
velset = 4,0
ctrl = 0
anim = 9301

[State 100, 1.5]
type = PlaySnd
trigger1 = Time = 0
value = 6,3

[State 9050, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 9303

;------------------------------------------------------------------------
[Statedef 9303];hanzou elbow slam
type    = A
movetype= A
velset = 10,4
ctrl = 0
anim = 9302

[State 100, 1.5]
type = PlaySnd
trigger1 = Time = 0
value = 7,6

[State 6071, 1]
type = PosSet
trigger1 = Time = 0
y = -37

[state 9303, 1]
type = VelAdd
trigger1 = time >= 0
y = .50  

[State 9303, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 150,15                   ;Damage that move inflicts
animtype = Heavy                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = LHA                    ;Flags of conditions that move can hit
priority = 7, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default;Hit/Miss/Dodge type (Def: Hit)
pausetime = 3,2                  ;Time attacker pauses, time victim shakes
guard.pausetime = 4,12
numhits = -1                      ;Number of hits to count as (Def: 1)
sparkno = s30002
guard.sparkno = s30040                   ;Spark image group and no (Def: set above)
sparkxy = -3,4                ;X-offset for the "hit spark" rel. to p2,;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 40             ;Time that the victim slides back
ground.hittime  = 5             ;Time victim is in hit state
ground.velocity = -10,6             ;Velocity at which victim is pushed
groundguard.velocity  = -4,0
airguard.velocity = -3,-.8   
air.velocity = -10,6           ;X-velocity at which victim is pushed,;Y-velocity at which victim is pushed
fall = 1
fall.recover = 0


[State 6051, 2] 
type = explod
trigger1 = movehit = 1
anim = 9304
persistent = 0
pos = 60,-3
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 9303, 2]
type = VelSet
trigger1 = Pos Y > 0
y = 0
x = 0

[State 9303, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 9303, 5]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y = 0
value = 9304

;------------------------------------------------------------------------
[Statedef 9304];hanzou get up
type    = S
movetype= I
ctrl = 0
velset = 0,0
anim = 9303

[State 9110,3]
type = EnvShake
trigger1 = Time = 0
time = 10

[State 100, 1.5];ground hit
type = PlaySnd
trigger1 = Time = 0
value = 5,8

[State 101, 1]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 50, 8

[State 100, 1.5];hanzou s..
type = PlaySnd
trigger1 = AnimElem = 3
value = 15,0

[State 100, 1.5];vanish
type = PlaySnd
trigger1 = AnimElem = 4
value = 9,2

[State 9304, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 9305

;-------------------------------

[Statedef 9305]
type = S
movetype = I
velset = -100, -2
anim = 9100

[State 9305, 1]
type = DestroySelf
trigger1 = backEdgeDist < 20












