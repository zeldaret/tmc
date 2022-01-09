@ Intro Assembly Player gets Sword
SCRIPT_START script_PlayerGetSword
	_0807F078 0x0001, 0x0001
	CallWithArg PutItemAnySlot, 0x00000001
	PlaySound SFX_109
	CallWithArg SetPlayerAnimation2, 0x0000045f
	Call WaitForPlayerFrameHiBit
	MessageFromTargetPos 0x0501, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000020
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
