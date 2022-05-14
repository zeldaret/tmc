@ Hyrule Town Stockwell
SCRIPT_START script_Stockwell
	BeginBlock
	CheckLocalFlag 0x0054
	JumpIf script_08014382
	CheckLocalFlag 0x0053
	JumpIf script_08014330
	EndBlock
script_080142C4:
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIfNot script_080142C4
	CheckPlayerInRegion 0x0098, 0x0058, 0x1818
	JumpIfNot script_080142C4
	EndBlock
	SetPlayerIdle
	SetLocalFlag 0x0053
	Wait 0x0014
	SetAction 0x0004
	Call sub_080654DC
	Wait 0x001e
	SetAnimation 0x0001
	Wait 0x000a
	SetAnimation 0x0003
	Wait 0x000a
	SetAnimation 0x0001
	Wait 0x000a
	SetAnimation 0x0003
	Wait 0x000a
	SetAnimation 0x0002
	Wait 0x001e
	MessageNoOverlap TEXT_STOCKWELL, 0x12
	WaitUntilTextboxCloses
	Wait 0x0014
	SetAnimation 0x0004
	EnablePlayerControl
	SetAction 0x0001
script_08014330:
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIf script_08014330
	EntityHasHeight
	JumpIf script_08014330
	CheckPlayerInRegion 0x00c0, 0x0068, 0x1010
	JumpIfNot script_08014330
	EndBlock
	SetPlayerIdle
	SetLocalFlag 0x0054
	Wait 0x005a
	SetAction 0x0004
	Call sub_080654EC
	Wait 0x001e
	SetAnimation 0x0001
	Wait 0x001e
	MessageNoOverlap TEXT_STOCKWELL, 0x13
	WaitUntilTextboxCloses
	Wait 0x0014
	SetAnimation 0x0004
	SetAction 0x0001
	EnablePlayerControl
script_08014382:
SCRIPT_END
