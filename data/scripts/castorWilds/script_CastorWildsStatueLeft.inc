@ Castor Wilds Statue left
SCRIPT_START script_CastorWildsStatueLeft
	BeginBlock
	CheckKinstoneFused 0x0006
	JumpIf script_0800B302
	_0807EA88 0x0006
	SetAnimationState 0x0002
	EndBlock
script_0800B268:
	_0807EA4C
	_0807E9F0
	SetPlayerIdle
	CheckKinstoneFused 0x0006
	JumpIf script_0800B2E2
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_0800B268
	.2byte 0x0000
