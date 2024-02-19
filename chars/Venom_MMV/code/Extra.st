;---------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1

[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Liedown Roll Backwards (Author MystikBlaze)
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1

[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------

; Blood
[StateDef 8500]
type = A
movetype = I
physics = N
anim = 8500
sprpriority = -1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1

;stab grab-----------------

[State 0, AngleSet]
type = AngleSet
trigger1 = root,stateno = 910
trigger1 = 1
value = 135
;ignorehitpause =
;persistent =
;-----------------------------

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause =  1
persistent =  1
;---------------------------------------

; super-fx
[Statedef 8600]
physics = N
anim = 9741
sprpriority = -3

[State 3000, 2];spark
type = turn
trigger1 = time=0 && facing != (root, facing)



[State 8500, 5]
type = VarSet
trigger1 = Time = 0
var(2) = root, ID

[State 8500, 4]
type = VarSet
trigger1 = Time = 0
var(4) = (parent, stateno)+90

[State 8700, varset]
type = varset
triggerall = time = 0 && root, numpartner!=0
trigger1 = partner, alive
var(5)=1 + ((partner,id) < (root,id))

[State 8500, 5]
type = VarSet
trigger1 = Time = 0
var(6) = (root, var(39))

[State 8500, 5]
type = VarSet
triggerall = root, numpartner!=0
trigger1 = ((partner, stateno=[3000,4399])||(partner, stateno=[4500,4999]))
var(7) = 1

[State 3000, 9] ;Zoom Portrait
type        = Explod
trigger1    = roundstate!=3 && Time = [0,20]
anim = 8400
postype = back
ID = 8400
sprpriority = -9
supermovetime = 1
removetime = 1
scale = 3 -((time) * 0.095), 3 -((time) * 0.095)
pos = 0,60-(time * 3)
ownpal = 1

[State 3000, 9] ;Portrait fixed
type        = Explod
trigger1    = roundstate!=3 && Time = 21
anim = 8401
postype = back
ID = 8400
vel = 0,0
bindtime = -1
sprpriority = -9
removetime = -2
pos = 0,0
ownpal = 1

[State 8500, 5]
type = Varadd
trigger1 = roundstate=3
v=1
value=1

[State 8500, 5]
type = VarSet
trigger1 = Time = 0
var(17) = root, var(17)

[State 8500, 9] ;Efeito de fundo azul (com partner)
type     = PalFx
triggerall = numpartner != 0 && roundstate=2
trigger1 = partner, stateno!=[4400,4499]
trigger1 = (time%30)=0
time = 30
sinadd = ceil(random/16),ceil(random/16),ceil(random/16),50
add = 0,0,0

[State 8500, 9] ;Efeito de fundo azul (sem partner)
type     = PalFx
triggerall = numpartner != 0 && roundstate=2
trigger1 = partner, stateno=[4400,4499]
trigger2 = partner, life=0
triggerall = (time%30)=0
time = 30
add = 0,0,0
sinadd = 0,0,100,50

[State 8500, 9] ;Efeito de fundo azul (sem partner)
type     = PalFx
triggerall = numpartner = 0 && roundstate=2
trigger1 = (time%30)=0
time = 30
add = 0,0,0
sinadd = 0,0,100,50


;========BG======================
[State 8500, 9] ;top left
type        = Explod
trigger1 = numexplod(8400)=0
trigger1 = numexplod(8510)=0 && var(17)<10 && roundstate=2
anim = 8410
postype = left
ID = 8510
sprpriority = -10
supermovetime = 1
removetime = -2
pos = 1,0
scale= const(size.xscale),const(size.yscale)
bindtime = -1

[State 8500, 9] ;top right
type        = Explod
trigger1 = numexplod(8400)=0
trigger1 = numexplod(8511)=0 && var(17)<10 && roundstate=2
anim = 8411
postype = right
ID = 8511
sprpriority = -10
supermovetime = 1
removetime = -2
pos = 0,0
scale= const(size.xscale),const(size.yscale)
bindtime = -1
facing=-1

[State 8500, 9] ;bottom left
type        = Explod
trigger1 = numexplod(8400)=0
trigger1 = numexplod(8500)=0 && var(17)<10 && roundstate=2
anim = 8411
postype = left
ID = 8500
sprpriority = -10
supermovetime = 1
removetime = -2
pos = 1,239
scale= const(size.xscale),const(size.yscale)
bindtime = -1
vfacing=-1

[State 8500, 9]  ;bottom right
type        = Explod
trigger1 = numexplod(8400)=0
trigger1 = numexplod(8513)=0 && var(17)<10 && roundstate=2
anim = 8410
postype = right
ID = 8513
sprpriority = -10
supermovetime = 1
removetime = -2
pos = 0,239
scale= const(size.xscale),const(size.yscale)
bindtime = -1
facing=-1
vfacing=-1

;=========================================================



[State 8500, 7]
Type = RemoveExplod
triggerall = root, var(9)<=0
triggerall = anim=9741
trigger1 = parent, stateno!=[3000,3001]
trigger1 = parent, stateno!= [3200,3205]
trigger1 = parent, stateno!= [3300,3310]
trigger1 = parent, stateno!= 3400
trigger1 = parent, stateno!= [3500,3501]
trigger2 = anim=9741 && roundstate=3

[State 8500, 9] ;Sem fundo e frente
type        = AssertSpecial
trigger1 = anim=9741 && (numexplod(8510)!=0 || numexplod(8400)!=0)
trigger2 = numexplod(222)!=0
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 8500, 9] ;Efeito de fundo
type     = bgPalFx
trigger1 = anim=9741 && roundstate=3 && var(17)<10 && p2life=0
time = 120
add = 192,192,192
sinadd = 190,190,190,150
persistent=1
ignorehitpause=1



[State 8500, 7]
Type = destroyself
triggerall = root, var(9)<=0
triggerall = anim=9741 && roundstate!=3
trigger1 = parent, stateno!=[3000,3001]
trigger1 = parent, stateno!= [3200,3205]
trigger1 = parent, stateno!= [3300,3310]
trigger1 = parent, stateno!= 3400
trigger1 = parent, stateno!= [3500,3501]
trigger2 = anim=9741 && roundstate=3

[State 8000, 1] ;Anim for Super KO FX
type = Changestate
trigger1 = anim=9741 && roundstate=3 && p2life=0
value = 8650

;;---------------------------------------------------------
; Super KO FX
[Statedef 8650]
type = A
movetype = I
physics = N
anim = 9741

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8510

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8511

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9999,4
volume = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S9999,6
volume = 0
channel = -1



[State 3000, 9] ;Portrait fixo
type        = Explod
trigger1    = Time = 0
anim = 8420
postype = back
ID = 8400
vel = 0,0
bindtime = -1
sprpriority = -11
removetime = -2
pos = 0,0
ownpal = 1

[State 8500, 7]
Type = destroyself
trigger1 = animtime  = 0

;---------------------------------------------------------------------------
; Hit Overrides and Extra States
;---------------------------------------------------------------------------
[StateDef 9000]
type = S
movetype= H
physics = S


[State 9000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Danger!" Helper
[Statedef 10000]
type = A
movetype = I
physics = N
anim = 9999



[State 9000, 2]
type = Explod
triggerall = parent, facing  =1
trigger1 = time = 0
ID = 547
anim = 6150
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9000, 3]
type = Explod
triggerall = parent, facing  =-1
trigger1 = time = 0
ID = 547
anim = 6155
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9000, 4]
type = PlaySnd
trigger1 = time = 0
value = 10, 0
volume = 200

[State 9000, 5]
type = DestroySelf
trigger1 = NumExplod(547) = 0
trigger2 = time = 500

;---------------------------------------------------------------------------
; "First Attack" Message
[Statedef 10010]
type = A
movetype = I
physics = N
anim = 9999



[State 9010, 2]
type = Explod
triggerall = parent, facing  =1
trigger1 = time = 0
ID = 548
anim = 6160
postype = left
pos = 0, 54
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1



[State 9010, 3]
type = Explod
triggerall = parent, facing =-1
trigger1 = time = 0
ID = 548
anim = 6165
postype = right
pos = 0, 54
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9010, 4]
type = PlaySnd
trigger1 = time = 0
value = 10, 2
volume = 200

[State 9010, 5]
type = DestroySelf
trigger1 = NumExplod(548) = 0
trigger2 = time = 500

;---------------------------------------------------------------------------

; Combo Report Helper
[Statedef 10020]
type = A
movetype = I
physics = N
anim = 9999

[State 9020, 2]
type = VarSet
trigger1 = time = 0
v = 21
value = parent, var(15)





[State 9020, 3]
type = Explod
triggerall = parent, facing  =1
triggerall = var(21) = [3,4]
trigger1 = time = 0
ID = 548
anim = 6170
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 4]
type = Explod

triggerall = parent, facing  =-1
triggerall = var(21) = [3,4]
trigger1 = time = 0
ID = 548
anim = 6175
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 5]
type = Explod

triggerall = parent, facing  =1
triggerall = var(21) = [5,6]
trigger1 = time = 0
ID = 548
anim = 6180
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 6]
type = Explod

triggerall = parent, facing = -1
triggerall = var(21) = [5,6]
trigger1 = time = 0
ID = 548
anim = 6185
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 7]
type = Explod
triggerall = !var(22)
triggerall = parent, facing = 1
triggerall = var(21) = [7,9]
trigger1 = time = 0
ID = 548
anim = 6190
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 8]
type = Explod

triggerall = parent, facing = -1
triggerall = var(21) = [7,9]
trigger1 = time = 0
ID = 548
anim = 6195
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 9]
type = Explod
triggerall = !var(2)
triggerall = var(0) = 1
triggerall = var(1) = [10,12]
trigger1 = time = 0
ID = 548
anim = 6200
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 10]
type = Explod
triggerall = parent, facing = -1
triggerall = var(21) = [10,12]
trigger1 = time = 0
ID = 548
anim = 6205
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 11]
type = Explod
triggerall = parent, facing = 1
triggerall = var(21) = [13,14]
trigger1 = time = 0
ID = 548
anim = 6210
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 12]
type = Explod
triggerall = parent, facing = -1
triggerall = var(21) = [13,14]
trigger1 = time = 0
ID = 548
anim = 6215
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 13]
type = Explod
triggerall = parent, facing = 1
triggerall = var(21) >= 15
trigger1 = time = 0
ID = 548
anim = 6220
postype = left
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 14]
type = Explod
triggerall = parent, facing = -1
triggerall = var(21) >= 15
trigger1 = time = 0
ID = 548
anim = 6225
postype = right
pos = 0, 70
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1

[State 9020, 15]
type = PlaySnd
triggerall = var(21) = [3,4]
trigger1 = time = 0
value = 10, 3
volume = 200

[State 9020, 16]
type = PlaySnd
triggerall = var(21) = [5,6]
trigger1 = time = 0
value = 10, 7
volume = 200

[State 9020, 17]
type = PlaySnd
triggerall = var(21) = [7,9]
trigger1 = time = 0
value = 10, 4
volume = 200

[State 9020, 18]
type = PlaySnd
triggerall = var(21) = [10,12]
trigger1 = time = 0
value = 10, 8
volume = 200

[State 9020, 19]
type = PlaySnd
triggerall = var(21) = [13,14]
trigger1 = time = 0
value = 10, 6
volume = 200

[State 9020, 20]
type = PlaySnd
triggerall = var(21) >= 15
trigger1 = time = 0
value = 10, 1
volume = 200

[State 9020, 21]
type = DestroySelf
trigger1 = NumExplod(548) = 0
trigger2 = time = 500

;---------------------------------------------------------------------------
