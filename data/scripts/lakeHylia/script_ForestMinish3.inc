@ Lake Hylia Forest Minish telling us to go to the library
SCRIPT_START script_ForestMinish3
	BeginBlock
	Call sub_08060090
	DoPostScriptAction 0x000a
	EndBlock
script_0800C5D6:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800C5EA
	Call sub_08060158
	EndBlock
	Jump script_0800C5D6
script_0800C5EA:
	EndBlock
	_0807E864
	Call sub_08060270
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800C5D6
