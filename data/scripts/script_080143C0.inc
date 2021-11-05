SCRIPT_START script_080143C0
	EndBlock
	_0807E864
	Call sub_0807DF28
	Call sub_080654FC
	_0807E930 0x0001
	Call sub_080654EC
	Wait 0x003c
	TextboxNoOverlap 0x2c16
	_0807EA94
	_0807E3E8
	JumpIf script_080143FA
	SetIntVariable 0x00000002
	Call sub_08065528
	Jump script_0801443E
script_080143FA:
	Call sub_080654EC
	Wait 0x001e
	TextboxNoOverlap 0x2c18
	_0807EA94
	Wait 0x000a
	SetIntVariable 0x00000000
	Call sub_08065528
	_0807F034 0x0036
	WaitPlayerAction8
	TextboxNoOverlap 0x2c19
	_0807EA94
	SetIntVariable 0x00000303
	Call sub_0807F420
.ifndef EU
	Wait 0x001e
	_0807EB8C
	TextboxNoOverlap 0x2c22
	_0807EA94
.endif
script_0801443E:
	_0807E930 0x0004
	_0807E908 0x0001
	Call sub_0807DF50
	_0807E878
SCRIPT_END
