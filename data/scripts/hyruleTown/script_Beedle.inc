@ Hyrule Town Beedle
SCRIPT_START script_Beedle
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0000
	DoPostScriptAction 0x000a
	Call SetPriorityMessage
	EndBlock
script_08010502:
	CheckEntityInteractType
	JumpIfNot script_08010502
	SetPlayerIdle
	Call sub_0807DF28
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	CheckRoomFlag 0x000e
	JumpIf script_0801052E
	SetRoomFlag 0x000e
	MessageNoOverlap 0x2b10
	WaitUntilTextboxCloses
script_0801052E:
	Call sub_080634E4
	JumpTable script_08010544, script_08010558, script_08010570, script_08010570, script_0801054C, script_08010564, script_08010570
script_08010544:
	MessageNoOverlap 0x2b0d
	Jump script_080105E0
script_0801054C:
	CheckGlobalFlag 0x003d
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010558:
	CheckGlobalFlag 0x003c
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010564:
	CheckGlobalFlag 0x003b
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010570:
	Call sub_080634EC
	CallWithArg sub_0807F78C, 0x00000000
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_080105E0
	CallWithArg sub_0807F7C4, 0x00000000
	JumpIfNot script_080105C4
	CheckBottleContaining 0x0020
	JumpIfNot script_080105CC
	Call sub_08063504
	JumpIf script_080105D4
	MessageNoOverlap 0x2b07
	WaitUntilTextboxCloses
	CallWithArg sub_0807F800, 0x00000000
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	MessageNoOverlap 0x2b0c
	Jump script_080105E0
script_080105C4:
	MessageNoOverlap 0x2b09
	Jump script_080105E0
script_080105CC:
	MessageNoOverlap 0x2b0a
	Jump script_080105E0
script_080105D4:
	MessageNoOverlap 0x2b0b
	Jump script_080105E0
script_080105DC:
	MessageNoOverlap 0x2b0e
script_080105E0:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_08010502
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08010602:
	CheckEntityInteractType
	JumpIfNot script_08010602
	SetPlayerIdle 
	FacePlayer 
	MessageFromTarget 0x0a01
	WaitUntilTextboxCloses
	EnablePlayerControl 
	SetAnimationState 0x0004
	Jump script_08010602
