@ Castor Wilds Statue middle
SCRIPT_START script_CastorWildsStatueMiddle
	BeginBlock
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_MIDDLE
	JumpIf script_0800B302
	_0807EA88 KINSTONE_CASTOR_WILDS_STATUE_MIDDLE
	SetAnimationState 0x0002
	EndBlock
script_0800B298:
	_0807EA4C
	UpdateFusion
	SetPlayerIdle
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_MIDDLE
	JumpIf script_0800B2E2
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B298
	.2byte 0x0000
