@ Nayru moved in
SCRIPT_START script_NayruMovedIn
	BeginBlock
	Call sub_08064928
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_080120C6:
	CheckEntityInteractType
	JumpIfNot script_080120C6
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckLocalFlag 0x0095
	JumpIf script_080120EA
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x16
	WaitUntilTextboxCloses
	SetLocalFlag 0x0095
	Jump script_0801212A
script_080120EA:
	CheckBottleContaining 0x002f
	JumpIfNot script_080120FC
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x17
	WaitUntilTextboxCloses
	Jump script_0801212A
script_080120FC:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x18
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_0801212A
	CheckBottleContaining 0x0020
	JumpIfNot script_08012126
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x19
	WaitUntilTextboxCloses
	GivePlayerItem BOTTLE_CHARM_NAYRU
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
	Jump script_0801212A
script_08012126:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x1b
script_0801212A:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_080120C6
	.align 2, 0

