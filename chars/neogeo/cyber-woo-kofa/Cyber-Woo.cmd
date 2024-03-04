[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1

;------------------------------------------------------------------------------

;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "スプリットアタック"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "MBW-1"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "MBW-2"
command = ~D, DF, F, D, DF, F, b
time = 30

;[Command]
;name = "ガトリングレーザー1"
;command = ~D, DB, B, D, DB, B, a
;time = 30

[Command]
name = "ガトリングレーザー2"
command = ~D, F, D, F, z
time = 30

[Command]
name = "ガトリングレーザー3"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "ガトリングレーザー4"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "ミサイルアタック"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "ミサイルアタック"
command = ~D, DF, F, D, DF, F, y
time = 30

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "ローラーダッシュ"
command = ~D, DF, F, a
time = 30

[Command]
name = "ローラーダッシュ"
command = ~D, DF, F, b
time = 30

[Command]
name = "ロケットバズーカ"
command = ~F, D, B, F, a
time = 30

[Command]
name = "ロケットバズーカ"
command = ~F, D, B, F, b
time = 30

[Command]
name = "弱フライングパワーボム"
command = ~F, D, DF, a
time = 30

[Command]
name = "強フライングパワーボム"
command = ~F, D, DF, b
time = 30

[Command]
name = "フライングトルネード"
command = ~F, D, B, F, x
time = 30

[Command]
name = "フライングトルネード"
command = ~F, D, B, F, y
time = 30

[Command]
name = "ハンマー弱"
command = ~D, DF, F, x
time = 30

[Command]
name = "ハンマー強"
command = ~D, DF, F, y
time = 30

;---------------------------

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+a
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = z
time = 1

[Command]
name = "前方回避"
command = x+a
time = 1

[Command]
name = "CDattack"
command = y+b
time = 1

[Command]
name = "CDattack"
command = c
time = 1
;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;==============================================================================
[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
;==============================================================================
;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。
;------------------------------------------------------------------------------
[State -1, AI起動用ヘルパー]
type=helper
trigger1=!NumHelper(40000+id)
;trigger1=RoundState=2
Trigger1=RoundState<2||(RoundState=2&&Ctrl&&Stateno=0)
trigger1=alive
trigger1=var(59)=0
Trigger1=(PrevStateNo=[190,193])||PrevStateNo=5900||PrevStateNo=0
;Trigger1=Ctrl&&Stateno=0
Trigger1=!IsHelper
helpertype=normal
name="AI"
stateno=40000
ID=40000+id
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;念のため↓も付けておく
[State -1, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(40000)
trigger1= ishelper(40000+root,id)
trigger1= stateno!=40000
value=40000

;==============================================================================
;変数管理
;v56 VarRandom (0-19)
;v57 Facing
;v58 Tag
;v59 AI

;fv37 Coefficient of Friction
;fv39 Combo
;==============================================================================
[State -1, AI]
Type = VarSet
TriggerAll = Var(59) >= 1	;AIがセットされた状態
Trigger1 = RoundState = 4	;ラウンド終了後
Trigger2 = Win = 1			;勝ったとき
Trigger3 = Lose = 1			;負けたとき
Trigger4 = DrawGame = 1		;引き分けたとき
V = 59
Value = -Var(59)

[State -1, AI]
Type = VarSet
TriggerAll = Var(59) <= -1	;AIを停止させた状態
Trigger1 = RoundState = 2	;ラウンド開始
V = 59
Value = -Var(59)

[State -1, タッグ用生死判別]
Type = VarSet
triggerall = var(59)>0
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear(0),life > 0
var(58) = 0
IgnoreHitPause = 1

[State -1, タッグ用生死判別]
Type = VarSet
triggerall = var(59)>0
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear(0),life <= 0
var(58) = 1
IgnoreHitPause = 1
;==============================================================================
;摩擦計算
[State -2, Facing]
type = VarSet
trigger1 = 1
var(57) = -(Facing)*(EnemyNear(var(58)),Facing)
ignorehitpause = 1

[State -1, 相手摩擦係数]
Type = VarSet
Trigger1 = 1
fvar(37) = IfElse(enemynear(var(58)),StateType=C,(EnemyNear(var(58)),Const(movement.crouch.friction)),(EnemyNear(var(58)),Const(movement.stand.friction)))
IgnoreHitPause = 1
;==============================================================================
;コンボ関係
[State -1, 変数リセット]
Type = VarSet
triggerall = var(59) >= 1
trigger1 = RoundState = 4
trigger2 = stateno = 5120 || movetype = H
trigger3 = fvar(39)!=3
trigger3 = EnemyNear,StateNo = [5070,5120]
trigger4 = stateno=1200 || stateno=1210 || stateno=3000
trigger5 = fvar(39)=3
trigger5 = !(EnemyNear,StateNo = [5050,5120])
trigger6 = stateno = 400 || stateno = 205; || stateno = 1210
trigger7 = fvar(39)=7
trigger7 = stateno = 1000
fvar(39) = 0
IgnoreHitPause = 1

[State -1, 変数セット];J攻撃
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 640 && movecontact
trigger1 = enemynear(var(58)),statetype!=A
trigger2 = stateno = 660 && moveguarded
fvar(39) = 1
IgnoreHitPause = 1

[State -1, 変数セット];ロケットバズーカ成功
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 1301; && movecontact
fvar(39) = 2
IgnoreHitPause = 1

[State -1, 変数セット];ハンマーパンチ強
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 1010
fvar(39) = 3
IgnoreHitPause = 1

[State -1, 変数セット];ヘイロー
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 660 && movehit
fvar(39) = 4
IgnoreHitPause = 1

[State -1, 変数セット];空中強P
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 610 && movehit
fvar(39) = 5
IgnoreHitPause = 1

[State -1, 変数セット]ローラー→タックルcontact
Type = VarSet
triggerall = var(59) >= 1
trigger1 = stateno = 1460 && movecontact
fvar(39) = 7
IgnoreHitPause = 1
;==============================================================================
;ランダム変数
[State -1,VarRandom]
Type = VarRandom
TriggerAll = Var(59) >= 1
Trigger1 = Time = 1
Trigger2 = Time%60 = 1
Trigger2 = MoveType != I
Trigger3 = Time%1 = 0
Trigger3 = MoveType = I
V = 56
Range = 0,19
IgnoreHitPause = 1
;==============================================================================
[State -1, ガトリングレーザー]
type = ChangeState
value = ifelse(p2bodydist x >120,3110,3100)
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = Power >= 2000
TriggerAll = StateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll = (enemynear(var(58)),MoveType=A);||(enemynear(var(58)),Ctrl)
triggerall = p2bodydist x = [50,155]
triggerall = p2bodydist y >=-135
;triggerall = enemynear(var(58)),vel y >= 0
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = enemynear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
Trigger1 = random<var(59)*10

;スプリットアタック
[State -1, スプリットアタック]
type = ChangeState
value = 3200
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = Power >= 2000
TriggerAll = StateType != A
TriggerAll = enemynear(var(58)),StateType != L
;TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll = (enemynear(var(58)),MoveType=A)||(enemynear(var(58)),Ctrl)
triggerall = p2bodydist x <= 70
triggerall = enemynear(var(58)),backedgebodydist <= 40
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = enemynear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
triggerall = random<var(59)*12
Trigger1 = random<var(59)*10
Trigger2 = PrevStateNo = [120, 159]
Trigger3 = PrevStateNo = [5000, 5210]
trigger4 = NumEnemy>1
trigger5 = NumPartner
trigger5 = Partner,Alive
;------------------------------------------------------------------------------
;優先順位高動作
;------------------------------------------------------------------------------
;追撃待ち
[State -1,待ち]
type = ChangeState
value = 0
TriggerAll = Var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
trigger1 = frontedgebodydist>60
trigger1 = (ctrl || stateno=19 || stateno=21 || stateno = 99)
trigger1 = fvar(39) = 2
trigger2 = (ctrl || stateno=19 || stateno=21 || stateno = 99)
trigger2 = fvar(39) = 4
ctrl = 0

;ダウン追い討ち
;強ハンマーパンチ
[State -1, 強ハンマーパンチ]
type = ChangeState
value = 1010
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = L
triggerall = EnemyNear(var(58)),movetype != A
TriggerAll = !InGuardDist
trigger1 = p2bodydist x >= 140
trigger1 = fvar(39)!=3
;trigger1 = EnemyNear(var(58)),stateno=5100
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99

;起き攻め
;ガトリングレーザー
[State -1, ガトリングレーザー]
type = ChangeState
value = 3100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=2000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
;triggerall = EnemyNear(var(58)),movetype = H
trigger1 = (p2bodydist x <=70) || (p2bodydist x =[100,120])
trigger1 = EnemyNear(var(58)),stateno=5120
trigger1 = EnemyNear(var(58)),animtime<=-10
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = random<=var(59)*20

;ロケットバズーカ
[State -1, ロケットバズーカ]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),statetype != A
;triggerall = EnemyNear(var(58)),movetype = H
trigger1 = p2bodydist x <= 20
trigger1 = EnemyNear(var(58)),prevstateno=5120
trigger1 = EnemyNear(var(58)),animtime<-(12+6)
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = random<=var(59)*25

;強パンチ
[State -1, 強パンチ]
type = ChangeState
value = 210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),statetype != A
;triggerall = EnemyNear(var(58)),movetype = H
trigger1 = p2bodydist x = [16,60]
trigger1 = EnemyNear(var(58)),prevstateno=5120
trigger1 = EnemyNear(var(58)),animtime=[-(3+14),-(3+5)]
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = random<=var(59)*25

;垂直ジャンプ
[state -1, ジャンプ]
Type = Changestate
Value = 42
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
Triggerall = (ctrl || stateno=19 || stateno=21 || stateno = 99)
trigger1 = prevstateno != [5100,5120]
;Trigger1 = enemynear(var(58)),stateType = L
trigger1 = enemynear(var(58)),stateno = [5120,5129]
trigger1 = enemynear(var(58)),animtime = [-23,-18]
trigger1 = P2bodydist X = [40,70]
trigger1 = random<=200
trigger1 = fvar(39):=6

;エア・ブレーキ
[State -1, エア・ブレーキ]
type = ChangeState
value = 650
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
;triggerall = enemynear(var(58)),statetype != L
triggerall = stateno != 105
triggerall = ctrl
triggerall = fvar(39) = 6
trigger1 = enemynear(var(58)),prevstateno = [5120,5129]
trigger1 = random<=var(59)*20
trigger2 = enemynear(var(58)),stateno = [5120,5129]
trigger2 = enemynear(var(58)),animtime>=-5
trigger2 = random<=var(59)*15

;ステップ後
;フライングトルネード
[State -1, フライングトルネード]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X = [-5,20]
triggerall = var(56)=[0,var(59)+7]
trigger1 = stateno=1450 && animtime=0

;ロケットバズーカ
[State -1, ロケットバズーカ]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X = [-3,22]
triggerall = var(56)=[0,var(59)+7]
trigger1 = stateno=1450 && animtime=0

;隙見て接近
;タクティカルステップ
[State -1,タクティカルステップ]
type = ChangeState
value = 700
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = enemynear(var(58)),StateType != A
triggerall = enemynear(var(58)),movetype = A
trigger1 = P2BodyDist X = [20,80]
Trigger1 = enemynear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = enemynear(var(58)),AnimTime <= -15
trigger1 = random <= var(59)*5 || (random <= var(59)*18 && EnemyNear,HitDefAttr = SCA,NP,SP)
;==============================================================================
; 投げ・復帰
;==============================================================================
;ボディースラム
[State -1, ボディースラム];投げ技
type = ChangeState
value = ifelse(backedgebodydist<=80,800,802)
triggerall = var(59) >= 1
triggerall = RoundState = 2 
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21)||(stateno=700&&animtime=0)
triggerall = stateno!=[99,100]
triggerall = EnemyNear(var(58)),stateno != 5120
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
triggerall = EnemyNear(var(58)),statetype != A
triggerall = p2bodydist x = [-3,15]
Trigger1 = Random <= var(59)*13
Trigger2 = EnemyNear(var(58)),StateNo=[120,159]

;フライングトルネード
[State -1, フライングトルネード]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(59) >= 1
triggerall = RoundState = 2 
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21)||(stateno=700&&animtime=0)
triggerall = stateno!=[99,100]
triggerall = EnemyNear(var(58)),stateno != 5120
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
triggerall = EnemyNear(var(58)),statetype != A
triggerall = p2bodydist x = [-3,18]
Trigger1 = Random <= var(59)*15
Trigger2 = EnemyNear(var(58)),StateNo=[120,159]

[State -1, 地上受身]
type = ChangeState
value = 5200
triggerall = var(59) >= 1
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
TriggerAll = Alive || Life>0
triggerall = CanRecover
TriggerAll = StateNo = 5050
trigger1   = Random < var(59)*5
trigger2   = var(56) = [0,7]
trigger2   = EnemyNear(var(58)),hitdefattr = SC, AA, AT, AP
;==============================================================================
; 回避
;==============================================================================
;タクティカルステップ
[State -1,タクティカルステップ]
type = ChangeState
value = 700
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = power>=1000
;triggerall = Life<=LifeMax*0.5
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21 || stateno=99)
triggerall = !(StateNo=700&&PrevStateNo=700)
TriggerAll = P2BodyDist X<=15+75||(EnemyNear(var(58)),AnimTime<=-29&&!EnemyNear(var(58)),Ctrl)
TriggerAll = EnemyNear(var(58)),HitDefAttr = SCA,AA
TriggerAll = InGuardDist
TriggerAll = Random<=var(59)*40||var(59)>9
TriggerAll = EnemyNear(var(58)),Time>=30||(!Time&&var(59)>7)||var(59)>9||EnemyNear(var(58)),Ctrl
triggerall = enemynear(var(58)),prevstateno!=[5100,5120]
Trigger1 = EnemyNear(var(58)),Time>=50||var(59)>9
Trigger2 = PrevStateNo = [120,159]
Trigger3 = EnemyNear(var(58)),Ctrl
trigger4 = EnemyNear,AnimTime = [-25,-20]

;バックステップ
[State -1, バックステップ]
type = changestate
value = 105
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
triggerall = stateno!=105
triggerall = backedgebodydist > 80
TriggerAll = EnemyNear(var(58)),Time>=30||(!Time&&var(59)>7)||var(59)>9||EnemyNear(var(58)),Ctrl
triggerall = facing*(enemynear(numenemy>=2),pos x-pos x)>0
Trigger1 = EnemyNear(var(58)),Time>=50||(var(59)>9&&random<50);||(random<ifelse(EnemyNear(var(58)),movetype=A,150,50))
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = EnemyNear(var(58)),statetype!= L
trigger1 = EnemyNear(var(58)),vel x > 0
trigger1 = EnemyNear(var(58)),Pos Y <= -30
Trigger2 = EnemyNear(var(58)),Time>=50||(var(59)>7&&random<50)||var(59)>9;||(random<ifelse(EnemyNear(var(58)),movetype=A,150,50))
trigger2 = EnemyNear(var(58)),statetype!= L
Trigger2 = EnemyNear(var(58)),HitDefAttr = SC,AT
Trigger2 = (PrevStateNo = [5000,5270]) || (PrevStateNo = [120,159]) || random<50

;==============================================================================
; 対空
;==============================================================================
;強フライングパワーボム
[State -1, 強フライングパワーボム]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99 || (stateno = 700 && animtime=0)
triggerall = EnemyNear(var(58)),statetype = A 
triggerall = EnemyNear(var(58)),statetype!= L
;triggerall = EnemyNear(var(58)),movetype != H
;TriggerAll =!InGuardDist
triggerall = P2BodyDist X - (enemynear(var(58)),vel x * 6)= [10,120]
triggerall = enemynear(var(58)),vel x > 0
triggerall = p2bodydist y = [-140,-50]
Trigger1 = EnemyNear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = random <= var(59)*15

;しゃがみ強パンチ
[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99 || (stateno = 700 && animtime=0)
triggerall = EnemyNear(var(58)),statetype = A 
triggerall = EnemyNear(var(58)),statetype!= L
triggerall = EnemyNear(var(58)),movetype != H
TriggerAll =!InGuardDist
triggerall = P2BodyDist X - (enemynear(var(58)),vel x * 9)= [50,90]
;triggerall = enemynear(var(58)),vel x > 0
triggerall = p2bodydist y = [-140,-50]
TriggerAll = EnemyNear(var(58)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = random <= var(59)*10

;==============================================================================
; 飛び込み攻撃
;==============================================================================
;ジャンプ強キック
[State -1, ジャンプ強キック]
type = ChangeState
value = 640
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
;triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = vel y >=0
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-20,60+vel x*7+EnemyNear(var(58)),vel x*7]
triggerall = p2bodydist y + vel y*7 = [-40,75]
trigger1 = random<=var(59)*50
;==============================================================================
; ガード関係
;==============================================================================
;ガード
[State -1,立ちガード]
Type = ChangeState
Value = 120
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
TriggerAll = StateNo!=[120,155]
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
TriggerAll = inguarddist
Trigger1 = Random <= var(59)*80 || var(59)>9
Trigger2 = P2BodyDist X > 90 || EnemyNear(var(58)),Time > 50
Trigger2 = Random <= var(59)*150

;==============================================================================
; 地上
;==============================================================================
;ミサイルアタック
[State -1, ミサイルアタック]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = fvar(39) = 4
trigger1 = ctrl = 0 && stateno = 0
trigger1 = EnemyNear(var(58)),vel y > 0
Trigger1 = P2BodyDist Y + EnemyNear(var(58)),const(movement.yaccel) / 2 * 36 + (EnemyNear(var(58)),Vel y * 6) = [-65,10]

;強フライングパワーボム
[State -1, 強フライングパワーボム]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = fvar(39) = 4
trigger1 = ctrl = 0 && stateno = 0
trigger1 = EnemyNear(var(58)),vel y > 0
Trigger1 = P2BodyDist Y + EnemyNear(var(58)),const(movement.yaccel) / 2 * 36 + (EnemyNear(var(58)),Vel y * 6) = [-80,-30]
trigger2 = EnemyNear(var(58)),statetype = A
trigger2 = fvar(39) = 5
trigger2 = random<=250

[State -1, 強フライングパワーボム]
type = ChangeState
value = 3310
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = fvar(39) = 4
trigger1 = ctrl = 0 && stateno = 0
trigger1 = EnemyNear(var(58)),vel y > 0
Trigger1 = P2BodyDist Y + EnemyNear(var(58)),const(movement.yaccel) / 2 * 36 + (EnemyNear(var(58)),Vel y * 6) = [-80,-30]
trigger2 = EnemyNear(var(58)),statetype = A
trigger2 = fvar(39) = 5
trigger2 = random<=250

;ミサイルアタック
[State -1, ミサイルアタック]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power>=1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = EnemyNear(var(58)),stateno=1304
;trigger1 = frontedgebodydist>60
trigger1 = ctrl = 0 && stateno = 0
trigger1 = fvar(39)=2
trigger2 = stateno = 1000 && movehit && animelemtime(7)<0
trigger3 = stateno = 1010 && movehit && animelemtime(7)<0
trigger4 = EnemyNear(var(58)),statetype = A
trigger4 = EnemyNear(var(58)),statetype != L
trigger4 = NumTarget(1001)
trigger4 = p2bodydist x <= 100
trigger4 = (ctrl || stateno=19 || stateno=21) || stateno=99

;強フライングパワーボム
[State -1, 強フライングパワーボム]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),stateno=1304
;trigger1 = frontedgebodydist>60
trigger1 = fvar(39)=2
trigger1 = ctrl = 0 && stateno = 0

;強ハンマーパンチ
[State -1, 強ハンマーパンチ]
type = ChangeState
value = 1010
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = EnemyNear(var(58)),statetype = A
trigger1 = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),stateno=1304
trigger1 = frontedgebodydist<=60
trigger1 = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = fvar(39)=2

;弱ハンマーパンチ
[State -1, 弱ハンマーパンチ]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
triggerall = random<=var(59)*30
trigger1 = stateno = 245 && movecontact
trigger2 = stateno = 215 && moveguarded
trigger3 = stateno = 440 && moveguarded
trigger4 = stateno = 400 && moveguarded
trigger4 = p2bodydist x >=43
trigger5 = stateno = 400 && movehit
trigger5 = p2bodydist x >=81
trigger6 = EnemyNear(var(58)),statetype != A
trigger6 = fvar(39)=7
trigger6 = stateno = 1460 && animtime=0

;フライングトルネード
[State -1, フライングトルネード]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 0
trigger1 = (stateno=241&&animtime=0)
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]
trigger2 = (stateno=241&&animtime=0)
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]

;ロケットバズーカ
[State -1, ロケットバズーカ]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 6
trigger1 = (stateno=400)||(stateno=215)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=35
trigger2 = (stateno=400)||(stateno=215)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=35

;しゃがみ弱パンチ
[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 6
trigger1 = (stateno=400)
trigger1 = movecontact
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[36,78]
trigger2 = (stateno=400)
trigger2 = movecontact
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[37,78]

;しゃがみ弱パンチ
[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 6
trigger1 = (stateno = 430 && animelemtime(7)<0)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=80
trigger2 = (stateno = 430 && animelemtime(7)<0)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=80

;近距離立ち弱パンチ
[State -1, 立ち弱パンチ(close)]
type = ChangeState
value = 205
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 5
trigger1 = (stateno=205)
trigger1 = movecontact
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>6),0,(6-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=20
trigger2 = (stateno=205)
trigger2 = movecontact
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>6),0,(6-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))<=20

;弱ハンマーパンチ
[State -1, 弱ハンマーパンチ]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 12
trigger1 = (stateno=205)
trigger1 = movecontact
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
trigger2 = (stateno=205)
trigger2 = movecontact
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20

;ローラーダッシュ
[State -1, ローラーダッシュ]
type = ChangeState
value = 1400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 4
trigger1 = (stateno=440)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
trigger2 = (stateno=440)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
;trigger1 = (stateno=205)
;trigger1 = moveguarded
;Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
;Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20
;trigger2 = (stateno=205)
;trigger2 = moveguarded
;Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
;Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>7),0,(7-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))>20

;フライングトルネード
[State -1, フライングトルネード]
type = ChangeState
value = 1100
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
Triggerall = EnemyNear(var(58)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(58)),GetHitVar(HitShakeTime) + EnemyNear(var(58)),GetHitVar(HitTime) >= 0
trigger1 = (stateno=205)
trigger1 = movehit
Trigger1 = (abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(58)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]
trigger2 = (stateno=205)
trigger2 = movehit
Trigger2 = !((abs(EnemyNear(var(58)),Vel X) = abs(EnemyNear(var(58)),GetHitVar(xvel))) || EnemyNear(var(58)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(58)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(58)),GetHitVar(HitShakeTime)>1),0,(1-EnemyNear(var(58)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-1,35]

;強フライングパワーボム
[State -1, 強フライングパワーボム]
type = ChangeState
value = 1210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 205 || stateno = 215 || (stateno = 235&& animelemtime(5)>=0 && animelemtime(6)<0) || stateno = 245
trigger1 = movehit

;弱フライングパワーボム
[State -1, フライングパワーボム]
type = ChangeState
value = 1200
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 410
trigger1 = movehit

;強フライングパワーボム
[State -1, 強フライングパワーボム]
type = ChangeState
value = 3310
TriggerAll = var(59) >= 1
triggerall = roundstate = 2 && power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 205 || stateno = 215 || (stateno = 235&& animelemtime(5)>=0 && animelemtime(6)<0) || stateno = 245
trigger1 = movehit

;弱フライングパワーボム
[State -1, フライングパワーボム]
type = ChangeState
value = 3300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2 && power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = EnemyNear(var(58)),movetype = H
trigger1 = stateno = 410
trigger1 = movehit

;ショルダータックル
[State -1, ショルダータックル]
type = ChangeState
value = 250
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
trigger1 = EnemyNear(var(58)),movetype = H
trigger1 = EnemyNear(var(58)),stateno=[120,159]
trigger1 = Numtarget(1001)=1
trigger1 = stateno = 1000 && animtime=0
trigger1 = p2bodydist x <= 69
trigger1 = random<=var(59)*20||var(59)>9
;------------------------------------------------------------------------------
; 始動
;------------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X <= 50 ;48
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = var(56)=[1,2]
trigger2 = var(56)=[2,4]
trigger2 = fvar(39)=1

;近距離立ち弱パンチ
[State -1, 立ち弱パンチ(close)]
type = ChangeState
value = ifelse(p2bodydist x<20,205,200)
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != C
;triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X <= 90
triggerall = p2bodydist y >= -50
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = var(56)=[0,1]
trigger2 = var(56)=[5,7]
trigger2 = fvar(39)=1

;しゃがみ弱キック
[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = P2bodydist X = [40,61] ;48
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = enemynear(var(58)),animtime<-10
trigger1 = var(56)=[3,4]

;立ち強キック
[State -1, 立ち強キック]
type = ChangeState
value = ifelse(p2bodydist x<20,240,245)
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
triggerall = p2bodydist x <= 50
triggerall = (ctrl || stateno=19 || stateno=21) || stateno=99
trigger1 = var(56)=[5,6]

;==============================================================================
; 空中
;==============================================================================
;ジャンプ強パンチ
[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
;triggerall = vel y > 0
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-20,80+vel x*6+EnemyNear(var(58)),vel x*6]
triggerall = p2bodydist y + vel y*6 = [-55,70]
trigger1 = random<=var(59)*50

;ジャンプ強キック
[State -1, ジャンプ強キック]
type = ChangeState
value = 640
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = vel y > -1
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x = [-5,70+vel x*7+EnemyNear(var(58)),vel x*7]
triggerall = p2bodydist y + vel y*7 = [-40,70]
trigger1 = random<=var(59)*50

;エア・ブレーキ
[State -1, エア・ブレーキ]
type = ChangeState
value = 650
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = stateno != 105
triggerall = ctrl
triggerall = p2bodydist x - enemynear(var(58)),vel x*6 = [50,110]
triggerall = pos y <= -70
trigger1 = random<=var(59)*50
trigger2 = enemynear(var(58)),movetype=A
trigger2 = random<=var(59)*15

;==============================================================================
; 立ち回り
;==============================================================================
;歩き後
[State -1, Walk_back] 
type = ChangeState 
value = 21
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
Triggerall = EnemyNear(var(58)),MoveType != H
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
trigger1 = random%3<=1
trigger1 = EnemyNear(var(58)),statetype = L
trigger1 = EnemyNear(var(58)),StateNo=[5100,5120]
trigger1 = p2bodydist x <= 50
trigger2 = random%3<=1
trigger2 = backedgebodydist>=50
trigger2 = p2bodydist x <= 60

;歩き後
[State -1, Walk_back] 
type = ChangeState 
value = 21
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
trigger1 = random%3<=1
trigger1 = EnemyNear(var(58)),stateType = A
trigger1 = EnemyNear(var(58)),moveType = H
trigger1 = p2bodydist x <= -5

;歩き前
[State -1, Walk_fwd] 
type = ChangeState 
value = 19
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
trigger1 = p2bodydist x >= 90
trigger1 = random%3<=1
trigger2 = p2bodydist x >= 135
trigger2 = EnemyNear(var(58)),StateType = L
trigger2 = EnemyNear(var(58)),StateNo=[5110,5120]
trigger2 = random%3<=1

[State -1,バックステップ]
Type     = ChangeState
Value    = 105
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
Triggerall = enemynear(var(58)),MoveType != H
Triggerall = EnemyNear(var(58)),StateType != A
Triggerall = enemynear(var(58)),Stateno != [120,159]
Triggerall = statetype = S
Triggerall = backedgebodydist > 50
triggerall = (ctrl || stateno=19 || stateno=21) && (stateno != 20 && stateno != 11)
triggerall = facing*(enemynear(numenemy>=2),pos x-pos x)>0
triggerall = fvar(39)=0
Trigger1 = enemynear(var(58)),StateType != L
Trigger1 = P2BodyDist X <= 50
trigger1 = Random <= var(59)*13
Trigger2 = enemynear(var(58)),StateType != L
trigger2 = p2bodydist X =[-10,110]
trigger2 = random < (15-var(59))*3
Trigger3 = enemynear(var(58)),StateType != L
Trigger3 = P2BodyDist X <= 30
trigger3 = random <= var(59)*7

[state -1,ダッシュ]
type = ChangeState
value = 99
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = statetype = S
triggerall = (ctrl || stateno=19 || stateno=21) && (stateno != [99,100]) && (stateno != 10) && (stateno != 12) && (stateno!=[105,106])
triggerall = EnemyNear(var(58)),stateno!=5120
triggerall = EnemyNear(var(58)),stateType != L
triggerall = EnemyNear(var(58)),stateType != A
trigger1 = !inguarddist
trigger1 = Random<=var(59)*25
trigger1 = EnemyNear(var(58)),MoveType != A
trigger1 = p2bodydist X >= 125

[state -1, ジャンプ]
Type = Changestate
Value = 41
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
Triggerall = (ctrl || stateno=19 || stateno=21 || stateno = 99)
triggerall = prevstateno != [5100,5120]
Triggerall = enemynear(var(58)),stateType != L
triggerall = (enemynear(var(58)),stateno!=[5100,5120]);&&(enemynear(var(58)),stateno!=[5030,5060])&&(enemynear(var(58)),stateno!=1451)
triggerall = (enemynear(var(58)),statetype != A)
triggerall = P2bodydist X > 50+30*(stateno = 99)+(EnemyNear(var(35)),vel X*5)
trigger1 = !inguarddist
Trigger1 = enemynear(var(58)),MoveType != A
;Trigger1 = P2BodyDist X = [50,125]
;trigger1 = Random <= var(59)*25
trigger1 = random < 65+20*(stateno = 99)+20*(P2bodydist X > 65 && vel X > 0)+100*(stateno = 99 && time < 3)+50*(stateno != 100 && P2bodydist X = [70,110])
trigger1 = enemynear(var(58)),stateNo != [120,159]
Trigger2 = InGuardDist
trigger2 = enemynear(var(58)),MoveType = A
trigger2 = HitDefAttr = SCA, NT, ST, HT
Trigger2 = P2BodyDist X >= 0
Trigger2 = P2BodyDist Y = [-30,0]
trigger2 = Random <= var(59) * 40
trigger3 = enemynear(var(58)),MoveType = A
trigger3 = enemynear(var(58)),StateType = C
Trigger3 = P2BodyDist X = [-3,80]
trigger3 = Random <= var(59) * 30


;==============================================================================
; 牽制
;==============================================================================
;しゃがみ弱パンチ
[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,50]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[0,2]

;立ち強パンチ
[State -1, 立ち強パンチ]
type = ChangeState
value = ifelse(p2bodydist x<20,215,210)
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
;TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,60]
triggerall = p2bodydist y >= -55
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[0,2]

;しゃがみ弱キック
[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,66]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[3,4]

;しゃがみ強キック
[State -1, しゃがみ強キック]
type = ChangeState
value = 440
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [45,75]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = var(56)=[4,6]

;弱ハンマーパンチ
[State -1, 弱ハンマーパンチ]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X >=150
triggerall = enemynear(var(58)),NumProj=0
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = random<=var(59)*20

;弱ハンマーパンチ
[State -1, 弱ハンマーパンチ]
type = ChangeState
value = 1000
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
;TriggerAll = enemynear(var(58)),MoveType != H
;TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X >= 120
;TriggerAll =(enemynear(var(58)),StateNo != [120,159])
triggerall = NumEnemy >= 2
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = random<var(59)*6
trigger2 = enemynear(var(58)),MoveType = A
trigger2 = random<=50

;ローラーダッシュ
[State -1, ローラーダッシュ]
type = ChangeState
value = 1400
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
TriggerAll = enemynear(var(58)),StateType != L
TriggerAll = enemynear(var(58)),StateType != A
TriggerAll = enemynear(var(58)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = enemynear(var(58)),numproj=0
TriggerAll = P2BodyDist X = [65,85]
TriggerAll =(enemynear(var(58)),StateNo != [120,159])
Triggerall = (ctrl || stateno=19 || stateno=21) || stateno = 99
Trigger1 = random<=60

;------------------------------------------------------------------------------
;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, スプリットアタック]
type = ChangeState
value = 3200
triggerall = command = "スプリットアタック"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;ガトリングレーザー1
;[State -1, ガトリングレーザー]
;type = ChangeState
;value = 3100
;triggerall = command = "ガトリングレーザー1"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;ガトリングレーザー2
[State -1, ガトリングレーザー]
type = ChangeState
value = 3110
triggerall = command = "ガトリングレーザー2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
[State -1, MBW-1]
type = ChangeState
value = 3300
triggerall = command = "MBW-1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, MBW-1]
type = ChangeState
value = 3310
triggerall = command = "MBW-2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;ミサイルアタック
[State -1, ミサイルアタック]
type = ChangeState
value = 3000
triggerall = command = "ミサイルアタック"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;ロケットバズーカ
[State -1, ロケットバズーカ]
type = ChangeState
value = 1300
triggerall = command = "ロケットバズーカ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;弱フライングパワーボム
[State -1, 弱フライングパワーボム]
type = ChangeState
value = 1200
triggerall = command = "弱フライングパワーボム"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;強フライングパワーボム
[State -1, 強フライングパワーボム]
type = ChangeState
value = 1210
triggerall = command = "強フライングパワーボム"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;フライングトルネード
[State -1, フライングトルネード]
type = ChangeState
value = 1100
triggerall = command = "フライングトルネード"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;ローラーダッシュ
[State -1, ローラーダッシュ]
type = ChangeState
value = 1400
triggerall = command = "ローラーダッシュ"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;弱ハンマーパンチ
[State -1, 弱ハンマーパンチ]
type = ChangeState
value = 1000
triggerall = command = "ハンマー弱"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;強ハンマーパンチ
[State -1, 強ハンマーパンチ]
type = ChangeState
value = 1010
triggerall = command = "ハンマー強"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 970
triggerall = command = "CDattack"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1]
type = ChangeState
value = 670
triggerall = command = "CDattack"
triggerall = statetype = A
trigger1 = ctrl
triggerall = var(59) = 0

;-------------------------------------------------------------Roll from falling
[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = command = "recovery" || command = "z"
value = 5201

;-------------------------------------------------------------Roll
[State -1｣ｬｽｱｻﾘｱﾜ]
type = ChangeState
value = ifelse(command = "holdback",710,700)
triggerall = var(59) = 0
triggerall = command = "recovery" || command = "z"
triggerall = statetype != A && winko = 0
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = (stateno = [150,153]) && power >= 1000

;------------------------------------------------------------------------------
[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ボディースラム];投げ技
type = ChangeState
value = 800
triggerall =var(59) = 0
triggerall = command = "y"||command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;------------------------------------------------------------------------------


;エア・ブレーキ
[State -1, エア・ブレーキ]
type = ChangeState
value = 650
triggerall = var(59)=0
triggerall = command = "前方回避" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
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
value = 215
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





;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 235
triggerall = p2bodydist X <= 10
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

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

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 246
triggerall = (Command = "b") && (Command = "holdfwd")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 245
triggerall = p2bodydist X <= 10
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

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

;------------------------------------------------------------------------------

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

;---------------------------------------------------------------------------

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

;------------------------------------------------------------------------------
[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59)=0
triggerall = command = "x"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "y"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
