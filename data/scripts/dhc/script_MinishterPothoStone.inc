@ DHC Minister Potho stone
SCRIPT_START script_MinishterPothoStone
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0093
	JumpIf script_0800E12E
	_0807E930 0x0008
	CallWithArg sub_0807F8E8, 0x00000000
	EndBlock
script_0800E0DE:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800E0DE
	_0807E864
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x0009
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	_0807EB8C
	_0807EB74
	Wait 0x000a
	MessageNoOverlap 0x2402
	WaitUntilTextboxCloses
	SetLocalFlag 0x0093
script_0800E12E:
	Call sub_080668F0
	_0807E878
	EndBlock
script_0800E138:
	CheckEntityInteractType
	JumpIfNot script_0800E138
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x2402
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800E138
	.2byte 0x0000
