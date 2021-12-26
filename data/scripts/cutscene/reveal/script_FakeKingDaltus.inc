@ Sanctuary King Daltus
SCRIPT_START script_FakeKingDaltus
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	Call sub_0807F338
	EndBlock
	WaitForSyncFlagAndClear 0x00000008
	Call sub_08061F94
	Wait 0x000a
	SetSyncFlag 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
