@ BigGoron Kinstone cutscene 1
script_BigGoronKinstone1::
	BeginBlock
	CallWithArg sub_0806D658, 0x00000003
	SetEntitySpeed 0x0200
	EndBlock
script_0800C362:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800C362
	InitScreenShake 0xffff, 0x0000
