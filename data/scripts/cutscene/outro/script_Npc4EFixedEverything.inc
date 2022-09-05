@ Outro NPC4E Fixed everything
SCRIPT_START script_Npc4EFixedEverything
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetEntityPositionRelative 0x0088, 0x0148
	Call sub_0807F844
	_0807E8E4_3
	CallWithArg SetPlayerFlag, PL_NO_CAP
	CallWithArg SetPlayerPos, 0x00a80088
	PlaySound SFX_APPARATE
	EndBlock
	Wait 0x0078
	SetScrollSpeed 1
	SetEntityPositionRelative 0x0088, 0x0078
	Call WaitForCameraTouchRoomBorder
	MessageFromTargetPos TEXT_VAATI2, 0x64, 0x0000
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI2, 0x5e, 0x000e
	WaitUntilTextboxCloses
	CallWithArg CreateRepeatedSoundManager, 0x00000001
	_0807F0C8 0xffff, 0x0000
