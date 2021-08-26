;==========================================================================
;コ?ンド関連フ?イル
;==========================================================================
;-| CPU |--------------------------------------------------------
[Command]
name = "AI_01"
command = ~D, D, D, D, D, D, D
command.time = 1

[Command]
name = "AI_02"
command = ~U, U, U, U, U, U, U
command.time = 1

[Command]
name = "AI_03"
command = ~F, F, F, F, F, F, F
command.time = 1

[Command]
name = "AI_04"
command = ~B, B, B, B, B, B, B
command.time = 1

[Command]
name = "AI_05"
command = a, a, a, a, a, a, a
command.time = 1

[Command]
name = "AI_06"
command = b, b, b, b, b, b, b
command.time = 1

[Command]
name = "AI_07"
command = c, c, c, c, c, c, c
command.time = 1

[Command]
name = "AI_08"
command = x, x, x, x, x, x, x
command.time = 1

[Command]
name = "AI_09"
command = y, y, y, y, y, y, y
command.time = 1

[Command]
name = "AI_10"
command = z, z, z, z, z, z, z
command.time = 1

[Command]
name = "AI_11"
command = s, s, s, s, s, s, s
command.time = 1

[Command]
name = "AI_12"
command = ~U, D, F, B, U, D, F, B
command.time = 1

[Command]
name = "AI_13"
command = ~U, D, B, F, U, D, B, F
command.time = 1

[Command]
name = "AI_14"
command = ~D, U, F, B, D, U, F, B
command.time = 1

[Command]
name = "AI_15"
command = ~D, U, B, F, D, U, B, F
command.time = 1

[Command]
name = "AI_16"
command = ~F, B, U, D, F, B, U, D
command.time = 1

[Command]
name = "AI_17"
command = ~F, B, D, U, F, B, D, U
command.time = 1

[Command]
name = "AI_18"
command = ~B, F, U, D, B, F. U, D
command.time = 1

[Command]
name = "AI_19"
command = ~B, F, D, U, B, F, D, U
command.time = 1

[Command]
name = "AI_20"
command = ~D, D, F, F, B, B, U, U
command.time = 1

[Command]
name = "AI_21"
command = ~D, D, F, F, U, U, B, B
command.time = 1

[Command]
name = "AI_22"
command = ~D, D, B, B, F, F, U, U
command.time = 1

[Command]
name = "AI_23"
command = ~D, D, B, B, U, U, F, F
command.time = 1

[Command]
name = "AI_24"
command = ~D, D, U, U, B, B, F, F
command.time = 1

[Command]
name = "AI_25"
command = ~D, D, U, U, F, F, B, B
command.time = 1

[Command]
name = "AI_26"
command = a, b, c, x, y, z, s
command.time = 1

[Command]
name = "AI_27"
command = s, z, y, x, c, b, a
command.time = 1

[Command]
name = "AI_28"
command = ~F, a, F, a, F, a, F, a
command.time = 1

[Command]
name = "AI_29"
command = ~F, b, F, b, F, b, F, b
command.time = 1

[Command]
name = "AI_30"
command = ~F, c, F, c, F, c, F, c
command.time = 1

[Command]
name = "AI_31"
command = ~F, x, F, x, F, x, F, x
command.time = 1

[Command]
name = "AI_32"
command = ~F, y, F, y, F, y, F, y
command.time = 1

[Command]
name = "AI_33"
command = ~F, z, F, z, F, z, F, z
command.time = 1

[Command]
name = "AI_34"
command = ~B, a, B, a, B, a, B, a
command.time = 1.

[Command]
name = "AI_35"
command = ~B, b, B, b, B, b, B, b
command.time = 1

[Command]
name = "AI_36"
command = ~B, c, B, c, B, c, B, c
command.time = 1

[Command]
name = "AI_37"
command = ~B, x, B, x, B, x, B, x
command.time = 1

[Command]
name = "AI_38"
command = ~B, y, B, y, B, y, B, y
command.time = 1

[Command]
name = "AI_39"
command = ~B, z, B, z, B, z, B, z
command.time = 1

[Command]
name = "AI_40"
command = ~U, a, U, a, U, a, U, a
command.time = 1
;-| 必殺技 |-----------------------------------------------------------

[Command]
name = "jenoside_S"
command = ~F,D,DF,a
time = 25

[Command]
name = "baria_S"
command = ~F,$D,B,x
time = 25

[Command]
name = "R_R_S"
command = ~D,DF,F,x
time = 25

[Command]
name = "Warp_S"
command = ~B,D,DB,x
time = 25

[Command]
name = "Unsou_S"
command = ~B,$D,F,a
time = 25

[Command]
name = "H_R_R_S"
command = ~D,DF,F,D,DF,F,x
time = 25

;-| 2回押し |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "FF"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;-| 2・3個同時押し |-----------------------------------------------
[Command]
name = "recovery"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = a+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1


[Command]
name = "by"
command = b+y
time = 1

;-| 方向+??ン |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1


[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "fwd_ax"
command = /F, a+x
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

[Command]
name = "back_ax"
command = /B, a+x
time = 1

;-| 攻撃??ン押しっぱなし |-----------------------------------------------

[Command]
name = "hold_med"
command = /b
time = 1

[Command]
name = "hold_med"
command = /a
time = 1

[Command]
name = "hold_med"
command = /a+b
time = 1

[Command]
name = "hold_med"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_x"
command = /y
time = 1


;-| 1回押し |---------------------------------------------------------
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
name = "s"
command = s
time = 1


[Command]
name = "u"
command = $U
time = 1
[Command]
name = "uu"
command = /$U
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"; ;要求済み (キ?の変更は可?ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1


[Command]
name = "f_a"
command = F, a
time = 15

[Command]
name = "f_b"
command = F, b
time = 15

[Command]
name = "f_c"
command = F, c
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;コ?ンド実行部分（優先順位が高いものを先に?記）
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;前方?ッシュ
[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;前?回避
[State -1]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = command = "fwd_ax"
triggerall = ctrl = 1
trigger1 = statetype != A
;-------------------------------------------------------------
;その場回避
[State -1]
type = ChangeState
value = 911
triggerall = var(59) = 0
triggerall = command = "ax"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;受身
[State -1]
type = ChangeState
value = 52000
triggerall = var(59) = 0
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30


;===========================================================================
;?超必殺技
;===========================================================================

;ロ?ドロ?ラ?だっ
[State -1]
type = ChangeState
value = 10023
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall =  command = "H_R_R_S"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;?必殺技
;===========================================================================

;ジェノサイトカッ??（弱）
[State -1]
type = ChangeState
value = 10000
triggerall = var(59) = 0
triggerall = command = "jenoside_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
trigger6 = statetype != A
trigger6 = stateno = [1006,1013]
trigger6 = movecontact

;---------------------------------------------------------------------------

;?送(弱)
[State -1]
type = ChangeState
value = 10017
triggerall = var(59) = 0
triggerall =  command = "Unsou_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
trigger6 = statetype != A
trigger6 = stateno = [1006,1013]
trigger6 = movecontact

;---------------------------------------------------------------------------

;サウンドバリア（弱）
[State -1]
type = ChangeState
value = 10006
triggerall = var(59) = 0
triggerall =  command = "baria_S"
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
trigger6 = statetype != A
trigger6 = stateno = [1006,1013]
trigger6 = movecontact

;---------------------------------------------------------------------------

;ロ?ドロ?ラ?（弱）
[State -1]
type = ChangeState
value = 10010
triggerall = var(59) = 0
triggerall =  command = "R_R_S"
triggerall = NumHelper(10010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
trigger6 = statetype != A
trigger6 = stateno = [1006,1013]
trigger6 = movecontact

;---------------------------------------------------------------------------

;ワ?プ（弱）
[State -1]
type = ChangeState
value = 10015
triggerall = var(59) = 0
triggerall =  command = "Warp_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
trigger6 = statetype != A
trigger6 = stateno = [1006,1013]
trigger6 = movecontact



;===========================================================================
;?通常技
;===========================================================================


;-------------------------------------------------------------
;吹き飛ばし攻撃
[State -1]
type = ChangeState
value = 912
triggerall = var(59) = 0
triggerall = command = "by"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [1006,1013]
trigger2 = movecontact
;-------------------------------------------------------------
;弱パン?
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
;---------------------------------------------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
;---------------------------------------------------------------------------
;しゃがみ弱パン?
[State -1]
type = ChangeState
value = 1002
triggerall = var(59) = 0
triggerall = command = "down_x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1002
trigger2 = time > 5
trigger3 = stateno = 1003
trigger3 = time > 5
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 1003
triggerall = var(59) = 0
triggerall = command = "down_a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1002
trigger2 = time > 5
trigger3 = stateno = 1003
trigger3 = time > 5
;---------------------------------------------------------------------------
;強パン?(近)
[State -1]
type = ChangeState
value = 1012
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1
triggerall = p2bodydist X < 20
;---------------------------------------------------------------------------
;強パン?(遠)
[State -1]
type = ChangeState
value = 1006
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
;---------------------------------------------------------------------------
;強キック(近)
[State -1]
type = ChangeState
value = 1007
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
;---------------------------------------------------------------------------
;強キック(遠)
[State -1]
type = ChangeState
value = 1013
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1000
trigger2 = time > 5
trigger3 = stateno = 1001
trigger3 = time > 5
trigger4 = stateno = 1002
trigger4 = time > 5
trigger5 = stateno = 1003
trigger5 = time > 5
;---------------------------------------------------------------------------
;しゃがみ強パン?
[State -1]
type = ChangeState
value = 1008
triggerall = var(59) = 0
triggerall = command = "down_y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1002
trigger2 = time > 5
trigger3 = stateno = 1003
trigger3 = time > 5
;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 1009
triggerall = var(59) = 0
triggerall = command = "down_b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1002
trigger2 = time > 5
trigger3 = stateno = 1003
trigger3 = time > 5

;---------------------------------------------------------------------------
;ジャンプ弱パン?
[State -1]
type = ChangeState
value = 1004
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 1005
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;ジャンプ強パン?
[State -1]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 1011
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = command = "s"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

