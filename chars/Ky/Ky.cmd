;-| Button Remapping |-----------------------------------------------------
[Remap]
a = x
b = y
c = b
z = a
x = w
y = d
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 5


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
name = "DD_c"
command = ~D, D, c

[Command]
name = "DD_c"
command = D, D, c

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

[Command]
name = "QCF"
command = ~D, DF, F
;time = 15

[Command]
name = "QCF"
command = ~D, F
;time = 15

[Command]
name = "QCB"
command = ~D, DB, B
;time = 15

[Command]
name = "QCB"
command = ~D, B
;time = 15

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;null;changestate          ;Don't change this
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
[State -1, Rising Force]
type = changestate
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
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Sacred Edge]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Ride the Lightening]
type = changestate
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
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Air Ride the Lightening]
type = changestate
value = 3005
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, Vapor Thrust]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 5120 && time >= 3
trigger7 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Air Vapor Thrust]
type = changestate
value = 1101
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, Lightening Javelin]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holda" || command = "holdb" || command = "holdc"
triggerall = statetype = A
trigger1 = (stateno = 1100) && animelemtime(6) >= 10
trigger2 = (stateno = 1101) && animelemtime(6) >= 7
;---------------------------------------------------------------------------
[State -1, Stun Edge A]
type = changestate
value = 1000
triggerall = var(47) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Stun Edge B]
type = changestate
value = 1001
triggerall = var(47) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Charged Stun Edge]
type = changestate
value = 1005
triggerall = var(47) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Air Stun Edge A]
type = changestate
value = 1020
triggerall = var(47) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Stun Edge B]
type = changestate
value = 1021
triggerall = var(47) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Stun Edge B]
type = changestate
value = 1025
triggerall = var(47) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
;---------------------------------------------------------------------------
[State -1, Stun Dipper]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, Greed Sever]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && numhelper(7778)
;---------------------------------------------------------------------------
[State -1, EX Greed Sever]
type = changestate
value = 1305
triggerall = power >= 500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = [600,610]) && movecontact
trigger7 = (stateno = 220) && numhelper(7778)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = changestate
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = changestate
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = changestate
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
type = changestate
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 911 || stateno = 913
trigger2 = time >= 5

[State -1, Running Grab]
type = changestate
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = changestate
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931 || stateno = 933
trigger2 = time >= 5


;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = changestate
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
type = changestate
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [300,302]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger3 = PrevStateno != 200

;---------------------------------------------------------------------------
[State -1, 5AA]
type = changestate
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = changestate
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = changestate
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = changestate
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [300,302]) && Movecontact
trigger4 = (Stateno = [400,401]) && Movecontact
trigger5 = (Stateno = 410) && Movecontact
trigger5 = PrevStateno != 210

;---------------------------------------------------------------------------
[State -1, 5BB]
type = changestate
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = null;changestate
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = stateno = 211
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 66A]
type = changestate
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = changestate
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = changestate
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command != "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Respect
[State -1, Respect]
type = changestate
value = 197
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = changestate
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(30) > 0
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger2 = prevstateno != 400

;---------------------------------------------------------------------------
[State -1, 2B]
type = changestate
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(31) != 0
trigger1 = ctrl
trigger2 = (stateno = [400,401]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = changestate
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
type = changestate
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jAA]
type = changestate
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = changestate
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = changestate
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (stateno = [300,410]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = changestate
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = var(15) < 6
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = changestate
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
type = changestate
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
type = changestate
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3
trigger3 = stateno = 911 || stateno = 913

;---------------------------------------------------------------------------
[State -1, Dodge]
type = changestate
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 911 || stateno = 913

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = changestate
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401
trigger5 = stateno = 911 || stateno = 913

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = changestate
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931 || stateno = 933

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = changestate
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3900]
triggerall = time > 0
trigger1 = movecontact
trigger2 = stateno = 621
trigger2 = var(7) = 1
trigger3 = numhelper > 0
trigger3 = helper,movecontact
trigger4 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = changestate
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3900]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = changestate
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = stateno = [3000,3050]
triggerall = !ctrl
trigger1 = movecontact
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = changestate
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = movecontact
triggerall = stateno = 3002
trigger1 = animelemtime(21) >= 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = changestate
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
type = changestate
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
type = changestate
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
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
[State -1, Forward Dodge]
type = changestate
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,83]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 < 7

[State -1, Guard]
type = changestate
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

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
[State -1, Vapor Thrust]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [0,60]
trigger1 = p2bodydist Y = [-130,0]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Movement
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Run]
type = changestate
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2bodydist X > 70

;---------------------------------------------------------------------------

[State -1, backdash]
type = changestate
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = changestate
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
[State -1, Air Dash]
type = changestate
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = changestate
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,611]) && moveguarded

;---------------------------------------------------------------------------

[State -1, Jump]
type = changestate
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x + 1 * (PlayerID(helper(33333333),var(3)), vel x) + 1 = ceil( 95 / abs(const(velocity.jump.y)))*.1)
trigger2 = enemynear,movetype = A
trigger2 = enemynear,statetype != A
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = enemynear,movetype = A
trigger3 = p2bodydist X = [35,500]
trigger3 = enemynear, Vel X != 0
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = enemynear,movetype = A
trigger5 = p2bodydist X = [0,35]
trigger5 = enemynear,statetype != A
trigger6 = enemynear,statetype = A
trigger6 = enemynear,movetype = H
trigger6 = p2dist x = [0,75]
trigger6 = p2dist y <= -55

;===========================================================================
;Ground to Air
;===========================================================================

[State -1, 2B]
type = changestate
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A || p2statetype = L
triggerall = p2bodydist X = [0,60]
triggerall = p2bodydist Y = [-100,0]
triggerall = enemynear,pos Y <= -20
triggerall = p2movetype != I
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Vapor Thrust]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist X = [0,60]
triggerall = p2bodydist Y = [-130,0]
triggerall = enemynear, Vel X >= 0
trigger1 = ctrl
;===========================================================================
;Air to Air
;===========================================================================
[State -1, Air Grab]
type = changestate
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,15]
triggerall = p2bodydist Y = [-60,10]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jA]
type = changestate
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-5,90]
triggerall = p2bodydist Y = [-90,20]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jAA]
type = changestate
value = 601
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, Air Stun Edge]
type = changestate
value = 1020
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = Pos Y <= -30
triggerall = p2dist X < 150
triggerall = p2dist Y > 30
triggerall = vel x <= 0
triggerall = numhelper(1060) <= 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Stun Edge]
type = changestate
value = 1021
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = Pos Y <= -30
triggerall = p2dist X >= 150
triggerall = p2dist Y > 30
triggerall = vel x <= 0
triggerall = numhelper(1060) <= 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Charged Stun Edge]
type = changestate
value = 1025
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = Pos Y <= -70
triggerall = p2dist X < 150
triggerall = p2dist Y > 30
triggerall = vel x <= 0
triggerall = numhelper(1060) <= 0
trigger1 = ctrl

;===========================================================================
;Air to Ground
;===========================================================================
[State -1, jB]
type = changestate
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-5,90]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jC]
type = changestate
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = Pos Y <= -70
triggerall = p2dist X = [-5,75]
triggerall = enemynear,vel x = [-1,4] 
triggerall = p2dist Y > 30
triggerall = vel x <= 0
triggerall = p2statetype = L
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
type = changestate
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
triggerall = p2movetype != I
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Grab]
type = changestate
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
triggerall = enemynear,stateno = [160,161]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4A]
type = changestate
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,35]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = changestate
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,75]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 5C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,75]
triggerall = p2statetype = C
triggerall = p2stateno = [120,160]
trigger1 = ctrl
trigger2 = stateno = 202 && moveguarded
trigger3 = stateno = 410 && moveguarded
trigger3 = random <= 199

;---------------------------------------------------------------------------

[State -1, 2C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,100]
triggerall = p2statetype = S
triggerall = p2stateno = [120,160]
trigger1 = ctrl
trigger2 = stateno = 202 && moveguarded
trigger3 = stateno = 410 && moveguarded

;---------------------------------------------------------------------------
[State -1, Sacred Edge]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2bodydist X >= 100
triggerall = enemynear,ctrl = 0
triggerall = p2statetype != A
triggerall = enemynear,stateno != 100
triggerall = enemynear,stateno != [40,59]
triggerall = enemynear,statetype != L
triggerall = p2movetype != I
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stun Dipper]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X = [85,165]
triggerall = enemynear, vel x <= 0
triggerall = p2movetype != H
triggerall = p2statetype = S
triggerall = enemynear, ctrl = 0
triggerall = enemynear, stateno != [40,49]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stun Edge]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X >= 145
triggerall = enemynear, vel x <= 0
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 1003
triggerall = p2movetype != H
triggerall = numhelper(1050) <= 0
triggerall = enemynear, vel y >= 0
triggerall = p2dist y >= -60
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stun Edge]
type = changestate
value = 1001
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X >= 145
triggerall = enemynear, vel x > 0
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 1003
triggerall = p2movetype != H
triggerall = numhelper(1050) <= 0
triggerall = enemynear, vel y >= 0
triggerall = p2dist y >= -60
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;Combo
;===========================================================================
[State -1, Rising Force]
type = changestate
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall = power >= 2000
triggerall = roundno > 2
trigger1 = (stateno = 420) && movehit
trigger2 = (stateno = 211) && movehit

;---------------------------------------------------------------------------
[State -1, Ride the Lighning]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = (stateno = 420) && movehit
trigger2 = (stateno = 211) && movehit

;---------------------------------------------------------------------------
[State -1, Ride the Lighning]
type = changestate
value = 3005
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = 601
trigger1 = Movehit
;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = random <= 449
trigger1 = (Stateno = [200,202]) && Moveguarded
trigger2 = (stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5A]
type = changestate
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 300
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = changestate
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = changestate
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = changestate
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5BB]
type = changestate
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Greed Sever]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Vapor Thrust]
type = changestate
value = 1101
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
trigger1 = stateno = 601
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Lightning Javelin]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = movehit
trigger1 = (stateno = 1100) && animelemtime(6) >= 10
trigger2 = (stateno = 1101) && animelemtime(6) >= 7

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = changestate
value = 195
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = life > lifemax/4
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]

[State -1, Respect]
type = changestate
value = 197
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = life <= lifemax/4
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]

;---------------------------------------------------------------------------

[State -1, Burst]
type = changestate
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
type = changestate
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
