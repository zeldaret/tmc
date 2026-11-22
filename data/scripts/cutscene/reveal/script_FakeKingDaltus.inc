@ Sanctuary King Daltus
script_FakeKingDaltus::
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	Call DeleteHitbox
	EndBlock
	WaitForSyncFlagAndClear 0x00000008
	Call sub_08061F94
	Wait 0x000a
	SetSyncFlag 0x00000010
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
