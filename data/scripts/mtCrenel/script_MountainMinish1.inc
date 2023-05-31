@ Mines Mountain Minish before beds
SCRIPT_START script_MountainMinish1
	BeginBlock
	Call MountainMinish_MakeInteractable
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
	SetPlayerIdle
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800CF5E
