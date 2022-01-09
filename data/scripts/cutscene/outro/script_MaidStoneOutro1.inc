@ Outro Maid stone
SCRIPT_START script_MaidStoneOutro1
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x0008
	EndBlock
	WaitForSyncFlag 0x00000001
	DoPostScriptAction 0x0000
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A8C0:
	SetAnimationState 0x0002
	Wait 0x0019
	SetAnimationState 0x0006
	Wait 0x0019
	Jump script_0800A8C0
