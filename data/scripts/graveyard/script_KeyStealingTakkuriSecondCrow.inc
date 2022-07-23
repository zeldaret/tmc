@ Graveyard CAMERA_TARGET7 Crow stealing the key? Second crow that picks up the key
SCRIPT_START script_CameraTarget7SecondCrow
	BeginBlock
	SetAnimation 0x0003
	DoPostScriptAction 0x0007
	SetEntitySpeed 0x0300
	Call SetPriorityMessage
	EndBlock
	WaitForSyncFlagAndClear 0x00000008
	Call sub_0809E0A0
	Call sub_0809E0D4
	PlaySound SFX_1F3
	Call sub_0807FBD4
	PlaySound SFX_1F3
	SetSyncFlag 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
