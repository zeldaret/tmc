@ Mazaal MAZAAL_BOSS_OBJECT
script_MazaalBossObjectMazaal::
	BeginBlock
	EndBlock
	DisablePlayerControl
	Wait 0x0018
	SetPlayerIdle
	StartPlayerScript script_PlayerAtMazaal
	WaitForSyncFlagAndClear 0x00000001
	SetAction 0x0002
	EndScript
	.2byte 0x0000
