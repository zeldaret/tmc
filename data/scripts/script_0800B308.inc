SCRIPT_START script_0800B308
	BeginBlock 
	CheckLocalFlag 0x001d
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
	SetLocalFlag 0x001d
	PlaySound SFX_SECRET
script_0800B39C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
