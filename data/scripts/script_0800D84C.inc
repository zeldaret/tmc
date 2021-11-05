SCRIPT_START script_0800D84C
	BeginBlock
	EndBlock
script_0800D850:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800D850
	_0807E864
	Call sub_0807DF28
	Wait 0x003c
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
