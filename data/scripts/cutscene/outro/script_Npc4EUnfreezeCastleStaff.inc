@ Outro NPC4E Unfreeze castle staff
SCRIPT_START script_Npc4EUnfreezeCastleStaff
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetEntityPositionRelative 0x00f8, 0x01b8
	Call sub_0807F844
	EndBlock
	Wait 0x003c
	PlaySound SFX_EVAPORATE
	SetFadeTime 0x0004
	SetFade7
	WaitForFadeFinish
	SetSyncFlag 0x00000001
	PlaySound SFX_APPARATE
	SetFadeTime 0x0002
	SetFade6
	WaitForFadeFinish
	Wait 0x001e
	SetSyncFlag 0x00000002
	Wait 0x0014
	SetSyncFlag 0x00000004
	Wait 0x000a
	SetSyncFlag 0x00000008
	Wait 0x0005
	SetSyncFlag 0x00000010
	Wait 0x0002
	SetSyncFlag 0x00000020
	Wait 0x0078
	CallWithArg NPC4E_DoScreenTransition, 12
	DoPostScriptAction 0x0006
SCRIPT_END
