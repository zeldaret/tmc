SCRIPT_START script_0800D710
	BeginBlock 
	Call sub_0807F360
	SetEntitySpeed 0x0700
	_0807F0B4 0x0007
	CameraTargetEntity 
	Call sub_0807FBC4
	EndBlock 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000010
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807E5F8 0x0000000a
	WaitForSomething2 0x00000004
	_0807EEB4 
	_0807F0B4 0x0004
	CameraTargetPlayer 
	Call sub_0807FBCC
	_0807E878 
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
