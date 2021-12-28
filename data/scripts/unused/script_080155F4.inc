@ TODO UNUSED?
SCRIPT_START script_080155F4
	WaitForSyncFlagAndClear 0x00000020
	SetAnimation 0x0000
	Wait 0x0014
	SetSyncFlag 0x00000040
script_08015608:
	CheckRoomFlag 0x0001
	JumpIfNot script_08015608
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
