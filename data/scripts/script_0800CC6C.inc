SCRIPT_START script_0800CC6C
	BeginBlock 
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call sub_0807F338
	EndBlock 
	WaitForSomething2 0x00008000
	DoPostScriptAction 0x0007
	_0807EDD4 0x01b8, 0x0320
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	_0807E5F8 0x00010000
	WaitForSomething2 0x00008000
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	_0807EDD4 0x01f8, 0x0330
	DoPostScriptAction 0x0000
	_0807E5F8 0x00010000
	WaitForSomething2 0x00008000
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	_0807E5F8 0x00010000
	WaitForSomething2 0x00008000
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	_0807EDD4 0x0188, 0x02d8
	_0807E5F8 0x00010000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
