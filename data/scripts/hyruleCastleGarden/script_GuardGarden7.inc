@ Hyrule Castle Guard kicking Link out
SCRIPT_START script_GuardGarden7
	CheckRoomFlag 0x000f
	JumpIfNot script_GuardGarden7
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
script_08011AFA:
	MessageFromTargetPos TEXT_VAATI, 0x21, 0x0007
	WaitUntilTextboxCloses
	SetLocalFlag MAENIWA_00_WARP
	CallWithArg sub_0806DA1C, 0x00000003
	EnablePlayerControl
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
