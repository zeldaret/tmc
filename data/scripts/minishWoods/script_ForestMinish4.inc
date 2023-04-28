@ Minish Village Forest Minish
SCRIPT_START script_ForestMinish4
	BeginBlock
script_0800C5FE:
	Call ForestMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800C60A:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800C61E
	Call sub_08060158
	EndBlock
	Jump script_0800C60A
script_0800C61E:
	EndBlock
	SetPlayerIdle
	Call sub_0806021C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800C60A
