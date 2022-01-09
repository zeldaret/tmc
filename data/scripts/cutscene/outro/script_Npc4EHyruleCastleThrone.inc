@ Outro NPC4E Fix Hyrule Castle Throne
SCRIPT_START script_Npc4EHyruleCastleThrone
	BeginBlock
	SetPlayerIdle
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0070
	Call sub_0807F844
	PlaySound SFX_APPARATE
	EndBlock
	Wait 0x003c
	CallWithArg sub_0806DA1C, 0x00000009
	DoPostScriptAction 0x0006
SCRIPT_END
