;-| Super Motions |--------------------------------------------------------

[Command];葵
name = "aoi"
command = ~D, DF, F, D, DF, F, c
time = 30

;-------------------
[Command];遊蝶花
name = "yuuchouka"
command = ~D, DF, F,D , DF, F, a+b
time = 30
[Command];朝顔強
name = "yuugao"
command = ~D, DF, F, D, DF, F, x+y
time = 30

;-------------------
[Command];葵
name = "hyper1"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command];葵
name = "hyper1"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command];夕顔
name = "asagao_c"
command = ~D, DF, F, D, DF, F,a
time = 30
[Command];夕顔
name = "asagao_c"
command = ~D, DF, F, D, DF, F,b
time = 30


;-| Special Motions |------------------------------------------------------

[Command];白百合弱
name = "sirayuri_a"
command = ~D, DF, F, x
time = 30
[Command];白百合中
name = "sirayuri_b"
command = ~D, DF, F, y
time = 30

;-------------------
[Command]
name = "fui"
command = ~D,DB,B,a
time = 30
[Command]
name = "fui"
command = ~D,DB,B,b
time = 30

;-------------------
[Command];撫子下段
name = "nadesiko_b"
command = ~D, DF, F, a
time = 30
[Command];撫子中段
name = "nadesiko_a"
command = ~D, DF, F, b
time = 30

;-------------------
[Command];椿中
name = "tubaki_b"
command = ~D, DB, B, x
time = 30
[Command];椿中
name = "tubaki_b"
command = ~D, DB, B, y
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "longjump"
command = D, $U

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "dai"
command = a+b
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1



;-------------------------
;[Statedef -1]
;意味：
;	コマンド入力が可能ならば常時実行されるstate
[Statedef -1] ;この一行は削除しないで下さい

;===========================================================================
;===========================================================================
;                      武器飛ばし技＆隠し技
;===========================================================================
[State -1, aoi]
type = ChangeState
value = 3000
triggerall = command = "aoi"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact

;-------------------------------------------------------------------------------
[State -1, yuuchouka]
type = ChangeState
value = 2301
triggerall = command = "yuuchouka"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = stateno = 1250 || stateno = 1162 || stateno = 1010 || stateno = 1060 || stateno = 3220
trigger3=movecontact
trigger4=stateno=2273

[State -1, yuugao]
type = ChangeState
value = 2200
triggerall = command = "yuugao"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3 = stateno = 1250 || stateno = 1162 || stateno = 1010 || stateno = 1060
trigger3=movecontact


;-------------------------------------------------------------------------------
[State negathibu anngisshu]
type = ChangeState
value = 3220
triggerall = command = "hyper1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = stateno = 1250 || stateno = 1162 || stateno = 1010 || stateno = 1060
trigger3=movecontact

[State -1, asagao c]
type = ChangeState
value = 2270
triggerall = command = "asagao_c"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3 = stateno = 1250 || stateno = 1162 || stateno = 1010 || stateno = 1060
trigger3=movecontact

;===========================================================================
;　　　　　　　　　　　　　　　　　必殺技
;===========================================================================
;椿中＆強
[State -1, tubaki b or c]
type = ChangeState
value = 1160
triggerall = command = "tubaki_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact

;---------------------------------------------------------------------------
[State -1, sirayuri a]
type = ChangeState
value = 1000
triggerall = command = "sirayuri_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = stateno = 1060 && movecontact && command = "sirayuri_a"
trigger4 = stateno = 1250 && movecontact && command = "sirayuri_a"

[State -1, sirayuri b]
type = ChangeState
value = 1010
triggerall = command = "sirayuri_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = stateno = 1050 && movecontact && command = "sirayuri_b"

;---------------------------------------------------------------------------------------
;牡丹
[State -1, botan]
type = ChangeState
value = 1100
triggerall = command = "nadesiko_a" || command = "nadesiko_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,559]) && movecontact

;---------------------------------------------------------------------------------------
;撫子Ａ
[State -1, nadesiko a]
type = ChangeState
value = 1050
triggerall = command = "nadesiko_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact

;---------------------------------------------------------------------------------------
;撫子Ｂ
[State -1, nadesiko b]
type = ChangeState
value = 1060
triggerall = command = "nadesiko_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact

;---------------------------------------------------------------------------
;不意打ち
[State -1, fuiuchi]
type = ChangeState
value = 1250
triggerall = command = "fui"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,449]
trigger2 = movecontact
trigger3 = stateno = 1060 && movecontact && command = "fui"
;---------------------------------------------------------------------------
;椿弱
;[State -1, tubaki a]
;type = ChangeState
;value = 1150
;triggerall = command = "tubaki_a"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
;trigger3 = stateno = 205
;trigger4 = stateno = 210
;trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
;trigger5 = stateno = 215
;trigger6 = stateno = 230
;trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
;trigger7 = stateno = 235
;trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
;trigger8 = stateno = 240
;trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
;trigger9 = stateno = 245
;trigger9 = animelemtime(4) >= 0
;trigger10 = stateno = 350
;trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
;trigger11 = stateno = 360
;trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
;trigger12 = stateno = 380
;trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
;trigger13 = stateno = 400
;trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
;trigger14 = stateno = 405
;trigger15 = stateno = 410
;trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
;trigger16 = stateno = 430
;trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
;trigger17 = stateno = 445
;trigger17 = animelemtime(8) >= 0
;trigger18 = stateno = 720
;trigger18 = animelemtime(3) >= 0
;trigger19 = stateno = 100
;trigger20 = stateno = 102
;trigger21 = stateno = 103
;trigger22 = stateno = 104
;trigger23 = prevstateno != 235
;trigger23 = stateno = 301
;trigger23 = animelemtime(2) >= 0
;trigger24 = prevstateno = 235
;trigger24 = stateno = 301
;trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
;trigger25 = stateno = 302
;trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
;trigger26 = stateno = 501
;trigger26 = animelemtime(2) >= 0

;===========================================================================
;　　　　　　　　　　　　　　　　システム関連
;===========================================================================
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 870
triggerall = command = "a+x" && Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = [150,151]
trigger2 = Power >= 1000
[State -1]
type = ChangeState
value = 870
triggerall = command = "z" && Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = [150,151]
trigger2 = Power >= 1000

;---------------------------------------------------------------------------
; 避け
[State -1]
type = ChangeState
value = 799
triggerall = command = "a" && command = "x" && !Command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && Power >= 1000
trigger2 = statetype = S
trigger3 = stateno = [150,151]
trigger3 = Power >= 1000
[State -1]
type = ChangeState
value = 799
triggerall = command = "z" && !Command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && Power >= 1000
trigger2 = statetype = S
trigger3 = stateno = [150,151]
trigger3 = Power >= 1000

[State -1]
type = ChangeState
value = 665
triggerall = command = "b" && command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [150,151]
trigger2 = power >= 1000
[State -1]
type = ChangeState
value = 665
triggerall = command = "c"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [150,151]
trigger2 = power >= 1000

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 890
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;-----------------------------------------------------------------------------
;小ジャンプ前
;[State -1, jump]
;type = ChangeState
;value = 705
;triggerall = command = "y"
;triggerall = command = "holdfwd"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl

;-----------------------------------------------------------------------------
;小ジャンプ垂直
;[State -1, jump]
;type = ChangeState
;value = 700
;triggerall = command = "y"
;triggerall = command = "holdback"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;敬意
[State -1, keii]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;stand low punch close
[State -1, Slash]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 30
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 =stateno=230||stateno=430&&movecontact

;stand low punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;stand medium punch
[State -1, Stand Medium Slash]
type = ChangeState
value = 211
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 205 && movecontact && command = "y"
trigger4 = stateno = 410 && movecontact && command = "y"
trigger5 = stateno = 1050 && movecontact && command = "y"

;---------------------------------------------------------------------------

;stand low kick
[State -1, Standing Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;stand medium kick
[State -1, Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 =stateno=211&&movecontact


;---------------------------------------------------------------------------

;crouching low punch close
[State -1, Slash]
type = ChangeState
value = 405
triggerall = p2bodydist X <= 20
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl    
trigger2 =stateno=230||stateno=430&&movecontact

;crouching low punch
[State -1, Crouching Light Slash]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 =stateno=430&&movecontact

;crouching medium punch
[State -1, Crouching Medium Slash]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 405 && movecontact && command = "y" 
trigger3 = stateno = 430 && movecontact && command = "y"
trigger4 = stateno = 400 && movecontact && command = "y"

;-------------------------------------------------

;crouching low kick
[State -1, Crouching Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 405 && movecontact && command = "a"



;crouching strong kick
[State -1, Crouching Hard Slash]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------

;jump light punch
[State -1, Jump Light Slash]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;jump medium punch
[State -1, Jump Medium Slash]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;jump light kick
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;jump medium kick
[State -1, Jump Medium Slash]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;jump strong kick
[State -1, Jump Hard Slash]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll_Back
[State -1]
type = ChangeState
value = 7100
triggerall = command = "BB"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Roll_Fwd
[State -1]
type = ChangeState
value = 7001
triggerall = command = "FF"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
