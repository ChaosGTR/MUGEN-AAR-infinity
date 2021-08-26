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

[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
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

;-|Dir |--------------------------------------------------------------
[Command]
name = "fwd";Required (do not remove)
command = $F
time = 1

[Command]
name = "back";Required (do not remove)
command = $B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;ChangeState          ;Don't change this
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
[State -1, Get in the Fucking Box]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.35
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
trigger5 = (stateno = [600,620]) && movecontact
trigger6 = (Stateno = [610,615]) && numhelper(7777)
trigger7 = (stateno = 830) && movecontact
;---------------------------------------------------------------------------
[State -1, Devil's Advent]
type = ChangeState
value = 3075
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
;triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
trigger5 = (stateno = [600,620]) && movecontact
trigger6 = (Stateno = [610,615]) && numhelper(7777)
trigger7 = (stateno = 830) && movecontact
;---------------------------------------------------------------------------
[State -1, Angel's Advent]
type = ChangeState
value = 3050
triggerall = var(18) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
;triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
trigger5 = (stateno = [600,620]) && movecontact
trigger6 = (Stateno = [610,615]) && numhelper(7777)
trigger7 = (stateno = 830) && movecontact
;---------------------------------------------------------------------------
[State -1, Yum Heart]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
trigger5 = (stateno = 830) && movecontact
;---------------------------------------------------------------------------
[State -1, The D6 A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
triggerall = !numhelper(2100)
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, The D6 B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
triggerall = !numhelper(2100)
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, The D6 EX]
type = ChangeState
value = 1002
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = !numhelper(2100)
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, Black Heart]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DD_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
trigger5 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Bomb A]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, Bomb B]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, Air Bomb A]
type = ChangeState
value = 1210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype = A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (Stateno = [610,615]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, Remote Detonate]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a" || command = "QCB_b"
triggerall = statetype != A
triggerall = var(28) = 1
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, Air Bomb B]
type = ChangeState
value = 1211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype = A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (Stateno = [610,615]) && numhelper(7777)
;---------------------------------------------------------------------------
[State -1, Deal with the Devil]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = power < 2000
triggerall = command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (Stateno = [210,215]) && numhelper(7777)
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
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

;---------------------------------------------------------------------------
[State -1, Ultra Guard Cancel]
type = changestate
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
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Allow Blocking against own helpers]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdback"
triggerall = ctrl
trigger1 = numhelper(1260)
trigger1 = helper(1260),stateno = [1262,1263]
trigger1 = helper(1260),rootdist X = [-60,60]
trigger2 = numhelper(2000)
trigger2 = helper(2000),stateno = 2000
trigger2 = helper(2000),rootdist X = [-110,110]
trigger3 = numhelper(1250)
trigger3 = helper(1250),stateno = 1251
trigger3 = helper(1250),rootdist X = [-60,60]
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact
trigger3 = (Stateno = 300) && Movehit

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [400,420]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 210 || stateno = 213
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 211 || stateno = 214
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 4B]
type = ChangeState
value = 213
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [400,420]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 4BB]
type = ChangeState
value = 214
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 210 || stateno = 213
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 4BBB]
type = ChangeState
value = 215
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 211 || stateno = 214
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 4C]
type = ChangeState
value = 225
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = stateno = 100
trigger6 = stateno = [210,215]
trigger6 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = Stateno = 100
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
triggerall = prevstateno != [610,612]
triggerall = prevstateno != 625
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jBB]
type = ChangeState
value = 611
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 610
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, jBBB]
type = ChangeState
value = 612
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 611
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, j4C]
type = ChangeState
value = 625
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" && command = "holdback"
triggerall = statetype = A
triggerall = prevstateno != 625
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact
trigger3 = stateno = [610,612]
trigger3 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = Stateno = 200 && Movecontact
trigger3 = (Stateno = [210,215]) && numhelper(7777)
trigger4 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = var(15) < 6
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3
trigger3 = stateno = 1100 && time >= 10

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1100 && time >= 10

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401
trigger5 = stateno = 1100 && time >= 10

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != 8000
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != 8000
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = movecontact
triggerall= stateno = [3000,3080]
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall= stateno = [3000,3080]
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = stateno != [120,155]
triggerall = Var(50) != 1
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

[State -1, Guard Against Helpers]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = numhelper(1260)
trigger1 = helper(1260),stateno = [1262,1263]
trigger1 = helper(1260),rootdist X = [-100,100]
trigger2 = numhelper(2000)
trigger2 = helper(2000),stateno = 2000
trigger2 = helper(2000),rootdist X = [-140,140]
trigger3 = numhelper(1250)
trigger3 = helper(1250),stateno = [1250,1252]
trigger3 = helper(1250),rootdist X = [-100,100]
trigger4 = numhelper(1999)
trigger4 = helper(1999),var(1) >= 260
;---------------------------------------------------------------------------

[State -1, Black Heart]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = random <=199
triggerall = statetype != A
triggerall = ctrl
trigger1 = inguarddist

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
trigger1 = p2bodydist X = [0,30]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 30

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 165
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
triggerall = var(7) = 1
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
;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = life <= 450
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = Var(50) != 1
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-60,60]
trigger1 = p2bodydist Y = [-60,60]
trigger1 = enemynear, Vel X >= 0
trigger1 = enemynear, Vel Y >= 0

;---------------------------------------------------------------------------
[State -1, Black Heart]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,110]
trigger1 = p2bodydist Y = [-70,0]
trigger1 = enemynear, Vel X >= 0
trigger1 = enemynear, Vel Y >= 0


;===========================================================================
;Ultra Burst
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = life <= 350
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = Var(50) != 1
triggerall = alive && Roundstate = 2
trigger1 = p2bodydist X >= 100
trigger1 = ctrl
trigger2 = stateno = 100

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype = A
trigger1 = enemynear,vel Y >= 0
trigger1 = p2dist X = [0,60]
trigger1 = p2dist Y = [-50,0]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4B]
type = ChangeState
value = 213
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = enemynear,vel Y <= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y <= -50
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4BB]
type = ChangeState
value = 214
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = enemynear,vel Y <= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y <= -50
trigger1 = stateno = 210 || stateno = 213
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 4BBB]
type = ChangeState
value = 215
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = enemynear,vel Y <= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y <= -50
trigger1 = stateno = 211 || stateno = 214
trigger1 = animelemtime(4) >= 0

;===========================================================================
;Air to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,20]
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
triggerall = vel Y > 0
triggerall = p2bodydist X = [0,45]
triggerall = p2bodydist Y = [-60,30]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Brimstone]
type = ChangeState
value = 625
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = enemynear,ctrl = 0
trigger1 = p2dist X >= 110
trigger1 = p2dist Y = [-40,40]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = prevstateno != [610,612]
trigger1 = enemynear,vel Y <= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y >= -20
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jBB]
type = ChangeState
value = 611
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
trigger1 = enemynear,vel Y <= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y >= -20
trigger1 = stateno = 610
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, jBBB]
type = ChangeState
value = 612
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
trigger1 = enemynear,vel Y <= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y >= -20
trigger1 = stateno = 611
trigger1 = animelemtime(4) >= 0


;===========================================================================
;Air to Ground
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Bomb A]
type = ChangeState
value = 1210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = enemynear,statetype != A
triggerall = var(28) = 0
trigger1 = p2dist X < 60
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Bomb B]
type = ChangeState
value = 1211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = enemynear,statetype != A
triggerall = var(28) = 0
trigger1 = p2dist X >= 60
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Yum Heart]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = numhelper(1085)
triggerall = helper(1085),movecontact
triggerall = enemynear,movetype = H
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl

;---------------------------------------------------------------------------

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

[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,50]
triggerall = enemynear,movetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,20]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,80]
trigger1 = ctrl
trigger2 = stateno = [200,202]
trigger2 = moveguarded
trigger3 = stateno = [400,410]
trigger3 = moveguarded

;---------------------------------------------------------------------------

[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [-70,70]
triggerall = p2bodydist Y = [-40,0]
triggerall = enemynear,vel y >= 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Angel's Advent]
type = ChangeState
value = 3050
triggerall = var(18) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2bodydist X >= 100
triggerall = enemynear, ctrl = 0
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Devil's Advent]
type = ChangeState
value = 3075
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2bodydist X >= 100
triggerall = enemynear, ctrl = 0
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Chaos]
type = ChangeState
value = 1002
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = !numhelper(2100)
triggerall = power >= 500
triggerall = random <= 199
trigger1 = p2dist X >= 70
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, the D6]
type = ChangeState
value = 1000+random%2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = !numhelper(2100)
trigger1 = p2dist X >= 70
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Bomb B]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = var(28) = 0
trigger1 = p2dist X >= 60
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Remote Detonate]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = var(28) = 1
triggerall = numhelper(1250)
triggerall = helper(1250),p2dist X = [-45,45]
triggerall = helper(1250),p2dist Y = [-65,45]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Brimstone]
type = ChangeState
value = 225
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,ctrl = 0
trigger1 = enemynear,vel Y >= 0
trigger1 = p2dist X >= 110
trigger1 = p2dist Y = [-40,40]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = enemynear,vel Y >= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y >= -50
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = enemynear,vel Y >= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y >= -50
trigger1 = stateno = 210 || stateno = 213
trigger1 = animelemtime(4) >= 0

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = enemynear,vel Y >= 0
trigger1 = p2dist X >= 70
trigger1 = p2dist Y >= -50
trigger1 = stateno = 211 || stateno = 214
trigger1 = animelemtime(4) >= 0


;===========================================================================
;Combo
;===========================================================================
[State -1, Get in the Box]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall = power >= 2000
triggerall = roundno >= 2
trigger1 = stateno = 420 || stateno = 202
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Angel's Advent]
type = ChangeState
value = 3050
triggerall = var(18) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = stateno = 420 
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Devil's Advent]
type = ChangeState
value = 3075
triggerall = var(18) != 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = stateno = 420
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 300 || stateno = 400
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power < 1000
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 600
trigger1 = time >= 27
trigger1 = Movehit

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
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
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

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
