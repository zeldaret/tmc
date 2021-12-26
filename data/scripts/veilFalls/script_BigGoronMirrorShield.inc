@ Veil Falls BigGoron spit out Shield
SCRIPT_START script_BigGoronMirrorShield
	Wait 0x003c
	_0807F0C8 0x0000, 0x0000
	LoadRoomEntityList gUnk_080F9C58
	Wait 0x003c
	Call sub_0806D70C
	Wait 0x003c
.ifdef JP
	ClearLocalFlag 0x00ac
.else
.ifdef EU
	ClearLocalFlag 0x00ac
.else
.ifdef DEMO_JP
	ClearLocalFlag 0x00ac @ TODO deduplicate
.else
	ClearLocalFlag 0x00ae
.endif
.endif
.endif
	Call sub_0806D620
	Wait 0x003c
	WaitPlayerGetItem 
	_0807EB8C 
	MessageNoOverlap 0x1d0c
	WaitUntilTextboxCloses
	Wait 0x000a
	Jump script_08009376
	.2byte 0x0000
