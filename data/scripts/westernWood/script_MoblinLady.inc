@ Western Wood MoblinLady in Percys house
SCRIPT_START script_MoblinLady
	BeginBlock
	_0807EB74
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_08012338:
	CheckEntityInteractType
	JumpIfNot script_08012338
	_0807EB74 
	_0807E864 
	MessageFromTarget 0x2304
	WaitUntilTextboxCloses
	CheckLocalFlag 0x0042
	JumpIf script_0801235A
	SetLocalFlag 0x0042
	GivePlayerItem 0x0057
	WaitPlayerGetItem
script_0801235A:
	_0807E878
	Jump script_08012338
