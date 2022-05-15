@ Hyrule Town Din moved in
SCRIPT_START script_DinMovedIn
	BeginBlock
	Call sub_08064828
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
	CheckLocalFlag 0x0094
	JumpIf script_0801205E
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x22
	WaitUntilTextboxCloses
	SetLocalFlag 0x0094
	Jump script_0801209E
script_0801205E:
	CheckBottleContaining 0x0031
	JumpIfNot script_08012070
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x23
	WaitUntilTextboxCloses
	Jump script_0801209E
script_08012070:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x24
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_0801209E
	CheckBottleContaining 0x0020
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

