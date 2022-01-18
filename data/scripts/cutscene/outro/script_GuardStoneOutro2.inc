@ Outro Guard stone 2
SCRIPT_START script_GuardStoneOutro2
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x0010
	EndBlock
	WaitForSyncFlag 0x00000001
	SetAnimation 0x0002
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A848:
	SetAnimation 0x0001
	Wait 0x0014
	SetAnimation 0x0003
	Wait 0x0014
	Jump script_0800A848
