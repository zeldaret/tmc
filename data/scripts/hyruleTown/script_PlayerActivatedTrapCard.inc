@ Player at Library fall through trap
SCRIPT_START script_PlayerActivatedTrapCard
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	Wait 0x0014
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x0014
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0005
	Wait 0x003c
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
