SCRIPT_START script_0800C45C
	BeginBlock 
	SetEntitySpeed 0x0180
	_0807E930 0x0004
	Call sub_080A0B28
	EndBlock 
	Wait 0x000a
	DoPostScriptAction 0x0007
	PlaySound SFX_136
script_0800C47A:
	_0807EE30 
	JumpIfNot script_0800C47A
	Wait 0x003c
	SetRoomFlag 0x00ff
	_0807E930 0x0005
	Wait 0x000f
SCRIPT_END
	.2byte 0x0000
