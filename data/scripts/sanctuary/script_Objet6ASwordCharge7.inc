@ Sanctuary second time OBJECT_6A sword charging?
SCRIPT_START script_Objet6ASwordCharge7
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E930 0x0006
	OffsetEntityPosition 0x0000, 0xfff0
	EndBlock
	WaitForSomething2 0x00000800
	_0807E930 0x000a
	Call sub_0807F2D4
	_0807E930 0x000e
	_0807E5F8 0x00008000
	WaitForSomething 0x00000020
	_0807E930 0x0012
	Call sub_0807F2D4
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
