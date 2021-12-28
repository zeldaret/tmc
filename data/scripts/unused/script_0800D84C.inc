@ TODO UNUSED?
SCRIPT_START script_0800D84C
	BeginBlock
	EndBlock
script_0800D850:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800D850
	SetPlayerIdle
	Call sub_0807DF28
	Wait 0x003c
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
