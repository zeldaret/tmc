SCRIPT_START script_08009740
	BeginBlock 
	Call sub_08065D00
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	EndBlock 
script_0800975A:
	CheckEntityInteractType 
	JumpIfNot script_0800975A
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0000
	Call sub_08065F64
	_0807EA94 
	_0807E878 
	Jump script_0800975A
	.2byte 0x0000
SCRIPT_START script_08009778
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	PlaySound SFX_1F3
	Call sub_0807F40C
	_0807E8E4_1 
	Wait 0x000a
	_0807E8E4_3 
	Wait 0x0032
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	StartPlayerScript script_0800987C
	WaitForSomething2 0x00000040
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000010
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000040
	_0807F078 0x003c, 0x0000
	SetGlobalFlag 0x0020
	_0807E8E4_3 
	Wait 0x001e
	_0807EB28 0x2809
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
