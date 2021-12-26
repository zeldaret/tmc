@ Hyrule Town Stockwell do you want to buy?
SCRIPT_START script_StockwellBuy
	EndBlock
	_0807E864
	WaitUntilTextboxCloses
	_0807E3E8
	JumpIfNot script_080143AC
	Wait 0x001e
	Call sub_08065370
	JumpIfNot script_080143AC
	Wait 0x003c
	WaitUntilTextboxCloses
	_0807EB8C
	Wait 0x001e
	MessageNoOverlapVar 
script_080143AC:
	WaitUntilTextboxCloses
	Wait 0x001e
	_0807E930 0x0004
	_0807E908 0x0001
	_0807E878
SCRIPT_END
	.2byte 0x0000
