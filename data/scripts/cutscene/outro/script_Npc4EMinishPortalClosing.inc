@ Outro NPC4E Minish Portal is closing
SCRIPT_START script_Npc4EMinishPortalClosing
	Call sub_0808D2CC
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	_0807E8E4_0
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000080
	OffsetEntityPosition 0x0000, 0xffe0
	Call WaitForCameraTouchRoomBorder
	Wait 0x003c
	CallWithArg DeleteRepeatedSoundManager, 0x00000001
	_0807F0C8 0x0000, 0x0000
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos TEXT_VAATI2, 0x5f, 0x000e
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtEzlo
	WaitForSyncFlagAndClear 0x00000001
	MessageFromTargetPos TEXT_VAATI2, 0x60, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos TEXT_VAATI2, 0x61, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	OffsetEntityPosition 0x0000, 0x0020
	Call WaitForCameraTouchRoomBorder
	WaitForSyncFlagAndClear 0x00000010
	StartPlayerScript script_PlayerGetGreenCap
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	MessageFromTargetPos TEXT_VAATI2, 0x62, 0x000e
	WaitUntilTextboxCloses
	MessageFromTargetPos TEXT_VAATI2, 0x63, 0x000e
	WaitUntilTextboxCloses
	OffsetEntityPosition 0x0000, -32
	Call WaitForCameraTouchRoomBorder
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	StartPlayerScript script_PlayerSayGoodbye
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	MessageFromTargetPos TEXT_VAATI2, 0x65, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Wait 0x0078
	Call sub_0808D280
	Wait 0x0078
	SetFadeTime 0x0004
	SetFade5
	WaitForFadeFinish
	Call sub_0807FB94 @ Roll Credits
	MoveEntityToPlayer
	Call sub_0807F844
	SetScrollSpeed 4
	CameraTargetPlayer
	SetSyncFlag 0x80000000
	SetFade4
	WaitForFadeFinish
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
