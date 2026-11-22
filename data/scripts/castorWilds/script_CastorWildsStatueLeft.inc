@ Castor Wilds Statue left
script_CastorWildsStatueLeft::
	BeginBlock
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_LEFT
	JumpIf script_0800B302
	AddInteractableFuser KINSTONE_CASTOR_WILDS_STATUE_LEFT
	SetAnimationState 0x0002
	EndBlock
script_0800B268:
	WaitForFusion
	UpdateFusion
	SetPlayerIdle
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_LEFT
	JumpIf script_0800B2E2
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B268
	.2byte 0x0000
