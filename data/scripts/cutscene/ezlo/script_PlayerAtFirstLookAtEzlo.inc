@ First look at Ezlo Player
SCRIPT_START script_PlayerAtFirstLookAtEzlo
	EndBlock
script_08012AB2:
	SetAnimationState 0x0002
	Wait 0x000a
	SetAnimationState 0x0006
	Wait 0x000a
	Jump script_08012AB2
	.2byte 0x0000
