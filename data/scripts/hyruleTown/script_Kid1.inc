@ Hyrule Town Kid standing outside school garden
SCRIPT_START script_Kid1
	BeginBlock
	DoPostScriptAction 0x0000
	Call Kid_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_080102A6:
	CheckEntityInteractType
	JumpIfNot script_080102A6
	CheckRoomFlag 0x0009
	JumpIfNot script_080102CC
	SetPlayerIdle
	FacePlayer
	Call sub_0806265C
	WaitUntilTextboxCloses
	EnablePlayerControl
	Call sub_08062500
	Jump script_080102A6
script_080102CC:
	SetPlayerIdle
	FacePlayer
	Call sub_0806265C
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_080102A6
	.2byte 0x0000
