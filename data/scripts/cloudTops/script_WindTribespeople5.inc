@ Cloud Tops Windtribespeople at the bed
SCRIPT_START script_WindTribespeople5
	BeginBlock
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_08014A62:
	FacePlayerAndCheckDist
	JumpIfNot script_08014A62
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_08014A62
	.2byte 0x0000
