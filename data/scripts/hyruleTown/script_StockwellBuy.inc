@ Hyrule Town Stockwell do you want to buy?
SCRIPT_START script_StockwellBuy
	EndBlock
	SetPlayerIdle
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_080143AC
	Wait 0x001e
	Call sub_08065370
	JumpIfNot script_080143AC
	Wait 0x003c
	WaitUntilTextboxCloses
	FaceAwayFromPlayer
	Wait 0x001e
	MessageNoOverlapVar
script_080143AC:
	WaitUntilTextboxCloses
	Wait 0x001e
	SetAnimation 0x0004
	SetAction 0x0001
	EnablePlayerControl
SCRIPT_END
	.2byte 0x0000
