@ Castor Wilds Statue right
SCRIPT_START script_CastorWildsStatueRight
	BeginBlock
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_RIGHT
	JumpIf script_0800B302
	_0807EA88 KINSTONE_CASTOR_WILDS_STATUE_RIGHT
	SetAnimationState 0x0002
	EndBlock
script_0800B2C8:
	_0807EA4C
	UpdateFusion
	SetPlayerIdle
	CheckKinstoneFused KINSTONE_CASTOR_WILDS_STATUE_RIGHT
	JumpIf script_0800B2E2
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B2C8
script_0800B2E2:
	DoPostScriptAction 0x0013
	SetAnimationState 0x0004
	_0807E9DC
	Call sub_080676E0
	Call sub_08067534
	DoPostScriptAction 0x0012
	SetSyncFlag 0x00000001
script_0800B302:
	EndBlock
SCRIPT_END
	.2byte 0x0000
