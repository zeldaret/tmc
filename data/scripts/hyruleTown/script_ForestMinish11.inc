@ Forest Minish above cafe
SCRIPT_START script_ForestMinish11
	BeginBlock
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock
script_0800E6BE:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800E6D2
	Call sub_08060158
	EndBlock
	Jump script_0800E6BE
script_0800E6D2:
	EndBlock
	_0807E864
	Call sub_0806025C
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800E6BE
