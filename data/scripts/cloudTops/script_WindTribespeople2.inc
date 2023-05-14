@ Cloud Top Windtribespeople woman on first floor
SCRIPT_START script_WindTribespeople2
	BeginBlock
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	CheckGlobalFlag WARP_EVENT_END
	JumpIfNot script_080149C6
	EndBlock
script_080149AA:
	FacePlayerAndCheckDist
	JumpIfNot script_080149AA
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_080149AA
script_080149C6:
	DoPostScriptAction 0x0006
SCRIPT_END
