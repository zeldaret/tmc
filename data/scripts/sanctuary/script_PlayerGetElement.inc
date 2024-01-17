@ Player get element
SCRIPT_START script_PlayerGetElement
	BeginBlock
	SetEntitySpeed 0x0140
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EndBlock
	Wait 0x0078
	PlayBgm BGM_ELEMENT_THEME
	Call sub_080A0464
script_0800A0D2:
	MoveTowardsTarget
	JumpIfNot script_0800A0D2
	_0807E8E4_0
	Wait 0x0008
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x003c
	SetEntitySpeed 0x0080
	WalkNorth 0x0030
SCRIPT_END
