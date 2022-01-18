@ Farore moved in 
SCRIPT_START script_FaroreMovedIn
	BeginBlock
	Call sub_08064A28
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08012152:
	CheckEntityInteractType
	JumpIfNot script_08012152
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckLocalFlag 0x0096
	JumpIf script_08012176
	MessageNoOverlap 0x311c
	WaitUntilTextboxCloses
	SetLocalFlag 0x0096
	Jump script_080121B6
script_08012176:
	CheckBottleContaining 0x0030
	JumpIfNot script_08012188
	MessageNoOverlap 0x311d
	WaitUntilTextboxCloses
	Jump script_080121B6
script_08012188:
	MessageNoOverlap 0x311e
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_080121B6
	CheckBottleContaining 0x0020
	JumpIfNot script_080121B2
	MessageNoOverlap 0x311f
	WaitUntilTextboxCloses
	GivePlayerItem 0x0030
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
	Jump script_080121B6
script_080121B2:
	MessageNoOverlap 0x3121
script_080121B6:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08012152
	.align 2, 0

