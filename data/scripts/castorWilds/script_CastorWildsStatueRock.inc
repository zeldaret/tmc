@ Castor Wilds Statue rock
SCRIPT_START script_CastorWildsStatueRock
	BeginBlock
.ifdef JP
	CheckLocalFlag 0x001e
.else
.ifdef EU
	CheckLocalFlag 0x001e
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x001e @ TODO deduplicate
.else
	CheckLocalFlag 0x001d
.endif
.endif
.endif
	JumpIf script_0800B39C
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x0040
	SetEntityDirection 0x0010
	CheckKinstoneFused 0x0006
	JumpIfNot script_0800B32C
	Call sub_080676D8
script_0800B32C:
	CheckKinstoneFused 0x0007
	JumpIfNot script_0800B33A
	Call sub_080676D8
script_0800B33A:
	CheckKinstoneFused 0x0008
	JumpIfNot script_0800B348
	Call sub_080676D8
script_0800B348:
	EndBlock
	Call sub_0806757C
script_0800B350:
	EndBlock
	WaitForSomething2 0x00000002
	PlaySound SFX_ITEM_BOMB_EXPLODE
	Call sub_080676D8
	Call sub_0806757C
	Call sub_080675D4
	Wait 0x0014
	BeginBlock
	_0807E5F8 0x00000001
	CheckKinstoneFused 0x0006
	JumpIfNot script_0800B350
	CheckKinstoneFused 0x0007
	JumpIfNot script_0800B350
	CheckKinstoneFused 0x0008
	JumpIfNot script_0800B350
	EndBlock
.ifdef JP
	SetLocalFlag 0x001e
.else
.ifdef EU
	SetLocalFlag 0x001e
.else
.ifdef DEMO_JP
	SetLocalFlag 0x001e @ TODO deduplicate
.else
	SetLocalFlag 0x001d
.endif
.endif
.endif
	PlaySound SFX_SECRET
script_0800B39C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
