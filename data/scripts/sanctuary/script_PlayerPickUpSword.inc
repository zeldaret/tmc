@ Player at Sanctuary pick up sword
SCRIPT_START script_PlayerPickUpSword
	PlaySound SFX_1D3
	CallWithArg SetPlayerAnimation2, ANIM_GET_NEW_SWORD
	Call sub_08096028
	Wait 0x003c
	SetSyncFlag 0x00020000
	Call WaitForPlayerAnim
	Wait 0x0078
	WaitForSyncFlagAndClear 0x00040000
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
