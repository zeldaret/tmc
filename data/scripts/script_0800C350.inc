SCRIPT_START script_0800C350
	StartScript 
	CallWithArg sub_0806D658, 0x00000003
	SetEntityNonPlanarMovement 0x0200
	StopScript 
script_0800C362:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800C362
	_0807F0C8 0xffff, 0x0000
