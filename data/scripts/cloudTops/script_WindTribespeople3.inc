@ Cloud Tops Windtribespeople blocking the way up to the palace
SCRIPT_START script_WindTribespeople3
	BeginBlock
	SetEntitySpeed 0x0080
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_080149DE:
	FacePlayerAndCheckDist
	JumpIfNot script_080149DE
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	CheckLocalFlag 0x0064
	JumpIfNot script_08014A20
	CheckLocalFlag 0x00b1
	JumpIf script_08014A20
	SetLocalFlag 0x00b1
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0001
	MoveTo 0x0068, 0x00f8
	PlaySound SFX_SECRET
	FacePlayer
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
script_08014A20:
	EnablePlayerControl
	Jump script_080149DE
	.2byte 0x0000
