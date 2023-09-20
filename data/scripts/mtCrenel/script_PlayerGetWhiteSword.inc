@ Mines Player get white sword
SCRIPT_START script_PlayerGetWhiteSword
	SetInventoryValue ITEM_GREEN_SWORD, 0x0001
	CallWithArg PutItemAnySlot, ITEM_GREEN_SWORD
	PlaySound SFX_ITEM_GET
	CallWithArg SetPlayerAnimation2, ANIM_GET_WHITE_SWORD
	Call WaitForPlayerAnim
	MessageNoOverlap TEXT_ITEM_GET, 0x02
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	Call SetPlayerActionNormal
SCRIPT_END
