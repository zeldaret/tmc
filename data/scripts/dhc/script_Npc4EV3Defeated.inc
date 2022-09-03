@ DHC NPC4E V3 defeated
SCRIPT_START script_Npc4EV3Defeated
	EndBlock
script_0800A0FE:
	CheckGlobalFlag ENDING
	JumpIfNot script_0800A0FE
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StopBgm
.ifndef EU
	Call sub_0807FBFC
.endif
	SetEntityPositionRelative 0x00b0, 0x0058
	Call sub_0807F844
	_0807E8E4_3
	CallWithArg SetPlayerPos, 0x00d00060
	CallWithArg sub_08094AE8, script_CutsceneMiscObjectV3DefeatedMinishCap
	PlaySound SFX_APPARATE
	SetFadeTime 0x0002
	SetFade6
	EndBlock
	WaitForFadeFinish
	WaitForSyncFlagAndClear 0x00000004
	CallWithArg NPC4E_DoScreenTransition, 6
	DoPostScriptAction 0x0006
SCRIPT_END
.ifndef EU
	.2byte 0x0000
.endif
