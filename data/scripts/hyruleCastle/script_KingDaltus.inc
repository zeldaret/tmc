@ Hyrule Castle King Daltus
SCRIPT_START script_KingDaltus
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Call KingDaltus_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
	Jump script_0800917C
	.2byte 0x0000
