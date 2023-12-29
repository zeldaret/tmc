@ Castor Wilds Statue left
SCRIPT_START script_CastorWildsStatueLeft
	BeginBlock
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_LEFT
	JumpIf script_0800B302
	_0807EA88 KINSTONE_CASTOR_WILDS_STATUE_LEFT
	SetAnimationState 0x0002
	EndBlock
script_0800B268:
	_0807EA4C
	UpdateFusion
	SetPlayerIdle
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_LEFT
	JumpIf script_0800B2E2
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B268
	.2byte 0x0000
