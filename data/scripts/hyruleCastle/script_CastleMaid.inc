@ Intro Hyrule Castle Maid
SCRIPT_START script_CastleMaid
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	CallWithArg CastleMaid_SetDialogFunc, sub_0806464C
	EndBlock
script_0800B8D4:
	Wait 0x003c
	Call sub_080646A4
	Jump script_0800B8D4
	.2byte 0x0000
