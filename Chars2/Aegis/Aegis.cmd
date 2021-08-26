;AI
[Remap]
a = a
b = b
c = b
z = a
x = d
y = w
s = s
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

;-| ���K�E�Z |--------------------------------------------------------
;�����ɂ͒��K�E�Z���L�q���Ă��������A�������O���uname =�v���ɏ����܂���
;�R�}���h�͐��΂Ɉ�������̂ɂ��Ă��������B
;�J���t�[�}���͎��p���`�Ƌ��p���`�ŋZ���o�����悤�ɓ������O�̃R�}���h��
;���e�����Ƌ��ɂȂ�Ă��܂��B
;�utime=20�v�Ə������ƂŁu�R�}���h��20�t���[���ȓ��ɓ��́v�Ɛݒ��ł��܂��B

;-| �K�E�Z |------------------------------------------------------

[Command]
name = "basaku"
command = a,a, F,b, z
time = 50

[Command]
name = "FD_B"
command = ~F,D, FD, a
time = 20

[Command]
name = "DB_B"
command = ~D, B, a
time = 10

[Command]
name = "DB_A"
command = ~D, B, b
time = 10

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

;�����������������������������������������_�b�V���U���R�}���h

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

;�����������������������������������������n�C�W�����v�R�}���h
;�������Ɖ����ď�����A�ƌ����Ӗ��B
[Command]
name = "jump"    
command = ~1$D,$U
time = 10

;����������������������������������������������
;������Ȃ���x+y+z�A�Ƃ����Ӗ�
[Command]
name = "away-b"    
command = /B,x+y+z
time = 10

;�����������������������������������������O����
;x+y+z�A�Ƃ����Ӗ�
[Command]
name = "away-f"    
command = x+y+z
time = 10

;-| �Q�񉟂��Z |-----------------------------------------------------------

[Command]
name = "FF"     
command = F, F
time = 10
[Command]
name = "BB"     
command = B, B
time = 10
[Command]
name = "DD"     
command = D, D
time = 10
[Command]
name = "UU"     
command = U, U
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y+z
time = 1

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "a+b+c"
command = a+b+c
time = 1

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "SUF"
command = /UF
time = 1

[Command]
name = "SDF"
command = /DF
time = 1

[Command]
name = "SUB"
command = /UB
time = 1

[Command]
name = "SDB"
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

;-| �{�^���ݒ��i�������Ȃ��j|---------------------------------------------------------
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

;-| ������ςȂ��ݒ��i�������Ȃ��j-------------------------------------------------------


[Command]
name = "holdR"
command = /$c
time = 1



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

; ���̋L�q���͐��΂ɏ���Ȃ��ł��������B
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
var(59) = 1

; AI swich -> OFF
[State -1,2]
type = Varset
triggerall = var(59) = 1
trigger1 = RoundState != 2
trigger2 = (lose = 1) || (life <= 0) || (!Alive) || (win = 1)
var(59) = 2





;---------------------------------------------------------------------------
;AI����
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;�O�_�b�V��
[State -1, seed100]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(30) = 0;SEED����
triggerall = statetype != A
triggerall = ctrl
triggerall = (stateno != 100)||(stateno!=[810,890])
trigger1 = P2BodyDist X >= 100

;---------------------------------------------------------------------------
;SEED�����@�����ꍇ
;---------------------------------------------------------------------------
;�O�_�b�V��
[State -1, seed100]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(30) > 0;SEED����
triggerall = statetype != A
triggerall = ctrl
triggerall = (stateno != 100)||(stateno!=[810,890])
trigger1 = PrevStateNo = 900
trigger1 = P2BodyDist X >= 100


;---------------------------------------------------------------------------

;/**************************start
;�������L[http://mugen9.syuriken.jp/]
;---------------------------------------------------------------------------
;�P�A�����ɑΉ�����AI
;�����K�[�h
[State -1,1no0]
Type = ChangeState
Value = 130
TriggerAll = var(59) = 1
triggerall = var(30) = 0;SEED����
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger1 = P2StateType != C
Trigger1 = EnemyNear,HitDefAttr != SCA,NT,ST,HT ;���������ȊO�̍U���ɂ̂�
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,80]
Trigger1 = Random = [0,700]

;�o�b�N�_�b�V��
[State -1,1no1]
Type = ChangeState
Value = 105
TriggerAll = var(59) = 1                       ;AI����
triggerall = var(30) = 0;SEED����
TriggerAll = StateType != A
TriggerAll = BackEdgeBodyDist >= 40
Trigger1 = EnemyNear,MoveType = A
Trigger1 = EnemyNear,HitDefAttr = SCA,NT,ST,HT ;���������̍U���ɂ̂�
Trigger1 = P2BodyDist X = [0,30]
Trigger1 = P2BodyDist Y = [-30,0]
Trigger1 = Ctrl
Trigger1 = random = [40,99]

;---------------------------------------------------------------------------
;�Q�A���ѓ����ɑΉ�����AI
;�����K�[�h
[State -1,1no2]
Type = ChangeState
Value = 130
TriggerAll = var(59) = 1
triggerall = var(30) = 0;SEED����
TriggerAll = StateType != A
TriggerAll = Ctrl
TriggerAll = P2StateType != C
triggerall = (P2BodyDist X < 0) || ((P2BodyDist X > 0) && (enemy,facing != facing))
Trigger1 = EnemyNear,HitDefAttr = SCA,NA,SA,HA           ;�ʏ��U�������̍U���ɂ̂�
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,80]
Trigger1 = Random = [0,700]
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0      ;���肪�o����Helper�܂���Proj�����ȏ゠���Ƃ�
;Trigger2 = EnemyNear,MoveType = A                        ;���̔��ѓ���U�����Ԃ̂Ƃ�
;Trigger2 = InGuardDist                                   ;�������K�[�h�\�ȂƂ�
Trigger2 = EnemyNear,HitDefAttr = SCA,NP,SP,HP,NA,SA,HA  ;���������ȊO�̍U���ɂ̂�
Trigger2 = Random = [0,700]

;---------------------------------------------------------------------------
;�P�A�����ɑΉ�����AI
;---------------------------------------------------------------------------
;�P�A�����ɑΉ�����AI
;/**************************end

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = p2movetype = A;���肪�U�����Ԃ̎�
triggerall = ctrl = 1
triggerall = Statetype = S
triggerall = (P2BodyDist X < 0) || ((P2BodyDist X > 0) && (enemy,facing != facing))
triggerall = var(30) = 0;SEED����
trigger1 = HitOver = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 131
triggerall = var(59) = 1
triggerall = p2movetype = A;���肪�U�����Ԃ̎�
triggerall = ctrl = 1
triggerall = Statetype = C
triggerall = (P2BodyDist X < 0) || ((P2BodyDist X > 0) && (enemy,facing != facing))
triggerall = var(30) = 0;SEED����
trigger1 = HitOver = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = p2movetype = A;���肪�U�����Ԃ̎�
triggerall = ctrl = 1
triggerall = Statetype = A
triggerall = (P2BodyDist X < 0) || ((P2BodyDist X > 0) && (enemy,facing != facing))
triggerall = var(30) = 0;SEED����
trigger1 = HitOver = 1

;---------------------------------------------------------------------------
[State 5050, 4] ;Recover near ground
type = ChangeState
triggerAll = var(59) = 1
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = StateNo = 5050
trigger1 = random>900&&gameTime%30=0
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerAll = var(59) = 1
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = StateNo = 5050
trigger1 = random>500&&gameTime%3=0
value = 5210 ;HITFALL_AIRRECOVER



;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------


;===========================================================================
;�o�[�T�[�N
[State -1, ]
type = ChangeState
value = 3100
triggerAll = var(53) = 1;�t���C���O�h�~�p
triggerall = var(59) = 1
triggerall = var(58) > 0
triggerall = stateno != [900,909]
triggerAll = (ctrl)||(stateno=[100,105])||(stateno=[810,890])||(stateno=[200,339])||(stateno=[400,419])||(stateno=[600,619])||(stateno=1000)
triggerAll = Power >= 3000
triggerAll = P2BodyDist Y =[-40,10]
trigger1 = (P2life-life)>500
trigger2 = life < 300

;---------------------------------------------------------------------------
;seed����1
;---------------------------------------------------------------------------
;�n��seed
;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(30) > 0;SEED����
triggerall = statetype != A
triggerAll = PrevStateNo = 900
trigger1 = P2BodyDist X < 90
trigger1 = P2BodyDist Y >= 0
trigger1 = EnemyNear,StateType != A

;�n��seed
;�����T�[�x��
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = var(30) > 0;SEED����
triggerall = statetype != A
triggerAll = PrevStateNo = 900
trigger1 = P2BodyDist X < 110
trigger1 = P2BodyDist Y > -40

;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 300
triggerall = var(59) = 1
triggerall = var(30) > 0;SEED����
triggerAll = statetype != A
trigger1 = (movehit) && (stateno = 400)
trigger2 = (movehit) && (stateno = 210)

;�����a���グ
[State -1, ]
type = ChangeState
value = 310
triggerall = var(59) = 1
triggerall = var(30) > 0;SEED����
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 300)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�t�F�A�E�E�H�[�j���O
[State -1, ]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = var(58) = 1
triggerAll = statetype != A
triggerAll = (movehit) && (stateno = 310)
trigger1 = P2BodyDist X = [0,150]
trigger1 = P2BodyDist Y > -60


;---------------------------------------------------------------------------
;�R���{_����
;---------------------------------------------------------------------------
;�����a���グ
[State -1, ]
type = ChangeState
value = 310
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 300)
trigger1 = (random%3=0)&&(gameTime%10=0)

;---------------------------------------------------------------------------
;�W�����v�ǌ�
;---------------------------------------------------------------------------
;�W�����v
[State 40, 2]
type = VarSet
triggerall = var(59) = 1
triggerAll = statetype != A
trigger1 = var(34) > 0
sysvar(1) = 1
[State -1, seed]
type = ChangeState
value = 41
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = Ctrl
trigger1 = var(34) > 0

;---------------------------------------------------------------------------
;�R���{6
;---------------------------------------------------------------------------
;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 300
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 210)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�����O�A�a��
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 300)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�r�[���T�[�x������
[State -1, ]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (AnimElemTime(10) >= 0) && (stateno = 220)
triggerAll = movehit
trigger1 = 1

;SEED�o��
[State -1, ]
type = ChangeState
value = 900
triggerAll = var(53) = 1;�t���C���O�h�~�p
triggerall = var(59) = 1
triggerall = var(58) = 0
triggerall = statetype != A
triggerall = stateno != [900,909]
triggerAll = (AnimElemTime(6) >= 0) && (stateno = 1021)
triggerAll = movehit
triggerAll = var(1) <= 0
trigger1 = 1

;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = var(30) > 0;SEED����
triggerall = statetype != A
triggerAll = PrevStateNo = 900
trigger1 = P2BodyDist Y >= 0
trigger1 = EnemyNear,StateType != A

;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 300
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = (movehit) && (stateno = 400)
trigger1 = 1


;---------------------------------------------------------------------------
;�R���{5
;---------------------------------------------------------------------------
;�����T�[�x��
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 200)
trigger1 = 1

;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 210)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�����p���`
[State -1, ]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (StateNo=400)&&(AnimTime=0)
triggerAll = movehit > 0
trigger1 = 1

;���ݍ����O�A�a��
[State -1, ]
type = ChangeState
value = 500
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 400)
trigger1 = P2BodyDist X < 90

;---------------------------------------------------------------------------
;�R���{4
;---------------------------------------------------------------------------
;�󒆍����O�A�a��
[State -1, ]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype = A
triggerAll = (movehit) && (stateno = 600)
trigger1 = Vel Y > 0

;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = var(33) > 0
triggerAll = ctrl
trigger1 = P2BodyDist Y >= 0
trigger1 = EnemyNear,StateType != A

;---------------------------------------------------------------------------
;�R���{3
;---------------------------------------------------------------------------
;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = ctrl
triggerAll = var(31) > 0
trigger1 = P2BodyDist Y >= 0
trigger1 = EnemyNear,StateType != A

;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 300
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = (movehit) && (stateno = 400)
trigger1 = 1

;�����a���グ
[State -1, ]
type = ChangeState
value = 310
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = (movehit) && (stateno = 300)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�W�����v
[State 40, 2]
type = VarSet
triggerall = var(59) = 1
triggerAll = statetype != A
trigger1 = var(34) > 0
sysvar(1) = 1
[State -1, seed]
type = ChangeState
value = 41
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = Ctrl
trigger1 = var(34) > 0

;�󒆍����T�[�x��
[State -1, ]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype = A
triggerAll = ctrl
trigger1 = var(34) > 0

;MA�ːi
[State -1, ]
type = ChangeState
value = 1040
triggerAll = fvar(11) > 0.3
triggerall = var(59) = 1
triggerall = statetype = A
triggerAll = (movehit) && (stateno = 600)
trigger1 = 1




;---------------------------------------------------------------------------
;�R���{2
;---------------------------------------------------------------------------
;MA�ːi
[State -1, ]
type = ChangeState
value = 1040
triggerAll = fvar(11) > 0.3
triggerall = var(59) = 1
trigger1 = (StateNo=1022)&&(AnimTime=0)
trigger1 = movehit > 0
trigger2 = var(32) > 0;�X�L�����q�b�g��
trigger2 = ctrl
trigger3 = (StateNo=1100)&&(AnimTime=0)
trigger3 = movehit > 0

;---------------------------------------------------------------------------
;�R���{�P
;---------------------------------------------------------------------------
;�n��
;�����T�[�x��
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = ctrl
trigger1 = (random%3=0)&&(gameTime%10=0)
trigger1 = P2BodyDist X < 110

;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 300
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = (movehit) && (stateno = 210)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�����O�A�a��
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 300)
trigger1 = (random%3=0)&&(gameTime%10=0)

;�r�[���T�[�x������
[State -1, ]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = statetype != A
triggerAll = (movehit) && (stateno = 220)
trigger1 = AnimElemTime(10) >= 0
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;�I���W
;---------------------------------------------------------------------------
;�n��
;�����T�[�x��
[State -1, ]
type = ChangeState
value = 1120
triggerall = var(59) = 1
triggerAll = fvar(11) > 0.3
triggerall = fvar(14) = [75,110]
triggerAll = P2BodyDist X < 60
triggerAll = P2BodyDist Y < -50
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500])||(StateNo=[600,610]))&&(MoveContact)) 

;---------------------------------------------------------------------------
;�n��
;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = 1
triggerAll = fvar(11) > 0.3
triggerall = fvar(14) = [40,75]
triggerAll = P2BodyDist Y < -40
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500])||(StateNo=[600,610]))&&(MoveContact)) 

;

;---------------------------------------------------------------------------
;�K�[�h����
;---------------------------------------------------------------------------
;�n��
;�W�����v
[State 40, 2]
type = VarSet
triggerall = var(59) = 1
triggerAll = statetype != A
trigger1 = EnemyNear,StateType = C
trigger1 = P2BodyDist X < 120
sysvar(1) = 1
[State -1, seed]
type = ChangeState
value = 41
triggerall = var(59) = 1
triggerAll = statetype != A
triggerAll = Ctrl
trigger1 = EnemyNear,StateType = C
trigger1 = P2BodyDist X < 120

;�󒆍����T�[�x��
[State -1, ]
type = ChangeState
value = 600
triggerAll = var(59) = 1
triggerall = statetype = A
triggerAll = (ctrl)||(stateno=[100,105])||(stateno=[820,890])
trigger1 = P2BodyDist X < 100
trigger1 = P2BodyDist Y = [0,50]

;---------------------------------------------------------------------------
;�K�[�h����
;---------------------------------------------------------------------------

;�n��
;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerAll = var(59) = 1
triggerall = statetype != A
triggerAll = P2BodyDist X < 100
triggerAll = (random%3=0)&&(gameTime%10=0)
trigger1 = EnemyNear,StateType != A
trigger1 = ctrl
trigger2 = (MoveGuarded) && (stateno = 210)


;---------------------------------------------------------------------------
;�Ȃ��ƂȂ��P
;---------------------------------------------------------------------------

;�n��
;�V�[���h����
[State -1, ]
type = ChangeState
value = 1140
triggerall = var(59) = 1
triggerall = var(9) > 0;�c������
triggerAll = fvar(11) > 0.1
triggerall = fvar(14) = [-40,-20]
triggerAll = P2BodyDist X > 140
trigger1 = (ctrl)||(stateno=[100,105])||(stateno=[810,890])




;---------------------------------------------------------------------------
;�J�E���^�[
;---------------------------------------------------------------------------
[State -1, ]
type = VarSet
var(48) = 220
triggerall = stateno = [150,159]
triggerall = stateType != A
trigger1 = command = "fwd_a"
trigger2 = var(59) = 1
trigger2 = p2bodydist X < 100
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(48) = 610
triggerall = stateno = [150,159]
triggerall = stateType = A
trigger1 = command = "fwd_a"
trigger2 = var(59) = 1
trigger2 = p2bodydist X < 100
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(48) = 1000
triggerall = stateno = [150,159]
triggerall = stateType != A
trigger1 = command = "fwd_b"
trigger2 = var(59) = 1
trigger2 = p2bodydist X > 150
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(48) = 1000
triggerall = stateno = [150,159]
triggerall = stateType = A
trigger1 = command = "fwd_b"
trigger2 = var(59) = 1
trigger2 = p2bodydist X > 150
trigger2 = enemy,movetype != A

[State -1, ]
type = VarSet
var(48) = 110
triggerall = stateno = [150,159]
trigger1 = command = "fwd_c"
trigger2 = var(59) = 1
trigger2 = FrontEdgeBodyDist >= 100

[State -1, ]
type = VarSet
var(48) = 115
triggerall = stateno = [150,159]
trigger1 = command = "back_c"
trigger2 = var(59) = 1
trigger2 = BackEdgeBodyDist >= 100



;---------------------------------------------------------------------------
;�K�[�h�L�����Z��
[State -1, Kung Fu Throw]
type = ChangeState
value = var(48)
triggerAll = stateno = [150,159]
trigger1 = var(48) != 0
;---------------------------------------------------------------------------



;===========================================================================
;���K�E�Z
;===========================================================================
;SEED�o��
[State -1, ]
type = ChangeState
value = 900
triggerAll = var(53) = 1;�t���C���O�h�~�p
triggerall = var(59) = 0
triggerall = var(58) = 0
triggerall = (command = "L") && (command = "holddown")
triggerall = stateno != [900,909]
trigger1 = statetype != A

;===========================================================================
;�o�[�T�[�N
[State -1, ]
type = ChangeState
value = 3100
triggerAll = var(53) = 1;�t���C���O�h�~�p
triggerall = var(59) = 0
triggerall = var(58) > 0
triggerAll = Power >= 3000
triggerall = (command = "basaku")
triggerall = stateno != [900,909]
triggerAll = (ctrl)||(stateno=[100,105])||(stateno=[810,890])||(stateno=[200,339])||(stateno=[400,419])||(stateno=[600,619])||(stateno=1000)
trigger1 = 1

;===========================================================================
;�t�F�A�E�E�H�[�j���O
[State -1, ]
type = ChangeState
value = 3000
triggerall = var(58) = 1
triggerall = (command = "L") && (command = "holddown")
trigger1 = statetype != A
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500]))&&(MoveContact)) 

;===========================================================================
;�K�E�Z
;===========================================================================
;---------------------------------------------------------------------------
;�����T�[�x��
[State -1, ]
type = ChangeState
value = 1120
triggerall = var(59) = 0
triggerAll = fvar(11) > 0.3
triggerall = command = "FD_B"
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500])||(StateNo=[600,610]))&&(MoveContact)) 

;---------------------------------------------------------------------------
;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerAll = fvar(11) > 0.3
triggerall = command = "DB_B"
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500])||(StateNo=[600,610]))&&(MoveContact)) 

;---------------------------------------------------------------------------
;�V�[���h����
[State -1, ]
type = ChangeState
value = 1140
triggerall = var(59) = 0
triggerAll = fvar(11) > 0.1
triggerall = command = "DB_A"
trigger1 = (ctrl)||(stateno=[100,105])||(stateno=[810,890])

;---------------------------------------------------------------------------
;MA�ːi
[State -1, ]
type = ChangeState
value = 1040
triggerAll = fvar(11) > 0.3
triggerall = command = "L" && command = "holdfwd"
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500])||(StateNo=[600,610]))&&(MoveContact)) 

;---------------------------------------------------------------------------
;�X�L����
[State -1, ]
type = ChangeState
value = 1030
triggerAll = fvar(11) > 0.3
triggerall = command = "L"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;60mm���G�l���M�[�r�[�����C�t��
[State -1, ]
type = ChangeState
value = 1000
triggerAll = fvar(11) > 0.3
triggerall = (command = "A")  && (command = "holdfwd")
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�r�[���T�[�x������
[State -1, ]
type = ChangeState
value = 1020
triggerAll = var(59) = 0
triggerall = command = "L"
triggerall = statetype != A
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500]))&&(MoveContact)) 

;---------------------------------------------------------------------------
;60mm���G�l���M�[�r�[�����C�t��
[State -1, ]
type = ChangeState
value = 1000
triggerall = (command = "A")  && (command = "holdfwd")
triggerall = statetype = S
trigger1 = (ctrl) || (((StateNo=[200,220])||(StateNo=[300,311])||(StateNo=[400,400])||(StateNo=[500,500]))&&(MoveContact)) 

;===========================================================================
;---------------------------------------------------------------------------
;�W�����v
[State -1,]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 311) && (movehit)

;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;���ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆍����O�A�a��
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "B") && (command = "holdback")
triggerall = statetype = A
trigger1 = (ctrl)||(stateno=[100,105])||(stateno=[810,890])
trigger2 = (movecontact) && (stateno = 600)

;---------------------------------------------------------------------------
;�󒆍����T�[�x��
[State -1, ]
type = ChangeState
value = 600
triggerAll = var(59) = 0
triggerall = command = "B"
triggerall = statetype = A
trigger1 = (ctrl)||(stateno=[100,105])||(stateno=[810,890])

;---------------------------------------------------------------------------
;����20mmCIWS
[State -1, ]
type = ChangeState
value = 630
triggerAll = fvar(11) > 0.3
triggerall = command = "A"
triggerall = statetype = A
trigger1 = (ctrl)||(stateno=[100,105])||(stateno=[810,890])

;---------------------------------------------------------------------------
;���ݍ����O�A�a��
[State -1, ]
type = ChangeState
value = 500
triggerall = (command = "B") && (command = "holddown")
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 300)
trigger2 = (movecontact) && (stateno = 400)
trigger2 = hitcount >= 2

;---------------------------------------------------------------------------
;���ݍ����T�[�x��
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "B") && (command = "holddown")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 200)
trigger3 = (movecontact) && (stateno = 400)

;---------------------------------------------------------------------------
;�����O�A�a��
[State -1, ]
type = ChangeState
value = 220
triggerall = (command = "B") && (command = "holdback")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 200)
trigger3 = (movecontact) && (stateno = 210)
trigger4 = (movecontact) && (stateno = 300)

;---------------------------------------------------------------------------
;�E���T�[�x��
[State -1, ]
type = ChangeState
value = 300
triggerall = command = "B"
triggerAll = statetype != A
trigger1 = (movecontact) && (stateno = 210)
trigger2 = (movecontact) && (stateno = 400)

;---------------------------------------------------------------------------
;�����˂����΂�
[State -1, ]
type = ChangeState
value = 320
triggerall = (command = "B") && (command = "holdfwd")
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 300)
trigger2 = (movecontact) && (stateno = 400)
trigger2 = hitcount >= 2

;---------------------------------------------------------------------------
;�����a���グ
[State -1, ]
type = ChangeState
value = 310
triggerall = command = "B"
triggerall = statetype != A
trigger1 = (movecontact) && (stateno = 300)
trigger2 = (movecontact) && (stateno = 400)
trigger2 = hitcount >= 2

;---------------------------------------------------------------------------
;�����T�[�x��
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "B") && (command = "holdfwd")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 200)

;---------------------------------------------------------------------------
;�����p���`
[State -1, ]
type = ChangeState
value = 200
triggerall = command = "B"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 200)

;---------------------------------------------------------------------------
;�C�[�Q���V���e����
[State -1, ]
type = ChangeState
value = 230
triggerall = command = "A"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;�X���X�^�[�J�n
[State -1, test]
type = ChangeState
value = 805
triggerAll = fvar(11) > 0.3
triggerall = StateNo != [100,105]
triggerall = StateNo != [800,890]
triggerall = statetype = A
trigger1 = ctrl
trigger1 = var(14) = 1

;�X���X�^�[�J�n
[State -1, test]
type = ChangeState
value = 800
triggerAll = fvar(11) > 0.3
triggerall = statetype=S  || statetype=C
triggerAll = ctrl
trigger1 = var(14) = 1
