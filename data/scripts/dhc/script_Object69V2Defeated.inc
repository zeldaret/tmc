@ DHC OBJECT_69 After defeating V2
SCRIPT_START script_Object69V2Defeated
	BeginBlock
	Call sub_0807DF28
	SetPlayerIdle
	EndBlock
	StopBgm
	StopBgm
	Wait 0x0078
	EzloMessage 0x1638
	WaitUntilTextboxCloses
	SetRoomFlag 0x0000
	Wait 0x001e
	SetSyncFlag 0x00000001
	StartPlayerScript script_PlayerV2Defeated
	WaitForSyncFlagAndClear 0x00000002
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
