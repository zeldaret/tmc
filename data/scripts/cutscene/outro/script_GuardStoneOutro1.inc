@ Outro Guard stone
SCRIPT_START script_GuardStoneOutro1
	BeginBlock
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x0010
	EndBlock
	WaitForSyncFlag 0x00000001
	_0807E930 0x0002
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A80C:
	_0807E930 0x0001
	Wait 0x001e
	_0807E930 0x0003
	Wait 0x001e
	Jump script_0800A80C
