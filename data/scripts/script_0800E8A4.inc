SCRIPT_START script_0800E8A4
	BeginBlock 
	TextboxNoOverlapFollow 0x4504
	CallWithArg sub_0807F854, 0x000100c8
	EndBlock 
	_0807EA94 
	HasRupees 0x00c8
	JumpIfNot script_0800E908
	ModRupees 0xff38
	SetLocalFlag 0x0091
	TextboxNoOverlapFollow 0x4508
	_0807EA94 
	Call sub_0806C588
SCRIPT_END
