@ All Windcrests
SCRIPT_START script_Windcrest
	BeginBlock
	Call sub_0807F934
	Call sub_080A2124
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	EndBlock
script_0800B024:
	CheckEntityInteractType
	JumpIfNot script_0800B024
	_0807E864
	Call sub_0807DF28
	CheckGlobalFlag 0x0052
	JumpIf script_0800B082
	CheckGlobalFlag 0x0053
	JumpIf script_0800B064
	MessageNoOverlap 0x3f32
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0008
	Call Windcrest_Unlock
	Wait 0x003c
	_0807EB28 0x0b5c
	WaitUntilTextboxCloses
	SetGlobalFlag 0x0053
	Jump script_0800B09C
script_0800B064:
	MessageNoOverlap 0x3f32
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0008
	Call Windcrest_Unlock
	Wait 0x003c
	_0807EB28 0x0b5d
	WaitUntilTextboxCloses
	Jump script_0800B09C
script_0800B082:
	MessageNoOverlap 0x3f32
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0008
	Call Windcrest_Unlock
	Wait 0x003c
	_0807EB28 0x0b5e
	WaitUntilTextboxCloses
script_0800B09C:
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
