@ Outro NPC4E Fixed everything
SCRIPT_START script_Npc4EFixedEverything
	BeginBlock
	SetPlayerIdle
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0148
	Call sub_0807F844
	_0807E8E4_3
	CallWithArg SetPlayerFlag, 0x00000008
	CallWithArg SetPlayerPos, 0x00a80088
	PlaySound SFX_APPARATE
	EndBlock
	Wait 0x0078
	_0807F0B4 0x0001
	SetEntityPositionRelative 0x0088, 0x0078
	Call WaitForCameraTouchRoomBorder
	MessageFromTargetPos 0x1664, 0x0000
	WaitUntilTextboxCloses
	MessageFromTargetPos 0x165e, 0x000e
	WaitUntilTextboxCloses
	CallWithArg CreateManager36, 0x00000001
	_0807F0C8 0xffff, 0x0000
