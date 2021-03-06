SCRIPT_START script_0800B828
	StartScript 
	_0807E9D4 
	_0807EB44 0x0000
	_0807EF80 0x000a
	StopScript 
script_0800B836:
	_0807E944 
	_0807E864 
	TextboxNoOverlapFollow 0x0a01
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800B836
	.short 0x0000
	StartScript 
	_0807E9D4 
	_0807EB44 0x0004
	_0807EF80 0x0000
	_0807EF80 0x000a
	StopScript 
script_0800B85E:
	Wait 0x003c
	Call sub_080646A4
	Jump script_0800B85E
	StartScript 
	_0807E9D4 
	_0807EB44 0x0004
	_0807E930 0x0000
	_0807EF80 0x000a
	StopScript 
script_0800B87E:
	Wait 0x003c
	Call sub_0806407C
	Jump script_0800B87E
	StartScript 
	_0807E9D4 
	_0807EB44 0x0004
	_0807EF80 0x0000
	_0807EF80 0x000a
	StopScript 
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
	StartScript 
	_0807E9D4 
	_0807EB44 0x0004
	_0807EF80 0x0000
	_0807EF80 0x000a
	CallWithArg sub_08064644, 0x0806464d
	StopScript 
script_0800B8D4:
	Wait 0x003c
	Call sub_080646A4
	Jump script_0800B8D4
	.short 0x0000
	StartScript 
	Call sub_08061E70
	_0807EF80 0x000a
	_0807EB44 0x0004
	Call sub_08061FD8
	StopScript 
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
	.short 0x0000
	StartScript 
	_0807EB44 0x0004
	_0807EF80 0x0000
	_0807EF80 0x000a
	StopScript 
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
	StartScript 
	_0807EF80 0x000b
	_0807EF80 0x0008
	Call sub_0806DAAC
	JumpIf script_0800B9AC
	Call sub_0806DAD0
	CallWithArg sub_0806DA04, 0x00000005
	StopScript 
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
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
