@ Lake Hylia Forest Minish telling us to go to the library
SCRIPT_START script_ForestMinish3
	BeginBlock
	Call ForestMinish_MakeInteractable
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
	SetPlayerIdle
	Call sub_08060270
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800C5D6
