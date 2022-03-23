@ Outro Minish Ezlo
SCRIPT_START script_MinishEzloOutro
	BeginBlock
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	SetAnimation 0x000e
	DoPostScriptAction 0x0007
	Call WaitForAnimDone
	DoPostScriptAction 0x0004
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
	SetAnimation 0x000c
	Call WaitForAnimDone
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
	SetAnimation 0x000f
	Call WaitForAnimDone
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
	SetAnimation 0x000c
	Call WaitForAnimDone
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000002
	CallWithArg sub_080960C4, script_EzloZeldaMagic
	SetSyncFlag 0x00000040
SCRIPT_END
	.2byte 0x0000
