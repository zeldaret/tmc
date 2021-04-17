SCRIPT_START script_0800B6C8
	BeginBlock 
	EndBlock 
script_0800B6CC:
	HasRupees 0x0001
	JumpIfNot script_0800B6CC
script_0800B6D4:
	CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
	JumpIfNot script_0800B6D4
	Call sub_08079184
	_0807E864 
	Call sub_0807F9A4
	StartPlayerScript script_0800B7C4
	WaitForSomething2 0x00000004
	SetRoomFlag 0x0000
	WaitForSomething2 0x00000004
	CheckLocalFlag 0x009f
	JumpIf script_0800B7A2
	TextboxNoOverlap 0x057b
	_0807EA94 
	CallWithArg sub_0807F970, 0x0000057d
	JumpIf script_0800B6A6
	_0807EA94 
	SetLocalFlag 0x009f
	_0807F034 0x0064
	Jump script_0800B698
	.2byte 0x0000
SCRIPT_START script_0800B730
	BeginBlock 
	EndBlock 
script_0800B734:
	Call sub_0808747C
	JumpIfNot script_0800B734
	Call sub_08079184
	_0807E864 
	Wait 0x000a
	Call sub_0807F9A4
	StartPlayerScript script_0800B7C4
	WaitForSomething2 0x00000004
	SetRoomFlag 0x0000
	WaitForSomething2 0x00000004
	CheckLocalFlag 0x00a0
	JumpIf script_0800B7A2
	TextboxNoOverlap 0x0580
	_0807EA94 
	CallWithArg sub_0807F970, 0x00000582
	JumpIf script_0800B794
	CallWithArg sub_08087424, 0x00000001
	Wait 0x00b4
	Jump script_0800B6A6
script_0800B794:
	_0807EA94 
	SetLocalFlag 0x00a0
	_0807F034 0x0065
	Jump script_0800B698
script_0800B7A2:
	TextboxNoOverlap 0x0590
	_0807EA94 
	_0807E778 0x0010
	DoFade7 
	WaitFor_2 
	ModHealth 0x00a0
	DoFade6 
	WaitFor_2 
	TextboxNoOverlap 0x057f
	_0807EA94 
	Jump script_0800B6A6
	.2byte 0x0000
