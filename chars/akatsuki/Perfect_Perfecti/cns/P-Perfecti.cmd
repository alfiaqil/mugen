; 汉化版功夫人的cmd文件
;
; 两部分:按键定义和state入口（就是按什么键进入什么state。原谅我吧……想不出好名字了）
; (state入口在按键定义之后)
;
; 1. 按键定义
; ---------------------
; 注意: 按键和招式名分大小写。
; 八个方向分别是:
;   B, DB, D, DF, F, UF, U, UB     (全大写)
;   对应后，下后，下，下前，前，前上，上，上后。
; 六个按键是:
;   a, b, c, x, y, z               (全小写)
;   在默认按键的情况下，xyz在上排，abc在下排。
;   推荐使用xyz作为拳，abc作为脚。
;
; 每一个[Command]定义一个操作指令。
; 这些操作指令可以在cmd和cns里被调用。
; 操作指令的语法规范如下:
;
;   [Command]
;   name = "指令名"
;   command = 按键输入
;   time = 接受指令输入的时间 (可选)
;   buffer.time = 输入缓存的时间 (可选)
;
; - 指令名
;   指令的名字，在调用时需要输入同样的名字，比如trigger1=command="指令名"。
;   指令名区分大小写。(QCB_a和Qcb_a或者QCB_A不同)。
;
; - 按键输入
;   输入的按键的列表。每一个键由逗号隔开。一个方向键或者一个攻击键叫为一个符号。
;   方向键和攻击键之前可以用特殊符号来达到一些效果:
;   斜杠 (/) - 表示之后的一个键必须被按住不放
;          举例, command = /D       ;按住不放下方向键
;               command = /DB, a   ;按住不放下后方向键的时候按a
;   波浪号 (~) - 表示按键被松开
;          举例, command = ~a       ;松开a键
;               command = ~D, F, a ;松开下方向键，按前方向键，再按a
;          如果你想让某个键蓄力一段时间再放开，可以再波浪号之后加入你想保持蓄力的时间(以帧为单位)
;          举例, command = ~30a     ;按住a30帧，再松开
;   美金 ($) - 仅限上下左右方向键。表示包括正和斜方向
;          举例, command = $D       ;包括下，下后和下前
;               command = $B       ;包括后，下后和上后
;   加号 (+) - 仅限攻击键。表示同时按多个键。
;          举例, command = a+b      ;同时按a和b
;               command = x+y+z    ;同时按x，y和z
;   大于号 (>) - 表示上一次按键和这一次按键之中不能掺杂其他的按键
;          举例, command = a, >~a   ;按下a再松开a，而其中不按下或者松开其他键
;   这些符号可以组合使用:
;     举例, command = ~30$D, a+b     ;按住下，下后或者下前30帧，松开，然后同时按a和b
;
;   注意: 连续按方向键的指令会被MUGEN引擎自动理解如下:
;         举例，cmd文件中的定义:
;           command = F, F
;         会被引擎理解成:
;           command = F, >~F, >F
;
;   对于有多个方向键的定义，例如四分之一圈下前，为了让招数能更容易的使出，最好在定义由一个"松开方向键"起始。
;
; - 指令输入时间 (可选)
;   接受指令输入的时间，以帧为单位。默认值可以在[Defaults]条目修改，通常为15。
;
; - 指令缓存时间 (可选)
;   输入的指令被缓存的时间。当一个指令被输入时，它在这段时间里都是有效的。
;   最基本的情况是设置成值为1。这种情况下只有在这一帧输入指令才会执行。如果值更高，比如3或4，输入会提前进入缓存，然后当可以执行时就被执行。这样人物的操作会松快一些，因为玩家可以提前输入指令，比如在还没有击中敌人时就开始取消，或者从受击状态还没有获得控制时就切反。
;   但这也有副作用，因为在缓存的期间会认为一直在输入这个指令。举例来说，把这个值设成30，然后发一个很快的招式，比如功夫人的站轻拳，看它的效果。
;   默认值可以在[Defaults]条目修改。
;   这个参数对蓄力指令不起作用，参数的值会自动当作1。
;
; 如果有多种输入有同样的名子，每一种输入都会读出这个指令。你可以用这个技巧来让一个招式接受不同的输入。
;
; 以下是一些常用指令的输入示例:
;
; [Command] ;下前 + x
; name = "下前x"
; command = ~D, DF, F, x
;
; [Command] ;向后半圈 + a
; name = "后半圈a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;下前下前 + y
; name = "下前下前y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;连打b
; name = "连打b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;蓄后，前 + z
; name = "蓄后前z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;蓄下，上 + c
; name = "蓄下上c"
; command = ~60$D, U, c
; time = 10


;-| 重新排列按键 |-----------------------------------------------------
; 这一段可以让玩家简单的重新排列攻击按键。格式是:
;  以前对应的键 = 修改后的键
; 如果不填写修改后的键，则以前对应的键将失效。
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 默认输入时间 |-------------------------------------------------------
[Defaults]
; 默认接受指令的时间，最小为1。
command.time = 15

; 默认指令蓄力的时间，最小为1，最大为30。
command.buffer.time = 1


;-| 超必杀技 |--------------------------------------------------------
;下面有两个技能是一样的，但是输入不同。
;两种输入都会触发command = 三连功夫掌"。
;为了方便玩家操作，指令接受时间不是默认的15，而是20。
;
[Command]
name = "P-Impact"
command = ~D, F, b
time = 20

[Command]
name = "P-striker"
command = ~D, F, c
time = 20

[Command]
name = "P-Storm"
command = ~D, B, c
time = 20

[Command]
name = "P-B"
command = ~D, F, a
time = 20

[Command]
name = "P-wave"
command = ~D, B, a
time = 20

[Command]
name = "P-arrow"
command = ~D, B, b
time = 20

[Command]
name = "P-Redemption"
command = x+y+z
time = 20
;-| 特殊技 |------------------------------------------------------
[Command]
name = "P-AA"
command = ~D, F, y

[Command]
name = "P-Gleipnir"
command = ~D, D, x
time = 60

[Command]
name = "P-shoot"
command = ~D, F, x

[Command]
name = "P-flasher"
command = ~D, B, y

;-| 按两次 |-----------------------------------------------------------
[Command]
name = "FF"     ;必须包括 (不要删除)
command = F, F
time = 10

[Command]
name = "BB"     ;必须包括 (不要删除)
command = B, B
time = 10

[Command]
name = "前前"
command = F, F
time = 10

[Command]
name = "后后"
command = B, B
time = 10

;-| 同时按键 |-----------------------------------------------
[Command]
name = "recovery";必须包括 (不要删除)
command = x+y
time = 1

[Command]
name = "受身"
command = x+y
time = 1

;-| 方向＋攻击键 |---------------------------------------------------------
[Command]
name = "下+a"
command = /$D,a
time = 1

[Command]
name = "下+b"
command = /$D,b
time = 1

;-| 单攻击键 |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 10

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

[Command]
name = "前C"
command = /F, z

;-|蓄力|----------------------
[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

[Command]
name = "holda"
command = /$a
time = 1
;-| 蓄方向键 |--------------------------------------------------------------
[Command]
name = "holdfwd";必须包括 (不要删除)
command = /$F
time = 1

[Command]
name = "holdback";必须包括 (不要删除)
command = /$B
time = 1

[Command]
name = "holdup" ;必须包括 (不要删除)
command = /$U
time = 1

[Command]
name = "holddown";必须包括 (不要删除)
command = /$D
time = 1

[Command]
name = "蓄上方向"
command = /$F
time = 1

[Command]
name = "蓄后方向"
command = /$B
time = 1

[Command]
name = "蓄前方向"
command = /$U
time = 1

[Command]
name = "蓄下方向"
command = /$D
time = 1
;=============================================
;=AI启动用==========================================
[Command]
name = "AI1"
command = F, B, B, F, F, B, B, F, F, B, B, F, F, B
time = 1
[Command]
name = "AI2"
command = U, D, D, U, U, D, D, U, U, D, D, U, U, D
time = 1
[Command]
name = "AI3"
command = D, U, U, D, D, U, U, D, D, U, U, D, D, U
time = 1
[Command]
name = "AI4"
command = B, F, F, B, B, F, F, B, B, F, F, B, B, F
time = 1
[Command]
name = "AI5"
command = a, x, x, a, a, x, x, a, a, x, x, a, a, x
time = 1
[Command]
name = "AI6"
command = b, y, y, b, b, y, y, b, b, y, y, b, b, y
time = 1
[Command]
name = "AI7"
command = c, z, z, c, c, z, z, c, c, z, z, c, c, z
time = 1
[Command]
name = "AI8"
command = x, a, a, x, x, a, a, x, x, a, a, x, x, a
time = 1
[Command]
name = "AI9"
command = y, b, b, y, y, b, b, y, y, b, b, y, y, b
time = 1
[Command]
name = "AI10"
command = z, c, c, z, z, c, c, z, z, c, c, z, z, c
time = 1
[Command]
name = "AI11"
command = F, B, F, B, F, B, F, B, F, B, F, B, F, B
time = 1
[Command]
name = "AI12"
command = U, D, U, D, U, D, U, D, U, D, U, D, U, D
time = 1
[Command]
name = "AI13"
command = D, U, D, U, D, U, D, U, D, U, D, U, D, U
time = 1
[Command]
name = "AI14"
command = B, F, B, F, B, F, B, F, B, F, B, F, B, F
time = 1
[Command]
name = "AI15"
command = a, x, a, x, a, x, a, x, a, x, a, x, a, x
time = 1
[Command]
name = "AI16"
command = b, y, b, y, b, y, b, y, b, y, b, y, b, y
time = 1
[Command]
name = "AI17"
command = c, z, c, z, c, z, c, z, c, z, c, z, c, z
time = 1
[Command]
name = "AI18"
command = x, a, x, a, x, a, x, a, x, a, x, a, x, a
time = 1
[Command]
name = "AI19"
command = y, b, y, b, y, b, y, b, y, b, y, b, y, b
time = 1
[Command]
name = "AI20"
command = z, c, z, c, z, c, z, c, z, c, z, c, z, c
time = 1
[Command]
name = "AI21"
command = F, B, F, B, F, B, F, B, F, B
time = 1
[Command]
name = "AI22"
command = U, D, U, D, U, D, U, D, U, D
time = 1
[Command]
name = "AI23"
command = D, U, D, U, D, U, D, U, D, U
time = 1
[Command]
name = "AI24"
command = B, F, B, F, B, F, B, F, B, F
time = 1
[Command]
name = "AI25"
command = D, U, B, F, D, U, B, F, D
time = 1
[Command]
name = "AI26"
command = B, U, F, D, B, U, F, D, B
time = 1
[Command]
name = "AI27"
command = a, x, a, x, a, x, a, x, a, x
time = 1
[Command]
name = "AI28"
command = b, y, b, y, b, y, b, y, b, y
time = 1
[Command]
name = "AI29"
command = c, z, c, z, c, z, c, z, c, z
time = 1
[Command]
name = "AI30"
command = x, a, x, a, x, a, x, a, x, a
time = 1
[Command]
name = "AI31"
command = y, b, y, b, y, b, y, b, y, b
time = 1
[Command]
name = "AI32"
command = z, c, z, c, z, c, z, c, z, c
time = 1
[Command]
name = "AI33"
command = b, y, y, b, b, y, y, b, b, y
time = 1
[Command]
name = "AI34"
command = y, b, b, y, y, b, b, y, y, b
time = 1
[Command]
name = "AI35"
command = x, a, a, x, x, a, a, x, x, a
time = 1
[Command]
name = "AI36"
command = a, x, x, a, a, x, x, a, a, x
time = 1
[Command]
name = "AI37"
command = D, U, U, D, D, U, U, D, D, U
time = 1
[Command]
name = "AI38"
command = B, F, F, B, B, F, F, B, B, F
time = 1
[Command]
name = "AI39"
command = U, D, D, U, U, D, D, U, U, D
time = 1
[Command]
name = "AI40"
command = F, B, B, F, F, B, B, F, F, B
time = 1
;---------------------------------------------------------------------------
; 2. state入口
; --------------
; 在这一段里，人物会依据输入来转到相应的state里。
;
; 入口示例如下:
;   [State -1, 标签]           ;标签可以是任意你想要来标注这个入口的名字
;   type = ChangeState          ;不要改
;   value = 要跳转到的state
;   trigger1 = command = "招式名"
;   . . .  (其他trigger)
;
; - 一些常用的trigger:
;   - statetype
;       S, C or A : 现在人物的状态 (站立, 下蹲, 空中)
;   - ctrl
;       0 or 1 : 如果人物可控，则值为1，否则为0。除非取消另一个招数，否则出招是一般要求ctrl=1
;   - stateno
;       现在人物的state号 - 在取消招数时常用。
;   - movecontact
;       0 or 1 : 如果上一个招数接触到了敌人，则值为1，否则为0。在取消招数时常用。
;
; 注意: 入口的顺序很重要。
;   如果指令A是指令B的一部分，则指令B的入口应排在指令A前。
;   比如说，下前下前XY应该排在下前XY之前，下前XY应该排在下前X之前，下前X应该排在X之前。
;
; 关于trigger的详细解释，请参阅MUGEN自带的cns参考说明。
;
; 提示:
; 这部分是cns的延伸。-1这个state是一个特殊state，无论人物实际上在哪个state，-1这个state每一帧都会执行。


; 不要删除下面这行。语法标准要求CMD文件必须包括这行。
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

[State -1, P-Impact]
type = changeState
value = 1450
triggerall = var(59)=0
triggerall = command = "P-Impact"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1100

[State -1, P-GodSlayer]
type = changeState
value = 1800
triggerall = var(59)=0
triggerall = command = "P-arrow"
triggerall = power >= 1800
triggerall = statetype = A
trigger1 = ctrl

;电光碎步
[State -1, P-Impact air]
type = changeState
value = 1500
triggerall = var(59)=0
triggerall = command = "P-Impact"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl

[State -1, P-arrow]
type = changeState
value = 1700
triggerall = var(59)=0
triggerall = command = "P-B"
triggerall = power >= 1800
triggerall = statetype = S
trigger1 = ctrl

[State -1, P-Smasher]
type = changeState
value = 1200
triggerall = var(59)=0
triggerall = command = "b"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1050 && time > 12
trigger3 = stateno = 630 && time >10
[State -1, P-Storm]
type = changeState
value = 1600
triggerall = var(59)=0
triggerall = command = "P-Storm"
triggerall = power >= 1500
triggerall = statetype = S
trigger1 = ctrl

[State -1, P-striker]
type = changeState
value = 1300
triggerall = var(59)=0
triggerall = command = "P-striker"
triggerall = power >= 1500
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1100

[State -1, P-arrow]
type = changeState
value = 2600
triggerall = var(59)=0
triggerall = command = "P-arrow"
triggerall = power >= 2800
triggerall = statetype = S
trigger1 = ctrl

[State -1, P-wave]
type = changeState
value = 2500
triggerall = var(59)=0
triggerall = command = "P-wave"
triggerall = power >= 3500
triggerall = statetype = S
triggerall = (numhelper(17020) =0)&&(numhelper(17021) =0)&&(numhelper(17022) =0)&&(numhelper(17023) =0)
triggerall = (numhelper(17023) =0)&&(numhelper(17024) =0)&&(numhelper(17025) =0)
trigger1 = ctrl

[State -1, P-Redemption]
type = changeState
value = 3000
triggerall = var(59)=0
triggerall = command = "P-Redemption"
triggerall = var(45) >= 12
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;完全世界
[State -1, 完全世界]
type = changestate
value = 2000
triggerall = var(59)= 0
triggerall = command = "c"
triggerall = var(45) > 0
trigger1 = statetype != A

[State -1, 完全世界air]
type = changestate
value = 2001
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = var(45) > 0
trigger1 = statetype != S

;===========================================================================
;这个控制器不触发招数。如果人物可以从普通技取消到必杀技，这个控制器会把var(1)设置成1。下面必杀技的控制器会用到这个变量。
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, 变量清零]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, 检查可否取消]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;蹲重脚例外
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;格挡后
var(1) = 1

;---------------------------------------------------------------------------
;疾风功夫腿 (耗三分之一格能量)


;---------------------------------------------------------------------------
;闪刃

;---------------------------------------------------------------------------
;P-AA
[State -1, P-AA]
type = ChangeState
value = 1050
triggerall = var(59)=0
triggerall = command = "P-AA"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;P-shoot
[State -1, shoot]
type = ChangeState
value = 1100
triggerall = var(59)=0
triggerall = command = "P-shoot"
triggerall = !Numhelper(1011)
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;P-Gleipnir
[State -1, P-Gleipnir]
type = ChangeState
value = 1000
triggerall = var(59)=0
triggerall = command = "P-Gleipnir"
trigger1 = statetype = S
trigger1 = ctrl
;P-flasher
[State -1, P-flasher]
type = ChangeState
value = 1030
triggerall = Numhelper(1036) = 0
triggerall = var(59)=0
triggerall = command = "P-flasher"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;前跑
[State -1, 前跑]
type = ChangeState
value = 100
triggerall = var(59)=0
trigger1 = command = "前前"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "蓄下方向"
trigger2 = command = "b"
trigger2 = statetype != A
trigger2 = ctrl

;---------------------------------------------------------------------------
;后跑
[State -1, 后跑]
type = ChangeState
value = 105
triggerall = var(59)=0
trigger1 = command = "后后"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "蓄下方向"
trigger2 = command = "a"
trigger2 = statetype != A
trigger2 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;立A
[State -1, 立A]
type = ChangeState
value = 200
triggerall = var(59)=0
triggerall = command = "x"
triggerall = command != "蓄下方向"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;立B
[State -1, 立B]
type = ChangeState
value = 211
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command != "蓄下方向"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
triggerall = Var(1) != 0
;---------------------------------------
;前C
[State -1, 前C]
type = ChangeState
value = 231
triggerall = var(59)=0
triggerall = command = "前C"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 7
;---------------------------------------------------------------------------
;立C
[State -1, 立C]
type = ChangeState
value = 230
triggerall = var(59)=0
triggerall = command = "z"
triggerall = command != "蓄下方向"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 211) && time > 3
triggerall = Var(1) != 0
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;挑拨
[State -1, 挑拨]
type = ChangeState
value = 195
triggerall = var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;蹲A
[State -1, 蹲A]
type = ChangeState
value = 400
triggerall = var(59)=0
triggerall = command = "x"
triggerall = command = "蓄下方向"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;蹲B
[State -1, 蹲B]
type = ChangeState
value = 410
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command = "蓄下方向"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;蹲C
[State -1, 蹲C]
type = ChangeState
value = 430
triggerall = var(59)=0
triggerall = command = "z"
triggerall = command = "蓄下方向"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) || (stateno = 430)
triggerall = Var(1) != 0

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;跳A
[State -1, 跳A]
type = ChangeState
value = 600
triggerall = var(59)=0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 1350 ;空中格挡后

;---------------------------------------------------------------------------
;跳B
[State -1, 跳B]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;跳轻拳或者跳轻脚后
trigger2 = movecontact
trigger3 = stateno = 1350 ;空中格挡后

;---------------------------------------------------------------------------
;跳C
[State -1, 跳C]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;空中格挡后

;---------------------------------------------------------------------------
;攻性防御
[State -1, 攻性防御]
type = ChangeState
value = 900
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;投
[State -1, 投]
type = ChangeState
value = 800
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;空投
[State -1, 空投]
type = ChangeState
value = 850
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;------------------------------------------------------------
;受身
[State -1, 受身]
type = ChangeState
triggerall = var(59)=0
triggerall = stateno = 5100
triggerall = Alive = 1
trigger1 = (command = "a")
trigger2 = (command = "b")
trigger3 = (command = "c")
trigger4 = (command = "x")
trigger5 = (command = "y")
trigger6 = (command = "z")
value = 4000