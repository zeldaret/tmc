@ Outro Player got the green cap
SCRIPT_START script_PlayerGetGreenCap
	BeginBlock
	Call sub_08094BE0
	CallWithArg SetPlayerAnimation2, 0x0000045b
	PlaySound SFX_109
	EndBlock
	Call WaitForPlayerFrameHiBit
	Wait 0x005a
	SetSyncFlag 0x00000008
	BeginBlock
	CallWithArg ResetPlayerFlag, 0x00000008
	CallWithArg SetPlayerAnimation2, 0x000008e4
	EndBlock
	Call WaitForPlayerFrameHiBit
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Wait 0x003c
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x0004
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call sub_080791BC
	.2byte 0x0000
