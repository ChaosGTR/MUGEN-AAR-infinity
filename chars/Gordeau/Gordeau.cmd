;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
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

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

[Command]
name = "holdx"
command = /x
time = 1

;-| Directional |--------------------------------------------------------------
[Command]
name = "F";Required (do not remove)
command = /F
time = 1

[Command]
name = "UF";Required (do not remove)
command = /UF
time = 1

[Command]
name = "U" ;Required (do not remove)
command = /U
time = 1

[Command]
name = "UB";Required (do not remove)
command = /UB
time = 1

[Command]
name = "B";Required (do not remove)
command = /B
time = 1

[Command]
name = "DB";Required (do not remove)
command = /DB
time = 1

[Command]
name = "D";Required (do not remove)
command = /D
time = 1

[Command]
name = "DF";Required (do not remove)
command = /DF
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;===========================================================================
[State -1, Soul Exodus]
type = ChangeState
value = 3900
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = !ishelper
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.35
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Mortal Slide - Divest]
type = ChangeState
value = 3050
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = !ishelper
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Turbulence]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = !ishelper
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = stateno = 830
trigger6 = movehit
trigger7 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Percise Aim A]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = command = "DD_a"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6= stateno = 5120 && time >= 3
trigger7 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Percise Aim B]
type = ChangeState
value = 1205
triggerall = !AIlevel
triggerall = command = "DD_b"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6= stateno = 5120 && time >= 3
trigger7 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Aerial Aim]
type = ChangeState
value = 1211
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = !ishelper
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact

;---------------------------------------------------------------------------
[State -1, Grim Reaper A]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Grim Reaper B]
type = ChangeState
value = 1005
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, EX Reaper]
type = ChangeState
value = 1010
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = !ishelper
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Assimilation A]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Assimilation B]
type = ChangeState
value = 1105
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, EX Assimilation]
type = ChangeState
value = 1110
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = !ishelper
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Auto Combo Assimilation]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = movehit
trigger1 = animelemtime(12) >= 0
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AIlevel
trigger1 = command = "FF"
triggerall = !ishelper
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !AIlevel
trigger1 = command = "BB"
triggerall = !ishelper
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Ultra Guard Cancel]
type = ChangeState
value = 8060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = stateno = [120,155]

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !AIlevel
triggerall = command = "z"
triggerall = !ishelper
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !AIlevel
triggerall = command = "z"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !AIlevel
triggerall = command = "z"
triggerall = !ishelper
triggerall = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !ishelper
triggerall = var(30) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,420]) && Movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger4 = animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !ishelper
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !ishelper
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !ishelper
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = !ishelper
triggerall = var(31) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [400,420]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = !ishelper
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = !ishelper
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger4 = animelemtime(12) >= 0
trigger5 = (Stateno = [400,410]) && Movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !AIlevel
triggerall = command = "a"
triggerall = !ishelper
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !AIlevel
triggerall = command = "b"
triggerall = !ishelper
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = command = "start"
triggerall = !ishelper
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = !ishelper
triggerall = var(32) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 420) && movecontact

;---------------------------------------------------------------------------
[State -1, 2A Self Cancel]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = !ishelper
triggerall = var(9) > 0
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = !ishelper
triggerall = var(33) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger5 = animelemtime(12) >= 0
trigger6 = (stateno = 420) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = !ishelper
triggerall = var(34) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger4 = animelemtime(12) >= 0
trigger5 = (Stateno = [400,410]) && Movecontact
trigger6 = Stateno = 100
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = command = "a"
triggerall = !ishelper
triggerall = var(35) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && prevstateno != 220
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = command = "b"
triggerall = !ishelper
triggerall = var(36) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 601
trigger3 = movecontact && animelemtime(12) > 0

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !AIlevel
triggerall = command = "c"
triggerall = !ishelper
triggerall = statetype = A
triggerall = prevstateno != 620
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610) && movecontact && prevstateno != 220
trigger3 = stateno = 601
trigger3 = movecontact && animelemtime(12) > 0

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = !ishelper
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger4 = animelemtime(13) >= 0
trigger5 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = !ishelper
triggerall = statetype = A
triggerall = var(15) < 6
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact && prevstateno != 220
trigger4 = stateno = 212 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = !ishelper
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = !ishelper
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !AIlevel
triggerall = command = "y"
triggerall = !ishelper
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ishelper
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3075]
triggerall = time > 0
trigger1 = movecontact
trigger2 = stateno = 621
trigger2 = var(7) = 1

;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ishelper
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3075]
triggerall = time > 0
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ishelper
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != [8000,8050]
triggerall = time > 0
trigger1 = stateno = [3000,3002]
trigger2 = stateno = 3053

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ishelper
triggerall = !ctrl
triggerall = moveguarded
triggerall = stateno != [8000,8050]
triggerall = time > 0
trigger1 = stateno = 3050

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ishelper
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != [8000,8050]
triggerall = time > 0
trigger1 = stateno = [3000,3002]
trigger2 = stateno = 3053

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !AIlevel
triggerall = command = "x" && power >= 500
triggerall = !ishelper
triggerall = stateno != [8000,8050]
triggerall = movecontact
triggerall = time > 0
trigger1 = stateno = 3053

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 240
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
triggerall = !ishelper
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !ailevel
triggerall = Var(50) != 1
triggerall = stateno != [120,155]
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]



;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Defense
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,80]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 9 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 35

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

;===========================================================================
;Wake Up
;===========================================================================
[State -1, Percise Aim B]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,70]
trigger1 = p2bodydist Y = [-160,0]
trigger1 = enemynear, Vel X >= 0
trigger1 = enemynear, Vel Y >= 0

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Assimilation B]
type = ChangeState
value = 1105
triggerall = AIlevel && numenemy
triggerall = !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,20]
triggerall = p2bodydist Y <= -20
trigger1 = ctrl
trigger2 = stateno = 410 && movehit

;===========================================================================
;Air to Air
;===========================================================================
[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,15]
triggerall = p2bodydist Y = [-20,10]
triggerall = pos Y < -20
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,20]
triggerall = p2bodydist Y = [-30,10]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-20,160]
triggerall = p2bodydist Y = [-120,50]
triggerall = prevstateno != 620
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,10]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Grim Reaper B]
type = ChangeState
value = 1005
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [10,250]
triggerall = p2bodydist Y = [-100,10]
triggerall = enemynear,ctrl = 0 
triggerall = enemynear,statetype != L
triggerall = enemynear, vel X < 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [120,190]
triggerall = p2bodydist Y = [-90,10]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = p2bodydist X = [0,40]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != C
triggerall = p2bodydist X = [0,50]
trigger1 = ctrl
trigger2 = stateno = 420 && movehit

;---------------------------------------------------------------------------

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,120]
trigger1 = ctrl
trigger2 = stateno = 210 && moveguarded

;---------------------------------------------------------------------------

[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = C
triggerall = p2bodydist X = [0,120]
trigger1 = ctrl
trigger2 = stateno = 210 && moveguarded

;===========================================================================
;Combo
;===========================================================================
[State -1, Soul Exidous]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall = power >= 2000
triggerall = roundno > 2
trigger1 = stateno = 211
trigger1 = movehit
trigger1 = animelemtime(12) >= 0
;---------------------------------------------------------------------------
[State -1, Turbulence]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = p2bodydist Y = [-100,100]
triggerall = p2bodydist X = [0,130]
triggerall = enemynear, ctrl = 0
triggerall = enemynear, vel X >= 0
trigger1 = ctrl
trigger2 = stateno = 211
trigger2 = movehit
trigger2 = animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, Mortal Slide - Divest]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2bodydist Y = [-50,100]
triggerall = p2bodydist X = [110,240]
triggerall = enemynear, ctrl = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Auto Combo Assimilation]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X = [0,60]
trigger1 = stateno = 211
trigger1 = movehit
trigger1 = animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = Stateno = 410
trigger1 = movecontact
trigger1 = animelemtime(7) >= 0

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact
trigger2 = stateno = 301
trigger2 = Movecontact

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = prevstateno != 195
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]
trigger1 = prevstateno != [3900,3951]

;---------------------------------------------------------------------------

[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
