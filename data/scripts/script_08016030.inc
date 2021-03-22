SCRIPT_START script_08016030
	BeginBlock 
	CheckKinstoneFused 0x0009
	JumpIf script_08016062
	EndBlock 
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x0010
	Wait 0x003c
	SetEntitySpeed 0x0020
	_0807ECF4 0x0080
	Wait 0x001e
	DoPostScriptAction 0x0010
	_0807E5F8 0x00000008
SCRIPT_END
