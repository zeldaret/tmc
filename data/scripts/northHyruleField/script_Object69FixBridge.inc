@ Outside Caste OBJECT_69 Fix bridge
SCRIPT_START script_Object69FixBridge
	BeginBlock
.ifdef JP
	SetLocalFlag 0x008c
.else
.ifdef EU
	SetLocalFlag 0x008c
.else
.ifdef DEMO_JP
	SetLocalFlag 0x008c @ TODO deduplicate
.else
	SetLocalFlag 0x008e
.endif
.endif
.endif
	_0807E864
	MoveEntityToPlayer
	CameraTargetEntity
	SetEntitySpeed 0x0200
	EndBlock
	Wait 0x000f
	_0807E8E4_2
	Call sub_0807F3F8
	Wait 0x001e
	_0807EDD4 0x00b8, 0x0258
	Wait 0x001e
	SetRoomFlag 0x0065
	Wait 0x0078
	_0807EEB4
	CameraTargetPlayer
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
