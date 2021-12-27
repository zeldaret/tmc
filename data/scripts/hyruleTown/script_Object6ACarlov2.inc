@ Hyrule Town OBJECT_69 at Carlov
SCRIPT_START script_Object6ACarlov2
	BeginBlock
	DoPostScriptAction 0x0008
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080145F8:
.ifdef EU
	CheckPlayerInRegion 0x00a8, 0x0054, 0x080c
	JumpIfNot script_080145F8
	ComparePlayerAnimationState 0x0000
	JumpIfNot script_080145F8
	CheckRoomFlag 0x0009
	JumpIf script_08014632
	_0807E864
	Wait 0x0018
	_0807E8E4_3
	_0807EB44 0x0002
	MessageFromTargetPos 0x432b, 0x000c
	WaitUntilTextboxCloses
	Wait 0x0018
	_0807E878
	Jump script_080145F8
script_08014632:
	CheckRoomFlag 0x0000
	JumpIfNot script_08014632
	_0807E864
	Call sub_0807DF28
script_08014642:
	CheckRoomFlag 0x0009
	JumpIf script_08014642
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	Call sub_0807DF50
	_0807E878
	Jump script_080145F8
.else
	CheckRoomFlag 0x0000
	JumpIfNot script_080145F8
	_0807E864
	Call sub_0807DF28
script_08014608:
	CheckRoomFlag 0x0004
	JumpIf script_08014608
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	Call sub_0807DF50
	_0807E878
	Jump script_080145F8
.endif
	.align 2, 0

