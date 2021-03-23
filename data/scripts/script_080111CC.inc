SCRIPT_START script_080111CC
	BeginBlock 
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	Call sub_08066D04
	EndBlock 
	Call sub_0807F338
	WaitForSomething2 0x00000010
	Call sub_08066D14
	JumpIf script_080111F6
	MoveEntityToPlayer 
script_080111F6:
	Call sub_0807F8BC
	JumpIf script_08011206
	SetEntityPositionRelative 0x01f8, 0x00b8
script_08011206:
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x0050
	_0807EB74 
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x0020
	DoPostScriptAction 0x0008
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x0040
	_0807EDD4 0x01e8, 0x0040
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000010
	Call sub_08095810
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0001
	_0807EDD4 0x01d8, 0x0058
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000010
	PlaySound SFX_1C9
	DoPostScriptAction 0x0010
	Wait 0x0014
	Call sub_08066E20
	Wait 0x0014
	DoPostScriptAction 0x0010
	Call sub_0807F2D4
	PlaySound SFX_1CA
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
