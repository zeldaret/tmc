SCRIPT_START script_080100C8
	BeginBlock 
	Call sub_08061FE4
	Call sub_08061E70
	DoPostScriptAction 0x000a
	EndBlock 
script_080100DC:
	CheckEntityInteractType 
	JumpIfNot script_080100DC
	_0807E864 
	_0807EB74 
	Call sub_08061FE4
	Call sub_08062048
	_0807EA94 
	_0807E878 
	Jump script_080100DC
	.2byte 0x0000
SCRIPT_START script_080100FC
	BeginBlock 
	Call sub_08061FE4
	Call sub_08061E70
	DoPostScriptAction 0x000a
	EndBlock 
script_08010110:
	Wait 0x003c
	Call sub_08061E90
	Jump script_08010110
	.2byte 0x0000
SCRIPT_START script_08010120
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock 
script_08010132:
	CheckEntityInteractType 
	JumpIfNot script_08010132
	_0807E864 
	_0807EB74 
	TextboxNoOverlapFollow 0x4f22
	_0807EA94 
	_0807E878 
	Jump script_08010132
SCRIPT_START script_08010148
	BeginBlock 
	DoPostScriptAction 0x0001
	Call sub_0806C354
	DoPostScriptAction 0x000a
	EndBlock 
script_0801015A:
	CheckEntityInteractType 
	JumpIfNot script_0801015A
	_0807E864 
	_0807EB74 
	CheckRoomFlag 0x0001
	JumpIf script_0801019E
	TextboxNoOverlapFollowPos 0x3001, 0x0000
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_080101A6
	Call sub_080A1608
	_0807EA94 
	_0807E878 
	CallWithArg sub_080A1550, script_080101AC
	JumpIfNot script_0801015A
	PlayBgm BGM_CUCCO_MINIGAME
	SetRoomFlag 0x0001
	Jump script_0801015A
script_0801019E:
	Call sub_080A1608
	_0807EA94 
script_080101A6:
	_0807E878 
	Jump script_0801015A
script_080101AC:
	BeginBlock 
	DoPostScriptAction 0x0008
	Call sub_080A1648
	EndBlock 
	Call sub_080A1270
	_0807E864 
	Call sub_0807DF28
	TextboxNoOverlapFollowPos 0x3004, 0x0007
	_0807EA94 
	StopBgm
	_0807E778 0x0004
	DoFade5 
	WaitFor_2 
	CallWithArg sub_0807F75C, 0x03400378
	Call sub_080791BC
	Call sub_0807FB74
	_0807E8E4_1 
	Call sub_0807F168
	Call sub_080A1388
	Call sub_0806EC38
	BeginBlock 
	MoveEntityToPlayer 
	Call sub_0807F844
	CameraTargetPlayer 
	EndBlock 
	_0807E778 0x0004
	DoFade4 
	WaitFor_2 
	PlayBGM
	Call sub_080A13B4
	_0807EA94 
	JumpIfNot script_08010240
	Call sub_080A13E8
	WaitPlayerAction8 
	Call sub_080A1460
	_0807EA94 
	Call sub_080A14A8
script_08010240:
	Call sub_0807DF50
	_0807E878 
	CallWithArg sub_0807F5B0, 0x00000000
	ClearRoomFlag 0x0001
	Call sub_080A169C
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
