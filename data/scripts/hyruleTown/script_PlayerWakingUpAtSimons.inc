@ Player waking up after Simons Simulation
SCRIPT_START script_PlayerWakingUpAtSimons
	BeginBlock
	SetPlayerIdle
	EndBlock
	Wait 0x003c
	CallWithArg sub_0806C2A0, 0x00000001
	WaitForFadeFinish
	Wait 0x003c
	DoPostScriptAction 0x0014
	Wait 0x001e
	SetSyncFlag 0x00000004
SCRIPT_END
	.2byte 0x0000
