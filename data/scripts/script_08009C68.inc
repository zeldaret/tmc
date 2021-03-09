SCRIPT_START script_08009C68
	BeginBlock 
	_0807EB44 0x0002
	SetEntityNonPlanarMovement 0x0100
	Call sub_0807F348
	EndBlock 
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0004
	_0807EB74 
	WaitForSomething2 0x00000004
	_0807EB74 
	WaitForSomething2 0x00000004
	_0807EB74 
	_0807EB8C 
	DoPostScriptAction 0x0001
	TextboxNoOverlapFollowPos 0x100a, 0x0000
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EB8C 
	DoPostScriptAction 0x0001
	_0807EB8C 
	_0807EB44 0x0002
	TextboxNoOverlapFollowPos 0x100d, 0x0000
	_0807EA94 
	DoPostScriptAction 0x0000
	_0807EDD4 0x0028, 0x0060
	_0807EDD4 0x0000, 0x0060
	Call sub_080536A8
	Wait 0x001e
	BeginBlock 
	SetGlobalFlag 0x0013
	Call sub_0807DF50
	Call sub_080791D0
	_0807E878 
	EndBlock 
SCRIPT_END
	.short 0x0000
