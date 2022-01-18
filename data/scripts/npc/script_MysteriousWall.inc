@ Cave NPC4E Fusion thingy Mysterious Wall
SCRIPT_START script_MysteriousWall
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
	EnablePlayerControl
	Jump script_0800B98A
script_0800B99E:
	Call sub_0806F188
	Call sub_0807DF50
	EnablePlayerControl
script_0800B9AC:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
