@ Hyrule Town Kid standing outside school garden
SCRIPT_START script_Kid1
	BeginBlock
	DoPostScriptAction 0x0000
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock
script_080102A6:
	CheckEntityInteractType
	JumpIfNot script_080102A6
	CheckRoomFlag 0x0009
	JumpIfNot script_080102CC
	_0807E864
	_0807EB74
	Call sub_0806265C
	WaitUntilTextboxCloses
	_0807E878
	Call sub_08062500
	Jump script_080102A6
script_080102CC:
	_0807E864
	_0807EB74
	Call sub_0806265C
	WaitUntilTextboxCloses
	_0807E878
	Jump script_080102A6
	.2byte 0x0000
