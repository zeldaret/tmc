@ Castor Wilds Statue rock
SCRIPT_START script_CastorWildsStatueRock
	BeginBlock
	CheckLocalFlag HIKYOU_00_SEKIZOU
	JumpIf script_0800B39C
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x0040
	SetEntityDirection 0x0010
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_LEFT
	JumpIfNot script_0800B32C
	Call sub_080676D8
script_0800B32C:
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_MIDDLE
	JumpIfNot script_0800B33A
	Call sub_080676D8
script_0800B33A:
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_RIGHT
	JumpIfNot script_0800B348
	Call sub_080676D8
script_0800B348:
	EndBlock
	Call sub_0806757C
script_0800B350:
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	PlaySound SFX_ITEM_BOMB_EXPLODE
	Call sub_080676D8
	Call sub_0806757C
	Call sub_080675D4
	Wait 0x0014
	BeginBlock
	SetSyncFlag 0x00000001
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_LEFT
	JumpIfNot script_0800B350
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_MIDDLE
	JumpIfNot script_0800B350
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_RIGHT
	JumpIfNot script_0800B350
	EndBlock
	SetLocalFlag HIKYOU_00_SEKIZOU
	PlaySound SFX_SECRET
script_0800B39C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
