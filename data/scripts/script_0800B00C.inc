SCRIPT_START script_0800B00C
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
	TextboxNoOverlap 0x3f32
	_0807EA94 
	DoPostScriptAction 0x0008
	Call Windcrest_Unlock
	Wait 0x003c
	_0807EB28 0x0b5c
	_0807EA94 
	SetGlobalFlag 0x0053
	Jump script_0800B09C
script_0800B064:
	TextboxNoOverlap 0x3f32
	_0807EA94 
	DoPostScriptAction 0x0008
	Call Windcrest_Unlock
	Wait 0x003c
	_0807EB28 0x0b5d
	_0807EA94 
	Jump script_0800B09C
script_0800B082:
	TextboxNoOverlap 0x3f32
	_0807EA94 
	DoPostScriptAction 0x0008
	Call Windcrest_Unlock
	Wait 0x003c
	_0807EB28 0x0b5e
	_0807EA94 
script_0800B09C:
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.short 0x0000
