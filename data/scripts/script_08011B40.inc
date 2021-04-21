SCRIPT_START script_08011B40
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
	CheckGlobalFlag 0x0050
	JumpIfNot script_08011B84
	WaitForSomething2 0x00000004
	_0807EB44 0x0006
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB8C 
	TextboxNoOverlap 0x3d07
	_0807EA94 
	_0807EB44 0x0004
	ClearGlobalFlag 0x0050
	Call sub_0807DF50
	_0807E878 
script_08011B84:
	CheckEntityInteractType 
	JumpIfNot script_08011B84
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x3d01
	_0807EA94 
	_0807E3E8 
	JumpIf script_08011BA4
script_08011B9A:
	_0807E878 
	_0807EB44 0x0004
	Jump script_08011B84
script_08011BA4:
	HasRupees 0x000a
	JumpIf script_08011BBC
	DoPostScriptAction 0x0004
	Wait 0x003c
	TextboxNoOverlap 0x3d05
	Jump script_08011B9A
script_08011BBC:
	ModRupees 0xfff6
	Wait 0x001e
	TextboxNoOverlap 0x3d06
	_0807EA94 
	CallWithArg sub_0806C2A0, 0x00000000
	WaitFor_2 
	Wait 0x003c
	Call sub_0806C224
	Jump script_08011B9A
SCRIPT_START script_08011BE4
	BeginBlock 
	_0807E888 
	EndBlock 
	CallWithArg sub_0806C2A0, 0x00000001
	WaitFor_2 
	Wait 0x003c
	_0807E878 
	SetRoomFlag 0x0000
	PlayBgm BGM_FIGHT_THEME2
script_08011C04:
	CheckRoomFlag 0x0064
	JumpIfNot script_08011C04
	StopBgm
	_0807E864 
	Wait 0x003c
	CameraTargetEntity 
	Wait 0x003c
	Call Simon_CreateChest
	Wait 0x003c
	CameraTargetPlayer 
	_0807E878 
script_08011C28:
	CheckLocalFlag 0x0001
	JumpIfNot script_08011C28
	_0807E888 
	WaitPlayerAction8 
	Wait 0x001e
	CallWithArg sub_0806C2A0, 0x00000000
	WaitFor_2 
	Wait 0x003c
	Call sub_0806C280
SCRIPT_END
