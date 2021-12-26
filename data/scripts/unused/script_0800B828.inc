@ TODO UNUSED?
SCRIPT_START script_0800B828
	BeginBlock
	_0807E9D4
	_0807EB44 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0800B836:
	_0807E944 
	_0807E864 
	MessageFromTarget 0x0a01
	WaitUntilTextboxCloses
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
	MessageFromTarget 0x0a01
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800B89E
