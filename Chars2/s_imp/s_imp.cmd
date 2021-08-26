;AI

[Command]
name = "AI_0"
command = D, D, D, D, D, D, D, D, D, D
time = 1

[Command]
name = "AI_1"
command = D, D, D, D, D, D, D, D, D, U
time = 1

[Command]
name = "AI_2"
command = D, D, D, D, D, D, D, D, U, D
time = 1

[Command]
name = "AI_3"
command = D, D, D, D, D, D, D, U, D, D
time = 1

[Command]
name = "AI_4"
command = D, D, D, D, D, D, U, D, D, D
time = 1

[Command]
name = "AI_5"
command = D, D, D, D, D, U, D, D, D, D
time = 1

[Command]
name = "AI_6"
command = D, D, D, D, U, D, D, D, D, D
time = 1

[Command]
name = "AI_7"
command = D, D, D, U, D, D, D, D, D, D
time = 1

[Command]
name = "AI_8"
command = D, D, U, D, D, D, D, D, D, D
time = 1

[Command]
name = "AI_9"
command = D, U, D, D, D, D, D, D, D, D
time = 1

;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

;-| 必殺技 |------------------------------------------------------
[Command]
name = "A"
command = b
time = 1

[Command]
name = "L"
command = z
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "R"
command = c
time = 1

[Command]
name = "B"
command = a
time = 1

[Command]
name = "holdL"
command = /z
;time = 1

[Command]
name = "holddf"
command = /$DF
time = 1

;※※※※※※※※※※※※※※※※※※※※ダッシュ攻撃コマンド

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "jump"    
command = ~1$D,$U
time = 10

;※※※※※※※※※※※※※※※※※※※※後避け
;後を押しながらx+y+z、という意味
[Command]
name = "away-b"    
command = /B,x+y+z
time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;x+y+z、という意味
[Command]
name = "away-f"    
command = x+y+z
time = 10

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y+z
time = 1

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "a+b+c"
command = a+b+c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "UF"
command = /UF
time = 1

[Command]
name = "DF"
command = /DF
time = 1

[Command]
name = "UB"
command = /UB
time = 1

[Command]
name = "DB"
command = /DB
time = 1

[Command]
name = "SU"
command = /U
time = 1

[Command]
name = "SD"
command = /D
time = 1

[Command]
name = "SB"
command = /B
time = 1

[Command]
name = "SF"
command = /F
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
; AI swich -> ON
[State -1,2]
type = Varset
trigger1 = command = "AI_0"
trigger2 = command = "AI_1"
trigger3 = command = "AI_2"
trigger4 = command = "AI_3"
trigger5 = command = "AI_4"
trigger6 = command = "AI_5"
trigger7 = command = "AI_6"
trigger8 = command = "AI_7"
trigger9 = command = "AI_8"
trigger10 = command = "AI_9"
trigger11 = command = "start"
var(59) = 1

; AI swich -> OFF
[State -1,2]
type = Varset
triggerall = var(59) = 1
trigger1 = RoundState != 2
trigger2 = (lose = 1) || (life <= 0) || (!Alive) || (win = 1)
var(59) = 2

[State -1,2]
type = Varset
triggerall = var(59) = 2
trigger1 = RoundState = 2
var(59) = 1

[State -1,2]
type = VarSet
triggerall = var(59) = 1
trigger1 = var(58) = 1
trigger2 = (P2StateType != S) || (P2BodyDist X != [0,50])
trigger2 = var(58) = 2
trigger2 = (NumHelper(1001) = 0) && (NumHelper(1002) = 0);(P2StateType != C) || (P2BodyDist X != [0,50])
var(58) = 0

[State -1,2]
type = VarSet
triggerall = var(59) = 1
triggerall = var(58) = 0
trigger1 = P2StateType = S
trigger1 = P2BodyDist X = [0,40]
var(58) = 1

[State -1,2]
type = VarSet
triggerall = var(59) = 1
triggerall = var(58) = 0
trigger1 = P2StateType = C
trigger1 = P2BodyDist X = [0,50]
var(58) = 2

;---------------------------------------------------------------------------
;AI動作
;---------------------------------------------------------------------------
;エクスカリバー・アンビデクストラフォーム
[State -1, seed]
type = ChangeState
value = 3000
triggerall = var(2) = 1
triggerall = stateno != [3000,3005]
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype != A
trigger1 = P2BodyDist Y = [-60,0]
trigger1 = PrevStateno = 4000
trigger2 = (movehit) && (1040)
trigger3 = var(57) != 0

;---------------------------------------------------------------------------
;エクスカリバー・アンビデクストラフォーム(カウンター)
[State -1, seed]
type = ChangeState
value = 1060
TriggerAll = Var(59) = 1
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger1 = P2StateType != C
Trigger1 = EnemyNear,HitDefAttr = SCA,NA,SA,HA ;攻撃にのみ
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,80]
Trigger1 = Random = [0,700]

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(振り下ろし)
[State -1, ]
type = ChangeState
value = 1040
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = S
trigger1 = (movehit) && (stateno = 1031)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(振り上げ)
[State -1, ]
type = ChangeState
value = 1032
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = S
trigger1 = (movehit) && (stateno = 1021)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(横薙ぎ)
[State -1, ]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = S
trigger1 = (movecontact) && (stateno = 310);(1)
trigger2 = (movecontact) && (stateno = 225);(2)

;---------------------------------------------------------------------------
;ハイキック(1)
[State -1, ]
type = ChangeState
value = 310
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 300)

;---------------------------------------------------------------------------
;ローキック(1)
[State -1, ]
type = ChangeState
value = 300
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 400)

;---------------------------------------------------------------------------
;屈みキック(1),
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(58) = 1

;---------------------------------------------------------------------------
;踵落とし,蹴り上げ(2)
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = S
trigger1 = ctrl
trigger1 = var(58) = 2

;---------------------------------------------------------------------------
;空中エクスカリバーレーザー対艦刀(上げ下げ)
[State -1, ]
type = ChangeState
value = 1055
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = A
trigger1 = ctrl
trigger1 = P2bodydist X = [0,70]
trigger1 = P2bodydist Y = [-100,10]
trigger2 = (stateno = [600,620]) && (movecontact)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(上げ下げ)
[State -1, ]
type = ChangeState
value = 1050
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = P2bodydist X = [60,100]
trigger1 = P2bodydist Y = [-20,-100]
trigger2 = (movecontact) && (stateno = 400)
trigger2 = hitcount >= 2
trigger3 = (movecontact) && (stateno = 210)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(振り上げ)
[State -1, ]
type = ChangeState
value = 1030
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = S
trigger1 = ctrl
trigger1 = var(57) != 0
trigger1 = P2Bodydist X = [0,100]

;---------------------------------------------------------------------------
;空中フラッシュエッジブーメラン
[State -1, 1010]
type = ChangeState
value = 1010
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = A
triggerall = (NumHelper(1001) = 0) && (NumHelper(1002) = 0)
trigger1 = ctrl
trigger1 = P2bodydist X >= 100
trigger2 = (stateno = [600,620]) && (movecontact)

;---------------------------------------------------------------------------
;フラッシュエッジブーメラン
[State -1, 1000]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = S
triggerall = (NumHelper(1001) = 0) && (NumHelper(1002) = 0)
trigger1 = ctrl
trigger1 = P2bodydist X >= 130
trigger2 = (stateno = [200,225]) && (movecontact)
trigger3 = (stateno = [240,410]) && (movecontact)
trigger4 = ctrl
trigger4 = FrontEdgeBodyDist <= 50
trigger4 = P2StateType = L

;---------------------------------------------------------------------------
;空中20mmCIWS
[State -1, ]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = A
triggerall = P2BodyDist X = [50,110]
triggerall = P2BodyDist Y = [-40,40]
trigger1 = stateno = [100,105]
trigger2 = stateno = [8100,9100]

;---------------------------------------------------------------------------
;空中ミドルキック
[State -1, ]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = win = 0
triggerall = statetype = A
triggerall = P2BodyDist X = [0,50]
triggerall = P2BodyDist Y = [-40,40]
trigger1 = stateno = [100,105]
trigger2 = stateno = [8100,9100]
trigger3 = (stateno = 600) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;---------------------------------------------------------------------------
;前ダッシュ
[State -1, seed100]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = win = 0
triggerall = ctrl = 1
triggerall = stateno != 100
trigger1 = var(57) != 0
trigger2 = P2BodyDist X >= 160
trigger2 = (NumHelper(1001) = 1) || (NumHelper(1002) = 1)

;---------------------------------------------------------------------------

;/**************************start
;夢幻回廊[http://mugen9.syuriken.jp/]
;---------------------------------------------------------------------------
;１、投げに対応するAI
;立ちガード
[State -1,1no0]
Type = ChangeState
Value = 130
TriggerAll = var(59) = 1
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger1 = P2StateType != C
Trigger1 = EnemyNear,HitDefAttr != SCA,NT,ST,HT ;投げ属性以外の攻撃にのみ
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,80]
Trigger1 = Random = [0,700]

;バックダッシュ
[State -1,1no1]
Type = ChangeState
Value = 105
TriggerAll = var(59) = 1                       ;AI判定
TriggerAll = StateType != A
TriggerAll = BackEdgeBodyDist >= 40
Trigger1 = EnemyNear,MoveType = A
Trigger1 = EnemyNear,HitDefAttr = SCA,NT,ST,HT ;投げ属性の攻撃にのみ
Trigger1 = P2BodyDist X = [0,30]
Trigger1 = P2BodyDist Y = [-30,0]
Trigger1 = Ctrl
Trigger1 = random = [40,99]

;---------------------------------------------------------------------------
;２、飛び道具に対応するAI
;立ちガード
[State -1,1no2]
Type = ChangeState
Value = 130
TriggerAll = var(59) = 1
TriggerAll = StateType != A
TriggerAll = Ctrl
TriggerAll = P2StateType != C
Trigger1 = EnemyNear,HitDefAttr = SCA,NA,SA,HA           ;通常攻撃属性の攻撃にのみ
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,80]
Trigger1 = Random = [0,700]
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0      ;相手が出したHelperまたはProjが一個以上あるとき
;Trigger2 = EnemyNear,MoveType = A                        ;その飛び道具が攻撃状態のとき
;Trigger2 = InGuardDist                                   ;自分がガード可能なとき
Trigger2 = EnemyNear,HitDefAttr = SCA,NP,SP,HP,NA,SA,HA  ;投げ属性以外の攻撃にのみ
Trigger2 = Random = [0,700]

;---------------------------------------------------------------------------
;１、投げに対応するAI
;---------------------------------------------------------------------------
;１、投げに対応するAI
;/**************************end

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = p2movetype = A;相手が攻撃状態の時
triggerall = ctrl = 1
triggerall = Statetype = S
;trigger2 = p2bodydist X >= 500
trigger1 = HitOver = 1
;trigger2 = p2bodydist X >= 210
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 131
triggerall = var(59) = 1
triggerall = p2movetype = A;相手が攻撃状態の時
triggerall = ctrl = 1
triggerall = Statetype = C
;trigger2 = p2bodydist X >= 500
trigger1 = HitOver = 1
;trigger2 = p2bodydist X >= 210
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = p2movetype = A;相手が攻撃状態の時
triggerall = ctrl = 1
triggerall = Statetype = A
;trigger2 = p2bodydist X <= 500
trigger1 = HitOver = 1
;trigger2 = p2bodydist X >= 210
;---------------------------------------------------------------------------
;リカバリー
[State -1,reco]
type = ChangeState
value = 5200
triggerall = var(59) = 1
triggerall = life > 0
triggerall = p2life > 0 
triggerall = canrecover = 1
triggerall = Pos Y >= -20
triggerall = stateno = 5050
triggerall = Vel Y > 0
trigger1 = random>500&&gameTime%10=0

;---------------------------------------------------------------------------
;リカバリー
[State -1,reco]
type = ChangeState
value = 5210
triggerall = var(59) = 1
triggerall = life > 0
triggerall = p2life > 0 
triggerall = Vel Y > -1
triggerall = canrecover = 1
triggerall = stateno = 5050
trigger1 = random>500&&gameTime%3=0



;---------------------------------------------------------------------------
;カウンター
;---------------------------------------------------------------------------
[State -1, ]
type = VarSet
var(37) = 220
triggerall = stateno = [150,159]
triggerall = stateType != A
trigger1 = command = "fwd_a"
trigger2 = var(59) = 1
trigger2 = (60 < p2bodydist X) && (p2bodydist X <= 120)
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(37) = 610
triggerall = stateno = [150,159]
triggerall = stateType = A
trigger1 = command = "fwd_a"
trigger2 = var(59) = 1
trigger2 = (60 < p2bodydist X) && (p2bodydist X <= 120)
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(37) = 1000
triggerall = stateno = [150,159]
triggerall = stateType != A
trigger1 = command = "fwd_b"
trigger2 = var(59) = 1
trigger2 = (150 < p2bodydist X)
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(37) = 1010
triggerall = stateno = [150,159]
triggerall = stateType = A
trigger1 = command = "fwd_b"
trigger2 = var(59) = 1
trigger2 = (150 < p2bodydist X)
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(37) = 110
triggerall = stateno = [150,159]
trigger1 = command = "fwd_c"
trigger2 = var(59) = 1
trigger2 = FrontEdgeBodyDist >= 100

[State -1, ]
type = VarSet
var(37) = 115
triggerall = stateno = [150,159]
trigger1 = command = "back_c"
trigger2 = var(59) = 1
trigger2 = BackEdgeBodyDist >= 100



;---------------------------------------------------------------------------
;ガードキャンセル
[State -1, Kung Fu Throw]
type = ChangeState
value = var(48)
;triggerall = NumHelper(835) = 0;アドバンシング
triggerall = (stateno = 150)||(stateno = 151)||(stateno = 152)
trigger1 = var(48) != 0


;===========================================================================
;超必殺技
;===========================================================================
;種割れ
[State -1, ]
type = ChangeState
value = 4000
triggerall = var(59) = 0
triggerall = var(1) = 1
triggerall = var(2) = 0
triggerall = (command = "L") && (command = "holddown")
triggerall = stateno != [3000,3005]
trigger1 = statetype != A

;===========================================================================
;超必殺技
;===========================================================================
;エクスカリバー・アンビデクストラフォーム
[State -1, ]
type = ChangeState
value = 3000
triggerall = var(2) = 1
triggerall = (command = "L") && (command = "holddown")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,240]) && (movecontact)
trigger3 = (stateno = [300,310]) && (movecontact)
trigger4 = (stateno = [400,410]) && (movecontact)

;===========================================================================
;必殺技
;===========================================================================
;空中フラッシュエッジブーメラン
[State -1, 1010]
type = ChangeState
value = 1010
triggerall = (command = "A")  && (command = "holdfwd")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && (movecontact)

;---------------------------------------------------------------------------
;フラッシュエッジブーメラン
[State -1, 1000]
type = ChangeState
value = 1000
triggerall = (command = "A")  && (command = "holdfwd")
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) && (movecontact)
trigger3 = (stateno = [240,410]) && (movecontact)

;---------------------------------------------------------------------------
;空中エクスカリバーレーザー対艦刀(上げ下げ)
[State -1, ]
type = ChangeState
value = 1055
triggerall = command = "L" && command = "holdback"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && (movecontact)

;---------------------------------------------------------------------------
;エクスカリバー・アンビデクストラフォーム(カウンター)
[State -1, ]
type = ChangeState
value = 1060
triggerall = command = "L"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(上げ下げ)
[State -1, ]
type = ChangeState
value = 1050
triggerall = command = "L" && command = "holdback"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) && (movecontact)
trigger3 = (stateno = [240,410]) && (movecontact)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(振り下ろし)
[State -1, ]
type = ChangeState
value = 1040
triggerall = command = "L"
triggerall = statetype = S
trigger1 = (movecontact) && (stateno = 1031)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(振り上げ)
[State -1, ]
type = ChangeState
value = 1032
triggerall = command = "L"
triggerall = statetype = S
trigger1 = (movecontact=1) && (stateno = 1021)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(振り上げ)
[State -1, ]
type = ChangeState
value = 1030
triggerall = command = "L" && command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) && (movecontact)
trigger3 = (stateno = [240,410]) && (movecontact)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(横薙ぎ)
[State -1, ]
type = ChangeState
value = 1025
triggerall = command = "L"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,225]) && (movecontact)
trigger3 = (stateno = [240,410]) && (movecontact)

;---------------------------------------------------------------------------
;エクスカリバーレーザー対艦刀(横薙ぎ)
[State -1, ]
type = ChangeState
value = 1020
triggerall = command = "L"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) && (movecontact)
trigger3 = (stateno = [240,410]) && (movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ
[State -1,]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) && (movehit)

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中蹴り上げ
[State -1, ]
type = ChangeState
value = 620
triggerall = (command = "B") && (command = "holddown")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = stateno = [100,105]
trigger4 = stateno = [8100,9100]

;---------------------------------------------------------------------------
;空中ミドルキック
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "B") && (command = "holdback")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 620) && (movecontact)
trigger4 = stateno = [100,105]
trigger5 = stateno = [8100,9100]

;---------------------------------------------------------------------------
;空中キック
[State -1, ]
type = ChangeState
value = 600
triggerall = command = "B"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = [8100,9100]

;---------------------------------------------------------------------------
;空中20mmCIWS
[State -1, ]
type = ChangeState
value = 630
triggerall = command = "A"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = [8100,9100]

;---------------------------------------------------------------------------
;スライディング
[State -1, ]
type = ChangeState
value = 410
triggerall = statetype != A
trigger1 = (command = "B") && (command = "holddf")
trigger1 = ctrl
trigger2 = (command = "B") && (command = "holddf")
trigger2 = (movecontact) && (stateno = 400)
trigger3 = hitcount >= 2
trigger3 = (command = "holddown") && (command = "B")

;---------------------------------------------------------------------------
;屈みキック
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "holddown") && (command = "B")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 400)
trigger3 = (movecontact) && (stateno = 200)
trigger4 = (movecontact) && (stateno = 210)
trigger5 = (movecontact) && (stateno = 300)

;---------------------------------------------------------------------------
;踵落とし,蹴り上げ
[State -1, ]
type = ChangeState
value = 220
triggerall = (command = "B") && (command = "holdback")
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && (movecontact)
trigger3 = (stateno = 300) && (movecontact)

;---------------------------------------------------------------------------
;ハイキック
[State -1, ]
type = ChangeState
value = 310
triggerall = (command = "B")
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 300)
trigger2 = (movecontact) && (stateno = 400)
trigger2 = hitcount >= 2

;---------------------------------------------------------------------------
;ローキック
[State -1, ]
type = ChangeState
value = 300
triggerall = (command = "B")
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 200)
trigger2 = (movecontact) && (stateno = 210)
trigger3 = (movecontact) && (stateno = 400)

;---------------------------------------------------------------------------
;ミドルキック
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "B") && (command = "holdfwd")
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;膝蹴り
[State -1, ]
type = ChangeState
value = 200
triggerall = command = "B"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 400)

;---------------------------------------------------------------------------
;20mmCIWS
[State -1, ]
type = ChangeState
value = 230
triggerall = command = "A"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;スラスター開始
[State -1, 地上]
type = ChangeState
value = 8100
triggerall = command = "R"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = fvar(11) > 0

;---------------------------------------------------------------------------
;スラスター開始
[State -1, 空中]
type = ChangeState
value = 8300
triggerall = command = "R"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = fvar(11) > 0

