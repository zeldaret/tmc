@ TODO UNUSED?
SCRIPT_START script_08016482
	FadeInvert
	Nop2 0x0080
	SetFade4
	SetFade5
	SetFade6
	SetFade7
	_0807E800 0x00000000
	_0807E80C 0x00000000
	_0807E858_0
	SetPlayerIdle
	EnablePlayerControl
	DisablePlayerControl
	SetPlayerAction 0x00005408
	StartPlayerScript script_08016384
	SetPlayerAnimation ANIM_FALL_ON_BACK
	_0807E8E4_0
	_0807E8E4_1
	_0807E8E4_2
	_0807E8E4_3
	SetAction 0x0004
	SetIntVariable 0x00000000
	SetVariableToFrame
	SetAnimation 0x0000
	TriggerInteract
	_0807E974 0x0600
	_0807E9D4
	_0807E9DC
	_0807E9E4 0x0000
	_0807EA88 KINSTONE_MYSTERIOUS_CLOUD_TOP_RIGHT
	WaitUntilTextboxCloses
	MessageFromTarget TEXT_LOCATIONS, 0x01
	MessageNoOverlap 0x0601
	MessageFromTargetPos_1 TEXT_LOCATIONS, 0x01
	MessageFromTargetTable TEXT_LOCATIONS << 8 | 0x01, TEXT_LOCATIONS << 8 | 0x02, TEXT_LOCATIONS << 8 | 0x03
	MessageNoOverlapVar
	EzloMessage TEXT_LOCATIONS, 0x02
	_0807EB38
	SetAnimationState 0x0000
	_0807EB4C 0x0000, 0x0000
	FacePlayer
	FaceAwayFromPlayer
	SetEntityDirection 0x0000
	SetEntityDirectionWithAnimationState 0x0000
	SetEntitySpeed 0x0100
	SetEntityVelocity 0x00018000
	SetEntityPositionRelative 0x0000, 0x0000
	MoveEntityToPlayer
	Nop3
	WalkForward 0x0010
	WalkNorth 0x0020
	WalkEast 0x0030
	WalkSouth 0x0040
	WalkWest 0x0050
	_0807ED24 0x0000, 0x0000, 0x0000
	MoveTo 0x0000, 0x0000
	LookAt 0x0000, 0x0000
	MoveTowardsTarget
	MoveToPlayer
	MoveToOffset 0xfff0, 0x0014
	DoPostScriptAction 0x0000
	DoPostScriptAction2 0x0001
	PlaySound SFX_METAL_CLINK
	PlayBgm BGM_MINISH_WOODS
	SoundReq SFX_METAL_CLINK
	StopBgm
	ModRupees -200
	ModHealth 0x0010
	IncreaseMaxHealth
	GiveKinstone 0x0001
	GivePlayerItem ITEM_SMITH_SWORD
	GetInventoryValue ITEM_SMITH_SWORD
	SetInventoryValue ITEM_SMITH_SWORD, 0x0002
	InitItemGetSequence ITEM_SMITH_SWORD
	CameraTargetEntity
	CameraTargetPlayer
	SetScrollSpeed 7
	_0807F0C8 0x003c, 0x0003
SCRIPT_END
	.2byte 0x0000
