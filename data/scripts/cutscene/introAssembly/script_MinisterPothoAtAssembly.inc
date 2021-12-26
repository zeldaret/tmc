@ Intro Assembly Minister Potho
SCRIPT_START script_MinisterPothoAtAssembly
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSomething2 0x00000004
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	_0807EB44 0x0002
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EB44 0x0004
	_0807E5F8 0x00000008
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	Jump script_0800927E
	.2byte 0x0000
