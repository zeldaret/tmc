@ Simons Simulation OBJECT_69
SCRIPT_START script_Object69SimonsSimulation
	BeginBlock
	_0807E888
	EndBlock
	CallWithArg sub_0806C2A0, 0x00000001
	WaitFor_2
	Wait 0x003c
	_0807E878
	SetRoomFlag 0x0000
	PlayBgm BGM_FIGHT_THEME2
script_08011C04:
	CheckRoomFlag 0x0064
	JumpIfNot script_08011C04
	StopBgm
	_0807E864
	Wait 0x003c
	CameraTargetEntity
	Wait 0x003c
	Call Simon_CreateChest
	Wait 0x003c
	CameraTargetPlayer
	_0807E878
script_08011C28:
	CheckLocalFlag 0x0001
	JumpIfNot script_08011C28
	_0807E888
	WaitPlayerGetItem
	Wait 0x001e
	CallWithArg sub_0806C2A0, 0x00000000
	WaitFor_2
	Wait 0x003c
	Call sub_0806C280
SCRIPT_END
