;=============================================================================================
;=======================================< DBCFI COMMON STATES >========================================
;==============================================================================================


;===========================================================================
;===============================< -3 STATES >=================================
;===========================================================================
[Statedef -3]

[State -3, Gametime Var]
type = varset
trigger1 = !IsHelper
var(58) = GameTime
ignorehitpause = 1

[State -3, Display DBFCI Sub Select Menu]
type = helper
triggerall = !IsHelper
triggerall = RoundsExisted = 0
triggerall = !NumHelper(20220)
trigger1 = RoundState = 0 && time > 1
trigger1 = !var(34)
trigger1 = StateNo != 5900
stateno = 20220
ID = 20220
helpertype = normal
keyctrl = 1
name = "DBFCI Sub Select Menu"
postype = P1
pos = 0,0
ownpal = 1
ignorehitpause = 1
;pausemovetime = 16777215
;supermovetime = 16777215
size.proj.doscale = ID
;size.xscale = Const(size.xscale)
;size.yscale = Const(size.yscale)

[State -3, Display DBFCI Power Gauge - Main]
type = helper
triggerall = !IsHelper
triggerall = !NumHelper(20100)
triggerall = RoundState = 2
trigger1 = !var(34)
trigger2 = var(34)
trigger2 = !(PlayerID(var(34)), var(19) & 128)
trigger3 = var(34)
trigger3 = (PlayerID(var(34)), var(19) & 128)
trigger3 = PlayerID(var(34)), ID > ID
stateno = 20100
ID = 20100
helpertype = normal
name = "DBFCI Power Gauge - Main"
postype = P1
pos = 0,0
ownpal = 1
ignorehitpause = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = ID
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State -3, Display DBFCI Power Gauge - Partner]
type = helper
triggerall = !IsHelper
triggerall = !NumHelper(20110)
triggerall = RoundState = 2
trigger1 = var(34)
trigger1 = (PlayerID(var(34)), var(19) & 128)
trigger1 = PlayerID(var(34)), ID < ID
stateno = 20110
ID = 20110
helpertype = normal
name = "DBFCI Power Gauge - Partner"
postype = P1
pos = 0,0
ownpal = 1
ignorehitpause = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = ID
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State -3, Display PowerUP Blast Box - Main]
type = helper
triggerall = !IsHelper
triggerall = !NumHelper(20220)
triggerall = !NumHelper(20400)
triggerall = RoundState = 2
trigger1 = !var(34)
trigger2 = var(34)
trigger2 = !(PlayerID(var(34)), var(19) & 128)
trigger3 = var(34)
trigger3 = (PlayerID(var(34)), var(19) & 128)
trigger3 = PlayerID(var(34)), ID > ID
stateno = 20400
ID = 20400
helpertype = normal
keyctrl = 0
name = "DBFCI PowerUP Blast Box - Main"
postype = P1
pos = -300 * Const(size.xscale),-600 * Const(size.yscale)
ownpal = 1
ignorehitpause = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = 0; 0 = Main
;size.xscale = Const(size.xscale)
;size.yscale = Const(size.yscale)

[State -3, Display PowerUP Blast Box - Partner]
type = helper
triggerall = !IsHelper
triggerall = !NumHelper(20220)
triggerall = !NumHelper(20400)
triggerall = RoundState = 2
trigger1 = var(34)
trigger1 = (PlayerID(var(34)), var(19) & 128)
trigger1 = PlayerID(var(34)), ID < ID
stateno = 20400
ID = 20400
helpertype = normal
keyctrl = 0
name = "DBFCI PowerUP Blast Box - Main"
postype = P1
pos = -300 * Const(size.xscale),-600 * Const(size.yscale)
ownpal = 1
ignorehitpause = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = 1; 1 = Partner
;size.xscale = Const(size.xscale)
;size.yscale = Const(size.yscale)

[State -3, Display Support Char Box]
type = helper
triggerall = !IsHelper
triggerall = !NumHelper(20220)
triggerall = !NumHelper(20300)
triggerall = RoundState = 2
trigger1 = var(31)
stateno = 20300
ID = 20300
helpertype = normal
keyctrl = 0
name = "DBFCI Sub Character Menu"
postype = P1
pos = -288* Const(size.xscale),-472* Const(size.yscale)
ownpal = 1
ignorehitpause = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = ID
;size.xscale = Const(size.xscale)
;size.yscale = Const(size.yscale)

[State -3, Display Personal Potential Box]
type = helper
triggerall = !IsHelper
triggerall = !NumHelper(20900)
triggerall = NumHelper(20400)
trigger1 = RoundState = 2
stateno = 20900
ID = 20900
helpertype = normal
keyctrl = 0
name = "Character Personal Potential Watch Dog"
postype = P1
pos = -300 * Const(size.xscale),-600 * Const(size.yscale)
ownpal = 1
ignorehitpause = 1
pausemovetime = 16777215
supermovetime = 16777215
size.proj.doscale = 0; 0 = Main
;size.xscale = Const(size.xscale)
;size.yscale = Const(size.yscale)


;---------- Mode and Color --------
[State -3, MODE Var Custom Human]
type = varadd
triggerall = NumHelper(20220)
triggerall = !AILevel
triggerall = var(1) < 10000
triggerall = !IsHelper
triggerall = RoundState < 2 && RoundsExisted = 0
trigger1 = Command = "holdstart"
var(1) = 10000

[State -3, MODE Var Custom Human]
type = varadd
triggerall = NumHelper(20220)
triggerall = !AILevel
triggerall = var(1) >= 10000
triggerall = !IsHelper
triggerall = RoundState < 2 && RoundsExisted = 0
trigger1 = Command != "holdstart"
var(1) = -10000

[State -3, COLOR Var Human]
type = varadd
triggerall = NumHelper(20220)
triggerall = !AILevel
triggerall = !IsHelper
triggerall = RoundState < 2 && RoundsExisted = 0
triggerall = var(52)
triggerall = Command = "holdstart"
trigger1 = command = "down"
trigger1 = !((var(1)%10000 + 12) > var(52))
trigger2 = command = "up"
trigger2 = !((var(1)%10000 - 12) < 1)
var(1) = IFElse(Command = "down",12,-12)


[State -3, COLOR Change]
type = RemapPal
triggerall = NumHelper(20220)
triggerall = !AILevel
triggerall = !IsHelper
triggerall = RoundState < 2 && RoundsExisted = 0
trigger1 = command = "down" || command = "up"
source = 30500, 1
dest = 30500, var(1)%10000


;---------- END Mode and Color ----



;-----------<Attack level for Canceling>
[State -3, ATT Level Clear]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = var(7)
trigger1 = MoveType != A
trigger1 = (time = [0,1]) || AnimTime = 0
trigger2 = (StateNo < 160 || StateNo > 4999)
trigger3 = StateNo = 800
var(7) = 0
ignoreHitPause = 1

[State -3, ATT Level Normal Light]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = MoveType = A
triggerall = var(7) != 1
trigger1 = (StateNo = [200,204]) || (StateNo = [300,304]) || (StateNo = [400,404])
var(7) = 1
ignoreHitPause = 1

[State -3, ATT Level Normal Mid]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = MoveType = A
triggerall = var(7) != 2
trigger1 = (StateNo = [205,209]) || (StateNo = [305,309]) || (StateNo = [405,409])
var(7) = 2
ignoreHitPause = 1

[State -3, ATT Level Normal Heavy]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = MoveType = A
triggerall = var(7) != 3
trigger1 = (StateNo = [210,214]) || (StateNo = [310,314]) || (StateNo = [410,414])
trigger2 = Anim = 981
var(7) = 3
ignoreHitPause = 1

[State -3, ATT Level Special Imapct and Grab]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = var(7) != 4
trigger1 = (StateNo = [1000,1009]) && MoveType = A
trigger2 = (StateNo = 1100)
trigger3 = (StateNo = [900,959]) && MoveType = A
trigger4 = (StateNo = [800,802])
var(7) = 4
ignoreHitPause = 1

[State -3, ATT Level EX-Move]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = var(7) != 5
trigger1 = StateNo = 1050 && MoveType = A
trigger2 = StateNo = 1150
var(7) = 5
ignoreHitPause = 1

[State -3, ATT Level Trump and Super]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = MoveType = A
triggerall = var(7) != 6
trigger1 = StateNo = 2900
trigger2 = StateNo = [3000,4999]
var(7) = 6
ignoreHitPause = 1

[State -3, NO-OK to Combo flag clear]
type = varset
triggerall = !IsHelper
triggerall = (var(18) & 64)
trigger1 = NumHelper(StateNo + 5)
trigger1 = !(Ctrl || StateNo = 21) && Helper(StateNo + 5),MoveContact != 1
trigger2 = Ctrl || StateNo < 200 || MoveType = H
var(18) = var(18) - 64
ignorehitpause = 1

[State -3, NO-OK to Combo flag]
type = varset
triggerall = !IsHelper
triggerall = !(var(18) & 64)
trigger1 = NumHelper(StateNo + 5)
trigger1 = !(Ctrl || StateNo = 21) && Helper(StateNo + 5),MoveContact = 1
var(18) = var(18) + 64
ignorehitpause = 1

;-----------<Special info Announcement>---------
;[State -3, Dodge inform clear]
;type = varset
;triggerall = !IsHelper
;trigger1 = (var(44) & 1) && time <= 1
;trigger1 = !(StateNo = 710)
;var(44) = var(44) - 1

;[State -3, Dodge inform]
;type = varset
;triggerall = !IsHelper
;triggerall = !(var(44) & 1) && time <= 1
;trigger1 = StateNo = 710 || StateNo = 720 || StateNo = 1400
;var(44) = var(44) + 1

;[State -3, Charge inform clear]
;type = varset
;triggerall = !IsHelper
;trigger1 = (var(44) & 2) && time <= 1
;trigger1 = StateNo != 740
;var(44) = var(44) - 2

;[State -3, Charge inform]
;type = varset
;triggerall = !IsHelper
;trigger1 = !(var(44) & 2) && time <= 1
;trigger1 = StateNo = 740
;var(44) = var(44) + 2

;[State -3, Alpha Counter inform Clear]
;type = varset
;triggerall = !IsHelper
;trigger1 = (var(44) & 4) && time <= 1
;trigger1 = !(StateNo = 750 || PrevStateNo = 750)
;var(44) = var(44) - 4

;[State -3, Alpha Counter inform]
;type = varset
;triggerall = !IsHelper
;trigger1 = !(var(44) & 4) && time <= 1
;trigger1 = (StateNo = 750 || PrevStateNo = 750)
;var(44) = var(44) + 4

[State -3, Fast Attack inform Clear]
type = varset
triggerall = !IsHelper
trigger1 = (var(44) & 16) && time <= 1
trigger1 = !(StateNo = 200 || StateNo = 300)
var(44) = var(44) - 16

[State -3, Fast Attack inform]
type = varset
triggerall = !IsHelper
trigger1 = !(var(44) & 16) && time <= 1
trigger1 = (StateNo = 200 || StateNo = 300)
var(44) = var(44) + 16

[State -3, Hadoken inform Clear]
type = varset
triggerall = !IsHelper
trigger1 = (var(44) & 32) && time <= 1
trigger1 = !(StateNo = [1000,1050])
var(44) = var(44) - 32

[State -3, Hadoken inform]
type = varset
triggerall = !IsHelper
trigger1 = !(var(44) & 32) && time <= 1
trigger1 = (StateNo = [1000,1050])
var(44) = var(44) + 32

[State -3, Delta Vel x for AI]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(7) = IFElse((P2Bodydist x = [-20,20]) && (P2Dist y = [-10,10]),0, ((IFElse(BackEdgeBodyDist < 20 || FrontEdgeBodyDist < 20 || StateType != A,0,Vel x) * facing) - (IFElse(Enemynear,BackEdgeBodyDist < 20 || Enemynear,FrontEdgeBodyDist < 20,0,Enemynear,Vel x) * Enemynear,facing)) * facing)
ignorehitpause = 1

[State -3, Delta Vel y for AI]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(8) = Enemynear,vel y - Vel y
ignorehitpause = 1

[State -3, Delta Vel x for AI without self]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(17) = IFElse((Enemynear,BackEdgeBodyDist < 20 || Enemynear,FrontEdgeBodyDist < 20),0,Enemynear,vel x * IFElse(Enemynear,facing = facing,-1,1))
ignorehitpause = 1


[State -3, Detal Gravity for AI]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(9) = IFElse(P2StateType = A && Enemynear,vel y,IFElse(P2MoveType = H,Enemynear,GetHitVar(yaccel),Enemynear,Const(movement.yaccel) * Enemynear,Const(Size.yScale)),0) - IFElse(StateType = A && vel y,IFElse(MoveType = H,GetHitVar(yaccel),Const(movement.yaccel) * Const(Size.yScale)),0)
ignorehitpause = 1

[State -3, Gravity for AI without self]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(19) = IFElse(P2StateType = A && Enemynear,vel y,IFElse(P2MoveType = H,Enemynear,GetHitVar(yaccel),Enemynear,Const(movement.yaccel) * Enemynear,Const(Size.yScale)),0)
ignorehitpause = 1

[State -3, Distance X in Time if you run to P2 for AI]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(12) = (P2Bodydist x - 220) / (Const(velocity.run.fwd.x) * Const(Size.xscale)) + 2	;(2 pre frame for 100, ATK distance 220)
ignorehitpause = 1




[State -3, Prevent-Stage-Front-Edge-Crossup]
type = Width
triggerall = RoundState = 2
trigger1 = MoveType != H
edge = 32, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H
triggerall = P2Dist y > 0 && P2Dist y < (enemynear,Const(size.height) * Enemynear,Const(Size.yScale))
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)) , 0]
trigger1 = p2statetype = S
trigger1 = p2dist y >= -(enemynear,Const(size.mid.pos.y) * Enemynear,Const(Size.yScale))
trigger2 = p2statetype = C
trigger2 = p2dist y >= -(enemynear,Const(size.mid.pos.y) * Enemynear,Const(Size.yScale) / 2)
trigger3 = p2statetype = L
trigger3 = p2dist y >= -(enemynear,Const(size.mid.pos.y) * Enemynear,Const(Size.yScale) / 8)
value = 0
ignorehitpause = 1

;[State -3, Dizzy restart]
;type=varset
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall = var(39) = 2
;trigger1 = PrevstateNo = 5300
;trigger2 = Ctrl || StateNo < 5000
;var(39) = 0
;
;[state -3, dizzy varadd]
;type=varadd
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall= roundstate=2 && movetype=H
;triggerall= !var(39)
;triggerall= !NumHelper(6300)
;triggerall= (stateno!=[120,159]) && (stateno!=[700,702])
;triggerall= stateno>=5000
;triggerall= GetHitVar(hitcount)<4
;triggerall= Enemynear,var(20) = 0
;trigger1= !time
;fvar(39)= 3 + 6*(Enemynear,hitdefattr=SCA,SA) + 7*((Enemynear,hitdefattr=SCA,NA) && GetHitvar(animtype)=0) + 20*((Enemynear,hitdefattr=SCA,NA)&&GetHitvar(animtype)=1) + 28*((Enemynear,hitdefattr=SCA,NA)&&GetHitvar(animtype)>1)
;ignorehitpause=1
;
;[state -3, dizzy varsubtract]
;type=varadd
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall= !var(39)
;triggerall= !NumHelper(6300)
;triggerall= fvar(39) && fvar(39)<var(38)
;triggerall= StateNo != [5000,5999]
;trigger1= time%10=0
;fvar(39)= ifelse((fvar(39)>0 && fvar(39)<2),-(fvar(39)),-1-StateType=C-StateType=L)
;
;[State -3, Ready Dizzy State]
;type=varset
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall= RoundState=2 && !var(39)
;trigger1= fvar(39)>=var(38)
;var(39)=1
;
;[State -3, Enter Dizzy State]
;type=ChangeState
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall= RoundState=2
;triggerall= var(39) =1
;trigger1= (StateNo=5001 + 10*StateType=C) && HitOver
;trigger2= StateNo=5120 && Anim=5120 && !Animtime
;value=5300
;
;[state -3, Ducks]
;type=helper
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall = roundstate = 2
;trigger1= !NumHelper(6300)
;trigger1= var(39)=1
;helpertype=normal
;name= "Dizzy Ducks"
;ID=6300
;stateno=6300
;postype=p1
;pos= 0,0
;ownpal=1
;trans=none
;persistent=0
;
;[state -3, Hif fall set]
;type = HitFallSet
;triggerall = RoundState = 2
;triggerall = !IsHelper
;triggerall = roundstate = 2
;triggerall = StateNo = [5000,5999]
;triggerall = time =1
;trigger1 = var(39)=1
;value = 1
;
;
;[state -3, dizzy var reset]
;type = varset
;triggerall = RoundState = 2
;triggerall = !IsHelper
;trigger1= RoundState != 2
;trigger1= fvar(39)
;fvar(39) = 0

[State -3, Voice Potential Uni 10]
type = playSnd
triggerall = Alive && NumHelper(20400)
triggerall = Helper(20400),var(20)
triggerall = Helper(20400),var(29) = ((60 * 20)-8)
trigger1 = Helper(20400),var(20) = 1
value = 4, 20420 + Random%2
;channel = 0
;abspan = 0
ignorehitpause = 1

[State -3, Voice Potential Uni 20]
type = playSnd
triggerall = Alive && NumHelper(20400)
triggerall = Helper(20400),var(20)
triggerall = Helper(20400),var(29) = ((60 * 20)-8)
trigger1 = Helper(20400),var(20) = 2
value = 4, 20422
;channel = 0
;abspan = 0
ignorehitpause = 1

[State -3, Voice Potential Person]
type = playSnd
triggerall = Alive && NumHelper(20400)
triggerall = Helper(20400),var(20)
triggerall = Helper(20400),var(29) = ((60 * 20)-8)
trigger1 = Helper(20400),var(20) = 3
value = 4, 20430 + Random%3
;channel = 0
;abspan = 0
ignorehitpause = 1



[State -2, MoveGuarded Voice Trump]
type = playSnd
triggerall = (Enemynear,var(19) & 128)
triggerall = !(Enemynear,HitDefAttr = SCA,NA,NP)
triggerall = Enemynear,StateNo = [2900,2909]
triggerall = StateNo = 150 || StateNo = 152 || StateNo = 154
trigger1 = Alive && time = 1
trigger1 = var(6) := 1
value = 4, 150 + Random%3
volumescale = 100
channel = 0
ignorehitpause = 1

[State -2, MoveGuarded Voice Super]
type = playSnd
triggerall = var(6) > 2
triggerall = (Enemynear,HitDefAttr = SCA,HA,HP) || (P2StateNo = [3000,4999])
triggerall = StateNo = 150 || StateNo = 152 || StateNo = 154
triggerall = Alive && time = 1
trigger1 = var(6) := 1
value = 4, 130 + Random%3
volumescale = 100
channel = 0
ignorehitpause = 1

[State -2, MoveGuarded Voice Special]
type = playSnd
triggerall = var(6) > 40
triggerall = !(Enemynear,HitDefAttr = SCA,NA,NP) || (P2StateNo = [1000,2999])
triggerall = StateNo = 150 || StateNo = 152 || StateNo = 154
triggerall = Alive && time = 1
trigger1 = random < 500
trigger1 = var(6) := 1
value = 4, 130 + Random%3
volumescale = 100
channel = 0
ignorehitpause = 1


[State -2, MoveGuarded Voice light]
type = playSnd
triggerall = var(6) > 40
triggerall = (Enemynear,HitDefAttr = SCA,NA,NP)
triggerall = StateNo = 150 || StateNo = 152 || StateNo = 154
triggerall = Alive && time = 1
trigger1 = random < 500
trigger1 = var(6) := 1
value = 4, 120 + Random%3
volumescale = 100
channel = 0
ignorehitpause = 1




[State -3, GetHit Voice light]
type = playSnd
triggerall = var(6) > 40
triggerall = Alive && time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = gethitvar(animtype) = 0 && random < 400
trigger1 = var(6) := 1
value = 4, 5000 + Random%3
channel = 0
ignorehitpause = 1

[State -3, GetHit Voice mid]
type = playSnd
triggerall = var(6) > 40
triggerall = Alive && time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = gethitvar(animtype) = 1 && random < 400
trigger1 = var(6) := 1
value = 4, 5010 + Random%3
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd Voice Hard]
type = playSnd
triggerall = var(6) > 40
triggerall = Alive && time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger1 = var(6) := 1
value = 4, 5020 + Random%3
channel = 0
ignorehitpause = 1

[State -3, GetHit Voice Super]
type = playsnd
triggerall = var(6) > 40
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger1 = var(6) := 1
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger2 = var(6) := 1
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
trigger3 = var(6) := 1
value = 4, 5020 + Random%3
channel = 0
ignorehitpause = 1

[State -3, Reflection Guard power add]
type = PowerAdd
triggerall = NumHelper(7445)
triggerall = Helper(7445),var(6) = 1
trigger1 = !((1.0 * Life / LifeMax) < (1.0 * Enemynear,Life / Enemynear,LifeMax))
value = -1000
ignorehitpause = 1

[State -3, Reflection Guard PalFx 1]
type = PalFX
triggerall = NumHelper(7445)
trigger1 = var(6) = [2,5]
time = 1
add = 200,200,200
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1

[State -3, Reflection Guard PalFx 2]
type = PalFX
triggerall = NumHelper(7445)
trigger1 = var(6) = [6,11]
time = 1
add = 200 - 33*(var(6)-5),200 - 33*(var(6)-5),200 - 33*(var(6)-5)
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1


[State -3, Teleport Explod in for Target]
type = Explod
triggerall = !NumExplod(7120)
triggerall = NumTarget(800) || NumTarget(906) || NumTarget(1106) || NumTarget(3000)
triggerall = Target,StateNo = 7120
trigger1 = Target,time = 1
anim = 7530
ID = 7120
space = stage
pos = 0 * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = Target,ID
bindtime = 1
facing = facing
removetime = 6
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
angle = 0
sprpriority = 3
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0

[State -3, Teleport Explod out for Target]
type = Explod
triggerall = !NumExplod(7120)
triggerall = NumTarget(800) || NumTarget(906) || NumTarget(1106) || NumTarget(3000)
triggerall = Target,StateNo = [7121,7122]
trigger1 = Target,time = 1
anim = 7530
ID = 7121
space = stage
pos = 0 * facing * Const(size.xscale), Const(Size.mid.pos.y) * Const(size.yscale)
bindID = Target,ID
bindtime = 1
facing = facing
removetime = 6
;vel = -1 * facing * Const(size.xscale), 0 * Const(size.yscale)
;accel = 1 * facing * Const(size.xscale),0 * Const(size.yscale)
;supermovetime = 65535
;pausemovetime = 65535
angle = 0
sprpriority = 3
ownpal = 1
scale = 2 * Const(size.xscale),0.3 * Const(size.yscale)
trans = add
alpha = 256,256
;remappal = 6415, 0
ignorehitpause = 0

[State -3, Teleport Explod in for Target - Grow]
type = ModifyExplod
triggerall = NumExplod(7120)
triggerall = NumTarget(800) || NumTarget(906) || NumTarget(1106) || NumTarget(3000)
triggerall = Target,StateNo = 7120
trigger1 = Target,time = [1,6]
ID = 7120
scale = (4 - (0.6 * Target,time)) * Const(size.xscale),(0.3 + (0.28 * Target,time)) * Const(size.yscale)
trans = add
alpha = 256,256

[State -3, Teleport Explod out for Target - Grow]
type = ModifyExplod
triggerall = NumExplod(7121)
triggerall = NumTarget(800) || NumTarget(906) || NumTarget(1106) || NumTarget(3000)
triggerall = Target,StateNo = [7121,7122]
trigger1 = Target,time = [1,6]
ID = 7121
scale = (4 - (0.6 * Target,time)) * Const(size.xscale),(0.3 + (0.28 * Target,time)) * Const(size.yscale)
trans = add
alpha = 256,256

[State -3, SND Teleport Target]
type = PlaySnd
triggerall = NumExplod(7120)
triggerall = NumTarget(800) || NumTarget(906) || NumTarget(1106) || NumTarget(3000)
triggerall = Target,StateNo = 7120
trigger1 = Target,time = 1
value = 5,7530
volumescale = 100
channel = 5
pan = Floor((Target,Pos x - Pos x) * facing)
;abspan = 0

[State -3, AfterImage Persist]
type = afterimagetime
trigger1 = StateType = A && var(9) = 3
time = 2

[State -3, Chip KO]
type = changestate
triggerall = !IsHelper
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5130
ignorehitpause = 1

[State -3, Record LOSE]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 4
trigger1 = Lose
var(0) = 5 + LoseKO + 2*LoseTime

[State -3, Record WIN]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 4
trigger1 = WIN
var(0) = 1 + LoseKO + 2*LoseTime


;=========== DBFCI Damage Dampener ==========

[State -3, Combo Number Reset]
type = varset
triggerall = !IsHelper
triggerall = var(12)
trigger1 = Enemynear,Ctrl || Enemynear,StateNo < 150
var(12) = 0
ignorehitpause = 1

;Helper will use parentvaradd to help add
[State -3, Combo Number]
type = varadd
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = StateNo < 3000
triggerall = !(StateNo = 901 || StateNo = 906)
triggerall = !(StateNo = [930,931])
triggerall = !(StateNo = [1100,1159]) || StateNo = 1108
trigger1 = !NumHelper(StateNo + 5)
trigger1 = HitDefAttr = SCA,AA,AP
trigger1 = Movetype=A && NumTarget
trigger1 = HitCount = 1 && MoveHit = 1
trigger1 = target,time = 0 && target,movetype = H
var(12) = 1
ignorehitpause=1

[State -3, Damage Scaling by States]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = NumEnemy && var(12) = 0
fvar(10) = 1.0
ignorehitpause = 1

[State -3, Damage Scaling by States]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = NumEnemy && var(12) > 0 && var(12) <= 2
trigger1 = hitcount = 1 && Enemynear,time = 0
fvar(10) = IFElse(var(12) = 1,0.7,0.6)
ignorehitpause = 1

[State -3, Damage Scaling by States]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = NumEnemy && var(12) > 2 && var(12) <= 4
trigger1 = hitcount = 1 && Enemynear,time = 0
fvar(10) = 0.5
ignorehitpause = 1

[State -3, Damage Scaling by States]
type = varset
triggerall = !IsHelper
triggerall = RoundState=2
trigger1 = NumEnemy && var(12) > 4 && var(12) <= 10
trigger1 = hitcount = 1 && Enemynear,time = 0
fvar(10) = 0.5 - (0.03 * var(12))
ignorehitpause = 1

[State -3, Damage Scaling by States]
type = varset
triggerall = !IsHelper
triggerall = RoundState=2
trigger1 = NumEnemy && var(12) > 10 && var(12) <= 20
trigger1 = hitcount = 1 && Enemynear,time = 0
fvar(10) = 0.2 - (0.0095 * var(12))
ignorehitpause = 1

[State -3, Damage Scaling by States]
type = varset
triggerall = !IsHelper
triggerall = RoundState=2
trigger1 = NumEnemy && var(12) > 20
trigger1 = hitcount = 1 && Enemynear,time = 0
fvar(10) = 0.01
ignorehitpause = 1

[State -3, Attack var by P2 StateType]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = !(StateNo = [3000,4999])
triggerall = !(StateNo = 901 || StateNo = 906)
triggerall = !(StateNo = [930,931])
triggerall = !(StateNo = [1100,1159]) || StateNo = 1108
triggerall = !(StateNo = [1100,1159]) || StateNo = 1108
triggerall = !((P2StateNo = [7110,7122]) || P2StateNo >= 6000)
trigger1= NumEnemy
fvar(11) = IFElse(Enemynear,StateType = A,0.9,IFElse(Enemynear,StateType = L,0.3,1.0))
ignorehitpause=1

[State -3, Dampener var set]
type = varset
triggerall = !IsHelper
trigger1= RoundState = 2
fvar(28) = (var(29)*0.25) + IFElse(var(24),0.05 + 0.05*var(23),0) + IFElse(var(19) & 16,0.15,0) + IFElse(var(21) & 4,0.1 + 0.1*(var(0) = [5,7]),0) + IFElse((var(21) & 8),0.1,0) + fvar(10) * fvar(11)
ignorehitpause=1

[State -3, Dampener var set override]
type = varset
triggerall = !IsHelper
trigger1 = RoundState=2
fvar(29) = IFElse(fvar(28) < 0.3 && (StateNo = [2900,4999]),0.3,IFElse(fvar(28) < 0.1,0.1,fvar(28)))
ignorehitpause = 1

[State -3, Dampener Apply to Master]
type = AttackMulSet
triggerall = !IsHelper
trigger1 = RoundState = 2
value = fvar(29)
ignorehitpause = 1
;--------------- END Damage Dempener -----------


;===================== Hit Sparks ==================
[State -3, Hit Sparks_Self]
type = helper
triggerall = var(54) > 0 && var(53) > 0
triggerall = MoveContact = 1
triggerall = NumTarget && MoveType = A
trigger1 = Target,Time = 0
stateno = IFElse(MoveGuarded,var(54),var(53))
ID = IFElse(MoveGuarded,var(54),var(53))
helpertype = normal
keyctrl = 0
name = "Hit Sparks"
postype = P1
pos = var(55) * Const(size.xscale), var(56) * Const(size.yscale)
ownpal = 1
pausemovetime = 16777215
supermovetime = 16777215
;size.proj.doscale = IFElse(0,0,1) ; IgnoreHitPause?
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State -3, Reset Hit Spark vars]
type = VarRangeSet
triggerall = !IsHelper
triggerall = time = 0
trigger1 = NumHelper(var(53)) || NumHelper(var(54))
value = 0
first = 53
last = 56

;===========================================================================
;===============================< -2 STATES >=================================
;===========================================================================
[Statedef -2]
;--------------- Dpad centered or not var ----
[State -2, Dpad var centered]
type = VarSet
triggerall = !IsHelper
triggerall = !AILevel && Alive
triggerall = var(48)
trigger1 = !(Command = "holdup" || Command = "holddown" || Command = "holdfwd" || Command = "holdback")
var(48) = 0
ignorehitpause = 1

[State -2, Dpad var NOT centered]
type = VarAdd
triggerall = !IsHelper
triggerall = !AILevel && Alive
trigger1 = (Command = "holdup" || Command = "holddown" || Command = "holdfwd" || Command = "holdback")
var(48) = 1
ignorehitpause = 1

;--------------- Gauge power timer -----------
;in 500 frames increase 150 life
[State -2, DBFCI power add Life]
type = lifeadd
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = var(19) & 16
trigger1 = GameTime%3 = 0
value = 1

;in 5000 frames increase 1 level
[State -2, DBFCI power add Normal]
type = poweradd
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = (Power < PowerMax) && GameTime%5 = 0
trigger2 = Vel x > 0
value = (GameTime%5 = 0) + (Vel x > 0)

[State -2, DBFCI power add PowerUp]
type = poweradd
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = (var(19) & 16)
value = 2 + 2*(var(1)>=10000 && PalNo%3 = 1)

[State -2, DBFCI Blast Power UP 1000]
type = poweradd
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = NumHelper(20400)
trigger1 = (var(19) & 2)
trigger1 = Helper(20400),var(5) = 1 && Helper(20400),var(6) = 2
trigger2 = (var(19) & 4)
trigger2 = Helper(20400),var(5) = 11 && Helper(20400),var(6) = 2
value = 1000
ignorehitpause = 1

[State -2, DBFCI Blast Power UP 1000 IF Hit]
type = poweradd
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = (var(19) & 2)
triggerall = NumHelper(20400) && NumHelper(985)
trigger1 = Helper(985),MoveHit = 2
value = 1000
ignorehitpause = 1

; Helper triggered lifeadd start
; Like Uiharu Type 2
[State -2, DBFCI Support triggered Lifeadd]
type = lifeadd
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = (var(21) & 16)
trigger1 = var(31) = 4 && NumHelper(30000)
trigger1 = GameTime%3 = 0
value = 1

; Helper triggered lifeadd stop
; Like Uiharu Type 2
[State -2, DBFCI Support triggered Lifeadd stop]
type = varset
triggerall = !IsHelper
triggerall = (var(21) & 16)
trigger1 = !(var(31) = 4 && NumHelper(30000))
var(21) = var(21) - 16



[State -2, Clear Helper TargetID]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = var(3)
trigger1 = PlayerIDExist(var(3))
trigger1 = PlayerID(var(3)),MoveType != H || PlayerID(var(3)),StateType = L
trigger2 = PlayerIDExist(var(3)) = 0
var(3) = 0


[State -2, AI Monitor Helper]
type = helper
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = AILevel
trigger1 = !NumHelper(32767)
trigger1 = NumEnemy && RoundState = 2
helpertype = normal
stateno = 32767
ID = 32767
name = "AI Monitor Helper"
postype = P2
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 16777215
pausemovetime = 16777215



;---------- Clear Explods --------------
[State -2, Clear Mikoto_IronSandSwords]
type = RemoveExplod
triggerall = NumExplod(6404)
trigger1 = MoveType = H
trigger2 = StateNo = 52
ID = 6404

[State -2, Clear Miyuki_Digi_ring]
type = RemoveExplod
triggerall = NumExplod(7542)
trigger1 = MoveType = H
trigger2 = !(StateNo = 900)
ID = 7542

[State -2, Clear Miyuki_Digi_ring]
type = RemoveExplod
triggerall = NumExplod(7543)
trigger1 = MoveType = H
trigger2 = !(StateNo = 900)
ID = 7543


[State -2, Dizzy safe]
type = SelfState
triggerall = !IsHelper
triggerall = var(39) = 1
triggerall = time && Alive
triggerall = !(StateNo = [5000,5299])
trigger1 = Ctrl || StateNo = 21
value = IFElse(StateType = S || StateType = C,5300,5050)

[State -2, Dizzy reset to 0]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = fvar(39) != 0
trigger1 = Anim = 5300
trigger2 = var(1) = 0; No dizzy for DBFCI edition
fvar(39) = 0

[State -2, Counter Flag]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = numenemy
var(29) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Idiot Combo flag clear]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = (var(21) & 1)
trigger1 = MoveType != A
trigger2 = Command = "b" || Command = "c"
trigger3 = Command = "qcf-P" || Command = "qcb-P" || Command = "qcf-ab" || Command = "qcb-ab"
trigger4 = Command = "super-01" || Command = "super-02"
var(21) =  var(21) - 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
triggerall = RoundState = 2
trigger1 = !IsHelper
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
trigger2 = StateNo = [200,4999]
trigger2 = MoveType = A
trigger2 = Enemynear,P2Dist x < 0
flag = UnGuardable
ignoreHitPause = 1

[State -2, Detect if There is no zoom helper]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = (var(18) & 2)
trigger1 = !(NumHelper(7660) || NumHelper(7661) || NumHelper(7662) || NumHelper(7663) || NumHelper(7664) || NumHelper(7665) || NumHelper(7666) || NumHelper(7667) || NumHelper(7668) || NumHelper(7669))
var(18) = var(18) - 2
ignorehitpause = 1

[State -2, Detect if There is 1 zoom helper]
type = varset
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = !(var(18) & 2)
trigger1 = (NumHelper(7660) || NumHelper(7661) || NumHelper(7662) || NumHelper(7663) || NumHelper(7664) || NumHelper(7665) || NumHelper(7666) || NumHelper(7667) || NumHelper(7668) || NumHelper(7669))
var(18) = var(18) + 2
ignorehitpause = 1

;-------- Clear Explods ----------------

;-------- Stop Sound ------------



;=====================<Team status>
;============<My Teammate ID>
[State -2, Clear teammate]
type = varset
triggerall = var(34)
trigger1 = PlayerID(var(34)),Alive = 0
trigger2 = PlayerID(var(34)),Life < 1
var(34) = 0
ignorehitpause = 1

[State -2, Parter ID set have Parter]
type = varset
triggerall = var(34) = 0
triggerall = NumPartner
trigger1 = Partner,Alive
var(34) = Partner,ID

[State -2, Parter ID set have Helper]
type = varset
triggerall = var(34) = 0
triggerall = !IsHelper
trigger1 = NumHelper(785)
trigger1 = Helper(785),Alive
var(34) = Helper(785),ID

[State -2, Parter ID set Helper have Parent]
type = varset
triggerall = var(34) = 0
triggerall = IsHelper
trigger1 = Parent,Alive
var(34) = Parent,ID


;============<Enemy IDs>
[State -2, Close Enemy ID clear 1 Enemy]
type = varset
triggerall = var(32)
trigger1 = NumEnemy = 1
trigger1 = Enemynear,Alive = 0 || Enemynear,ID != PlayerID(var(32)),ID
var(32) = 0

[State -2, Close Enemy ID set 1 Enemy]
type = varset
triggerall = !var(32)
trigger1 = NumEnemy = 1
trigger1 = Enemynear,Alive
var(32) = Enemynear,ID

[State -2, Close Enemy ID clear 2 Enemys]
type = varset
triggerall = var(32)
trigger1 = NumEnemy > 1
trigger1 = PlayerID(var(32)),Alive = 0
var(32) = 0

[State -2, Close Enemy ID set 2 Enemys]
type = varset
triggerall = NumEnemy > 1
triggerall = Enemynear,Alive || Enemynear(1),Alive
trigger1 = !var(32)
trigger2 = var(32)
trigger2 = Enemynear,Alive && Enemynear(1),Alive
trigger2 = PlayerID(var(32)),ID != Enemynear,ID
trigger3 = var(32)
trigger3 = (Enemynear,Alive = 1 && Enemynear(1),Alive = 0) || (Enemynear,Alive = 0 && Enemynear(1),Alive = 1)
trigger3 = PlayerID(var(32)),Alive = 0
var(32) = IFElse(Enemynear,Alive,Enemynear,ID,Enemynear(1),ID)

[State -2, Far Enemy ID clear 2 Enemys]
type = varset
triggerall = var(33)
trigger1 = PlayerID(var(33)),Alive = 0
trigger2 = (Enemynear,Alive = 1 && Enemynear(1),Alive = 0) || (Enemynear,Alive = 0 && Enemynear(1),Alive = 1)
var(33) = 0

[State -2, Far Enemy ID set 2 Enemys]
type = varset
triggerall = NumEnemy > 1
triggerall = var(32)
triggerall = Enemynear,Alive && Enemynear(1),Alive
trigger1 = !var(33)
trigger2 = var(33)
trigger2 = PlayerID(var(33)),ID != Enemynear(1),ID
var(33) = Enemynear(1),ID

;============<Team Status>
[State -2, Mark teammate is Defending me]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32)
triggerall = var(35) != 1
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = facing = 1 && !var(33)
trigger1 = Pos x < PlayerID(var(34)),Pos x
trigger1 = PlayerID(var(34)),pos x < PlayerID(var(32)),Pos x
trigger2 = facing = 1 && var(33)
trigger2 = Pos x < PlayerID(var(34)),Pos x
trigger2 = PlayerID(var(34)),pos x < PlayerID(var(32)),Pos x
trigger2 = PlayerID(var(32)),Pos x < PlayerID(var(33)),Pos x
trigger3 = facing = -1 && !var(33)
trigger3 = Pos x > PlayerID(var(34)),Pos x
trigger3 = PlayerID(var(34)),pos x > PlayerID(var(32)),Pos x
trigger4 = facing = -1 && var(33)
trigger4 = Pos x > PlayerID(var(34)),Pos x
trigger4 = PlayerID(var(34)),pos x > PlayerID(var(32)),Pos x
trigger4 = PlayerID(var(32)),Pos x > PlayerID(var(33)),Pos x
var(35) = 1

[State -2, Mark we are trapping enemy]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32)
triggerall = var(35) != 2
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = facing = 1 && !var(33)
trigger1 = Pos x < PlayerID(var(32)),Pos x
trigger1 = PlayerID(var(32)),Pos x < PlayerID(var(34)),Pos x
trigger2 = facing = 1 && var(33)
trigger2 = Pos x < PlayerID(var(32)),Pos x
trigger2 = PlayerID(var(32)),Pos x < PlayerID(var(33)),Pos x
trigger2 = PlayerID(var(33)),Pos x < PlayerID(var(34)),Pos x
trigger2 = Abs(PlayerID(var(32)),Pos x - PlayerID(var(33)),Pos x) < IfElse(Abs(Pos x - PlayerID(var(32)),Pos x)>Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x),Abs(Pos x - PlayerID(var(32)),Pos x),Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x))
trigger3 = facing = -1 && !var(33)
trigger3 = Pos x > PlayerID(var(32)),Pos x
trigger3 = PlayerID(var(32)),Pos x > PlayerID(var(34)),Pos x
trigger4 = facing = -1 && var(33)
trigger4 = Pos x > PlayerID(var(32)),Pos x
trigger4 = PlayerID(var(32)),Pos x > PlayerID(var(33)),Pos x
trigger4 = PlayerID(var(33)),Pos x > PlayerID(var(34)),Pos x
trigger4 = Abs(PlayerID(var(32)),Pos x - PlayerID(var(33)),Pos x) < IfElse(Abs(Pos x - PlayerID(var(32)),Pos x)>Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x),Abs(Pos x - PlayerID(var(32)),Pos x),Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x))
var(35) = 2

[State -2, Mark Teammate Trapped]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32) && var(33)
triggerall = var(35) != 3
;triggerall = PlayerID(var(34)),MoveType = H
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = facing = 1
trigger1 = Pos x < PlayerID(var(32)),Pos x
trigger1 = PlayerID(var(32)),Pos x < PlayerID(var(34)),Pos x
trigger1 = PlayerID(var(34)),Pos x < PlayerID(var(33)),Pos x
trigger1 = PlayerID(var(32)),facing =1 && PlayerID(var(33)),facing = -1
trigger2 = facing = -1
trigger2 = Pos x > PlayerID(var(32)),Pos x
trigger2 = PlayerID(var(32)),Pos x > PlayerID(var(34)),Pos x
trigger2 = PlayerID(var(34)),Pos x > PlayerID(var(33)),Pos x
trigger2 = PlayerID(var(32)),facing =-1 && PlayerID(var(33)),facing = 1
var(35) = 3

[State -2, Mark Teammate Cornered]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32) && var(33)
triggerall = var(35) != 4
;triggerall = PlayerID(var(34)),MoveType = H
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = PlayerID(var(34)),BackEdgeBodydist < 30
trigger1 = Abs(PlayerID(var(34)),pos x) > Abs(PlayerID(var(32)),pos x)
trigger1 = Abs(PlayerID(var(34)),pos x) > Abs(PlayerID(var(33)),pos x)
trigger1 = Abs(PlayerID(var(34)),pos x) - Abs(PlayerID(var(32)),pos x) < 60
trigger1 = Abs(PlayerID(var(34)),pos x) - Abs(PlayerID(var(33)),pos x) < 60
var(35) = 4

[State -2 mark Im fight in lead or fight alone]
type = varset
triggerall = var(35)
triggerall = var(34)
triggerall = var(32)
trigger1 = facing = PlayerID(var(34)), facing
trigger1 = facing = 1
trigger1 = PlayerID(var(34)),pos x < pos x
trigger1 = pos x < PlayerID(var(32)), pos x
trigger2 = facing = PlayerID(var(34)), facing
trigger2 = facing = -1
trigger2 = PlayerID(var(34)),pos x > pos x
trigger2 = pos x > PlayerID(var(32)),pos x
trigger3 = facing != PlayerID(var(34)), facing
trigger3 = facing = 1
trigger3 = pos x > PlayerID(var(34)), pos x
trigger4 = facing != PlayerID(var(34)), facing
trigger4 = facing = -1
trigger4 = pos x < PlayerID(var(34)), pos x
var(35) = 0

[State -2 Clear Teammate mark]
type = varset
triggerall = var(35)
trigger1 = !var(34)
trigger2 = InGuardDist
trigger3 = MoveType = H
trigger4 = var(34)
trigger4 = PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale))
trigger5 = var(32) = 0
var(35) = 0

;------------------ Enemy Lying down OverRide -----------------
[State -2, OverRide Enemy 5110]
type = TargetState
triggerall = RoundState = 2
triggerall = Alive && NumTarget
triggerall = Target,IsHelper = 0
triggerall = Target,Alive && Target,StateNo = 5110 && (Target,PrevStateNo = [5100,5101])
triggerall = Target,Vel y >= 0 && Target,Vel y < (Const720p(46) * Const(Size.yScale))
trigger1 = Target,Time = 1
value = 1115110
ignorehitpause = 1

[State -2, OverRide Enemy 5080]
type = TargetState
triggerall = RoundState = 2
triggerall = Alive && NumTarget
triggerall = Target,IsHelper = 0
triggerall = Target,Alive && Target,StateNo = 5080
trigger1 = Target,Time = 1
value = 1115080
ignorehitpause = 1

[State -2, Enemy Down combo no clear]
type = varset
triggerall = var(16) && NumEnemy
trigger1 = Enemynear,MoveType != H
trigger2 = Enemynear,Ctrl
trigger3 = Enemynear,StateNo = 5120
var(16) = 0
ignorehitpause = 1

[State -2, Enemy Down combo no]
type = varset
triggerall = !var(16) && NumEnemy
triggerall = RoundState = 2
triggerall = Alive && Enemynear,StateType = L
triggerall = Enemynear,Alive 
trigger1 = Enemynear,GetHitVar(HitCount)
var(16) = Enemynear,GetHitVar(HitCount)
ignorehitpause = 1

;------------------ End Enemy Lying down Override -------------

[State -2, Grabed by Koruko]
type = SelfState
value = 30566
triggerall = !IsHelper
triggerall = Alive
triggerall = NumHelper(30000)
triggerall = Helper(30000),StateNo = 30561
trigger1 = Helper(30000),AnimElemTime(2) = 0
ignorehitpause = 1

;-- Forced Selfstate ----------

[State -2, Railgun-2.0-Kuroko-part]
type = SelfState
value = 50219
triggerall = !IsHelper
triggerall = !(StateNo = [50200,50299])
triggerall = Alive && PlayerIDExist(var(34))
triggerall = PlayerID(var(34)),Name = "MISAKA Mikoto" && PlayerID(var(34)),var(19) & 128
trigger1 = PlayerID(var(34)),StateNo = 50200
ignorehitpause = 1

[State -2, Blast Escape Human]
type = SelfState
value = 980
triggerall = !IsHelper
triggerall = AIlevel = 0 && NumEnemy
triggerall = Alive && !(StateNo = [980,989])
triggerall = RoundState = 2
triggerall = !((var(19) & 2) || (var(19) & 4) || (var(19) & 8))
triggerall = NumHelper(20400)
triggerall = Helper(20400),var(5) = 0 || Helper(20400),var(5) = 3
triggerall = Command = "a+b+c" || Command = "z"
trigger1 = var(59) != 99
trigger1 = MoveType = H
trigger1 = var(10) := 3

[State -2, Blast Escalp]; Power UP in -1
type = SelfState
value = 980
triggerall = !IsHelper
triggerall = AIlevel && NumEnemy
triggerall = Alive && !(StateNo = [980,989])
triggerall = RoundState = 2
triggerall = !((var(19) & 2) || (var(19) & 4) || (var(19) & 8))
triggerall = NumHelper(20400)
triggerall = Helper(20400),var(5) = 0 || Helper(20400),var(5) = 3
triggerall = !(StateNo = [120,159])
triggerall = var(59) != 99
trigger1 = MoveType = H
trigger1 = (P2Bodydist x = [-200,300])
trigger1 = P2Dist y = [-320,IFElse(P2StateType = C,160,200)]
trigger1 = Life < (LifeMax * 0.4)
trigger1 = StateType != L
trigger1 = Random < ((10 + 10*GetHitVar(hitcount) + 200*(P2StateNo = [3000,4999]) ) * (AIlevel ** 2 / 64.0))
trigger1 = var(10) := 3
trigger1 = var(57) := 1009831
;Escape Blast

;-- Forced Selfstate ----------

[State -2, KO snd Normalize]
type = varset
triggerall = !IsHelper
trigger1 = Alive && (var(18) & 128)
var(18) = var(18) - 128
ignorehitpause = 1

[State -2, KO snd]
type = playsnd
triggerall = StateNo != 5130
trigger1 = !Alive && !(var(18) & 128)
trigger1 = var(18) := var(18) + 128
value = 4,5150 + Random%2
volumescale = 100
;channel = 0
;abspan = 0
ignorehitpause = 1


[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "AI = %d Task = %d Damage = %f EmyStat = %d, X=%d, Y=%d"
params = AIlevel, var(59), fvar(29),var(46),P2BodyDist x, P2Dist y
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text="\nDebug=%d | Counter=%d PrevS=%d PAL=%d | var(1)=%d" 
params= var(57), var(6), PrevStateNo, PalNo, InGuardDist
ignorehitpause = 1
