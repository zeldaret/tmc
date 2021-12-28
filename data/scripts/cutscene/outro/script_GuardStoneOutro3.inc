@ Outro Guard stone 3
SCRIPT_START script_GuardStoneOutro3
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x0010
	EndBlock
	WaitForSyncFlag 0x00000001
	SetAnimation 0x0002
	WaitForSyncFlagAndClear 0x00000008
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A884:
	SetAnimation 0x0001
	Wait 0x000a
	SetAnimation 0x0003
	Wait 0x000a
	Jump script_0800A884
