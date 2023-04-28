@ Cloud Tops Windtribespeople blocking way up
SCRIPT_START script_WindTribespeople4
	BeginBlock
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_08014A36:
	FacePlayerAndCheckDist
	JumpIfNot script_08014A36
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_08014A36
	.2byte 0x0000
