@ Outro Guard stone 3
SCRIPT_START script_GuardStoneOutro3
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
