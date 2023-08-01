@ Librari
SCRIPT_START script_Librari
	BeginBlock
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0000
	EndBlock
script_0800E974:
	CheckEntityInteractType
	JumpIfNot script_0800E974
	SetPlayerIdle
	SetAnimation 0x0008
	Call WaitForAnimDone
	SetAnimation 0x0009
	Call sub_0806B260
	JumpIfNot script_0800E9E4
	WaitUntilTextboxCloses
	DoPostScriptAction 0x000b
	StartPlayerScript script_PlayerStepOnTrap
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x000a
	MessageFromTarget TEXT_TOWN_MINISH1, 0x24
	WaitUntilTextboxCloses
	SetAnimation 0x000a
	Wait 0x0014
	MessageFromTarget TEXT_TOWN_MINISH1, 0x25
	WaitUntilTextboxCloses
	SetAnimation 0x0000
	StartPlayerScript script_PlayerActivatedTrapCard
	WaitForSyncFlagAndClear 0x00000001
	SetLocalFlag MIZUKAKI_STAIR
	PlaySound SFX_SECRET
	Wait 0x00f0
	MessageFromTarget TEXT_TOWN_MINISH1, 0x26
	WaitUntilTextboxCloses
	SetLocalFlag MIZUKAKI_STAIR_WARP_OK
script_0800E9E4:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	SetAnimation 0x0000
	Jump script_0800E974
