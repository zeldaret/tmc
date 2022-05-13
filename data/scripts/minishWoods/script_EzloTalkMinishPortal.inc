@ Minish Woods Ezlo Talks after exiting portal for the first time
SCRIPT_START script_EzloTalkMinishPortal
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIfNot script_EzloTalkMinishPortal
	CheckPlayerInRegion 0x0380, 0x03b0, 0x4040
	JumpIfNot script_EzloTalkMinishPortal
	ComparePlayerAction PLAYER_USEPORTAL
	JumpIf script_EzloTalkMinishPortal
	SetPlayerIdle
	Call sub_0807DF28
	EndBlock
	EzloMessage TEXT_EZLO_PORTAL, 0x03
	WaitUntilTextboxCloses
	SetLocalFlag MORI_ENTRANCE_1ST
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
