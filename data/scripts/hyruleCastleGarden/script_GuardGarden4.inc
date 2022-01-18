@ Intro Hyrule Castle roaming Guard
SCRIPT_START script_GuardGarden4
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x0000000c
	EndBlock
script_080119C8:
	Wait 0x003c
	Call sub_0806407C
	Jump script_080119C8
	.2byte 0x0000
