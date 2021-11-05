SCRIPT_START script_08015390
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	EndBlock
	_0807E930 0x001f
	Call sub_0806D944
	WaitForSomething2 0x00000008
	_0807E930 0x0010
	MessageFromTargetPos 0x1314, 0x000c
	_0807EA94 
	_0807E930 0x0018
	Call sub_0806D8A0
script_080153C2:
	_0807EE30
	JumpIfNot script_080153C2
	_0807E930 0x001f
	StartPlayerScript script_08015384
	Call sub_0806D9A4
	DoPostScriptAction 0x0008
	Wait 0x0078
	_0807E5F8 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
