SCRIPT_START script_0801606C
	BeginBlock 
	CheckKinstoneFused 0x0009
	JumpIf script_0801609E
	EndBlock 
	WaitForSomething2 0x00000002
	DoPostScriptAction 0x0010
	Wait 0x003c
	SetEntityNonPlanarMovement 0x0020
	_0807EC94 0x0080
	Wait 0x001e
	DoPostScriptAction 0x0010
	_0807E5F8 0x00000004
SCRIPT_END
