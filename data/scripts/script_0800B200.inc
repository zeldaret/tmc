SCRIPT_START script_0800B200
	BeginBlock
	_0807E5F8 0x00000000
.ifdef JP
	CheckLocalFlag 0x001e
.else
.ifdef EU
	CheckLocalFlag 0x001e
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x001e @ TODO deduplicate
.else
	CheckLocalFlag 0x001d
.endif
.endif
.endif
	JumpIf script_0800B252
	SetEntitySpeed 0x00c0
	EndBlock
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
.ifdef JP
	CheckLocalFlag 0x001e
.else
.ifdef EU
	CheckLocalFlag 0x001e
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x001e @ TODO deduplicate
.else
	CheckLocalFlag 0x001d
.endif
.endif
.endif
	JumpIfNot script_0800B216
script_0800B252:
SCRIPT_END
