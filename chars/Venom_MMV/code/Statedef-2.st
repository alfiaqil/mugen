;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2]  ; Cocoon (medium)
type = Explod
triggerall = P2StateNo = 3510
triggerall = P2MoveType = H
trigger1 = ProjHit(3501) = 1
id = 3503
anim = 3503
postype = p2
pos = 0,0
bindtime = 27
ownpal = 1
ontop = 0
scale = 1.2,1.2
sprpriority = 4

[State -2] ; "break-out-of-cocoon" sound
type = PlaySnd
trigger1 = enemy,stateno = 3511
trigger1 = enemy,movetype= H
trigger1 = time = 50
value = 6,5

;camo==========================
[State 0, Camo switch]
type = VarSet
trigger1 = roundstate = 0
v = 24    ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 0, Camo meter off]
type = VarSet
trigger1 = movetype = H
v = 24    ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 0, Camo meter off]
type = VarSet
trigger1 = roundstate = 0
v = 25    ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 0, Trans]
type = Trans
trigger1 = var(24)=1
trigger1 = var(26)=0
trigger1 = var(25)>0
trans = addalpha
alpha = 0,255
;ignorehitpause =
;persistent =


[State 0, is recharging]
type = VarSet
trigger1 = var(25)=1
;trigger1 = var(26)=0
v = 26    ;fv = 10
value = 1
;ignorehitpause =
;persistent =

[State 0, full charge]
type = VarSet
trigger1 = var(25)=1000
trigger1 = var(26)=1
v = 26    ;fv = 10
value = 0
;ignorehitpause =
;persistent =


[State 0, deplete]
type = VarAdd
trigger1 = var(24)=1
trigger1 = var(26)=0
trigger1 = var(25)>0
trigger1 = 1
v = 25
value = -3
;ignorehitpause =
;persistent =

[State 0, recharge]
type = VarAdd
trigger1 = var(24)=1
trigger1 = var(26)=1
trigger1 = var(25)<= 1000
trigger1 = 1
v = 25
value = 3
;ignorehitpause =
;persistent =

[State 0, VarAdd]
type = Varset
trigger1 = var(24)=1
trigger1 = var(26)=1
trigger1 = var(25)= 1000
trigger1 = 1
v = 24
value = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8201
scale = .5,var(25)*.0005

[State -2,chain]
type = Explod
;trigger1 = var(25)>0
trigger1 = numexplod(8201) = 0
anim = 8201
ID = 8201
postype = left
pos = ifelse(teamside = 1,10,305),210
facing = ifelse(teamside = 1,1,1)
scale = .5,var(25)*.0005
sprpriority = 99
ownpal = 1
ignorehitpause = 1
Persistent = 8
;vel = 1,0
bindtime = -1

[State -2,chain]
type = Explod
trigger1 = var(25)>0
trigger1 = numexplod(8200) = 0
anim = 8200
ID = 8200
postype = left
pos = ifelse(teamside = 1,10,305),210
facing = ifelse(teamside = 1,1,1)
scale = .5,.5
sprpriority = 100
ownpal = 1
ignorehitpause = 1
Persistent = 8
;vel = 1,0
bindtime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(24)=0
id = 8200

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(24)=0
id = 8201


;====================================

[State 0, StopSnd]
type = StopSnd
trigger1 = movetype = H
channel = 1
;ignorehitpause =
;persistent =

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno !=191
channel = 2
ignorehitpause = 1
persistent = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno !=193
channel = 4
ignorehitpause = 1
persistent = 1

[State -2]  ; Cocoon (medium)
type = Explod
triggerall = P2StateNo = 1015
triggerall = P2MoveType = H
trigger1 = ProjHit(1008) = 1
id = 1014
anim = 1014
postype = p2
pos = 0,0
bindtime = 27
ownpal = 1
ontop = 1
scale = 1.2,1.2

[State -2]  ; Cocoon (medium)
type = Explod
triggerall = P2StateNo = 1015
triggerall = P2MoveType = H
trigger1 = ProjHit(1030) = 1
id = 1014
anim = 1014
postype = p2
pos = 0,0
bindtime = 27
ownpal = 1
ontop = 1
scale = 1.2,1.2

[State -2] ; "break-out-of-cocoon" sound
type = PlaySnd
trigger1 = enemy,stateno = 1015
trigger1 = enemy,movetype= H
trigger1 = time = 21
value = 6,5

[State 0, VarSet]
type = VarSet
trigger1 = statetype != A
v = 20    ;fv = 10
value = 1
;ignorehitpause =
;persistent =


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(25)=%d, var(26)=%d, var(24)=%d, var(59)=%d, p2bodydist y=%d"
params = var(25), var(26), var(24), var(0), floor(p2bodydist y)

;KO Sound when defeated

[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=s11,(1+(random%3));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=s11,(1+(random%3));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=11,0
channel = -1
ignorehitpause=1
persistent=0


;damage dampenering


;Hyper Background Removed when Hyper Done or hit out of Hyper
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =


;-------------------------------------------------------------------------------
;Guard Crush Feature
;WARNINING this code is buggy against multiple hit attacks if you want to use
;remove the null; off the code.

[State 0, VarAdd]
type = null;VarAdd
trigger1 = time = 1
trigger1 = stateno =5000 ||stateno =5010 || stateno =5020 || stateno =5030
v = 1
value = var(3)

[State 0, VarAdd]
type = null;VarAdd
triggerall = numenemy > 0
trigger1 = enemy, Moveguarded
trigger1 = time = 1
trigger1 = anim =150 ||anim =152 || anim =154
v = 2
value = 30 + var(3)

[State 0, ChangeState]
type = null;selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= S
trigger1 = var(2) >400
value = 5350
ctrl = 0

[State 0, ChangeState]
type = null;selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= C
trigger1 = var(2) >400
value = 5351
ctrl = 0

[State 0, VarAdd]
type = null;VarAdd
trigger1 = var(1) <=300
trigger1 = var(1) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 1
value = -1

[State 0, VarAdd]
type = null;VarAdd
trigger1 = var(2) <=400
trigger1 = var(2) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 2
value = -1

; First Attack message (by M@ppy, cut and pasted from BB Hood, with mods by ME!)
[State -2, Var]
type = VarSet
triggerall = Var(13) = 0
triggerall = p2movetype = H
triggerall = p2StateNo != [150,155]
triggerall = RoundState = 2
trigger1 = movecontact = 1
trigger2 = projcontact = 1
trigger3 = NumHelper(8796) > 0
trigger3 = Helper(8796), MoveHit
trigger4 = NumHelper(8409) > 0
trigger4 = Helper(8409), MoveHit
trigger5 = NumHelper(867) > 0
v = 13
value = 1
ignorehitpause = 1

[State -2, Message]
type = Helper
triggerall = NumHelper(9208) = 0
trigger1 = Var(13) = 1
ID = 9208
name = "First Attack!"
facing = 1
postype = left
stateno = 10010
ownpal = 1
ignorehitpause = 1

[State -2, Var]
type = VarSet
trigger1 = Var(13) = 1
trigger2 = movetype = H
trigger2 = StateNo != [150,155]
v = 13
value = 2
ignorehitpause = 1

; Combo Tracker
[State -2, Start Count]
type = VarSet
triggerall = P2MoveType = H && !WinKO
trigger1 = var(7) = 0
v = 7
value = 1
ignorehitpause = 1

[State -2, Set]
type = VarSet
triggerall = var(7)
trigger1 = HitCount > var(9)
v = 10
value = HitCount - var(9)

[State -2, Set]
type = VarSet
triggerall = var(7)
trigger1 = HitCount < var(9)
trigger1 = HitCount != 0
v = 10
value = HitCount

[State -2, Set]
type = VarSet
triggerall = var(7)
trigger1 = HitCount = var(9)
trigger2 = HitCount = 0
v = 10
value = 0

[State -2, Projectile Hits]
type = VarAdd
triggerall = var(7)
trigger1 = ProjHit = 1
v = 10
value = 1

[State -2, Add new hits to combo]
type = VarAdd
triggerall = var(7)
trigger1 = var(10) > 0 || var(11) > 0
v = 8
value = var(10) + var(11)


[State -2, Clear Helper Hits]
type = VarSet
trigger1 = var(7)
v = 11
value = 0

[State -2, Spawn Combo Report Helper]
type = Helper
triggerall = var(7)
triggerall = NumHelper(929) = 0
triggerall = (StateNo != 1500) && (StateNo != [1645,1650])
trigger1 = P2MoveType != H || WinKO
trigger1 = NumHelper(930) = 0
ID = 930
name = "Combo Report"
StateNo = 10020
postype = p1
pos = 0, 0
ownpal = 1
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 15
value = var(8)
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 8
value = 0
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 9
value = 0
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 7
value = 0
ignorehitpause = 1

; Display "Danger" Message
[State -2, Create Helper]
type = Helper
triggerall = var(14) = 0
triggerall = Alive
triggerall = NumHelper(929) = 0
trigger1 = Life <= 200
ID = 929
name = "Danger!"
StateNo = 10000
postype = p1
pos = 0, 0
ownpal = 1

[State -2, Set Danger Var]
type = VarSet
triggerall = var(14) = 0
trigger1 = Life <= 200
v = 14
value = 1

[State -2, Hit Count]
type = VarSet
trigger1 = var(7)
v = 9
value = HitCount
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------

; END
