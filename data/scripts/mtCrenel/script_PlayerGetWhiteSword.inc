@ Mines Player get white sword
SCRIPT_START script_PlayerGetWhiteSword
	_0807F078 0x0002, 0x0001
	CallWithArg PutItemAnySlot, 0x00000002
	PlaySound SFX_109
	CallWithArg SetPlayerAnimation2, 0x000001e2
	Call WaitForPlayerFrameHiBit
	MessageNoOverlap 0x0502
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000008
	Call SetPlayerActionNormal
SCRIPT_END
