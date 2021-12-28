@ Mazaal Macro when defeated
SCRIPT_START script_MazaalMacroDefeated
	BeginBlock
	SetPlayerIdle
	EndBlock
	Wait 0x0078
	SetAction 0x0004
	StartPlayerScript script_PlayerDefeatedMazaal
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x000c
	SetAction 0x0005
SCRIPT_END
