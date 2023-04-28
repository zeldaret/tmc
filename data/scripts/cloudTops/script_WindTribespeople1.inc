@ Cloud Tops WindTribespeople blocking exit
SCRIPT_START script_WindTribespeople1
	BeginBlock
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	CheckGlobalFlag WARP_EVENT_END
	JumpIf script_08014976
	SetAnimationState 0x0004
	SetEntityPositionRelative 0x0078, 0x0128
script_08014976:
	EndBlock
script_08014978:
	FacePlayerAndCheckDist
	JumpIfNot script_08014978
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_08014978
