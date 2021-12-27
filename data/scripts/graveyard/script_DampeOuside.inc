@ Graveyard Dampe outside
SCRIPT_START script_DampeOuside
	BeginBlock
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0008
	EndBlock
script_08009638:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x0020
	JumpIfNot script_08009638
	EndBlock
script_08009646:
	Call sub_0806BF44
	JumpIf script_08009646
	EndBlock
	Call sub_0806BE3C
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
script_08009660:
	CheckEntityInteractType
	JumpIfNot script_08009660
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0001
	Call sub_0806BEC8
	WaitUntilTextboxCloses
	JumpIfNot script_0800968E
	PlaySound SFX_111
	PlaySound SFX_SECRET
	_0807F078 0x003c, 0x0002
	Call sub_0806BEFC
script_0800968E:
	_0807E878
	DoPostScriptAction 0x0000
	Jump script_08009660
