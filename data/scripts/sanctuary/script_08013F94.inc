@ Sanctuary NPC4E 1?
SCRIPT_START script_08013F94
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	CheckLocalFlag 0x007d
	JumpIf script_08013FE0
script_08013FA4:
	EndBlock
	BeginBlock
	CheckInventory1 0x0003
	JumpIfNot script_08013FA4
	CheckPlayerFlags 0x00400000
	JumpIfNot script_08013FA4
	EndBlock
	Call WaitForPlayerNormalOrTalkEzlo
	DisablePlayerControl
	Call sub_0807DF38
	Wait 0x0078
	EzloMessage 0x1505
	WaitUntilTextboxCloses
	SetLocalFlag 0x007d
	Call sub_0807DF50
	EnablePlayerControl
script_08013FE0:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
