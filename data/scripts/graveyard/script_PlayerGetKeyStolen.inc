@ Player when crow steals key
script_PlayerGetKeyStolen::
	PlaySound SFX_PLY_VO6
	SetAnimationState 0x0004
	PlaySound SFX_86
	Call sub_0807F36C
	SetEntitySpeed 0x0400
	WalkWest 0x0004
	Call sub_0807F1E8
	Wait 0x001e
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000020
	PlaySound SFX_PLY_JUMP
	SetAnimationState 0x0004
	Call sub_0807F210
	Fall 0x0200, 0x0020
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000040
	Call SetPlayerActionNormal
	EndScript
	.2byte 0x0000
