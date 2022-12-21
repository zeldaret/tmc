@ Player after turning Zelda back from stone
SCRIPT_START script_PlayerRescuedZelda
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	CallWithArg sub_0807F4F8, 0x000000a0
	MoveTo 0x0078, 0x00a0
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
