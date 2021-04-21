SCRIPT_START script_0800B828
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
script_0800B836:
	_0807E944 
	_0807E864 
	TextboxNoOverlapFollow 0x0a01
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800B836
	.2byte 0x0000
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
script_0800B85E:
	Wait 0x003c
	Call sub_080646A4
	Jump script_0800B85E
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	_0807E930 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
script_0800B87E:
	Wait 0x003c
	Call sub_0806407C
	Jump script_0800B87E
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
script_0800B89E:
	CheckEntityInteractType 
	JumpIfNot script_0800B89E
	_0807E864 
	_0807EB74 
	TextboxNoOverlapFollow 0x0a01
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800B89E
SCRIPT_START script_0800B8B8
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	CallWithArg sub_08064644, sub_0806464C
	EndBlock 
script_0800B8D4:
	Wait 0x003c
	Call sub_080646A4
	Jump script_0800B8D4
	.2byte 0x0000
SCRIPT_START script_0800B8E4
	BeginBlock 
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	Call sub_08061FD8
	EndBlock 
script_0800B8FC:
	CheckEntityInteractType 
	JumpIfNot script_0800B8FC
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	Jump script_0800B8FC
	.2byte 0x0000
SCRIPT_START script_0800B91C
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
	CheckLocalFlag 0x005f
	JumpIf script_0800B94E
script_0800B934:
	CheckEntityInteractType 
	JumpIfNot script_0800B934
	_0807E864 
	_0807EB74 
	TextboxNoOverlapFollow 0x3f19
	_0807EA94 
	SetLocalFlag 0x005f
	_0807E878 
	Jump script_0800B934
script_0800B94E:
	CheckEntityInteractType 
	JumpIfNot script_0800B94E
	_0807E864 
	_0807EB74 
	TextboxNoOverlapFollow 0x3f1a
	_0807EA94 
	_0807E878 
	Jump script_0800B94E
SCRIPT_START script_0800B964
	BeginBlock 
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0008
	Call sub_0806DAAC
	JumpIf script_0800B9AC
	Call sub_0806DAD0
	CallWithArg sub_0806DA04, 0x00000005
	EndBlock 
script_0800B98A:
	_0807EA4C 
	_0807E9F0 
	JumpIf script_0800B99E
	Call sub_0807DF50
	_0807E878 
	Jump script_0800B98A
script_0800B99E:
	Call sub_0806F188
	Call sub_0807DF50
	_0807E878 
script_0800B9AC:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
