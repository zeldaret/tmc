@ Intro Assembly Player gets Sword
SCRIPT_START script_PlayerGetSword
	SetInventoryValue ITEM_SMITH_SWORD, 0x0001
	CallWithArg PutItemAnySlot, ITEM_SMITH_SWORD
	PlaySound SFX_ITEM_GET
	CallWithArg SetPlayerAnimation2, ANIM_GET_ITEM_SWORD
	Call WaitForPlayerAnim
	MessageFromTargetPos TEXT_ITEM_GET, 0x01, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000020
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
