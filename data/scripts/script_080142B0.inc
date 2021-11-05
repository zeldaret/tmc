SCRIPT_START script_080142B0
	BeginBlock
	CheckLocalFlag 0x0054
	JumpIf script_08014382
	CheckLocalFlag 0x0053
	JumpIf script_08014330
	EndBlock
script_080142C4:
	EndBlock
	BeginBlock
	_0807E564
	JumpIfNot script_080142C4
	CheckPlayerInRegion 0x0098, 0x0058, 0x1818
	JumpIfNot script_080142C4
	EndBlock
	_0807E864
	SetLocalFlag 0x0053
	Wait 0x0014
	_0807E908 0x0004
	Call sub_080654DC
	Wait 0x001e
	_0807E930 0x0001
	Wait 0x000a
	_0807E930 0x0003
	Wait 0x000a
	_0807E930 0x0001
	Wait 0x000a
	_0807E930 0x0003
	Wait 0x000a
	_0807E930 0x0002
	Wait 0x001e
	MessageNoOverlap 0x2c12
	WaitUntilTextboxCloses
	Wait 0x0014
	_0807E930 0x0004
	_0807E878
	_0807E908 0x0001
script_08014330:
	EndBlock
	BeginBlock
	_0807E564
	JumpIf script_08014330
	EntityHasHeight
	JumpIf script_08014330
	CheckPlayerInRegion 0x00c0, 0x0068, 0x1010
	JumpIfNot script_08014330
	EndBlock
	_0807E864
	SetLocalFlag 0x0054
	Wait 0x005a
	_0807E908 0x0004
	Call sub_080654EC
	Wait 0x001e
	_0807E930 0x0001
	Wait 0x001e
	MessageNoOverlap 0x2c13
	WaitUntilTextboxCloses
	Wait 0x0014
	_0807E930 0x0004
	_0807E908 0x0001
	_0807E878
script_08014382:
SCRIPT_END
