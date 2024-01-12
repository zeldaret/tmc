@ Player when defeating Mazaal
SCRIPT_START script_PlayerDefeatedMazaal
	BeginBlock
	SetEntitySpeed 0x0140
	EndBlock
	Wait 0x003c
	SetAnimationState 0x0004
	Wait 0x000f
	SetAnimationState 0x0002
	Wait 0x0012
	SetAnimationState 0x0006
	Wait 0x000c
	SetAnimationState 0x0000
	Wait 0x0015
	SetAnimationState 0x0004
	Wait 0x0008
	SetSyncFlag 0x00000002
	MoveTo 0x0088, 0x0158
SCRIPT_END
	.2byte 0x0000
