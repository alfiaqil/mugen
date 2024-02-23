;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 8000]
type = S
physics = N
ctrl = 0
anim = 4000
velset = 0,0

[State 191, 2]
type = varset
trigger1 = command = "holdx"
var(31) = 1
[State 191, 2]
type = varset
trigger1 = command = "holdy"
var(31) = 2
[State 191, 2]
type = varset
trigger1 = command = "holda"
var(31) = 3
[State 191, 2]
type = varset
trigger1 = command = "holdb"
var(31) = 4

[State 8000, ]
type = Helper
trigger1 = time = 0
trigger1 = Facing = 1
ID = 8000
pos = 0, 0
velset = 0,0
name = "op2"
postype = left
facing = 1
stateno = 8100
helpertype = normal
keyctrl = 0
ownpal = 0

[State 8000, ]
type = Helper
trigger1 = time = 0
trigger1 = Facing = -1
ID = 8000
pos = 0, 0
velset = 0,0
name = "op2"
postype = right
facing = -1
stateno = 8100
helpertype = normal
keyctrl = 0
ownpal = 0

[State 8000, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = time = [0,300]
flag = Intro

[State 192, VS.Special]
type = AssertSpecial
trigger1 = Time = 1
flag = Intro





[State 4001, 3]
type = ChangeState
trigger1 = !numhelper(8000)
trigger1 = time != 0
value = 0


[Statedef 8100]
type = S
physics = N
ctrl = 0
anim = 8000
velset = 0,0

[State 2060, 1]
type = PlaySnd
trigger1 = animelem = 2,1
value = 4, 2

;[State 7000, 0]
;type = explod
;trigger1 = animelem = 3
;trigger1 = numexplod(10000) = 0
;anim = 10000
;id = 10000
;pos = 160, 120
;postype = left
;;sprpriority = -5
;ontop = 1
;removeongethit = 1
;bindtime = -1
;ownpal = 1

[State State 8020,5]
type = DestroySelf
trigger1 = animtime = 0
