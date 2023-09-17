@ Outro Player got the green cap
SCRIPT_START script_PlayerGetGreenCap
	BeginBlock
	Call sub_08094BE0
	CallWithArg SetPlayerAnimation2, ANIM_GET_ITEM_BIG_NOCAP
	PlaySound SFX_ITEM_GET
	EndBlock
	Call WaitForPlayerAnim
	Wait 0x005a
	SetSyncFlag 0x00000008
	BeginBlock
	CallWithArg ResetPlayerFlag, PL_NO_CAP
	CallWithArg SetPlayerAnimation2, ANIM_GET_NEWCAP
	EndBlock
	Call WaitForPlayerAnim
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Wait 0x003c
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x0004
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
	.2byte 0x0000
