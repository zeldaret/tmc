SCRIPT_START script_0800BB64
	BeginBlock 
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	SetEntityNonPlanarMovement 0x0040
	Call sub_0807F348
	EndBlock 
script_0800BB7A:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BB7A
	_0807EDD4 0x03a0, 0x00f8
	Wait 0x001e
	TextboxNoOverlap 0x0e06
	_0807EA94 
	Wait 0x000f
	_0807EDD4 0x0380, 0x00f8
	Call sub_08054968
SCRIPT_END
