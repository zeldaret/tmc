@ Veil Falls BigGoron spit out Shield
SCRIPT_START script_BigGoronMirrorShield
	Wait 0x003c
	_0807F0C8 0x0000, 0x0000
	LoadRoomEntityList gUnk_080F9C58
	Wait 0x003c
	Call sub_0806D70C
	Wait 0x003c
	ClearLocalFlag DAIGORON_EXCHG
	Call sub_0806D620
	Wait 0x003c
	WaitPlayerGetItem
	FaceAwayFromPlayer
	MessageNoOverlap TEXT_GORONS, 0x0c
	WaitUntilTextboxCloses
	Wait 0x000a
	Jump script_08009376
	.2byte 0x0000
