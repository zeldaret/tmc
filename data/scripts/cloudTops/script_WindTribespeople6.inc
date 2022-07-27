@ Cloud Tops Windtribespeople sucked up ghost
SCRIPT_START script_WindTribespeople6
	BeginBlock
	DoPostScriptAction 0x000a
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	FacePlayer
	DoPostScriptAction 0x0004
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	MessageNoOverlap TEXT_WIND_TRIBE, 0x0a
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
script_08014AAC:
	FacePlayerAndCheckDist
	JumpIfNot script_08014AAC
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_WIND_TRIBE, 0x0a
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08014AAC
	.2byte 0x0000
