@ Sanctuary NPC4E Link has to try his new ability before leaving
SCRIPT_START script_NPC4EPreventPlayerLeave
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_08013FF0:
	EndBlock
	BeginBlock
	CheckLocalFlag 0x007d
	JumpIf script_0801404C
	CheckLocalFlag 0x007a
	JumpIfNot script_08013FF0
	CheckInventory1 0x0003
	JumpIfNot script_08013FF0
	CallWithArg sub_0807F6B4, 0x000000d0
	JumpIfNot script_08013FF0
	EndBlock
	Call sub_0807F9A4
	BeginBlock
	_0807E864
	Call sub_0807DF28
	EndBlock
	_0807EB28 0x1508
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerSanctuary
	WaitForSyncFlagAndClear 0x00000001
	Call sub_0807DF50
	_0807E878
	Jump script_08013FF0
script_0801404C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
