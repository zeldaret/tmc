@ Hyrule Town Emma
SCRIPT_START script_Emma
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0000
	EndBlock
script_0800E832:
	CheckEntityInteractType
	JumpIfNot script_0800E832
	_0807E864
	_0807EB44 0x0004
	BeginBlock 
	MessageFromTarget 0x4501
	CallWithArg sub_0807F854, 0x00010032
	CallWithArg sub_0807F854, 0x000200c8
	CallWithArg sub_0807F854, 0x00030190
	EndBlock
	WaitUntilTextboxCloses
	_0807EB38
	JumpTable script_0800E910, script_RentSmallRoom, script_RentRegularRoom, script_0800E872
script_0800E872: @ Rent large room
	BeginBlock 
	MessageFromTarget 0x4505
	CallWithArg sub_0807F854, 0x00010190
	EndBlock
	WaitUntilTextboxCloses
	HasRupees 0x0190
	JumpIfNot script_EmmaNotEnoughRupees
	ModRupees 0xfe70
	SetLocalFlag 0x0091
	MessageFromTarget 0x4508
	WaitUntilTextboxCloses
	Call sub_0806C578
SCRIPT_END
