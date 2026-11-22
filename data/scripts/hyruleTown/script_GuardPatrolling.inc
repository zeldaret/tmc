@ Hyrule Town Guard patrolling
script_GuardPatrolling::
	BeginBlock
	AddInteractableWhenBigObject
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000004
	EndBlock
script_080103E8:
	Wait 0x003c
	Call sub_0806407C
	Jump script_080103E8
	.2byte 0x0000
