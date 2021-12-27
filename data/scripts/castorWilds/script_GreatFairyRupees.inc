@ Lake Hylia Great Fairy OBJECT_69
SCRIPT_START script_GreatFairyRupees
	BeginBlock
	EndBlock
script_0800B6CC:
	HasRupees 0x0001
	JumpIfNot script_0800B6CC
script_0800B6D4:
	CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
	JumpIfNot script_0800B6D4
	Call sub_08079184
	_0807E864
	Call sub_0807F9A4
	StartPlayerScript script_PlayerAtGreatFairy
	WaitForSyncFlagAndClear 0x00000004
	SetRoomFlag 0x0000
	WaitForSyncFlagAndClear 0x00000004
	CheckLocalFlag 0x009f
	JumpIf script_0800B7A2
	MessageNoOverlap 0x057b
	WaitUntilTextboxCloses
	CallWithArg sub_0807F970, 0x0000057d
	JumpIf script_0800B6A6
	WaitUntilTextboxCloses
	SetLocalFlag 0x009f
	GivePlayerItem 0x0064
	Jump script_0800B698
	.2byte 0x0000
