SCRIPT_START script_0800C3CC
	StartScript 
	Call sub_0806D660
	SetEntityNonPlanarMovement 0x0080
	StopScript 
	WaitForSomething2 0x00000002
	CallWithArg sub_0807F4F8, 0x00000048
	Call sub_0806D66C
	Wait 0x000f
	CallWithArg sub_0807F4F8, 0x00000068
	Call sub_0806D67C
	_0807F0C8 0x001e, 0x0000
	SoundReq 0x010b
SCRIPT_END
