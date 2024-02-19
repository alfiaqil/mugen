;AI HELPER
[StateDef 9741]
anim=9741
ctrl=0

[State 9741, safety]
type=selfstate
trigger1=!ishelper
value=0

[State 9741, end]
type=destroyself
trigger1=((root,ID)!=(parent,ID))||!(root,alive)
trigger2=roundstate!=2
trigger3=root,var(0)

[State 9741, facing]
type=turn
trigger1=facing!=root,facing

[State 9741, pausecheck]
type=varset
trigger1=(root,movecontact)&&!(root,ctrl)
trigger2=(facing!=root,facing)
var(59)=0

[State 9741, dirturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="up")||(root,command="down")||(root,command="back")||(root,command="fwd")
var(0)=1

[State 9741, dirturnoffAI]
type=parentvarset
trigger1=(command="up")&&(root,command="up")
trigger2=(command="down")&&(root,command="down")
trigger3=(command="back")&&(root,command="back")
trigger4=(command="fwd")&&(root,command="fwd")
var(0)=-1

[State 9741, buttonturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="a")||(root,command="b")||(root,command="c")||(root,command="x")
trigger2=(root,command="y")||(root,command="z")||(root,command="start")
var(0)=1

[State 9741, buttonturnoffAI]
type=parentvarset
trigger1=(command="a")&&(root,command="a")
trigger2=(command="b")&&(root,command="b")
trigger3=(command="c")&&(root,command="c")
trigger4=(command="x")&&(root,command="x")
trigger5=(command="y")&&(root,command="y")
trigger6=(command="z")&&(root,command="z")
trigger7=(command="start")&&(root,command="start")
var(0)=-1

[State 9741, unpausecheck]
type=varset
trigger1=root,ctrl
var(0)=1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, resetAI]
type=varset
trigger1=var(0)&&(!alive||roundstate!=2)
trigger1 = TeamSide = 2
var(0)=1
ignorehitpause=1


[State -3, AIactivation]
type=helper
trigger1=!numhelper(9741)&&roundstate=2&&alive&& !var(0)
helpertype=normal
name="Scream AI"
stateno=9741
ID=9741
pos=0,0
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent=0

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(0) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(0) = 1

[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, -1500
postype = back
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = stateno < 3000
trigger2 = MoveType = H
trigger3 = (WinKO)
id = 10010
ignorehitpause = 1



[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101 ;Run-back land
trigger3 = stateno = 106 ;Run-back land
value = 8,1



[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8612 - ((enemy,id)<id)
id = 8611
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

; Põe um símbolo no P2 (>)-próprio
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8614 - ((enemy,id)<id)
id = 8613
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Põe um símbolo em você
; Põe um símbolo no P1 (O)-próprio
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger1 = var(39)=var(37)
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Põe um símbolo em você
; Põe um símbolo no P1 (>)-próprio
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8613 + ((enemy,id)<id)
id = 8613
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
ownpal = 1
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)


[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Stateno != 100
trigger1 = Stateno != 105
trigger1 = Stateno != 108
trigger1 = Stateno != 107
trigger1 = Stateno != 701
time = 0

[State 0, SelfState]
type = SelfState
trigger1 =  stateno = [2000,2999]
trigger1 = roundstate = 3
value = 50
ctrl =1

[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0

[State -3, Corner Push]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]; Apply corner push
type= posadd
triggerall= fvar(5)
triggerall= (statetype = S || statetype = C) && numtarget
triggerall= !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall= (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1= target, frontedgebodydist <= abs(target, vel x)
trigger1= (target, gethitvar(xvel) * target, facing) > 0
trigger2= target, backedgebodydist <= abs(target, vel x)
trigger2= (target, gethitvar(xvel) * target, facing) < 0
x= ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5)= fvar(5) * 0.85




