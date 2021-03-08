SCRIPT_START script_080098D4
	BeginBlock 
	EndBlock 
script_080098D8:
	CheckGlobalFlag 0x0020
	JumpIfNot script_080098D8
script_080098E0:
	CheckInventory1 0x003c
	JumpIfNot script_080098E0
	CheckLocalFlag 0x005d
	JumpIf script_08009910
	SetLocalFlag 0x005d
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB28 0x280a
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
script_08009910:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
