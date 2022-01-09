@ Player Outside Castle when stones appear before Moblin Fight
SCRIPT_START script_PlayerStoneWallsAppear
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	SetAnimationState 0x0004
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
