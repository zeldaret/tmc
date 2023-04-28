@ Forest Minish above cafe
SCRIPT_START script_ForestMinish11
	BeginBlock
	Call ForestMinish_MakeInteractable
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
	SetPlayerIdle
	Call sub_0806025C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800E6BE
