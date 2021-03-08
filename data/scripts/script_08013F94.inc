SCRIPT_START script_08013F94
	BeginBlock 
	DoPostScriptAction 0x0008
	EndBlock 
	CheckLocalFlag 0x007d
	JumpIf script_08013FE0
script_08013FA4:
	EndBlock 
	BeginBlock 
	CheckInventory1 0x0003
	JumpIfNot script_08013FA4
	CheckPlayerFlags 0x00400000
	JumpIfNot script_08013FA4
	EndBlock 
	Call sub_0807FA40
	_0807E888 
	Call sub_0807DF38
	Wait 0x0078
	_0807EB28 0x1505
	_0807EA94 
	SetLocalFlag 0x007d
	Call sub_0807DF50
	_0807E878 
script_08013FE0:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
