@ Stockwell pick up dog food
SCRIPT_START script_StockwellDogFood
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Call sub_080654FC
	SetAnimation 0x0001
	Call sub_080654EC
	Wait 0x003c
	MessageNoOverlap TEXT_STOCKWELL, 0x16
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_080143FA
	SetIntVariable 0x00000002
	Call sub_08065528
	Jump script_0801443E
script_080143FA:
	Call sub_080654EC
	Wait 0x001e
	MessageNoOverlap TEXT_STOCKWELL, 0x18
	WaitUntilTextboxCloses
	Wait 0x000a
	SetIntVariable 0x00000000
	Call sub_08065528
	GivePlayerItem ITEM_QST_DOGFOOD
	WaitPlayerGetItem 
	MessageNoOverlap TEXT_STOCKWELL, 0x19
	WaitUntilTextboxCloses
	SetIntVariable 0x00000303
	Call LoadMenu
.ifndef EU
	Wait 0x001e
	FaceAwayFromPlayer
	MessageNoOverlap TEXT_STOCKWELL, 0x22
	WaitUntilTextboxCloses
.endif
script_0801443E:
	SetAnimation 0x0004
	SetAction 0x0001
	Call EnablePauseMenu
	EnablePlayerControl
SCRIPT_END
