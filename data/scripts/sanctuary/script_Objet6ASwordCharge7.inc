@ Sanctuary second time OBJECT_6A sword charging?
SCRIPT_START script_Objet6ASwordCharge7
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0006
	OffsetEntityPosition 0x0000, 0xfff0
	EndBlock
	WaitForSyncFlagAndClear 0x00000800
	SetAnimation 0x000a
	Call WaitForFrameHiBit
	SetAnimation 0x000e
	SetSyncFlag 0x00008000
	WaitForSyncFlag 0x00000020
	SetAnimation 0x0012
	Call WaitForFrameHiBit
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
