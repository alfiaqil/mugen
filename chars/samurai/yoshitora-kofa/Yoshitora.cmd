;-| Super Motions |--------------------------------------------------------

[Command];葵
name = "aoi"
command = ~D, F, D, F, c
time = 30

;-------------------
[Command];遊蝶花
name = "yuuchouka"
command = ~D, F, D, F, z
time = 30
[Command];朝顔強
name = "yuugao"
command = ~D, B, D, B, z
time = 30

;-------------------
[Command];葵
name = "hyper1"
command = ~D, F, D, F, x
time = 30
[Command];葵
name = "hyper1"
command = ~D, F, D, F, y
time = 30

[Command];夕顔
name = "asagao_c"
command = ~D, F, D, F, a
time = 30
[Command];夕顔
name = "asagao_c"
command = ~D, F, D, F, b
time = 30


;-| Special Motions |------------------------------------------------------

[Command];白百合弱
name = "sirayuri_a"
command = ~F, D, DF, x
time = 30
[Command];白百合中
name = "sirayuri_b"
command = ~F, D, DF, y
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
command = ~D, DF, F, x
time = 30
[Command];椿中
name = "tubaki_b"
command = ~D, DF, F, y
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

[State -1, yuugao]
type = ChangeState
value = 2200
triggerall = command = "yuugao"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact


;-------------------------------------------------------------------------------
[State negathibu anngisshu]
type = ChangeState
value = 3220
triggerall = command = "hyper1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, asagao c]
type = ChangeState
value = 2270
triggerall = command = "asagao_c"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;　　　　　　　　　　　　　　　　　必殺技
;===========================================================================

;---------------------------------------------------------------------------
[State -1, sirayuri a]
type = ChangeState
value = 1000
triggerall = command = "sirayuri_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact

[State -1, sirayuri b]
type = ChangeState
value = 1010
triggerall = command = "sirayuri_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact

;椿中＆強
[State -1, tubaki b or c]
type = ChangeState
value = 1160
triggerall = command = "tubaki_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact



;---------------------------------------------------------------------------------------


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
value = 1251
triggerall = command = "fui"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,449]
trigger2 = movecontact


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
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 避け
[State -1]
type = ChangeState
value = 799
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 665
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;jump strong kick
[State -1, Jump Hard Slash]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

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

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 10
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch Close
[State -1, Stand Medium Punch Close]
type = ChangeState
value = 211
triggerall = p2bodydist X <= 10
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100


;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = p2bodydist X <= 10
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;-------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 435
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

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
value = 1100
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl



;---------------------------------------------------------------------------

