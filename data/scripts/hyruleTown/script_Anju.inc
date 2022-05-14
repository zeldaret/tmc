@ Hyrule Town Anju
SCRIPT_START script_Anju
	BeginBlock
	DoPostScriptAction 0x0001
	Call sub_0806C354
	DoPostScriptAction 0x000a
	EndBlock
script_0801015A:
	CheckEntityInteractType
	JumpIfNot script_0801015A
	SetPlayerIdle
	FacePlayer
	CheckRoomFlag 0x0001
	JumpIf script_0801019E
	MessageFromTargetPos TEXT_ANJU, 0x01, 0x0000
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_080101A6
	Call sub_080A1608
	WaitUntilTextboxCloses
	EnablePlayerControl
	CallWithArg CuccoMinigame_Init, script_080101AC
	JumpIfNot script_0801015A
	PlayBgm BGM_CUCCO_MINIGAME
	SetRoomFlag 0x0001
	Jump script_0801015A
script_0801019E:
	Call sub_080A1608
	WaitUntilTextboxCloses
script_080101A6:
	EnablePlayerControl
	Jump script_0801015A
script_080101AC:
	BeginBlock
	DoPostScriptAction 0x0008
	Call sub_080A1648
	EndBlock
	Call sub_080A1270
	SetPlayerIdle
	Call sub_0807DF28
	MessageFromTargetPos TEXT_ANJU, 0x04, 0x0007
	WaitUntilTextboxCloses
	StopBgm
	SetFadeTime 0x0004
	SetFade5
	WaitForFadeFinish
	CallWithArg SetPlayerPos, 0x03400378
	Call SetPlayerActionNormal
	Call sub_0807FB74
	_0807E8E4_1
	Call SetPlayerCollisionLayer1
	Call CuccoMinigame_Cleanup
	Call sub_0806EC38
	BeginBlock
	MoveEntityToPlayer
	Call sub_0807F844
	CameraTargetPlayer
	EndBlock
	SetFadeTime 0x0004
	SetFade4
	WaitForFadeFinish
	PlayBGM
	Call sub_080A13B4
	WaitUntilTextboxCloses
	JumpIfNot script_08010240
	Call sub_080A13E8
	WaitPlayerGetItem
	Call sub_080A1460
	WaitUntilTextboxCloses
	Call sub_080A14A8
script_08010240:
	Call sub_0807DF50
	EnablePlayerControl
	CallWithArg sub_0807F5B0, 0x00000000
	ClearRoomFlag 0x0001
	Call sub_080A169C
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
