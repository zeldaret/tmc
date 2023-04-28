@ Hyrule Town Din moved in
SCRIPT_START script_DinMovedIn
	BeginBlock
	Call Din_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_0801203A:
	CheckEntityInteractType
	JumpIfNot script_0801203A
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckLocalFlag MHOUSE_DIN_TALK
	JumpIf script_0801205E
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x22
	WaitUntilTextboxCloses
	SetLocalFlag MHOUSE_DIN_TALK
	Jump script_0801209E
script_0801205E:
	CheckBottleContaining BOTTLE_CHARM_DIN
	JumpIfNot script_08012070
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x23
	WaitUntilTextboxCloses
	Jump script_0801209E
script_08012070:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x24
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0801209E
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	JumpIfNot script_0801209A
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x25
	WaitUntilTextboxCloses
	GivePlayerItem BOTTLE_CHARM_DIN
	WaitPlayerGetItem
.ifdef USA
	Call sub_0807FC24
.else
.ifdef DEMO_USA
	Call sub_0807FC24
.else
.ifdef DEMO_JP
	Call sub_0807FC24
.endif
.endif
.endif
	Jump script_0801209E
script_0801209A:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x27
script_0801209E:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_0801203A
	.align 2, 0

