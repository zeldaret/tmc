SCRIPT_START script_08015618
	BeginBlock 
	DoPostScriptAction 0x0007
	SetEntityNonPlanarMovement 0x0040
	Call sub_08094B80
	EndBlock 
	WaitForSomething2 0x00000080
	CallWithArg sub_0805DDEC, 0x00000003
	Call sub_08094B0C
	_0807EDD4 0x0078, 0x0068
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807EF3C 0xff80, 0x0000
	CallWithArg sub_0805DE18, 0x00000003
	Wait 0x003c
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000080
	_0807E930 0x0001
	Call sub_0807F2D4
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
