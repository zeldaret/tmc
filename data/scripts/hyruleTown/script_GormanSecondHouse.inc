@ Hyrule Town Gorman at second house
SCRIPT_START script_GormanSecondHouse
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4
	SetEntitySpeed 0x0040
	EndBlock
script_0800FDE2:
	Call sub_08069A60
script_0800FDE8:
	Call sub_0806991C
script_0800FDEE:
	EndBlock
	BeginBlock
	Call sub_08069ACC
	JumpIf script_0800FE06
	MoveTowardsTarget
	JumpIfNot script_0800FDEE
	Jump script_0800FDE2
script_0800FE06:
	EndBlock
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	Wait 0x003c
	Call sub_08069A3C
	Jump script_0800FDE8
	.2byte 0x0000
