@ Veil Falls Talk to BigGoron
SCRIPT_START script_BigGoronTalk
.ifdef JP
	CheckLocalFlag 0x00ac
.else
.ifdef EU
	CheckLocalFlag 0x00ac
.else
.ifdef DEMO_JP @ TODO deduplicate
	CheckLocalFlag 0x00ac
.else
	CheckLocalFlag 0x00ae
.endif
.endif
.endif
	JumpIf script_0800943E
	CheckInventory1 0x000d
	JumpIf script_080093BC
	CheckInventory1 0x000e
	JumpIf script_080093BC
	MessageNoOverlap 0x1d02
	WaitUntilTextboxCloses
	Jump script_08009376
script_080093BC:
	CheckInventory1 0x000e
	JumpIfNot script_080093DA
	Call sub_0806D788
	MessageNoOverlap 0x1d03
	WaitUntilTextboxCloses
	Call sub_0806D70C
	Jump script_08009376
script_080093DA:
	SetIntVariable 0x00001d05
.ifdef JP
	CheckLocalFlag 0x00ab
.else
.ifdef EU
	CheckLocalFlag 0x00ab
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00ab @ TODO deduplicate
.else
	CheckLocalFlag 0x00ad
.endif
.endif
.endif
	JumpIf script_080093EE
	SetIntVariable 0x00001d04
script_080093EE:
	MessageNoOverlapVar 
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIfNot script_08009376
	Wait 0x001e
	MessageNoOverlap 0x1d08
	WaitUntilTextboxCloses
	LoadRoomEntityList gUnk_080F9C38
	Wait 0x0078
	Call sub_0806D6D0
	Wait 0x00b4
	Call sub_0806D70C
	Wait 0x0078
.ifdef JP
	SetLocalFlag 0x00ac
	SetLocalFlag 0x00ab
.else
.ifdef EU
	SetLocalFlag 0x00ac
	SetLocalFlag 0x00ab
.else
.ifdef DEMO_JP
	SetLocalFlag 0x00ac @ TODO deduplicate
	SetLocalFlag 0x00ab
.else
	SetLocalFlag 0x00ae
	SetLocalFlag 0x00ad
.endif
.endif
.endif
	Call sub_0806D5D4
	_0807EB8C 
	MessageNoOverlap 0x1d09
	WaitUntilTextboxCloses
	Wait 0x000a
	Jump script_08009376
script_0800943E:
	Call sub_0806D600
	JumpIf script_08009452
	MessageNoOverlap 0x1d0a
	WaitUntilTextboxCloses
	JumpIfNot script_08009376
script_08009452:
	MessageNoOverlap 0x1d0b
	WaitUntilTextboxCloses
	Call sub_0806D74C
	_0807F0C8 0xffff, 0x0000
