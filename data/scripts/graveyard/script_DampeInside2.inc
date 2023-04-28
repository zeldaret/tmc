@ Graveyard Dampe in house 2?
SCRIPT_START script_DampeInside2
	BeginBlock
	Call Dampe_MakeInteractable
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	EndBlock
script_080095DE:
	Call sub_0806BF44
	JumpIf script_DampeInside
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0006
SCRIPT_END
