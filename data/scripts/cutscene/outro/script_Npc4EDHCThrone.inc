@ Outro NPC4E Fix DHC Throne
script_Npc4EDHCThrone::
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetEntityPositionRelative 0x0088, 0x0068
	Call sub_0807F844
	EndBlock
	Wait 0x003c
	PlaySound SFX_EVAPORATE
	CallWithArg NPC4E_DoScreenTransition, 8
	DoPostScriptAction 0x0006
	EndScript
