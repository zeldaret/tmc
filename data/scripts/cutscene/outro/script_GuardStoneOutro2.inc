@ Outro Guard stone 2
SCRIPT_START script_GuardStoneOutro2
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
