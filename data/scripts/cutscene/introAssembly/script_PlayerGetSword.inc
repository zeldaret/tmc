@ Intro Assembly Player gets Sword
SCRIPT_START script_PlayerGetSword
	_0807F078 0x0001, 0x0001
	CallWithArg sub_0807F918, 0x00000001
	PlaySound SFX_109
	CallWithArg sub_0807F238, 0x0000045f
	Call sub_0807F304
	MessageFromTargetPos 0x0501, 0x000e
	WaitUntilTextboxCloses
	_0807E5F8 0x00000020
	Call sub_080791BC
SCRIPT_END
	.2byte 0x0000
