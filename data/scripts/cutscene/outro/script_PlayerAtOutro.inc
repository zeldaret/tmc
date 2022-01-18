@ Player at Outro
SCRIPT_START script_PlayerAtOutro
	EndBlock
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
	.2byte 0x0000
