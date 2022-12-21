@ Outro EzloCap
SCRIPT_START script_EzloCapOutro
	BeginBlock
	SetEntitySpeed 0x0080
	SetEntityVelocity 0x00000000
	DoPostScriptAction 0x0008
	SetAnimationState 0x0000
	Call sub_0807F714
	MoveEntityToPlayer
	CallWithArg SetEntityHeight, 0xfff00000
	EndBlock
	SetAnimation 0x0023
	WaitForSyncFlagAndClear 0x00000010
	CallWithArg SetPlayerFlag, PL_NO_CAP
	DoPostScriptAction 0x0007
	PlaySound SFX_SPARKLES
	ClearSyncFlag 0x00000800
	CallWithArg sub_080960C4, script_CutsceneMiscObjectEzloDismounting
	Wait 0x003c
	MoveTo 0x0088, 0x0068
	Wait 0x0078
	SetSyncFlag 0x00000800
	PlaySound SFX_143
	_0807EF3C 0x0000, 0x0020
	SetAnimation 0x001f
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000010
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000200
	Wait 0x0001
	DoPostScriptAction 0x0008
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
