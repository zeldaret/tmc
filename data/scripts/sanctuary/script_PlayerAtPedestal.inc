@ Player at Sanctuary pedestal
SCRIPT_START script_PlayerAtPedestal
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	Call ReadPlayerAnimationState
	JumpTable script_080136F0, script_080136FA, script_08013704, script_080136FA
script_080136F0:
	CallWithArg sub_0807F464, 0x000000d0
script_080136FA:
	CallWithArg sub_0807F4F8, 0x00000124
script_08013704:
	_0807EDD4 0x00e8, 0x0124
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call sub_080791BC
SCRIPT_END
