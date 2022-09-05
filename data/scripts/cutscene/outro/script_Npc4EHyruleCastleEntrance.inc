@ Outro NPC4E Fix Hyrule Castle Entrance
SCRIPT_START script_Npc4EHyruleCastleEntrance
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetEntityPositionRelative 0x00d8, 0x01c8
	Call sub_0807F844
	PlaySound SFX_APPARATE
	EndBlock
	Wait 0x003c
	CallWithArg NPC4E_DoScreenTransition, 11
	DoPostScriptAction 0x0006
SCRIPT_END
