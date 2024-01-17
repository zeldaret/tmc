@ Gorman at third house
SCRIPT_START script_GormanCats
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4
	SetEntitySpeed 0x0040
	EndBlock
script_0800FE5A:
	Call sub_08069AA8
script_0800FE60:
	Call sub_080699AC
script_0800FE66:
	EndBlock
	BeginBlock
	Call sub_08069ACC
	JumpIf script_0800FE7E
	MoveTowardsTarget
	JumpIfNot script_0800FE66
	Jump script_0800FE5A
script_0800FE7E:
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
	Call sub_08069A84
	Jump script_0800FE60
	.2byte 0x0000
