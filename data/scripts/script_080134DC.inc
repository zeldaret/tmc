SCRIPT_START script_080134DC
	BeginBlock 
	DoPostScriptAction 0x0008
	EndBlock 
	BeginBlock 
	Call sub_0807F92C
	CallWithArg sub_0806DA04, 0x00000003
	EndBlock 
script_080134F8:
	CheckEntityInteractType 
	JumpIfNot script_080134F8
	_0807E864 
	Call sub_0807DF28
	StartPlayerScript script_080136D8
	WaitForSomething2 0x00000001
	CallWithArg sub_08095A1C, script_08013F04
	PlaySound SFX_ELEMENT_PLACE
	Wait 0x005a
	BeginBlock 
	PlaySound SFX_ELEMENT_FLOAT
	CallWithArg sub_08095D54, script_08013E04
	CallWithArg sub_08095D54, script_08013E28
	EndBlock 
	WaitForSomething2 0x18000000
	BeginBlock 
	PlaySound SFX_ELEMENT_CHARGE
	CallWithArg sub_08095D8C, script_08014054
	CallWithArg sub_08095D8C, script_08014074
	EndBlock 
	Wait 0x001e
	BeginBlock 
	PlaySound SFX_1D0
	CallWithArg sub_08095D8C, script_080140DC
	CallWithArg sub_08095D8C, script_08014118
	EndBlock 
	Wait 0x003c
	CallWithArg sub_0805DDEC, 0x00000000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00002000
	PlaySound SFX_1D2
	CallWithArg sub_08095D8C, script_080141DC
	CallWithArg sub_08095D8C, script_08014210
	_0807E5F8 0x00000400
	WaitForSomething2 0x00004000
	Wait 0x0078
	_0807E5F8 0x00000060
	CallWithArg sub_0805DE18, 0x00000000
	Wait 0x0078
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	Wait 0x003c
	StartPlayerScript script_08013B70
	_0807E5F8 0x00000080
	_0807F078 0x0003, 0x0001
	Call sub_0806DC3C
	Call sub_0806DC58
	Call sub_0807F304
	Wait 0x003c
	_0807E778 0x0004
	DoFade7 
	PlaySound SFX_EVAPORATE
	WaitFor_2 
	Wait 0x003c
	_0807E5F8 0x00000010
	_0807E778 0x0002
	DoFade6 
	WaitFor_2 
	PlaySound SFX_109
	TextboxNoOverlapFollowPos 0x0503, 0x000c
	_0807EA94 
	_0807E5F8 0x00040000
	CallWithArg sub_0805DDEC, 0x00000001
	_0807F0C8 0xffff, 0x0000
