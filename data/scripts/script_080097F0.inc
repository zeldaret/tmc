SCRIPT_START script_080097F0
	BeginBlock 
	_0807E930 0x0003
	DoPostScriptAction 0x0007
	SetEntitySpeed 0x0300
	Call sub_0807F348
	EndBlock 
	WaitForSomething2 0x00000002
	PlaySound SFX_123
	Call sub_0807F1A0
script_08009816:
	EndBlock 
	BeginBlock 
	_0807EE30 
	JumpIfNot script_08009816
	EndBlock 
	_0807E5F8 0x00000004
	Call sub_0807FBD4
	PlaySound SFX_1F3
	DoPostScriptAction 0x0006
SCRIPT_END
