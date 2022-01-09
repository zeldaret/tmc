@ Minish Woods OBJECT_69 2?
SCRIPT_START script_08012D18
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x0014
	JumpIfNot script_08012D18
	CheckLocalFlagByBank 0x0200, 0x008d
	JumpIf script_08012D68
	CheckPlayerInRegion 0x0000, 0x01a8, 0x2010
	JumpIfNot script_08012D18
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	EzloMessage 0x111a
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerCannotEnter
	WaitForSyncFlagAndClear 0x00000001
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_08012D18
script_08012D68:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
