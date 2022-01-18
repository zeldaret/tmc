@ Hyrule Town Guard patrolling
SCRIPT_START script_GuardPatrolling
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000004
	EndBlock
script_080103E8:
	Wait 0x003c
	Call sub_0806407C
	Jump script_080103E8
	.2byte 0x0000
