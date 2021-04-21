SCRIPT_START script_0800B0D0
	BeginBlock 
	Call sub_0806BCD4
	DoPostScriptAction 0x000a
	CallWithArg sub_0806BC94, 0x00000000
	EndBlock 
script_0800B0E8:
	Call sub_0807F434
	JumpTable script_0800B0E8, script_0800B0F6, script_0800B134
script_0800B0F6:
	_0807E864 
	Call sub_0807DF28
	Call sub_0807F2D4
	_0807EB74 
	CallWithArg sub_0806BC94, 0x00000004
	Call sub_0806BCE8
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Call sub_0806BCB8
	CallWithArg sub_0806BC94, 0x00000000
	Jump script_0800B0E8
script_0800B134:
	_0807E864 
	Call sub_0807DF28
	Call sub_0807F2D4
	_0807EB74 
	CallWithArg sub_0806BC94, 0x00000004
	Call sub_0807F650
	_0807E9F0 
	JumpIfNot script_0800B160
	Call sub_0806BCC0
script_0800B160:
	Call sub_0807DF50
	_0807E878 
	Call sub_0806BCB8
	CallWithArg sub_0806BC94, 0x00000000
	Jump script_0800B0E8
SCRIPT_START script_0800B17C
	BeginBlock 
	Call sub_0807DF28
	SetLocalFlag 0x0039
	_0807E864 
	EndBlock 
	WaitForPlayerAction0x17 
	StartPlayerScript script_0800B1C0
	Wait 0x0018
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetRoomFlag 0x0000
	Wait 0x0010
	PlayBgm BGM_FIGHT_THEME
	_0807EB28 0x2701
	_0807E878 
	Call sub_0807DF50
SCRIPT_END
	.2byte 0x0000
