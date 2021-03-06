SCRIPT_START script_0800B200
	StartScript 
	_0807E5F8 0x00000000
	CheckLocalFlag 0x001d
	JumpIf script_0800B252
	SetEntityNonPlanarMovement 0x00c0
	StopScript 
script_0800B216:
	WaitForSomething2 0x00000001
	Call sub_0807DF28
	MoveEntityToPlayer 
	CameraTargetEntity 
	_0807EDD4 0x0068, 0x0380
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	Call sub_0807DF50
	Wait 0x000c
	CameraTargetPlayer 
	Wait 0x0008
	_0807E878 
	CheckLocalFlag 0x001d
	JumpIfNot script_0800B216
script_0800B252:
SCRIPT_END
