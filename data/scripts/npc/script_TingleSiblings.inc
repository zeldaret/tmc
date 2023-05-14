@ Tingle Siblings
SCRIPT_START script_TingleSiblings
	BeginBlock
	Call TingleSiblings_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0801690A:
	FacePlayerAndCheckDist
	JumpIfNot script_0801690A
	SetPlayerIdle
	FacePlayer
	Call sub_08064F28
	WaitUntilTextboxCloses
	JumpIfNot script_08016926
	GivePlayerItem ITEM_QST_TINGLE_TROPHY
	WaitPlayerGetItem
script_08016926:
	EnablePlayerControl
	SetGlobalFlag TINGLE_TALK1ST
	Jump script_0801690A
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0801693E:
	TriggerInteract
	SetPlayerIdle
	Wait 0x0018
	MessageFromTarget TEXT_EMPTY, 0x01
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0801693E
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0000
	DoPostScriptAction 0x000a
	SetAnimation 0x0000
	EndBlock
script_0801696A:
	TriggerInteract
	SetPlayerIdle
	Wait 0x0018
	MessageFromTarget TEXT_EMPTY, 0x01
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0801696A
	.2byte 0x0000
