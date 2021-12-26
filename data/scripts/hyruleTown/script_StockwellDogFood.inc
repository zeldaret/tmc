@ Stockwell pick up dog food
SCRIPT_START script_StockwellDogFood
	EndBlock
	_0807E864
	Call sub_0807DF28
	Call sub_080654FC
	_0807E930 0x0001
	Call sub_080654EC
	Wait 0x003c
	MessageNoOverlap 0x2c16
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_080143FA
	SetIntVariable 0x00000002
	Call sub_08065528
	Jump script_0801443E
script_080143FA:
	Call sub_080654EC
	Wait 0x001e
	MessageNoOverlap 0x2c18
	WaitUntilTextboxCloses
	Wait 0x000a
	SetIntVariable 0x00000000
	Call sub_08065528
	_0807F034 0x0036
	WaitPlayerGetItem 
	MessageNoOverlap 0x2c19
	WaitUntilTextboxCloses
	SetIntVariable 0x00000303
	Call sub_0807F420
.ifndef EU
	Wait 0x001e
	_0807EB8C 
	MessageNoOverlap 0x2c22
	WaitUntilTextboxCloses
.endif
script_0801443E:
	_0807E930 0x0004
	_0807E908 0x0001
	Call sub_0807DF50
	_0807E878
SCRIPT_END
