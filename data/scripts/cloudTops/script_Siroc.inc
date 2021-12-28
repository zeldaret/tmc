@ Cloud Tops Windtribespeople Leader Siroc
SCRIPT_START script_Siroc
	BeginBlock
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock
script_08014AD2:
	FacePlayerAndCheckDist
	JumpIfNot script_08014AD2
	SetPlayerIdle
	FacePlayer
	StartPlayerScript script_PlayerAtSiroc
	WaitForSyncFlagAndClear 0x00000001
	FacePlayer
	CheckLocalFlag 0x0064
	JumpIf script_08014AFE
	SetLocalFlag 0x0064
	MessageNoOverlap 0x2f0b
	Jump script_08014B02
script_08014AFE:
	MessageNoOverlap 0x2f0c
script_08014B02:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_08014AD2
	.2byte 0x0000
