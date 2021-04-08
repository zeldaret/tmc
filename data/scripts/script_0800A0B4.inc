SCRIPT_START script_0800A0B4
	BeginBlock 
	SetEntitySpeed 0x0140
	_0807E864 
	Call sub_0807DF28
	EndBlock 
	Wait 0x0078
	PlayBgm BGM_ELEMENT_THEME
	Call sub_080A0464
script_0800A0D2:
	_0807EE30 
	JumpIfNot script_0800A0D2
	_0807E8E4_0 
	Wait 0x0008
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000002
	Wait 0x003c
	SetEntitySpeed 0x0080
	_0807EC64 0x0030
SCRIPT_END
