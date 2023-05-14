@ Western Wood Forest Minish
SCRIPT_START script_ForestMinish1
	BeginBlock
	Call ForestMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800C55E:
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800C572
	Call sub_08060158
	EndBlock
	Jump script_0800C55E
script_0800C572:
	EndBlock
	SetPlayerIdle
	Call sub_08060208
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800C55E
