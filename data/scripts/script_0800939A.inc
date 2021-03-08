SCRIPT_START script_0800939A
	CheckLocalFlag 0x00ae
	JumpIf script_0800943E
	CheckInventory1 0x000d
	JumpIf script_080093BC
	CheckInventory1 0x000e
	JumpIf script_080093BC
	TextboxNoOverlap 0x1d02
	_0807EA94 
	Jump script_08009376
script_080093BC:
	CheckInventory1 0x000e
	JumpIfNot script_080093DA
	Call sub_0806D788
	TextboxNoOverlap 0x1d03
	_0807EA94 
	Call sub_0806D70C
	Jump script_08009376
script_080093DA:
	SetIntVariable 0x00001d05
	CheckLocalFlag 0x00ad
	JumpIf script_080093EE
	SetIntVariable 0x00001d04
script_080093EE:
	TextboxNoOverlapVar 
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08009376
	Wait 0x001e
	TextboxNoOverlap 0x1d08
	_0807EA94 
	LoadRoomEntityList gUnk_080F9C38
	Wait 0x0078
	Call sub_0806D6D0
	Wait 0x00b4
	Call sub_0806D70C
	Wait 0x0078
	SetLocalFlag 0x00ae
	SetLocalFlag 0x00ad
	Call sub_0806D5D4
	_0807EB8C 
	TextboxNoOverlap 0x1d09
	_0807EA94 
	Wait 0x000a
	Jump script_08009376
script_0800943E:
	Call sub_0806D600
	JumpIf script_08009452
	TextboxNoOverlap 0x1d0a
	_0807EA94 
	JumpIfNot script_08009376
script_08009452:
	TextboxNoOverlap 0x1d0b
	_0807EA94 
	Call sub_0806D74C
	_0807F0C8 0xffff, 0x0000
