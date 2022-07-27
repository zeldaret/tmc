@ Simons Simulation CUTSCENE_ORCHESTRATOR
SCRIPT_START script_CutsceneOrchestratorSimonsSimulation
	BeginBlock
	DisablePlayerControl
	EndBlock
	CallWithArg sub_0806C2A0, 0x00000001
	WaitForFadeFinish
	Wait 0x003c
	EnablePlayerControl
	SetRoomFlag 0x0000
	PlayBgm BGM_FIGHT_THEME2
script_08011C04:
	CheckRoomFlag 0x0064
	JumpIfNot script_08011C04
	StopBgm
	SetPlayerIdle
	Wait 0x003c
	CameraTargetEntity
	Wait 0x003c
	Call Simon_CreateChest
	Wait 0x003c
	CameraTargetPlayer
	EnablePlayerControl
script_08011C28:
	CheckLocalFlag 0x0001
	JumpIfNot script_08011C28
	DisablePlayerControl
	WaitPlayerGetItem
	Wait 0x001e
	CallWithArg sub_0806C2A0, 0x00000000
	WaitForFadeFinish
	Wait 0x003c
	Call sub_0806C280
SCRIPT_END
