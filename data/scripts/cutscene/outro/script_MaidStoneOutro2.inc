@ Outro Maid stone 2
SCRIPT_START script_MaidStoneOutro2
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x0008
	EndBlock
	WaitForSyncFlag 0x00000001
	DoPostScriptAction 0x0000
	WaitForSyncFlagAndClear 0x00000020
	DoPostScriptAction 0x0004
	Wait 0x003c
script_0800A8FC:
	SetAnimationState 0x0002
	Wait 0x000f
	SetAnimationState 0x0006
	Wait 0x000f
	Jump script_0800A8FC
