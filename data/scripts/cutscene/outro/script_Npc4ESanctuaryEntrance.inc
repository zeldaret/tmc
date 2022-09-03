@ Outro NPC4E DHC Fix Sanctuary entrance
SCRIPT_START script_Npc4ESanctuaryEntrance
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetEntityPositionRelative 0x0088, 0x0148
	Call sub_0807F844
	EndBlock
	Wait 0x003c
	PlaySound SFX_EVAPORATE
	CallWithArg NPC4E_DoScreenTransition, 15
	DoPostScriptAction 0x0006
SCRIPT_END
