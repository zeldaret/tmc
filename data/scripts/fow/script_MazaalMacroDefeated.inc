@ Mazaal Macro when defeated
SCRIPT_START script_MazaalMacroDefeated
	BeginBlock
	_0807E864
	EndBlock
	Wait 0x0078
	_0807E908 0x0004
	StartPlayerScript script_PlayerDefeatedMazaal
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x000c
	_0807E908 0x0005
SCRIPT_END
