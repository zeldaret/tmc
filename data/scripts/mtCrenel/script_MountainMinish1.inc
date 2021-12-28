@ Mines Mountain Minish before beds
SCRIPT_START script_MountainMinish1
	BeginBlock
	Call sub_08068104
	DoPostScriptAction 0x000a
	EndBlock
script_0800CF5E:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800CF72
	Call sub_0806811C
	EndBlock
	Jump script_0800CF5E
script_0800CF72:
	EndBlock
	_0807E864
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800CF5E
