@ Graveyard Great Fairy OBJECT_69
SCRIPT_START script_GreatFairyArrows
	BeginBlock
	EndBlock
script_0800B618:
	CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
	JumpIfNot script_0800B618
	Call sub_08079184
	_0807E864
	Call sub_0807F9A4
	StartPlayerScript script_PlayerAtGreatFairy
	WaitForSyncFlagAndClear 0x00000004
	SetRoomFlag 0x0000
	WaitForSyncFlagAndClear 0x00000004
	CheckLocalFlag 0x009e
	JumpIf script_0800B7A2
	MessageNoOverlap 0x0583
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_0800B684
	Wait 0x000f
	MessageNoOverlap 0x0584
	CallWithArg sub_0807F970, 0x0000058b
	JumpIf script_0800B68E
	CallWithArg sub_08087424, 0x00000000
	Wait 0x00b4
	Jump script_0800B6A6
script_0800B684:
	MessageNoOverlap 0x057d
	WaitUntilTextboxCloses
	Jump script_0800B6A6
script_0800B68E:
	WaitUntilTextboxCloses
	SetLocalFlag 0x009e
	GivePlayerItem 0x0066
script_0800B698:
	WaitPlayerGetItem
	_0807EB8C
	Wait 0x001e
	MessageNoOverlap 0x057f
	WaitUntilTextboxCloses
script_0800B6A6:
	_0807E778 0x0004
	DoFade7
	WaitForFadeFinish
	Call sub_080873FC
	DoFade6
	WaitForFadeFinish
	CameraTargetPlayer
	Wait 0x001e
	Call sub_0807DF50
	_0807E878
SCRIPT_END
