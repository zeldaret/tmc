@ DHC King Daltus stone
SCRIPT_START script_KingDaltusStone
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0071
	JumpIf script_0800E3E8
	CheckLocalFlag 0x0096
	JumpIf script_0800E3BE
	_0807E930 0x000c
	CallWithArg sub_0807F8E8, 0x00000000
	EndBlock
script_0800E37A:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800E37A
	_0807E864
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x000d
	Wait 0x003c
	PlaySound SFX_1CA
	DoPostScriptAction 0x0010
	Wait 0x001e
	PlaySound SFX_SECRET
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x001e
	DoPostScriptAction 0x0000
	_0807EB74
	SetLocalFlag 0x0096
script_0800E3BE:
	DoPostScriptAction 0x0000
	_0807E9D4
	_0807E878
	EndBlock
script_0800E3C8:
	CheckEntityInteractType
	JumpIfNot script_0800E3C8
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x240c
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807F034 0x0053
	WaitPlayerGetItem
	SetLocalFlag 0x0071
	_0807E878
script_0800E3E8:
	_0807E9D4
	_0807E878
	EndBlock
script_0800E3EE:
	CheckEntityInteractType
	JumpIfNot script_0800E3EE
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x240d
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800E3EE
