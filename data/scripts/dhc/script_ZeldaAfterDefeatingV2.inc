@ DHC Zelda after defeating V2
SCRIPT_START script_ZeldaAfterDefeatingV2
	BeginBlock
	DoPostScriptAction 0x000a
	Call sub_08066E38
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	CallWithArg sub_0807F8E8, 0x00000000
	SetSyncFlag 0x00000002
script_0800DCD0:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800DCD0
	DoPostScriptAction 0x0010
	Wait 0x003c
	DoPostScriptAction 0x0010
	SetEntityPositionRelative 0x0078, 0x0068
	WaitForSyncFlagAndClear 0x00000001
	StopBgm
	Call sub_08066E50
	PlaySound SFX_1C9
	Call WaitForAnimDone
	PlaySound SFX_1CA
	Wait 0x003c
	DoPostScriptAction 0x0004
	PlayBgm BGM_SAVING_ZELDA
	Wait 0x0078
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetEntitySpeed 0x0100
	MoveToOffset 0x0000, 0x0008
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Wait 0x001e
	Call sub_08066E80
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetEntitySpeed 0x0100
	MoveToOffset 0x0000, 0x0080
SCRIPT_END
	.2byte 0x0000
