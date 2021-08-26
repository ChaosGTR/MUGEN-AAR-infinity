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
name = "FF_a"
command = ~F, F, a

[Command]
name = "FF_b"
command = ~F, F, b

[Command]
name = "FF_z"
command = ~F, F, z

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
[State -1, Ragnarok]
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
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Gjallarhorn]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Blitzlauf]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Elektro Auge A]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Elektro Auge B]
type = ChangeState
value = 1305
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Elektro Auge C]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Air Elektro Auge A]
type = ChangeState
value = 1320
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 931
;---------------------------------------------------------------------------
[State -1, Air Elektro Auge B]
type = ChangeState
value = 1325
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 931
;---------------------------------------------------------------------------
[State -1, Air Elektro Auge C]
type = ChangeState
value = 1330
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 931
;---------------------------------------------------------------------------
[State -1, Blitz Mine A]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Blitz Mine B]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Blitz Mine EX]
type = ChangeState
value = 1210
triggerall = !ishelper
triggerall = !ailevel
triggerall = power >= 500
triggerall = command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Air Blitz Mine A]
type = ChangeState
value = 1220
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 931
;---------------------------------------------------------------------------
[State -1, Air Blitz Mine B]
type = ChangeState
value = 1225
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 931
;---------------------------------------------------------------------------
[State -1, Air Blitz Mine EX]
type = ChangeState
value = 1230
triggerall = !ishelper
triggerall = !ailevel
triggerall = power >= 500
triggerall = command = "QCB_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 931
;---------------------------------------------------------------------------
[State -1, Anstrum]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 911
trigger7 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Entladung A]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DD_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 5120 && time >= 3
trigger7 = stateno = 911
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Entladung B]
type = ChangeState
value = 1105
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DD_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 5120 && time >= 3
trigger7 = stateno = 911
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, EX Entladung]
type = ChangeState
value = 1110
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DD_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (Stateno = 620) && Movecontact
trigger6 = stateno = 5120 && time >= 3
trigger7 = stateno = 911
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Reflector]
type = ChangeState
value = 900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b+c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 5120 && time >= 3
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Reflector Repeat]
type = ChangeState
value = 900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b+c"
triggerall = statetype != A
trigger1 = stateno = [910,911]
trigger1 = time <= 25
trigger1 = time > 5
trigger2 = stateno = 911
trigger2 = time > 5
;---------------------------------------------------------------------------
[State -1, Air Reflector]
type = ChangeState
value = 920
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b+c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 211) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Reflector Repeat]
type = ChangeState
value = 920
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b+c"
triggerall = statetype = A
trigger1 = stateno = [930,931]
trigger1 = time <= 24
trigger1 = time > 5
trigger2 = stateno = 931
trigger2 = time > 5
;===========================================================================
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
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 911

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
[State -1, Running Grab]
type = null;ChangeState
value = 820
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "FF_z"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 911

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931

;===========================================================================
;---------------------------------------------------------------------------
[State -1, 66A]
type = null;ChangeState
value = 203
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "FF_a"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 66B]
type = null;ChangeState
value = 211
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "FF_b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------q

[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact
trigger3 = stateno = 911

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "holda"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = animelemtime(6) >= 0

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "holda"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = animelemtime(3) >= 0

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a" || command = "holda"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = animelemtime(3) >= 0

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [400,410]) && Movecontact
trigger4 = stateno = 911

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact

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
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = stateno = 911
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
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger2 = prevstateno != 400
trigger3 = stateno = 911

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = stateno = 911
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = stateno = 911
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 931

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "c" && command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 931

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "holdup"
trigger1 = Stateno = [200,202]
trigger1 = Movecontact

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
trigger3 = stateno = 1100 && time >= 10
trigger4 = stateno = 911

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
trigger2 = stateno = 1100 && time >= 10
trigger3 = stateno = 911

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
trigger5 = stateno = 1100 && time >= 10
trigger6 = stateno = 911

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !ailevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != 1201
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !ailevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != 1291
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777) > 0

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
triggerall = stateno != [8000,8050]
trigger1 = movecontact
trigger1 = stateno = [3000,3001]
trigger2 = stateno = 3050
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
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
;===========================================================================
;Guarding
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Reflector vs Projectile]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
triggerall = PlayerIdExist(helper(33333333),var(3))
triggerall= (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 = [0,95]
trigger1 = ctrl

[State -1, Reflector Close]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
triggerall = p2dist x = [-65,85]
triggerall = p2bodydist Y = [-105,75]
triggerall = enemynear,time <= 5
triggerall = random <= 199
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Guard]
type = ChangeState
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
[State -1, Reflector Close]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
triggerall = p2dist x = [-65,105]
triggerall = p2bodydist Y = [-105,75]
trigger1 = stateno = 5120 && time >= 15

[State -1, Reflector vs Projectile]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
triggerall = PlayerIdExist(helper(33333333),var(3))
triggerall= (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 = [0,95]
trigger1 = stateno = 5120 && time >= 15

[State -1, Entladung B]
type = ChangeState
value = 1105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,90]
trigger1 = p2bodydist Y = [-160,0]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Entladung B]
type = ChangeState
value = 1105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
triggerall = enemynear,statetype = A
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,90]
trigger1 = p2bodydist Y = [-160,0]
trigger1 = ctrl

;===========================================================================
;Air to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-95,95]
triggerall = Var(50) != 1
triggerall = alive && Roundstate = 2
triggerall = life < Lifemax/3
trigger1 = ctrl
;---------------------------------------------------------------------------
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

[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2movetype = A
triggerall = p2bodydist Y = [-250,0]
triggerall = enemynear, vel y >= 8
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
triggerall = p2bodydist X = [10,105]
triggerall = p2bodydist Y = [-70,20]
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [10,105]
triggerall = p2bodydist Y = [-50,160]
trigger1 = ctrl

;===========================================================================
;Air to Ground
;===========================================================================
;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = enemynear,ctrl = 0
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
triggerall = p2dist X = [0,60]
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
trigger1 = ctrl
trigger2 = stateno = 911
trigger2 = time >= 5
;---------------------------------------------------------------------------
[State -1, Anstrum]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = enemynear, ctrl = 0
triggerall = enemynear,movetype != I
triggerall = p2bodydist X >= 100
triggerall = p2bodydist Y = [-85,0]
triggerall = enemynear,vel x <= -1
triggerall = enemynear,stateno != [5200,5210]
trigger1 = ctrl
trigger2 = stateno = 911
trigger2 = time >= 5
;---------------------------------------------------------------------------
[State -1, Blitzlauf]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = enemynear, ctrl = 0
triggerall = p2bodydist X < 110
triggerall = p2bodydist Y = [-75,0]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,ctrl = 0
triggerall = enemynear,movetype != I
triggerall = enemynear,stateno != [120,155]
triggerall = enemynear,stateno != [5200,5210]
trigger1 = ctrl
trigger2 = stateno = 911
trigger2 = time >= 5
;---------------------------------------------------------------------------
[State -1, Gjallarhorn]
type = ChangeState
value = 3050
triggerall = power >= 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = enemynear, ctrl = 0
triggerall = p2bodydist X >= 110
triggerall = p2bodydist Y = [-105,0]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,ctrl = 0
triggerall = enemynear,movetype != I
triggerall = stateno != [6060,6061]
triggerall = enemynear,stateno != [120,155]
triggerall = enemynear,stateno != [5200,5210]
trigger1 = ctrl
trigger2 = stateno = 911
trigger2 = time >= 5
;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = enemynear,statetype != A
triggerall = p2dist X = [0,105]
triggerall = p2dist Y = [-85,0]
triggerall = prevstateno != 200
trigger1 = ctrl
trigger2 = stateno = 911
trigger2 = time >= 5
;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = p2bodydist X = [0,120]
trigger1 = ctrl
trigger4 = stateno = 911
trigger4 = time >= 5
;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = C
triggerall = p2bodydist X = [0,180]
trigger1 = ctrl
trigger2 = stateno = 202 && moveguarded
trigger3 = stateno = 210 && moveguarded
trigger4 = stateno = [400,410]
trigger4 = moveguarded
trigger5 = stateno = 911
trigger5 = time >= 5
;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = p2bodydist X = [0,180]
triggerall = p2bodydist Y = [-85,0]
triggerall = prevstateno != 210
trigger1 = ctrl
trigger2 = stateno = 911
trigger2 = time >= 5

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype = H
triggerall = enemynear,vel Y > 0
triggerall = p2bodydist X = [0,190]
triggerall = p2bodydist Y = [-95,0]
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
triggerall = p2bodydist X = [0,190]
trigger1 = ctrl
trigger2 = stateno = 202 && moveguarded
trigger3 = stateno = 210 && moveguarded
trigger4 = stateno = [400,410]
trigger4 = moveguarded
trigger5 = stateno = 911
trigger5 = time >= 5
;---------------------------------------------------------------------------
[State -1, Elektro Auge B]
type = ChangeState
value = 1305
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = enemynear, ctrl = 0
triggerall = p2bodydist X >= 200
triggerall = p2bodydist Y = [-100,0]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,ctrl = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Elektro Auge C]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = enemynear, ctrl = 0
triggerall = p2bodydist X >= 200
triggerall = p2bodydist Y <= -100
triggerall = enemynear,vel y >= 0
triggerall = enemynear,ctrl = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Blitzmine A]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [140,200]
triggerall = ctrl
trigger1 = p2movetype = I
trigger2 = p2movetype = H
trigger2 = p2statetype = L
;---------------------------------------------------------------------------
[State -1, Blitzmine B]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [200,320]
triggerall = ctrl
trigger1 = p2movetype = I
trigger2 = p2movetype = H
trigger2 = p2statetype = L

;---------------------------------------------------------------------------
;===========================================================================
;Defense
;===========================================================================

[State -1, Reflector Air Close]
type = ChangeState
value = 920
triggerall = statetype = A
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
triggerall = p2dist x = [-65,105]
triggerall = p2bodydist Y = [-105,75]
triggerall = random <= 199
trigger1 = ctrl

;===========================================================================
;Combo
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = prevstateno = 810 || prevstateno = 819
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Ragnarok]
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
trigger1 = stateno = 210 || stateno = 420 || stateno = 620 || stateno = 220
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall =  movetype != H
triggerall = statetype != A
triggerall = power >= 500
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = enemynear,stateno = [120,155]
trigger1 = stateno = 3050
trigger1 = animelemtime(25) >= 0
trigger1 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Gjallarhorn]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = roundstate = 2
trigger1 = stateno = 210 || stateno = 420 || stateno = 620 || stateno = 220
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Entladung B]
type = ChangeState
value = 1105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = p2dist x < 100
trigger1 = stateno = 410 || stateno = 420 || stateno = 620 || stateno = 220
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Anstrum]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = p2dist x = [100,230]
trigger1 = stateno = 400 || stateno = 420 || stateno = 620 || stateno = 220
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Electro Auge B]
type = ChangeState
value = 1305
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = roundstate = 2
triggerall = p2dist x > 230
trigger1 = stateno = 420 || stateno = 620 || stateno = 220
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact

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
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = p2dist X = [0,110]
trigger1 = stateno = 400
trigger1 = Movehit
trigger2 = stateno = 400
trigger2 = Moveguarded
trigger2 = random <= 449

;---------------------------------------------------------------------------
[State -1, Anstrum]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = [400,410]
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Elektro Auge C]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 211
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 600
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 610
trigger1 = Movehit
trigger2 = stateno = 610
trigger2 = Moveguarded
trigger2 = p2statetype != A
trigger2 = random <= 499

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
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,90]
triggerall = p2dist Y = [-90,15]
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
value = 204
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153