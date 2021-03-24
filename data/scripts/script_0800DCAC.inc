SCRIPT_START script_0800DCAC
	BeginBlock 
	DoPostScriptAction 0x000a
	Call sub_08066E38
	EndBlock 
	WaitForSomething2 0x00000001
	CallWithArg sub_0807F8E8, 0x00000000
	_0807E5F8 0x00000002
script_0800DCD0:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800DCD0
	DoPostScriptAction 0x0010
	Wait 0x003c
	DoPostScriptAction 0x0010
	SetEntityPositionRelative 0x0078, 0x0068
	WaitForSomething2 0x00000001
	StopBgm
	Call sub_08066E50
	PlaySound SFX_1C9
	Call sub_0807F2D4
	PlaySound SFX_1CA
	Wait 0x003c
	DoPostScriptAction 0x0004
	PlayBgm BGM_SAVING_ZELDA
	Wait 0x0078
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x000a
	_0807EB44 0x0006
	Wait 0x000a
	_0807EB44 0x0002
	Wait 0x000a
	_0807EB44 0x0006
	Wait 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Wait 0x003c
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetEntitySpeed 0x0100
	_0807EEF4 0x0000, 0x0008
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Wait 0x001e
	Call sub_08066E80
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x000a
	_0807EB44 0x0006
	Wait 0x000a
	_0807EB44 0x0002
	Wait 0x000a
	_0807EB44 0x0006
	Wait 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetEntitySpeed 0x0100
	_0807EEF4 0x0000, 0x0080
SCRIPT_END
	.2byte 0x0000
