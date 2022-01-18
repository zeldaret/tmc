@ TODO UNUSED?
SCRIPT_START script_080165A4
	BeginBlock
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	_0807E9D4
	EndBlock
script_080165B2:
	_0807E974 0x0601
	Jump script_080165B2
	.2byte 0x0000
script_080165BC:
	Wait 0x001e
	CheckPlayerInRegion2 0x2020
	JumpIfNot script_080165BC
	DoPostScriptAction 0x0003
	Call CreateDustFromScript+1
	Jump script_080165BC
	.2byte 0x0000
