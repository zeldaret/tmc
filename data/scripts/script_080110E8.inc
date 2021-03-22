SCRIPT_START script_080110E8
	SoundReq 0x007a
	_0807EB44 0x0004
	DoPostScriptAction 0x000d
	SoundReq 0x0086
	Call sub_0807F36C
	SetEntitySpeed 0x0400
	_0807ECF4 0x0008
	BeginBlock 
	Call sub_0807F1E8
	DoPostScriptAction 0x0011
	EndBlock 
	Call sub_0807F2D4
	WaitForSomething 0x80000000
	Call sub_080791BC
SCRIPT_END
