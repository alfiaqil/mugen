;============================================================================================================================
; RYUJI YAMAZAKI (KOF 2002)
;============================================================================================================================
; CONVERTED BY FMT (OROCHIKOF97 - IRONMUGEN - DARK SAVIOUR)
;============================================================================================================================
; VERSION 0.8 (FEBRUARY 2006)
;============================================================================================================================
;
;============================================================================================================================
; BASIC MOVES - KOF GAMEPLAY SYSTEM
;============================================================================================================================

;--------------------------------------------------------------------------------------------------------------------------
; Win state decider 
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = !Time
value = 181

;--------------------------------------------------------------------------------------------------------------------------
; Win pose 1 - Chi ...
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, 0]
type = ChangeState
triggerall = !Time
trigger1 = Random <=500
value = 182

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, Special]
type = AssertSpecial
trigger1 = time = [0,340]
flag = RoundNotOver

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 3, =1
value = 0,7
channel = 0

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 4, =1
value = 0,9
channel = 0

;--------------------------------------------------------------------------------------------------------------------------
; Win Pose 2 - Knife
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 182]
type = S
ctrl = 0
anim = 181

[State 181, 0]
type = ChangeState
triggerall = !Time
trigger1 = Random <=500
value = 183

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, Special]
type = AssertSpecial
trigger1 = time = [0,340]
flag = RoundNotOver

[State 182, Voice]
type = PlaySnd
trigger1 = AnimElem = 11, =1
value = 0,6
channel = 0

;--------------------------------------------------------------------------------------------------------------------------
; Win Pose 3 - Ground Crush
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 183]
type = S
ctrl = 0
anim = 182

[State 183, Special]
type = AssertSpecial
trigger1 = time = [0,340]
flag = RoundNotOver

[State 182, Wave]
type = Explod
trigger1 = AnimElem = 9, =0
anim = F61
pos = 50,0
postype = p1
sprpriority = 1
bindtime = 1
removetime = -2
pausemovetime = 99999999999999
Supermovetime = 99999999999999
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 183, Voice]
type = PlaySnd
trigger1 = AnimElem = 9, =0
value = 1,10
channel = 2

[State 183, Voice]
type = PlaySnd
trigger1 = AnimElem = 9, =1
value = 1,12
channel = 1

[State 183, Voice]
type = PlaySnd
trigger1 = AnimElem = 10, =1
value = 0,7
channel = 0

;--------------------------------------------------------------------------------------------------------------------------
; Generic Intro - Coat (KOF 2002 Version)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 191, Generic Intro]
type = ChangeAnim
trigger1 = !Time
trigger2 = teammode = turns
trigger2 = roundno > 0
trigger2 = roundsexisted = 0
trigger2 = !Time
value = 190

[state 191, 0]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

[State 191, Orochi Intro] ; Alternate Intro
type = ChangeState
trigger1 = (P2Name = "Chris" || P4Name = "Chris")
trigger2 = (P2Name = "Shermie" || P4Name = "Shermie")
trigger3 = (P2Name = "Yashiro" || P4Name = "Yashiro")
trigger4 = (P2Name = "Yashiro Nanakase" || P4Name = "Yashiro Nanakase")
trigger5 = (P2Name = "Yamazaki" || P4Name = "Yamazaki")
trigger6 = (P2Name = "Ryuji Yamazaki" || P4Name = "Ryuji Yamazaki")
trigger7 = (P2Name = "Goenitz" || P4Name = "Goenitz")
trigger8 = (P2Name = "Vice" || P4Name = "Vice")
trigger9 = (P2Name = "Mature" || P4Name = "Mature")
trigger10 = (P2Name = "Orochi" || P4Name = "Orochi")
trigger11 = (P2Name = "Mizuchi" || P4Name = "Mizuchi")
trigger12 = (P2Name = "Jin Chonshu" || P4Name = "Jin Chonshu")
trigger13 = (P2Name = "Chonshu" || P4Name = "Chonshu")
trigger14 = (P2Name = "Jin Chonrei" || P4Name = "Jin Chonrei")
trigger15 = (P2Name = "Chonrei" || P4Name = "Chonrei")
value = 192

[State 191, Explod]
type = Explod
trigger1 = !Time
anim = 191
pos = 0,2
postype = p1
bindtime = -1
sprpriority = -2
pausemovetime = 9999999999
supermovetime = 9999999999
facing = 1
ontop = 0
ownpal = 1

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 11, =1
value = 0,25
channel = 0

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 31, =1
value = 0,7
channel = 0

[State 191, 4]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoShadow ; Small issue with the shadow of the coat since '02 Yamazaki intro sprite isn't a complete one. >:/

[State 191, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------
; Intro against Orochi members
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 192, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Laugh]
type = PlaySnd
trigger1 = AnimElem = 3, =1
value = 0,10
channel = 0

[State 192, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------
; Taunt
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, Voice]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 0,8
channel = 0

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;==========================================================================================================================
; NORMAL MOVES
;==========================================================================================================================
;--------------------------------------------------------------------------------------------------------------------------
; Stand Light Punch (far)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 14                     
velset = 0,0                     
ctrl = 0                         
anim = 200                       
poweradd = 0                     
sprpriority = 2 

[State 200, StopSND]
type = StopSND
trigger1 = 1
channel = 3              

[State 200, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = S, NA                     
damage = 39, 0                   
animtype = Light                 
guardflag = M                   
hitflag = MAF                    
priority = 6, Hit                
pausetime = 8, 8               
sparkno = s30000
guard.sparkno = s30040
sparkxy = -29,-86 ; OK
hitsound = S2, var(2)
guardsound = S1,7                               
guard.pausetime = 8,8
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
ground.type = High               
ground.slidetime = 11             
ground.hittime  = 11              
ground.velocity = - 5.95           
airguard.velocity = -3.5,-6     
air.type = High                  
air.velocity = -3.5,-6        
air.hittime = 9
getpower = 121,121
givepower = 21,21
yaccel = .5

[State 200, Voice]
type = PlaySnd
trigger1 = Time = 3
trigger1 = Random <= 700
value = 0, 0

[State 200, SFX]
type = PlaySnd
trigger1 = Time = 2
value = 1, 0

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Stand Light Punch (close)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 205]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 14                     
velset = 0,0                     
ctrl = 0                         
anim = 201                       
poweradd = 0                     
sprpriority = 2 

[State 201, StopSND]
type = StopSND
trigger1 = 1
channel = 3              

[State 201, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA                     
damage = 39, 0                   
animtype = Light                 
guardflag = M                   
hitflag = MAF                    
priority = 6, Hit                
pausetime = 8, 8                 
sparkno = s30000
guard.sparkno = s30040
sparkxy = -20,-86 ; OK
hitsound = S2, var(2)
guardsound = S1,7                               
guard.pausetime = 8,8
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
ground.type = High               
ground.slidetime = 11             
ground.hittime  = 11              
ground.velocity = - 5.95           
airguard.velocity = -3.5,-6     
air.type = High                  
air.velocity = -3.5,-6        
air.hittime = 9
getpower = 121,121
givepower = 21,21
yaccel = .5

[State 201, Voice]
type = PlaySnd
trigger1 = Time = 3
trigger1 = Random <= 700
value = 0, 0

[State 201, SFX]
type = PlaySnd
trigger1 = Time = 2
value = 1, 0

[State 201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Standing light kick (far)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 14
poweradd= 0
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 210, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 210, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Light
damage    = 39,0
hitflag = MAF                    
guardflag = M
pausetime = 8,8
priority = 6, Hit
sparkno = s30000
guard.sparkno = s30040
sparkxy = -10,-75 ; OK
hitsound   = S2,var(3)
guardsound = S1,7
guard.pausetime = 8,8
guard.slidetime = 10
guard.hittime = 10
guard.ctrltime = 11
ground.type = Low
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -5.95
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = 0.52

[State 210, Voice]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random <= 700
value = 0, 0
channel = 0

[State 210, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0
channel = 1

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Standing light kick (close)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 14
poweradd= 0
ctrl = 0
velset = 0,0
anim = 211
sprpriority = 2

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 211, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Light
damage    = 39,0
hitflag = MAF                    
guardflag = L
pausetime = 8,8
priority = 6, Hit
sparkno = s30000
guard.sparkno = s30040
sparkxy = -17,-25 ; OK
hitsound   = S2,var(3)
guardsound = S1,7
guard.pausetime = 8,8
guard.slidetime = 10
guard.hittime = 10
guard.ctrltime = 11
ground.type = Low
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -5.95
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = 0.52

[State 211, Voice]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random <= 700
value = 0, 0
channel = 0

[State 211, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0
channel = 1

[State 211, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Standing strong punch (far)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd = 0
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 220, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 8

[State 220, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 5
attr = S, NA
animtype  = High
damage    = 98
guardflag = M
priority = 5,Hit
pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -11,-65
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 18
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.1
air.velocity = -4,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 220, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 220, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 220, Width]
type = Width
trigger1 = animelem = 3, >=0 && animelem = 7, < 0
player = 15,2

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Standing strong punch (close)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd = 0
ctrl = 0
velset = 0,0
anim = 221
sprpriority = 2

[State 221, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 221, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !movecontact
attr = S, NA
animtype  = High
damage    = 98
guardflag = M
priority = 5,Hit
pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -20,-80
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 18
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.1
air.velocity = -4,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 221, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 221, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 221, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Standing strong kick (far)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 14
poweradd= 0
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 230, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 5
attr = S, NA
animtype  = High
damage    = 108
hitflag = MAF                    
guardflag = M
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-93
hitsound   = S2,var(5)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 240, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 240, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Standing strong kick (close)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 14
poweradd= 0
ctrl = 0
velset = 0,0
anim = 231
sprpriority = 2

[State 231, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 231, 1stHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Low
damage    = 88
hitflag = MAF                    
guardflag = M
pausetime = 8,8
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -25,-65
hitsound   = S2,var(5)
guardsound = S1,7
guard.pausetime = 8,8
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 231, 2ndHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, NA
animtype  = High
damage    = 20
hitflag = MAF                    
guardflag = M
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -30,-93
hitsound   = S2,var(5)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 231, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 231, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 231, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Bussashi - Non-Combo Version
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 206]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 0
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 240, 1stHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, NA
animtype  = High
damage    = 78
hitflag = MAF                    
guardflag = H
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -25,-65
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -9
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 240, 2ndHit]
type = HitDef
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 6
attr = S, NA
animtype  = Low
damage    = 20
hitflag = MAF                    
guardflag = H
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -25,-35
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 240, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 240, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Bussashi - Combo Version
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 0
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 240, 1stHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = S, NA
animtype  = High
damage    = 78
hitflag = MAF                    
guardflag = H
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -25,-65
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -9
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 240, 2ndHit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 6
attr = S, NA
animtype  = Low
damage    = 20
hitflag = MAF                    
guardflag = H
pausetime = 12,12
priority = 5, Hit
sparkno = S30002
guard.sparkno = s30040
sparkxy = -25,-35
hitsound   = S2,var(4)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12.4
air.velocity = -3.5,-6
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
getpower = 121,121
givepower = 21,21
yaccel = 0.55

[State 240, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 240, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;--------------------------------------------------------------------------------------------------------------------------
; Standing Knockdown Kick (Stand C+D)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 550]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 500
sprpriority = 2

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 8

[State 250, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 250, Hit]
type = Hitdef
triggerall = var(13) = 0
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !movecontact
attr = S, NA
hitflag = MA
guardflag = M
animtype = Hard
air.animtype = Back
fall = 1
fall.animtype = Back
fall.yvelocity = -3.4
priority = 5,Hit
damage = 127
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = low
air.type = low
guard.slidetime = 18
guard.hittime = 18
air.hittime = 0
guard.ctrltime = 19
ground.velocity = -4.2, -8.8
guard.velocity = -11.1
air.velocity = -4, -6.1
getpower = 184, 184
givepower = 21, 21
yaccel = .55

[State 250, Hit2] ; Heat Mode
type = Hitdef
triggerall = var(13) > 0
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !movecontact
attr = S, NA
hitflag = MA
guardflag = M
animtype = up
air.animtype = up
fall = 1
fall.animtype = up
fall.yvelocity = -3.4
priority = 5,Hit
damage = 127
pausetime = 12,12
guard.pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = low
air.type = low
guard.slidetime = 18
guard.hittime = 18
air.hittime = 0
guard.ctrltime = 19
ground.velocity = -4.2, -8.8
guard.velocity = -11.1
air.velocity = -4, -6.1
getpower = 184, 184
givepower = 21, 21
yaccel = .55

[State 250, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 250, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Crouching light punch
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 300]
type    = C
movetype= A
physics = C
juggle  = 14
poweradd= 0
ctrl = 0
anim = 300
sprpriority = 2
velset = 0,0

[State 300, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 300, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = C, NA
damage    = 39,0
priority  = 6, Hit
animtype  = Light
hitflag = MAF
guardflag = M
pausetime = 8,8
sparkno = s30000
guard.sparkno = s30040
sparkxy = -15,-55
hitsound = S2, var(2)                
guardsound = S1,7
guard.pausetime = 8,8
guard.slidetime = 10
guard.hittime = 10
guard.ctrltime = 11            
ground.type = Low
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -6.3
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = .5 

[State 300, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0
channel = 0

[State 300, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0
channel = 1

[State 300, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Crouching light kick
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 330]
type    = C
movetype= A
physics = C
juggle  = 14
poweradd= 0
ctrl = 0
anim = 310
sprpriority = 2
velset = 0,0

[State 310, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 310, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = C, NA
damage    = 39
animtype  = Light
hitflag = MAF
guardflag = L
priority = 6, Hit
pausetime = 8,8
sparkno = s30000
guard.sparkno = s30040
sparkxy = 2,-5
hitsound   = S2,var(3)
guardsound = S1,7
guard.pausetime = 8,8
guard.slidetime = 10
guard.hittime = 10
guard.ctrltime = 11
ground.type = Low
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -6.3
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = .5

[State 310, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0
channel = 0

[State 310, SFX]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 310, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Crouching strong punch
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 310]
type    = C
movetype= A
physics = C
juggle  = 15
poweradd= 0
ctrl = 0
anim = 320
sprpriority = 2
velset = 0,0

[State 320, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 320, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
trigger2 = Animelem = 4 && !movecontact
attr = C, NA
damage    = 98
animtype  = Medium
hitflag = MAF
guardflag = M
priority  = 5, Hit
pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -10,-80
hitsound   = S2,var(4)
guardsound = S1,7
guard.velocity = -12.3
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -18
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-1.5
getpower = 121,121
givepower = 21,21
yaccel = .5

[State 320, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1
channel = 0

[State 320, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 320, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Crouching Strong Kick
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 340]
type    = C
movetype= A
physics = C
juggle  = 15
poweradd= 0
ctrl = 0
anim = 330
sprpriority = 2
velset = 0,0

[State 330, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 330, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
trigger2 = Animelem = 5 && !movecontact
attr = C, NA
damage    = 108
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -5,-9
priority = 5, Hit
hitsound   = S2,var(5)
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 19
ground.type = Trip
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2,-4
air.velocity = -2,-4
airguard.velocity = -4,-1.7
guard.velocity = -12
getpower = 121,121
givepower = 21,21

[State 330, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1
channel = 0

[State 330, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 330, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Light Punch
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 400]
type    = A
movetype= A
physics = A
juggle  = 14
ctrl = 0
anim = 400
sprpriority = 2

[State 400, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 400, Hit]
type = HitDef
triggerall = AnimElem = 2
triggerall = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
attr = A, NA
damage    = 39
hitflag = MAF                    
guardflag = H
priority = 6, Hit
pausetime = 10,12
sparkno = s30000
guard.sparkno = s30040
sparkxy = -17,-51           
hitsound = S2, var(2)  
guardsound = S1,7
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 8,8
guard.slidetime = 10
guard.hittime = 10
guard.ctrltime = 11
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
guard.cornerpush.veloff = -3

[State 400, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0
channel = 0

[State 400, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 400, Normal Throw Limiter]
type = VarSet
trigger1 = var(6) <= 0 && movehit
var(9) = 23
persistent = 0

[State 400, Special Throw Limiter]
type = VarSet
trigger1 = var(6) <= 0 && movehit
var(10) = 15
persistent = 0

[State 400, End]
type = CtrlSet
trigger1 = statetype != A
value = 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Light Kick
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 410]
type    = A
movetype= A
physics = A
juggle  = 14
poweradd= 0
ctrl = 0
anim = 410
sprpriority = 2

[State 410, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 410, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = A, NA
damage = 49
guardflag = H
priority = 6, Hit
pausetime = 10,12
sparkno = s30000
guard.sparkno = s30040
sparkxy = -10,-45
hitsound   = S2,var(3)
guardsound = S1,7
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 8,8
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
guard.cornerpush.veloff = -3

[State 410, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0
channel = 0

[State 410, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 410 ,End]
type = CtrlSet
trigger1 = statetype != A
value = 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Light Kick (vertical)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 411]
type    = A
movetype= A
physics = A
juggle  = 14
poweradd= 0
ctrl = 0
anim = 411
sprpriority = 2

[State 411, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 411, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = A, NA
damage = 49
hitflag = MAF
guardflag = H
priority = 6, Hit
pausetime = 10,12
sparkno = s30000
guard.sparkno = s30040
sparkxy = -19,-25
hitsound   = S2,var(3)
guardsound = S1,7
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 8,8
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
air.velocity = -3.5,-6
getpower = 121,121
givepower = 21,21
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
guard.cornerpush.veloff = -3

[State 411, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0
channel = 0

[State 411, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 411, End]
type = CtrlSet
trigger1 = statetype != A
value = 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Strong Punch
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 420]
type    = A
movetype= A
physics = A
juggle  = 10
poweradd= 0
ctrl = 0
anim = 420
sprpriority = 2

[State 420, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 420, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !movecontact
attr = A, NA
damage = 98
hitflag = MAF
guardflag = H
priority = 5, Hit
pausetime = 10,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -15,-91
hitsound   = S2,var(4)
guardsound = S1,7
animtype = Med
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 12,12
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
air.velocity = -3.5,-6
yaccel = 0.52
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
getpower = 121,121
givepower = 21,21

[State 420, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1
channel = 0

[State 420, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1
channel = 0

[State 420, End]
type = CtrlSet
trigger1 = statetype != A
value = 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Strong Punch (vertical)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 421]
type    = A
movetype= A
physics = A
juggle  = 10
poweradd= 0
ctrl = 0
anim = 421
sprpriority = 2

[State 421, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 421, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 5
attr = A, NA
damage = 98
hitflag = MAF
guardflag = H
priority = 5, Hit
pausetime = 10,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -37,-60
hitsound   = S2,var(4)
guardsound = S1,7
animtype = Med
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 12,12
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
air.velocity = -3.5,-6
yaccel = 0.52
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
getpower = 121,121
givepower = 21,21

[State 421, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1
channel = 0

[State 421, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1
channel = 0

[State 421, End]
type = CtrlSet
trigger1 = statetype != A
value = 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Strong Kick
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 430]
type    = A
movetype= A
physics = A
juggle  = 10
poweradd= 0
ctrl = 0
anim = 430
sprpriority = 2

[State 430, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 430, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = A, NA
damage    = 108
hitflag = MAF
guardflag = H
priority = 5, Hit
pausetime = 10,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -8,-30
hitsound   = S2,var(5)
guardsound = S1,7
animtype = Med
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 12,12
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
air.velocity = -3.5,-6
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
getpower = 121,121
givepower = 21,21

[State 430, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 430, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

;--------------------------------------------------------------------------------------------------------------------------
; Jump Strong Kick (vertical)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 431]
type    = A
movetype= A
physics = A
juggle  = 10
poweradd= 0
ctrl = 0
anim = 431
sprpriority = 2

[State 431, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 431, Hit]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = A, NA
damage    = 108
guardflag = H
priority = 5, Hit
pausetime = 10,12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -27,-62
hitsound   = S2,var(5)
guardsound = S1,7
animtype = Med
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.pausetime = 8,8
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
air.velocity = -3.5,-6
yaccel = 0.52
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -7
guard.cornerpush.veloff = -8
getpower = 121,121
givepower = 21,21

[State 431, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 431, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

;--------------------------------------------------------------------------------------------------------------------------
; Air Knockdown Kick (Jump C+D)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 15
ctrl = 0
anim = 550
sprpriority = 2

[State 440, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 440, Hit]
type = Hitdef
triggerall = var(13) = 0
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = A, NA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = Back
fall = 1
fall.animtype = Back
fall.yvelocity = -3.4
priority = 6,Hit
damage = 98
pausetime = 10, 12
guard.pausetime = 10, 12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -39, -81
hitsound = S1,8
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 20
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -4.2, -9
guard.velocity = -11.1
air.velocity = -4, -9
getpower = 184, 184
givepower = 21, 21
yaccel = .54

[State 440, Hit]
type = Hitdef
triggerall = var(13) > 0
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = A, NA
hitflag = MAF
guardflag = M
animtype = Up
air.animtype = DiagUp
fall = 1
fall.animtype = Up
fall.yvelocity = -3.4
priority = 6,Hit
damage = 98
pausetime = 10, 12
guard.pausetime = 10, 12
sparkno = S30002
guard.sparkno = s30040
sparkxy = -39, -81
hitsound = S1,8
guardsound = S1,7
guard.pausetime = 12,12
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 20
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -4.2, -9
guard.velocity = -11.1
air.velocity = -4, -9
getpower = 184, 184
givepower = 21, 21
yaccel = .54

[State 440, Voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 440, SFX]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 440, End]
type = CtrlSet
trigger1 = statetype != A
value = 1

;--------------------------------------------------------------------------------------------------------------------------
; KOF 2K series Roll / Emergency Roll / Counter Attack
;--------------------------------------------------------------------------------------------------------------------------

;--------------
; Roll Backward
;--------------

[Statedef 520]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 620
sprpriority = 2

[State 520, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 520, Invincibility]
type = NotHitBy
trigger1 = time = [0,24]
value = ,AA,AP

[State 520, SHADOWS]
type = AfterImage
trigger1 = Time = 1
time = 10
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3

[State 520, Velocity]
type = VelSet
trigger1 = time = [8,24]
x = -5

[State 520, Push 2]
type = PlayerPush
trigger1 = time = [0,8]
trigger2 = time >= 25
value = 1

[State 520, Yamazaki Voice] ; "Hee !"
type = PlaySnd
trigger1 = !Time
value = 0,3

[State 520, End] 
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------
; Roll Forward
;-------------

[Statedef 500]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 600
sprpriority = 2

[State 500, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 500, Invincibility]
type = NotHitBy
trigger1 = time = [0,24]
value = ,AA,AP

[State 500, 2]
type = AfterImage
trigger1 = Time = 1
time = 10
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3

[State 500, 3] 
type = velset
trigger1 = time = [8,24]
x = 5

[State 500, Push]
type = PlayerPush
trigger1 = time = [8,24]
value = 0

[State 500, Push 2]
type = PlayerPush
trigger1 = time = [0,8]
trigger2 = time >= 25
value = 1

[State 500, Yamazaki Voice] ; "Hee !"
type = PlaySnd
trigger1 = !Time
value = 0,3

[State 500,5] 
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------
; Emergency Roll Forward
;-----------------------

[Statedef 501]
type = S
movetype = I
physics = N
anim = 600
velset = 0,0
ctrl = 0

[State 501, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 501, 1]
type = SuperPause
trigger1 = !Time
persistent = 1
ignorehitpause = 1
time = 11
pos = -8,-80
poweradd = -1000
movetime = 9
darken = 0
anim = -1

[State 501, Flash]
type = EnvColor
trigger1 = time = 1
col = 255,255,255
under = 1
time = 2

[State 501, Invincibility]
type = NotHitBy
trigger1 = time = [0,24]
value = SCA

[State 501, Shadows]
type = AfterImage
trigger1 = Time = 3
time = 30
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 9
FrameGap = 3

[State 501, 5]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 501, Velocity]
type = VelSet
trigger1 = time = [8,24]
x = 5

[State 7501, 9]
type = PlayerPush
trigger1 = Time < 24
value = 0

[State 501, 10]
type = PlayerPush
trigger1 = Time >= 24
value = 1

[State 501, 11]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------
; Emergency Roll Backward
;------------------------

[Statedef 521]
type = S
movetype = I
physics = N
anim = 620
velset = 0,0
ctrl = 0

[State 521, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 521, 1]
type = SuperPause
trigger1 = !Time
persistent = 1
ignorehitpause
time = 11
pos = -8,-80
poweradd = -1000
movetime = 9
darken = 0
anim = -1

[State 521, Flash]
type = EnvColor
trigger1 = time = 1
col = 255,255,255
under = 1
time = 2

[State 521, Invincibility]
type = NotHitBy
trigger1 = time = [0,24]
value = SCA

[State 521, Shadows]
type = AfterImage
trigger1 = Time = 3
time = 30
PalBright = 0, 0, 0
PalContrast =  250,250,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 9
FrameGap = 3

[State 521, 5]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 521, Velocity]
type = VelSet
trigger1 = time = [8,24]
x = -5

[State 521, 9]
type = PlayerPush
trigger1 = Time < 24
value = 0

[State 521, 10]
type = PlayerPush
trigger1 = Time >= 24
value = 1

[State 521, 11]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------
; Counter Knockdown Kick (Stand C+D)
;-----------------------------------

[Statedef 251]
type    = S
movetype= A
physics = S
juggle  = 15
ctrl = 0
velset = 0,0
anim = 640
sprpriority = 2

[State 251, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 251, Pause]
type = SuperPause
trigger1 = !Time
persistent = 0
time = 3
pos = 20,-90
poweradd = -1000
movetime = 0
darken = 0
anim = -1

[State 251, Flash]
type = EnvColor
trigger1 = time = 1
col = 255,255,255
under = 1
time = 2

[State 251, Invincible]
type = NotHitBy
trigger1 = time = [0,37]
value = SCA

[State 251, Explod]
type = Explod
trigger1 = movehit
trigger1 = Random < 300 
persistent = 0
anim = 8000
pos = 10,100
postype = left
supermove = 1
bindtime = -1
sprpriority = 2
pausemovetime = 9999999999
supermovetime = 9999999999
facing = 1
ontop = 0
ownpal = 1

[State 251, 0]
type = Hitdef
triggerall = var(13) = 0
trigger1 = Animelem = 6
trigger2 = AnimElem = 7 && !movecontact
attr = S, NA
hitflag = MA
guardflag = M
animtype = Hard
air.animtype = Back
fall = 1
fall.animtype = Back
fall.yvelocity = -3.4
priority = 7,Hit
damage = 49
pausetime = 11, 13
guard.pausetime = 12, 15
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = Low
guard.slidetime = 22
guard.hittime = 44
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -4.2, -8.8
guard.velocity = -11.1
air.velocity = -4, -6.1
getpower = 184, 184
givepower = 21, 21
yaccel = .55

[State 251, 0]
type = Hitdef
triggerall = var(13) > 0
trigger1 = Animelem = 6
trigger2 = AnimElem = 7 && !movecontact
attr = S, NA
hitflag = MA
guardflag = M
animtype = Up
air.animtype = DiagUp
fall = 1
fall.animtype = Up
fall.yvelocity = -3.4
priority = 7,Hit
damage = 49
pausetime = 11, 13
guard.pausetime = 12, 15
sparkno = S30002
guard.sparkno = s30040
sparkxy = -26,-74
hitsound = S1,8
guardsound = S1,7
ground.type = High
air.type = Low
guard.slidetime = 22
guard.hittime = 44
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -4.2, -8.8
guard.velocity = -11.1
air.velocity = -4, -6.1
getpower = 184, 184
givepower = 21, 21
yaccel = .6

[State 251, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 251, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 251, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------
; Counter CD Evasion (KOF 2002)
;------------------------------

[Statedef 502]
type = S
movetype = I
physics = N
anim = 600
velset = 0,0
ctrl = 0

[State 502, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 502, 1]
type = SuperPause
trigger1 = !Time
persistent = 1
ignorehitpause
time = 11
pos = -8,-80
poweradd = -1000
movetime = 9
darken = 0
anim = -1

[State 502, Flash]
type = EnvColor
trigger1 = time = 1
col = 255,255,255
under = 1
time = 2

[State 502, 5]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 502, Invincible]
type = NotHitBy
trigger1 = time = [0,30]
value = SCA

[State 502, Velocity]
type = VelSet
trigger1 = time = [8,24]
x = 5

[State 502, 9]
type = PlayerPush
trigger1 = Time < 24
value = 0

[State 502, 10]
type = PlayerPush
trigger1 = Time >= 24
value = 1

[State 502, 11]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Throw C
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 650]
type    = S
movetype= A
physics = S
juggle  = 14
velset = 0,0
ctrl = 0
anim = 650
sprpriority = 5

[State 650, Grab Attempt]
type = HitDef
Trigger1 = !Time
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 660       
p2stateno = 670  
fall = 1   
yaccel = .5

[State 650, 3]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = !AnimTime
value = 221
ctrl = 0

;----------------
; Throw C Success
;----------------

[Statedef 660] 
type    = S
movetype= A
physics = S
anim = 651
sprpriority = 1

[State 660, Grab Snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,23
channel = 1

[State 660 ,Grab Spark]
type = Explod
trigger1 = AnimElem = 3
anim = 6030
pos = 30, -80
postype = P1
sprpriority = 2
ontop = 1
bindtime = 1
removetime = -2
pausemovetime = 0
ownpal = 1

[State 660, Yamazaki Snd]
type = PlaySnd
trigger1 = AnimElem = 5, =1
value = 0,2
channel = 0

[State 660, Wind Snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,15
channel = 1

[State 660, Ground Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 7017
pos = 46,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 660, Screen Shaking]
type = Envshake
trigger1 = AnimElem = 7
time = 20
freq = 70
ampl = -2

[State 660, Slam Snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,19
channel = 1

[State 660, Target]
type = targetbind
trigger1 = animelem = 1, >= 0
trigger1 = animelem = 4, < 0
pos = 20,0

[State 660, target]
type = targetbind
trigger1 = animelem = 4
pos = 50,-141

[State 660, target]
type = targetbind
trigger1 = animelem = 5
pos = 48,-140

[State 660, target]
type = targetbind
trigger1 = animelem = 6
pos = 44 ,-135

[State 660, target]
type = targetbind
trigger1 = animelem = 7
pos = 49,-10

[State 660, width]
type = width
trigger1 = !Time
edge = 50,50

[State 660, state]
type = changestate
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------
; Enemy grabbed by Throw C
;-------------------------

[Statedef 670]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 670, Camera]
type = ScreenBound
trigger1 = 1

[State 670, anim]
type = changeanim2
trigger1 = !Time
value = 652

[State 1515, life]
type = lifeadd
trigger1 = time = 29
value = -146

[State 670, Next]
type = ChangeState
trigger1 = !AnimTime
value = 671

[Statedef 671]
type = A
movetype = H
physics = N
poweradd = 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 671, 2]
type = ChangeAnim
trigger1 = !Time
value = ifelse(SelfAnimExist(5162),5162,ifelse(SelfAnimExist(5161),5161,5160))

[State 671, Vel]
type = VelSet
trigger1 = time >= 0
x = -4

[State 671, Vel]
type = VelSet
trigger1 = !Time
y = -3.5

[State 671, Gravity]
type = VelAdd
trigger1 = time > 2
y = 0.5

[State 671, 5]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 0
value = 672

[Statedef 672]
type    = A
physics = N
movetype= H
ctrl = 0

[State 672, Ground]
type = PosSet
trigger1 = !time
y = 0

[State 672, Land Snd]
type = PlaySnd
trigger1 = !Time
value = F7,1
channel = 1

[State 660, Ground Wave]
type = Explod
trigger1 = !TIme
anim = 7017
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 672, Freeze]
type = PosFreeze
trigger1 = time = [0,3]

[State 672, ANIM]
type = Changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 672, CUSTOM ANIM]
type = Changeanim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5162),5162,ifelse(SelfAnimExist(5161),5161,5160))

[State 672, Vel]
type = VelSet
trigger1 = time = 4
x = -4
y = -3

[State 672, Gravity]
type = VelAdd
trigger1 = time >= 6
y = 0.5

[State 6124, End]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -10
trigger1 = time >= 10
value = 673

[Statedef 673]
type    = L
movetype= H
physics = N
velset = 0,0

[State 673, Land Snd]
type = PlaySnd
trigger1 = !Time
value = F7,1
channel = 1

[State 660, Ground Wave]
type = Explod
trigger1 = !TIme
anim = 7017
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 673, Ground]
type = PosSet
trigger1 = !time
y = 0

[State 673, CUSTOM ANIM]
type = Changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 673, GetUp]
type = SelfState
trigger1 = time = 41 && alive
value = 5120

[State 673,End]
type = SelfState
trigger1 = time = 40 && !alive
value = 5150

;--------------------------------------------------------------------------------------------------------------------------
; Throw D
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 680]
type    = S
movetype= A
physics = S
juggle  = 14
velset = 0,0
ctrl = 0
anim = 650
sprpriority = 5

[State 680, Grab Attempt]
type = HitDef
Trigger1 = !Time
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 681       
p2stateno = 690  
fall = 1   
yaccel = .5

[State 680, 3] ; Perform Kick
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = !AnimTime
value = 231
ctrl = 0

;----------------
; Throw D Success
;----------------

[Statedef 681] 
type    = S
movetype= A
physics = S
anim = 661
sprpriority = 1

[State 660, Grab Snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,23
channel = 1

[State 660 ,Grab Spark]
type = Explod
trigger1 = AnimElem = 3
anim = 6030
pos = 30, -80
postype = P1
sprpriority = 2
ontop = 1
bindtime = 1
removetime = -2
pausemovetime = 0
ownpal = 1

[State 660, Target]
type = targetbind
trigger1 = animelem = 1, >= 0
trigger1 = animelem = 4, < 0
pos = 20,0

[State 660, target]
type = targetbind
trigger1 = animelem = 4
pos = 50,-141

[State 660, target]
type = targetbind
trigger1 = animelem = 5
pos = 56,-130

[State 660, target]
type = targetbind
trigger1 = animelem = 6
pos = 50,-118

[State 660, target]
type = targetbind
trigger1 = animelem = 7
pos = 37,-94

[State 660, target]
type = targetbind
trigger1 = animelem = 8
pos = -46,-26

[State 660, Wind Snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,15
channel = 2

[State 660, Slide Snd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,14
channel = 1

[State 660, Ryuji Snd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,1
channel = 0

[State 660, End]
type = Turn
trigger1 = !AnimTime

[State 660, End2]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------
; Enemy grabbed by Throw D
;-------------------------

[Statedef 690]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 690, Camera]
type = ScreenBound
trigger1 = 1

[State 690, anim]
type = changeanim2
trigger1 = !Time
value = 662

[State 690, Next]
type = ChangeState
trigger1 = !AnimTime
value = 691

[Statedef 691]
type = A
movetype = H
physics = N
sprpriority = 2

[State 691, Floor]
type = PosSet
trigger1 = !time
y = 0

[State 691, damage]
type = LifeAdd
trigger1 = !Time
value = -126

[State 826, vel]
type = Velset
trigger1 = time = [0,17]
x = 3

[State 826, Friction]
type = VelMul
trigger1 = time = [1,17]
x = 0.8

[State 826, Stop]
type = VelSet
trigger1 = time = 18
x = 0

[State 815, Anim]
type = ChangeAnim
triggerall = SelfAnimExist(5161)
trigger1 = !Time
value = 5161

[State 815, Anim]
type = ChangeAnim
trigger1 = Anim = 5161 && time = 10
value = 5111

[State 815, anim]
type = changeanim2
triggerall = !SelfAnimExist(5161)
trigger1 = !Time
value = 5160

[State 865, 5]
type = SelfState
trigger1 = Anim = 5111
trigger1 = time = 30
value = 5110

[State 865, 5]
type = SelfState
trigger1 = Anim = 5160
trigger1 = !AnimTime
value = 5110

;--------------------------------------------------------------------------------------------------------------------------
; Guard Crush
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 9000]
type    = S
physics = S
anim = 9000
ctrl = 0

[State 9000, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 9000, Freeze]
type = Pause
trigger1 = !Time
time = 3
movetime = 3
ignorehitpause = 1

[State 9000, Guard Crush Explod for P1]
type = Explod
triggerall = numexplod(810) <= 0 && teamside = 1 
trigger1 = !Time
anim = 810
id   = 810
pos = 0,110
postype = left
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

[State 9000, Guard Crush Explod for P2]
type = Explod
triggerall = numexplod(811) <= 0 && teamside = 2
trigger1 = !Time
anim = 811
id   = 811
pos = -97,110
postype = right
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

[State 9000, Guard Crush Var Reset]
type = VarSet
trigger1 = !Time
var(8) = 0
ignorehitpause = 1

[State 9000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
ignorehitpause = 1

;-----------
; Special KO
;-----------

[Statedef 1983]
type = S
movetype = I
physics = N
anim = 9741

[State 1983, Pause]
type = Pause
trigger1 = !Time
time = 40
movetime = 40

[State 1983, LifeBar]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

[State 1983, Black]
type = BGPalFX
trigger1 = Time < 50
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = Time*5

;----------
; Normal KO
;----------

[Statedef 1984]
type = S
movetype = I
physics = N
anim = 9741

[State 1984, LifeBar]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

;--------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;--------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------

[Statedef -2]

;;King of Fighters XI Pause K.O
;[State -2, Pause]
;type = Pause
;triggerall = winko
;trigger1 = !var(15)
;trigger1 = var(15) := 1
;time = 50
;movetime = 0
;darken = 0
;persistent = 0
;ignorehitpause 1

[State -2, var reset]
type = varset
trigger1 = var(15)
trigger1 = roundstate = 1
var(59) = 1
ignorehitpause = 1

[State -2, StopSnd]
type = StopSnd
trigger1 = movetype = H
trigger2 = prevstateno = 100
channel = 3

[State -2, Reset]
type = VarSet
trigger1 = stateno = 0
trigger2 = stateno = 3100
trigger3 = stateno = 4100
v = 18
value = 0

[State -2, Reset]
type = VarSet
trigger1 = stateno = 0
v = 19
value = 0

;--------------------------------------------------------------------------------------------------------------------------
; Throw Guard Limitation
;
; I found an issue using the usual p2stateno != [guard state]. Clark won't be able to throw even if opponent wasn't 
; guarding an attack. I chose to remove that method and implement a new way to detect this type of issue and fix it
; forever, using a variable that will keep track of any strictly positive moveguarded values.
;--------------------------------------------------------------------------------------------------------------------------

[State -2, Guard Var]
type = VarSet
trigger1 = stateno = [400,600] ; Basic moves states.
trigger1 = movecontact > 0 ; This is the key : checks if opponent has guarded a basic attack
v = 16
value = 17
persistent = 0
ignorehitpause = 1

[State -2, Guard Var 2]
type = VarAdd
trigger1 = var(16) > 0
var(16) = -1
ignorehitpause = 1

[State -2, Guard Var 3]
type = VarSet
trigger1 = var(16) < 0
var(16) = 0
persistent = 0
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------
; Counter Hit System
;--------------------------------------------------------------------------------------------------------------------------

[State -2, Enemy Is Idle]
type = VarSet
triggerall = NumEnemy
trigger1 = enemy, movetype = I || var(7) >= 1
ignorehitpause = 1
var(6) = 0

[State -2, Enemy Attacks]
type = VarSet
triggerall = NumEnemy
trigger1 = enemy, movetype = A
ignorehitpause = 1
var(6) = 1

[State -2, Reset var(6)]
type = VarSet
triggerall = NumEnemy
trigger1 = var(7) > 20
trigger1 = enemy, movetype = H
ignorehitpause = 1
var(6) = 0

[State -2, Counter]
type = VarAdd
trigger1 = var(7) >= 1
ignorehitpause = 0
var(7) = 1

[State -2, Next]
type = VarSet
trigger1 = var(6) = 1 && MoveHit
trigger1 = stateno != 330 ; Crouching Strong Kick
ignorehitpause = 1
var(7) = 1

[State -2, Counter Explod for P1]
type = Explod
triggerall = numexplod(800) <= 0 && teamside = 1 
triggerall = !(stateno = 1005 && anim = 1001)
triggerall = !(stateno = 1005 && anim = 1000)
trigger1 =  var(6) = 1 && MoveHit
anim = 800
id   = 800
pos = 0,110
postype = left
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

[State -2, Counter Explod for P2] 
type = Explod
triggerall = numexplod(801) <= 0 && teamside = 2
triggerall = !(stateno = 1005 && anim = 1001)
triggerall = !(stateno = 1005 && anim = 1000)
trigger1 = var(6) = 1 && MoveHit
anim = 801
id   = 801
pos = -66,110
postype = right
bindtime = -1
sprpriority = 2
supermove = 1
facing = 1
ontop = 0
ownpal = 1
ignorehitpause = 1 
persistent = 0

[State -2, COUNTER Reset]
type = VarSet
trigger1 = var(7) >= 43 ;&& MoveHit
trigger2 = p2movetype != H
trigger3 = movetype = H
ignorehitpause = 1
var(7) = 0

[State -2, COUNTER Available]
type = AssertSpecial
trigger1 = var(7) > 0 
flag = NoJuggleCheck

;--------------------------------------------------------------------------------------------------------------------------
; KOF Damage Scaling System
;--------------------------------------------------------------------------------------------------------------------------

[State -2, Combo Variable]
type = Varadd
trigger1 = hitcount > 0 && movehit
var(11) = movehit
persistent = 0

[State -2, Default]
type = AttackMulSet
trigger1 = var(11) <= 0
value = 1

[State -2, Small Combo]
type = AttackMulSet
trigger1 = var(11) >= 5
value = .86

[State -2, Reset]
type = Varset
triggerall = NumEnemy
trigger1 = var(11) > 0
trigger1 = enemy, movetype != H
var(11) = 0

;--------------------------------------------------------------------------------------------------------------------------
; KOF-like Lifebar Display
;--------------------------------------------------------------------------------------------------------------------------

[State -2, Special]
type = AssertSpecial
trigger1 = roundstate = [0,1]
trigger2 = roundstate = 4
trigger3 = Ctrl = 0 && Anim = 0 && MoveType != H
flag = NoBarDisplay
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------
; Heat Mode (KOF NeoWave)
;--------------------------------------------------------------------------------------------------------------------------

;-----------
; Activation
;-----------

;[State -2, VarActivate]
;type = VarSet ; To activate Heat Mode ...
;triggerall = roundstate = 2 && ctrl ; Can't be activated during intro/winpose
;triggerall = var(13) != 1 ; It shouldn't be already activated :P
;triggerall = life > 200 ; Character must have his life > 20 %
;triggerall = command = "c" ; Then we map a button for Heat Mode
;triggerall = var(33) != 1 ; I don't want AI to enter the mode
;trigger1 = stateno != [200,4999] ; Character should not be attacking
;trigger1 = stateno != [5000,5999] ; Character should not be hit
;trigger1 = stateno != [6000,20000] ; Character shouldn't be attacking 2
;v = 13
;value = 1
;ignorehitpause = 1 ; Shouldn't be affected by hitpauses

;---------------------
; Heat Mode Time Count
;---------------------

;[State -2, HeatTime]
;type = VarAdd
;trigger1 = var(13) = 1 ; Heat Mode Activated
;trigger1 = GameTime%1 = 0
;v = 14
;value = 1
;ignorehitpause = 1

;[State -2, HeatTimeReset]
;type = VarSet
;trigger1 = var(13) = 0 ; Heat Mode DeActivated
;trigger1 = var(14) > 0 ; Previously enabled Heat Mode
;v = 14
;value = 0
;ignorehitpause = 1

;------------------------------
; Heat Mode Manual Deactivation
;------------------------------

;[State -2, VarDeactivate]
;type = VarSet ; To manually deactivate Heat Mode ...
;triggerall = var(13) = 1 ; It should be already activated :P
;triggerall = life > 200 ; Character must have his life > 20 %
;triggerall = var(14) > 5 ; At least 5 ticks must have passed
;triggerall = command = "c" ; Then we map a button for Heat Mode
;trigger1 = stateno != [200,4999] ; Character should not be attacking
;trigger1 = stateno != [5000,5999] ; Character should not be hit
;trigger1 = stateno != [6000,20000] ; Character shouldn't be attacking 2
;v = 13
;value = 0
;ignorehitpause = 1

;[State -2, VarDeactivate2]
;type = VarSet ; To automatically deactivate Heat Mode ...
;triggerall = var(13) = 1 ; It should be already activated :P
;triggerall = var(14) > 2 ; At least 2 ticks must have passed
;trigger1 = stateno = [5000,5999] ; Character is in a hit state
;trigger2 = life <= 200 ; Life limitation is reached
;trigger3 = movetype = H ; Character is in a custom state
;v = 13
;;value = 0
;ignorehitpause = 1

;-------------------
;Red Flashing Effect
;-------------------

[State -2, RedFlash]
type = PalFX
triggerall = var(13) = 1 ; Character must be in Heat Mode
trigger1 = (GameTime%2) = 0
time = 1
add = 190,20,20
ignorehitpause = 1

;-------------------
; Offensive Power Up
;-------------------

[State -2, Attack Up]
type = AttackMulSet
trigger1 = var(13) = 1
value = 1.25
ignorehitpause = 1

[State -2, Attack Reset]
type = AttackMulSet
trigger1 = var(13) = 0
value = 1
ignorehitpause = 1

;--------------------
; Heat Mode Life Loss
;--------------------

[State -2, Loss]
type = LifeAdd
trigger1 = var(13) = 1 ; Heat Mode Activated
trigger1 = GameTime%1 = 0
value = -1
ignorehitpause = 1

;---------------------------------
; Super Cancel Mode Starting Power
;---------------------------------

;[State -2, Power]
;type = PowerAdd
;trigger1 = roundno = 1 && roundstate = 1
;value = 3000
;persistent = 0

;--------------------------------------------------------------------------------------------------------------------------
; Debug Display
;--------------------------------------------------------------------------------------------------------------------------

[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "Ryuji Yamazaki (KOF'02) by FMT - v0.8 (February 2006)\nC = %i - C.Time = %i - DBP = %i - ENEMY S.ATTACK= %i - GLIM = %i"
params = var(6), var(7), var(18), var(15), var(16)

; C = Counter - var(6)
; C.Time = Counter Time - var(7)
; GC = Guard Crush - var(8)
; HEAT = KOF NeoWave Heat Mode - var(13)
; ENEMY S.ATTACK = Enemy HitDef Attributes - var(15)
; GLIM = Opponent Guard Limiter - var(16)

;==========================================================================
;    King Of Figthers 2002 Unlimited Match HSDM Fondo y Broken Glass
;==========================================================================
;--------------------------------------HSDM 2002 UM------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40001, Tile #1-7]
type = Explod
triggerall = !numexplod(15600)
trigger1 = !time
anim = 15600
ID = 15600
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 10
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 40001, Tile #1-7]
type = Explod
triggerall = !numexplod(15601) < 2
trigger1 = !time
trigger2 = (time%10) = 0
anim = 15600
ID = 15601
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 20
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Tile #2-6]
type = Explod
triggerall = !numexplod(15610)
trigger1 = !time
anim = 15601
ID = 15610
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 20
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 40001, Tile #2-6]
type = Explod
triggerall = !numexplod(15611) < 2
trigger1 = !time
trigger2 = (time%20) = 0
anim = 15601
ID = 15611
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 40
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Tile #3-5]
type = Explod
triggerall = !numexplod(15620)
trigger1 = !time
anim = 15602
ID = 15620
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 40
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 40001, Tile #3-5]
type = Explod
triggerall = !numexplod(15621) < 2
trigger1 = !time
trigger2 = (time%40) = 0
anim = 15602
ID = 15621
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 80
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Tile #4]
type = Explod
triggerall = !numexplod(15630)
trigger1 = !time
anim = 15603
ID = 15630
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 80
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 40001, Tile #4]
type = Explod
triggerall = !numexplod(15631) < 2
trigger1 = !time
trigger2 = (time%80) = 0
anim = 15603
ID = 15631
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 160
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

;----------Aqui cambias a broken glass tiempo-------------


[State 40001, Glass Break]
type = ChangeState
trigger1 = parent, stateno != [4500,4503] ;---> Aca Pones La Animacion Del Principio y La Del Final Osea La Que Empiesa Y La Que TErmina El HSDM
trigger2 = Parent,Stateno = 4500 && Parent,Time >= 200 ;---> Aca La Primera Animacion Y El Tiempo De Ella (Esta Seria Lo Que Demorara El Fondo Verde EN La Pantalla
trigger3 = Parent,Stateno = 4503 && Parent,Time >= 100 ;---> Aca a ANimacion Donde Cambiara A Broken Glass, Recuerda Que El Broken Glass Es En El Ultimo Hit Por Eso Trata De Ser PAciente Y REgularle El Tiempo Hasta Que Quede
value = stateno+1

;----------Aqui regulas el tiempo-------------

;kof 2002 um part2
[Statedef 40002]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15600
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15610
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15611
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15620
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15621
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15630
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15631

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 20,4
volume = 255

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1
;--------------------------------------------------------------------------
;==========================================================================
;    King Of Figthers 2002 Unlimited Match HSDM Fondo y Broken Glass
;==========================================================================

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40003, VarSet]
type = VarSet
triggerall = enemy, numhelper(40003)
triggerall = !enemy, numhelper(40004)
trigger1 = enemy, authorname = "Vans"
trigger2 = enemy, authorname = "K.O.D"
trigger3 = enemy, authorname = "K.O.D & Vans"
trigger4 = enemy, authorname = "OrochiKOF97"
trigger5 = enemy, authorname = "Dark Saviour"
trigger6 = enemy, authorname = "Kung Fu Man"
trigger7 = enemy, authorname = "KoopaKoot"
trigger8 = enemy, authorname = "Anjel"
trigger9 = enemy, authorname = "Vans & Kung Fu Man"
var(0) = 1

[State 40003, VarSet]
type = VarSet
triggerall = teamside = 2
triggerall = enemy, numhelper(40004)
trigger1 = enemy, authorname = "Vans"
trigger2 = enemy, authorname = "K.O.D"
trigger3 = enemy, authorname = "K.O.D & Vans"
trigger4 = enemy, authorname = "OrochiKOF97"
trigger5 = enemy, authorname = "Dark Saviour"
trigger6 = enemy, authorname = "Kung Fu Man"
trigger7 = enemy, authorname = "KoopaKoot"
trigger8 = enemy, authorname = "Anjel"
trigger9 = enemy, authorname = "Vans & Kung Fu Man"
var(0) = 1

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------------------------------------------------------------------------------------------------------

[Statedef -3]

;--------------------------------------------------------------------------------------------------------------------------
; KOF 2002 Hit Sound System
;--------------------------------------------------------------------------------------------------------------------------

[State -3, Light Punch HitSound]
type = VarRandom
trigger1 = 1
v = 2
range = 0,2

[State -3, Light Kick HitSound]
type = VarRandom
trigger1 = 1
v = 3
range = 3,5

[State -3, Strong Punch HitSound]
type = VarRandom
trigger1 = 1
v = 4
range = 6,8

[State -3, Strong Kick HitSound]
type = VarRandom
trigger1 = 1
v = 5
range = 9,11


;--------------------------------------------------------------------------------------------------------------------------
; Get Up Invincibility
;--------------------------------------------------------------------------------------------------------------------------

[State -3, Invincibility]
type = NotHitBy
trigger1 = stateno = 5120
trigger2 = stateno = 0 && (time = [0,1]) && prevstateno = 5120
value = SCA

; The tick invincibility is a workaround for a KOF feature where characters performing a throw move right after getting up
; would not make them enter their stance (like a direct shortcut). The tick makes up for the stance entrance & exit.

;--------------------------------------------------------------------------------------------------------------------------
; Get Hit Sounds
;--------------------------------------------------------------------------------------------------------------------------

[State -3, Light Hit Sound]
type = PlaySnd
triggerall = time = 1
triggerall = alive && random <= 600
trigger1 = stateno = 5001 && anim = 5000
trigger2 = stateno = 5001 && anim = 5010
trigger3 = stateno = 5011 && anim = 5020 
value = 0,4
channel = 0
ignorehitpause = 1

[State -3, Medium Hit Sound]
type = PlaySnd
triggerall = time = 1
triggerall = alive && random <= 600
trigger1 = stateno = 5001 && anim = 5001
trigger2 = stateno = 5001 && anim = 5011
trigger3 = stateno = 5011 && anim = 5021 
value = 0,4
channel = 0
ignorehitpause = 1

[State -3, Hard Hit Sound]
type = PlaySnd
triggerall = time = 1
triggerall = alive && random <= 600
trigger1 = stateno = 5001 && anim = 5002
trigger2 = stateno = 5001 && anim = 5012
trigger3 = stateno = 5011 && anim = 5022 
value = 0,5
channel = 0
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------
; Shadow Removal If Hit (AfterImages on DMs/SDMs)
;--------------------------------------------------------------------------------------------------------------------------

[State -3, Shadows]
type = AfterImageTime
triggerall = Time = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 0
time = 0

;--------------------------------------------------------------------------------------------------------------------------
; Corner Push Bug Fix
;--------------------------------------------------------------------------------------------------------------------------

[State -3, Bug Fix] ; Corner Fix
type = Velset
trigger1 = FrontEdgeDist < 10 && vel x > 0.1
x = 0.1

;--------------------------------------------------------------------------------------------------------------------------
; Guard Crush System 
;--------------------------------------------------------------------------------------------------------------------------

[State -3, GC1]
type = VarAdd
triggerall = !(enemy, hitdefattr = SCA, HA, HP)
triggerall = GetHitVar(slidetime) <= 0 && GetHitVar(hittime) <= 0
triggerall = !Time && var(8) <= 749
trigger1 = (stateno = 150 || stateno = 152)
var(8) = 20
persistent = 0
ignorehitpause = 1 

[State -3, GC2]
type = VarAdd
triggerall = !(enemy, hitdefattr = SCA, HA, HP)
triggerall = (GetHitVar(slidetime) = [1,16]) && (GetHitVar(hittime) = [1,16])
triggerall = !Time && var(8) <= 749
trigger1 = (stateno = 150 || stateno = 152)
var(8) = ifelse((Gethitvar(slidetime) = [1,9]),30,40)
persistent = 0
ignorehitpause = 1 

[State -3, GC3]
type = VarAdd
triggerall = !(enemy, hitdefattr = SCA, HA, HP)
triggerall = GetHitVar(slidetime) >= 17 && GetHitVar(hittime) >= 17
triggerall = !Time && var(8) <= 749
trigger1 = (stateno = 150 || stateno = 152)
var(8) = 50
persistent = 0
ignorehitpause = 1

[State -3, GC4]
type = VarAdd
trigger1 = var(8) >= 1 && time%1 = 0
var(8) = -1
ignorehitpause = 1 

[State -3, GC5]
type = ChangeState
trigger1 = var(8) >= 750 && !Time
trigger1 = (stateno = 150 || stateno = 152) 
value = 9000
ctrl = 0
ignorehitpause = 1

;===================================
; CC UltraROX Yamazaki - End Of File
;===================================
