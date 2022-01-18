@ Outro Guard stone
SCRIPT_START script_GuardStoneOutro1
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x0010
	EndBlock
	WaitForSyncFlag 0x00000001
	SetAnimation 0x0002
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A80C:
	SetAnimation 0x0001
	Wait 0x001e
	SetAnimation 0x0003
	Wait 0x001e
	Jump script_0800A80C
