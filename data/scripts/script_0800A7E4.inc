SCRIPT_START script_0800A7E4
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x0010
	EndBlock 
	WaitForSomething 0x00000001
	_0807E930 0x0002
	WaitForSomething2 0x00000002
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A80C:
	_0807E930 0x0001
	Wait 0x001e
	_0807E930 0x0003
	Wait 0x001e
	Jump script_0800A80C
SCRIPT_START script_0800A820
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x0010
	EndBlock 
	WaitForSomething 0x00000001
	_0807E930 0x0002
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A848:
	_0807E930 0x0001
	Wait 0x0014
	_0807E930 0x0003
	Wait 0x0014
	Jump script_0800A848
SCRIPT_START script_0800A85C
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x0010
	EndBlock 
	WaitForSomething 0x00000001
	_0807E930 0x0002
	WaitForSomething2 0x00000008
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A884:
	_0807E930 0x0001
	Wait 0x000a
	_0807E930 0x0003
	Wait 0x000a
	Jump script_0800A884
SCRIPT_START script_0800A898
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x0008
	EndBlock 
	WaitForSomething 0x00000001
	DoPostScriptAction 0x0000
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A8C0:
	_0807EB44 0x0002
	Wait 0x0019
	_0807EB44 0x0006
	Wait 0x0019
	Jump script_0800A8C0
SCRIPT_START script_0800A8D4
	BeginBlock 
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x0008
	EndBlock 
	WaitForSomething 0x00000001
	DoPostScriptAction 0x0000
	WaitForSomething2 0x00000020
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A8FC:
	_0807EB44 0x0002
	Wait 0x000f
	_0807EB44 0x0006
	Wait 0x000f
	Jump script_0800A8FC
SCRIPT_START script_0800A910
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x0378, 0x0178
	Call sub_0807F844
	EndBlock 
	Wait 0x003c
	_0807E5F8 0x00000001
	Wait 0x001e
	_0807E5F8 0x00000002
	Wait 0x0014
	_0807E5F8 0x00000004
	Wait 0x000a
	_0807E5F8 0x00000008
	Wait 0x003c
	CallWithArg sub_0806DA1C, 0x0000000d
	DoPostScriptAction 0x0006
SCRIPT_END
