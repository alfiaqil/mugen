;================================================================================================
;========================================< MODE STATES >===========================================
;================================================================================================

;==========< PALETTE MODE SELECTION >==========
[Statedef 5900]
type = S

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !time
fvalue = 0
first=1
last=39

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !time
value = 0
first=2
last=4
;---------- for 20400 567 -----------
[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !time
value = 0
first=8
last=21

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !time
value = 0
first=32
last=37

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !time
value = 0
first=39
last=51

[State 5900, MAX Pal color]
type = varset
trigger1 = !time && RoundsExisted = 0
var(52) = 36

[State 5900, ModeBase]
type = varset
trigger1 = !time && RoundsExisted = 0
var(1) = IFElse(PalNo > 6,10000,0)

[State 5900, Color_var_all]
type = varadd
trigger1 = !time && RoundsExisted = 0
var(1) = PalNo

[State 5900, AI Color Random]
type = varadd
trigger1 = AILevel && var(1)
var(1) = IFElse(Random < 700,0,12*((Random%2)+1))

[State 5900, Palette]
type = remappal
trigger1 = !time && RoundsExisted = 0
source = 30500,1
dest = 30500, var(1)%10000

[state 5900, DBFCI Char bit]
type = varset
trigger1 = !(var(19) & 128)
var(19) = var(19) + 128

[state 5900, DBFCI Trump Cards INIT]
type = varset
triggerall = !time
trigger1 = RoundsExisted = 0
var(22) = 2

[state 5900, DBFCI Trump Card add if lost]
type = varadd
triggerall = !time
trigger1 = RoundsExisted
trigger1 = var(22) < 2 && (var(0) = [5,7])
var(22) = 1

[state 5900, DBFCI Trump Cards INIT]
type = varset
triggerall = !time
trigger1 = RoundsExisted = 0
var(23) = 0;0=Red 1=Blue

[state 5900, DBFCI Power INIT]
type = powerset
triggerall = !time
trigger1 = RoundsExisted = 0
value = 1000

[state 5900, dizzy threshold]
type = varset
trigger1 = !time && RoundsExisted = 0
var(38) = 140


[State 5900, End]
type = changestate
trigger1 = !time
value = IFElse(RoundsExisted = 0, 190, 0)
