@ Outro MinishEzlo after fixing everything
SCRIPT_START script_MinishEzloGoodbye
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x0004
	Wait 0x001e
	SetAnimationState 0x0002
	CallWithArg sub_0807F3D8, 0x00000000
	Wait 0x0006
	SetAnimationState 0x0000
	CallWithArg sub_0807F3D8, 0x00000000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetAnimationState 0x0002
	CallWithArg sub_0807F3D8, 0x00000000
	Wait 0x0014
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetAnimation 0x000c
	Call WaitForAnimDone
	Call sub_08094B94
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetAnimation 0x000f
	Call WaitForAnimDone
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	CallWithArg sub_080960C4, script_CutsceneMiscObjectEzloFinalMagic
	SetAnimation 0x0012
	Call WaitForAnimDone
	Wait 0x001e
	SetSyncFlag 0x00000020
	StopBgm
	Call CreateDust
	Call sub_0806305C
	Call sub_080630A4
	_0807EF3C 0x0000, 0x0020
	Wait 0x001e
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0080
	MoveToOffset 0x0000, 0xfff0
	Wait 0x003c
	MoveToOffset 0x0000, 0xfff0
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	MoveTo 0x0088, 0x0040
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x0006
SCRIPT_END
