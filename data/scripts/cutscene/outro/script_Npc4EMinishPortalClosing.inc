@ Outro NPC4E Minish Portal is closing
SCRIPT_START script_Npc4EMinishPortalClosing
	Call sub_0808D2CC
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	_0807E8E4_0
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000080
	OffsetEntityPosition 0x0000, 0xffe0
	Call sub_0807F5C0
	Wait 0x003c
	CallWithArg DeleteManager36, 0x00000001
	_0807F0C8 0x0000, 0x0000
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos 0x165f, 0x000e
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtEzlo
	WaitForSyncFlagAndClear 0x00000001
	MessageFromTargetPos 0x1660, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos 0x1661, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	OffsetEntityPosition 0x0000, 0x0020
	Call sub_0807F5C0
	WaitForSyncFlagAndClear 0x00000010
	StartPlayerScript script_PlayerGetGreenCap
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	MessageFromTargetPos 0x1662, 0x000e
	WaitUntilTextboxCloses
	MessageFromTargetPos 0x1663, 0x000e
	WaitUntilTextboxCloses
	OffsetEntityPosition 0x0000, 0xffe0
	Call sub_0807F5C0
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	StartPlayerScript script_PlayerSayGoodbye
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	MessageFromTargetPos 0x1665, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Wait 0x0078
	Call sub_0808D280
	Wait 0x0078
	_0807E778 0x0004
	DoFade5
	WaitForFadeFinish
	Call sub_0807FB94 @ Roll Credits
	MoveEntityToPlayer
	Call sub_0807F844
	_0807F0B4 0x0004
	CameraTargetPlayer
	SetSyncFlag 0x80000000
	DoFade4
	WaitForFadeFinish
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
