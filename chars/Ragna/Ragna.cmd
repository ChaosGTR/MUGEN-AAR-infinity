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
[State -1, Black Onslaught]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.35
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,230]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 830) && movecontact
trigger8 = time > 1
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Devoured By Darkness]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 830) && movecontact
trigger8 = time > 1
trigger9 = (stateno = 220) && movehit
trigger10 = (stateno = 230) && movecontact
;-----------------------------------------------
;---------------------------------------------------------------------------
[State -1, Carnage Scissors]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 830) && movecontact
trigger8 = time > 1
trigger9 = (stateno = 220) && movehit
trigger10 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Inferno Divider]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = stateno = 5120 && time >= 3
trigger10 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Air Inferno Divider]
type = ChangeState
value = 1301
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 411) && movecontact
;---------------------------------------------------------------------------
[State -1, Uppercut]
type = ChangeState
value = 1305
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = (stateno = [1300,1301]) && animelemtime(15) >= 0
trigger1 = movehit
;---------------------------------------------------------------------------
[State -1, Axe Kick]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = (stateno = 1305) && animelemtime(9) >= 0
;---------------------------------------------------------------------------
[State -1, Hell's Fang]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Hell's Fang Part II]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1000 && animelemtime(12) >= 0
;---------------------------------------------------------------------------
[State -1, Nightmare Edge]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 411) && movecontact
;---------------------------------------------------------------------------
[State -1, Nightmare Edge Part II]
type = ChangeState
value = 1202
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = anim = 1201 && animelemtime(3) >= 0
;---------------------------------------------------------------------------
[State -1, Gauntlet Hades]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Air Gauntlet Hades]
type = ChangeState
value = 1101
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 411) && movecontact
;---------------------------------------------------------------------------
[State -1, Gauntlet Hades Part II]
type = ChangeState
value = 1102
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = stateno = 1100 && animelemtime(9) >= 0
trigger2 = stateno = 1101 && animelemtime(6) >= 0
;---------------------------------------------------------------------------
[State -1, Dead Spike]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Dead Spike]
type = ChangeState
value = 1402
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Dead Spike Dash Cancel]
type = ChangeState
value = 1401
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = stateno = 1400 && animelemtime(12) >= 0
trigger2 = stateno = 1402 && animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, EX Dead Spike]
type = ChangeState
value = 1450
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = (stateno = 220) && movehit

;---------------------------------------------------------------------------
[State -1, EX Dead Spike Part II]
type = ChangeState
value = 1451
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1450 && animelemtime(12) >= 0

;---------------------------------------------------------------------------
[State -1, Seed of Tatarus]
type = ChangeState
value = 1452
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1451 && animelemtime(13) >= 0
;---------------------------------------------------------------------------
[State -1, Blood Scythe]
type = ChangeState
value = 1501
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_c"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,213]) && movecontact
trigger5 = (stateno = 620) && movecontact
trigger6 = (stateno = 810) && movecontact
trigger6 = time > 1
trigger7 = (stateno = 815) && movecontact
trigger7 = time > 1
trigger8 = (stateno = 230) && movecontact
trigger9 = (stateno = 220) && movehit

;---------------------------------------------------------------------------
[State -1, Air Blood Scythe]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_c"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 411) && movecontact
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !ailevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !ailevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !ailevel
triggerall = !ailevel
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100

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
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100
trigger2 = stateno = 1401

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 300) && Movecontact
trigger2 = var(30) > 0

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact
trigger3 = (Stateno = 300) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact
trigger1 = animelemtime(12) > 0

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = (Stateno = 300) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 211
trigger1 = Movehit && animelemtime(11) > 0

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = stateno = 100
trigger6 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 411
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = Stateno = 100
trigger6 = stateno = 1401
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 411) && movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact && animelemtime(5) >= 0
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 411) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 202) && Movecontact
trigger3 = animelemtime(12) > 0
trigger4 = (Stateno = [210,212]) && Movecontact
trigger5 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(14) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 1102) && movecontact
trigger6 = (stateno = 411) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !ailevel
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
triggerall = !ailevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !ailevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = stateno != [8000,8050]
triggerall= stateno != [3900,3999]
triggerall = !ctrl
trigger1 = movecontact
trigger2 = numhelper(7777) > 0
trigger2 = stateno = 1400 || stateno = 1402 || stateno = 1450
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !ailevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = stateno != [8000,8050]
triggerall= stateno != [3900,3999]
triggerall = !ctrl
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !ailevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
trigger1 = stateno = [3000,3001]
trigger2 = stateno = 3050
trigger3 = stateno = 3051
trigger4 = stateno = 3052

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !ailevel
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
triggerall = !ailevel
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
;Movement
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Run]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2dist X > 70

;---------------------------------------------------------------------------

[State -1, backdash]
type = ChangeState
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
[State -1, Air Dash]
type = ChangeState
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
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,611]) && moveguarded && prevstateno != 220

;---------------------------------------------------------------------------

[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x / PlayerID(helper(33333333),var(3)), vel x ) = ceil( 95 / abs(const(velocity.jump.y)))
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

;---------------------------------------------------------------------------
[State -1, Jump Forward]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;===========================================================================
;Wake Up
;===========================================================================
[State -1, Inferno Divider]
type = ChangeState
value = 1300
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
[State -1, 5B]
type = ChangeState
value = 1105
triggerall = AIlevel && numenemy
triggerall = !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,20]
triggerall = p2bodydist Y = [-65,0]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Inferno Divider]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,70]
trigger1 = p2bodydist Y = [-160,0]
trigger1 = enemynear, Vel X >= 0
trigger1 = enemynear, Vel Y >= 0

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
triggerall = p2bodydist X = [0,80]
triggerall = p2bodydist Y = [-85,30]
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
[State -1, Carnage Scissors]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2bodydist Y = [-70,100]
triggerall = p2bodydist X = [80,280]
triggerall = enemynear, vel Y >= 0
triggerall = enemynear, ctrl = 0
triggerall = enemynear,movetype != I
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
triggerall = p2bodydist X = [0,60]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Hell's Fang]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [10,250]
triggerall = p2bodydist Y = [-60,0]
triggerall = enemynear,ctrl = 0 
triggerall = enemynear,statetype != L
triggerall = enemynear, vel X < 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Dead Spike]
type = ChangeState
value = 1402
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X >= 130
triggerall = p2bodydist Y = [-70,0]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = C
triggerall = p2bodydist X = [0,60]
trigger1 = ctrl
trigger2 = stateno = 201 && moveguarded
trigger3 = stateno = 210 && moveguarded

;---------------------------------------------------------------------------

[State -1, Gauntlet Hades]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = C
triggerall = p2bodydist X = [0,160]
trigger1 = ctrl
trigger2 = stateno = 201 && moveguarded
trigger3 = stateno = 210 && moveguarded

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
trigger2 = stateno = 201 && moveguarded
trigger3 = stateno = 210 && moveguarded

;===========================================================================
;Combo
;===========================================================================
[State -1, Black Onslaught]
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
trigger2 = stateno = 420
trigger2 = movehit
trigger3 = stateno = 620
trigger3 = anim = 621 && animelemtime(2) > 0
trigger3 = movehit

;---------------------------------------------------------------------------

[State -1, Air Jump Cancel]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = (Stateno = 1102) && Movecontact

;---------------------------------------------------------------------------

[State -1, Devoured By Darkness]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 211
trigger1 = movehit
trigger2 = stateno = 420
trigger2 = movehit
trigger3 = stateno = 620
trigger3 = anim = 621 && animelemtime(2) > 0
trigger3 = movehit

;---------------------------------------------------------------------------

[State -1, Inferno Divider]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = movehit
trigger2 = stateno = 420
trigger2 = movehit
trigger3 = stateno = 620
trigger3 = anim = 621 && animelemtime(2) > 0
trigger3 = movehit

;---------------------------------------------------------------------------

[State -1, Gauntlet Hades]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 810 && movehit
trigger1 = time > 1

;---------------------------------------------------------------------------
[State -1, Hell's Fang Part II]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 1000 && animelemtime(12) >= 0
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Uppercut]
type = ChangeState
value = 1305
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
trigger1 = (stateno = [1300,1301]) && animelemtime(15) >= 0
trigger1 = movehit
;---------------------------------------------------------------------------
[State -1, Axe Kick]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
trigger1 = (stateno = 1305) && animelemtime(9) >= 0
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 600
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 601
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
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = p2dist x < 60
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 211
trigger1 = Movecontact


;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = p2dist x >= 60
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = animelemtime(13) >= 0
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Gauntlet Hades Part II]
type = ChangeState
value = 1102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
trigger1 = stateno = 1100 && animelemtime(9) >= 0
trigger1 = movecontact
trigger2 = stateno = 1101 && animelemtime(6) >= 0

;---------------------------------------------------------------------------
[State -1, Dead Spike Dash Cancel]
type = ChangeState
value = 1401
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 1400 && animelemtime(12) >= 0
trigger2 = stateno = 1402 && animelemtime(12) >= 0


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
type = changestate
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = stateno != [120,155]
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


