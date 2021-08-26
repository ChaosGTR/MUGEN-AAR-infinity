
;-| A.I. |-----------------------------------------------------------------
[Command]
name = "cpu"
command = a,$D,F,a,a,a,x,B,F,D,a,a,a,a,$D,F,b,a,a,a,a
time = 0
[Command]
name = "cpu1"
command = b,$UF,U,a,b,b,x,B,F,D,b,b,$D,F,b,b,b,b,b,b,b
time = 0
[Command]
name = "cpu2"
command = c,c,c,UF,$F,DF,c,c,c,DF,DF,c,c,c,c,c,c
time = 0
[Command]
name = "cpu3"
command = x,x,$UF,U,UF,x,x,B,F,D,x,x,B,$B,x,x,x,x,x,x
time = 0
[Command]
name = "cpu4"
command = y,y,y,y,$DB,DB,y,y,x,B,F,D,y,y,DF,DF,y,y,y,y
time = 0
[Command]
name = "cpu5"
command = z,z,z,z,$DF,DF,z,x,B,F,D,z,z,z,D,z,z,z,z
time = 0
[Command]
name = "cpu6"
command = DF,$DF,a,D,D,x,D,$D,z,a,b,D,DF,DF
time = 0
[Command]
name = "cpu7"
command = F,$F,F,$F,F,a,a,F,F,a,F,$F,F,F
time = 0
[Command]
name = "cpu8"
command = B,B,z,a,b,B,B,B,y,y,a,B,B,B,B,$B,B
time = 0
[Command]
name = "cpu9"
command = $D,D,a,D,D,x,D,$D,z,a,b,D,D,D,D,D
time = 0

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 5

;-| Super Motions |--------------------------------------------------------
; Mega Beam Cannon
[Command]
name = "mbc"
command = ~D, DF, F, D, DF, F, x
time = 20

; Mega Beam Cannon
[Command]
name = "mbc"
command = ~D, DF, F, D, DF, F, y
time = 20

; Double Special
[Command]
name = "dc"
command = ~D, DB, B, D, DB, B, x
time = 20

; Double Special
[Command]
name = "dc"
command = ~D, DB, B, D, DB, B, y
time = 20

;-| Special Motions |------------------------------------------------------
; Homing Missile
[Command]
name = "hm"
command = ~D, DF, x
time = 20

; Homing Missile
[Command]
name = "hm"
command = ~D, DF, y
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "booster"
command = c
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
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
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; Mega Beam Cannon
[State -1, Mega Beam Cannon]
type = ChangeState
value = 3000
triggerall = command = "mbc"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Double Special
[State -1, Double Special]
type = ChangeState
value = 9000
triggerall = command = "dc"
triggerall = teammode = simul
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Homing Missile
[State -1, Homing Missile]
type = ChangeState
value = 1000
triggerall = command = "hm"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Boosters Forward
[State -1, Boosters Forward]
type = ChangeState
value = 510
triggerall = command = "booster"
triggerall = var(50) <= 2
triggerall = statetype != C
triggerall = statetype = S
trigger1 = command = "holdfwd"
trigger1 = ctrl

; Boosters Forward Mid Air
[State -1, Boosters Forward Mid Air]
type = ChangeState
value = 511
triggerall = command = "booster"
triggerall = var(50) <= 2
triggerall = statetype != C
triggerall = statetype = A
trigger1 = command = "holdfwd"
trigger1 = ctrl

; Boosters Backward
[State -1, Boosters Backward]
type = ChangeState
value = 520
triggerall = command = "booster"
triggerall = var(50) <= 2
triggerall = statetype != C
triggerall = statetype = S
trigger1 = command = "holdback"
trigger1 = ctrl

; Boosters Backward Mid Air
[State -1, Boosters Backward Mid Air]
type = ChangeState
value = 521
triggerall = command = "booster"
triggerall = var(50) <= 2
triggerall = statetype != C
triggerall = statetype = A
trigger1 = command = "holdback"
trigger1 = ctrl

; Boosters
[State -1, Boosters]
type = ChangeState
value = 500
triggerall = command = "booster"
triggerall = var(50) <= 2
triggerall = statetype != C
triggerall = statetype = S
trigger1 = ctrl

; Boosters Mid Air
[State -1, Boosters]
type = ChangeState
value = 501
triggerall = command = "booster"
triggerall = var(50) <= 2
triggerall = statetype != C
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Kick Back
[State -1, Stand Kick Back]
type = ChangeState
value = 250
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Weak Kick
[State -1, Stand Weak Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
