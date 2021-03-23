SCRIPT_START script_0800CABC
	BeginBlock 
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call sub_0807F338
	EndBlock 
	WaitForSomething2 0x00000200
	DoPostScriptAction 0x0007
	_0807EDD4 0x0208, 0x0308
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000400
	WaitForSomething2 0x00000200
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	_0807E5F8 0x00000400
	WaitForSomething2 0x00000200
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	_0807EDD4 0x0208, 0x0328
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000400
	WaitForSomething2 0x00000200
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	_0807EDD4 0x0208, 0x02b0
	_0807E5F8 0x00000400
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
