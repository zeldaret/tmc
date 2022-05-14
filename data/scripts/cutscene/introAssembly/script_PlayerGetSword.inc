@ Intro Assembly Player gets Sword
SCRIPT_START script_PlayerGetSword
	SetInventoryValue 0x0001, 0x0001
	CallWithArg PutItemAnySlot, 0x00000001
	PlaySound SFX_ITEM_GET
	CallWithArg SetPlayerAnimation2, 0x0000045f
	Call WaitForPlayerAnim
	MessageFromTargetPos TEXT_ITEM_GET, 0x01, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000020
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
