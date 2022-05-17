@ Minish Woods OBJECT_69 ?
@ Ezlo Trigger to explain how portals work
SCRIPT_START script_08012C98
	CheckGlobalFlag EZERO_1ST
	JumpIfNot script_08012C98
script_08012CA0:
	EndBlock
	BeginBlock
	CheckPlayerInRegion 0x0398, 0x03b0, 0x2040
	JumpIfNot script_08012CA0
	CheckPlayerMinish
	JumpIf script_08012CD2
	EndBlock
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage TEXT_EZLO_PORTAL, 0x02
	WaitUntilTextboxCloses
	SetLocalFlag MORI_00_KOBITO
	Call sub_0807DF50
	EnablePlayerControl
script_08012CD2:
	DoPostScriptAction 0x0006
SCRIPT_END
