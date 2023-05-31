@ Cloud Tops Windtribespeople
SCRIPT_START script_WindTribespeople7
	BeginBlock
	CheckGlobalFlag KUMOTATSUMAKI
	JumpIf script_08014CD4
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0000
	EndBlock
script_08014CAE:
	EndBlock
	BeginBlock
	CheckGlobalFlag KUMOTATSUMAKI
	JumpIf script_08014CD4
	FacePlayerAndCheckDist
	JumpIfNot script_08014CAE
	EndBlock
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08014CAE
script_08014CD4:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
