@ Intro Hyrule Town NPC4E
SCRIPT_START script_Npc4EIntroTown
	CheckLocalFlag MACHI_01_DEMO
	JumpIf script_0800FA4C
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetEntityPositionRelative 0x00c8, 0x0148
	Call sub_0807F844
	SetFadeTime 0x0002
	SetFade6
	WaitForFadeFinish
	StartPlayerScript script_PlayerIntro1
	SetSyncFlag 0x00000002
	SetScrollSpeed 1
	SetEntityPositionRelative 0x00c8, 0x0218
	Call WaitForCameraTouchRoomBorder
	Wait 0x0064
	@ Camera reaches center of town square
	SetScrollSpeed 2
	SetEntityPositionRelative 0x00c8, 0x0368
	Call WaitForCameraTouchRoomBorder
	WaitForSyncFlagAndClear 0x00000001
	WaitForSyncFlagAndClear 0x00000004
	@ First message from Zelda
	MessageFromTargetPos TEXT_FESTIVAL, 0x01, 0x0000
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	@ Zelda ran off. Give control to the player
	SetScrollSpeed 4
	CameraTargetPlayer
	Call EnablePauseMenu
	EnablePlayerControl
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000004
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerIntro2
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos TEXT_FESTIVAL, 0x03, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Call EnablePauseMenu
	EnablePlayerControl
	WaitForSyncFlagAndClear 0x00000004
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerIntro3
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos TEXT_FESTIVAL, 0x04, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Call EnablePauseMenu
	EnablePlayerControl
	WaitForSyncFlagAndClear 0x00000004
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerIntro4
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MessageFromTargetPos TEXT_FESTIVAL, 0x05, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Call EnablePauseMenu
	EnablePlayerControl
	@ Wait for Link at Pina
	WaitForSyncFlagAndClear 0x00000004
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Call sub_08063C5C
	PlaySound SFX_CUCCO_MINIGAME_BELL
	Wait 0x001e
	_0807E8E4_0
	Call CreatePlayerExclamationMark
	Wait 0x003c
	MessageFromTargetPos TEXT_PROLOGUE, 0x21, 0x000e
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerIntro5
	SetEntityPositionRelative 0x00f0, 0x0258
	SetScrollSpeed 1
	CameraTargetEntity
	Wait 0x001e
	Call sub_08063C2C
	WaitForSyncFlagAndClear 0x00000001
	MessageFromTargetPos TEXT_PROLOGUE, 0x22, 0x000e
	WaitUntilTextboxCloses
	_0807E8E4_0
	Call sub_08063C14
	Call sub_08094CDC
	Wait 0x001e
	MessageFromTargetPos TEXT_PROLOGUE, 0x23, 0x000e
	WaitUntilTextboxCloses
	Call sub_08063C14
	Call sub_08094DD8
	Wait 0x001e
	MessageFromTargetPos TEXT_PROLOGUE, 0x24, 0x000e
	WaitUntilTextboxCloses
	Call sub_08063C14
	Call sub_08094D34
	Wait 0x001e
	MessageFromTargetPos TEXT_PROLOGUE, 0x25, 0x000e
	WaitUntilTextboxCloses
	Call sub_08063C5C
	MessageFromTargetPos TEXT_PROLOGUE, 0x26, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	_0807E8E4_1
	Call sub_08063C2C
	MessageFromTargetPos TEXT_PROLOGUE, 0x27, 0x0000
	WaitUntilTextboxCloses
	Call sub_08063C74
	Wait 0x003c
	Call sub_08063C14
	_0807E8E4_0
	MessageFromTargetPos TEXT_PROLOGUE, 0x28, 0x000e
	WaitUntilTextboxCloses
	_0807E8E4_1
	MessageFromTargetPos TEXT_PROLOGUE, 0x29, 0x0000
	WaitUntilTextboxCloses
	_0807E8E4_0
	MessageFromTargetPos TEXT_PROLOGUE, 0x2a, 0x000e
	WaitUntilTextboxCloses
	Call sub_08063C14
	Call sub_08094D70
	PlaySound SFX_103
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	Call sub_08063C14
	Call sub_08094D10
	Wait 0x001e
	Call sub_08094E0C
	Wait 0x001e
	_0807E8E4_1
	Call CreatePlayerExclamationMark
	Wait 0x003c
	MessageFromTargetPos TEXT_PROLOGUE, 0x2b, 0x0000
	WaitUntilTextboxCloses
	@ Give the shield to the player
	GivePlayerItem ITEM_SHIELD
	WaitPlayerGetItem
	Call NPC4E_SaveEquippedItems
	Call SetPlayerActionNormal
	CallWithArg EquipItem, ITEM_SHIELD
	SetIntVariable 0x000000ff
	Call sub_0807F5B0
	CallWithArg SetPlayerMacro, gPlayerMacroTryOutShield
	Wait 0x00b7
	SetIntVariable 0x00000000
	Call sub_0807F5B0
	MessageFromTargetPos TEXT_PROLOGUE, 0x2c, 0x0000
	WaitUntilTextboxCloses
	@ Give control back to the player
	CallWithArg SetPlayerMacro, 0
	Call NPC4E_RestoreEquippedItems
	SetScrollSpeed 4
	CameraTargetPlayer
	Wait 0x000a
	SetSyncFlag 0x00000002
	Call sub_08063C44
	SetLocalFlag MACHI_01_DEMO
	Call EnablePauseMenu
	EnablePlayerControl
script_0800FA4C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
