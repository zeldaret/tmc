@ Western Wood MoblinLady in Percys house
SCRIPT_START script_MoblinLady
	BeginBlock
	FacePlayer
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_08012338:
	CheckEntityInteractType
	JumpIfNot script_08012338
	FacePlayer
	SetPlayerIdle
	MessageFromTarget TEXT_PERCY, 0x04
	WaitUntilTextboxCloses
	CheckLocalFlag MHOUSE08_03
	JumpIf script_0801235A
	SetLocalFlag MHOUSE08_03
	GivePlayerItem ITEM_RUPEE50
	WaitPlayerGetItem
script_0801235A:
	EnablePlayerControl
	Jump script_08012338
