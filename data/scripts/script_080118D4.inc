SCRIPT_START script_080118D4
	BeginBlock 
	_0807E930 0x0000
	SetEntitySpeed 0x0200
	Call nullsub_527
	Call sub_08094B80
	EndBlock 
	WaitForSomething2 0x08000000
	Call sub_08094B6C
	_0807EDD4 0x01d8, 0x0078
	StartPlayerScript script_080110E8
	_0807EDD4 0x01d8, 0x0058
	Call sub_08094B80
	PlaySound SFX_VO_ZELDA7
	PlaySound SFX_1C6
	_0807E5F8 0x10000000
	WaitForSomething2 0x08000000
	PlaySound SFX_11D
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
