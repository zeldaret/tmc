SCRIPT_START script_08012C68
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000000
	Call sub_0806DA04
	EndBlock 
script_08012C7E:
	CheckEntityInteractType 
	JumpIfNot script_08012C7E
	_0807E864 
	_0807E8E4_0 
	TextboxNoOverlapFollow 0x111d
	_0807EA94 
	SetGlobalFlag 0x0022
	_0807E878 
	Jump script_08012C7E
SCRIPT_START script_08012C98
	CheckGlobalFlag 0x0014
	JumpIfNot script_08012C98
script_08012CA0:
	EndBlock 
	BeginBlock 
	CheckPlayerInRegion 0x0398, 0x03b0, 0x2040
	JumpIfNot script_08012CA0
	_0807E564 
	JumpIf script_08012CD2
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	_0807EB28 0x2202
	_0807EA94 
	SetLocalFlag 0x003b
	Call sub_0807DF50
	_0807E878 
script_08012CD2:
	DoPostScriptAction 0x0006
SCRIPT_END
