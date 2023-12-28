@ Player at Sanctuary draw final sword
SCRIPT_START script_PlayerPickUpFinalSword
	CallWithArg sub_08095E7C, script_CutsceneMiscObjectSwordCharge11
	PlaySound SFX_1D3
	CallWithArg SetPlayerAnimation2, ANIM_GET_LAST_SWORD
	Call sub_08096028
	Wait 0x0078
	SetSyncFlag 0x00020000
	Call WaitForPlayerAnim
	Wait 0x0078
	WaitForSyncFlagAndClear 0x00040000
	Call SetPlayerActionNormal
SCRIPT_END
