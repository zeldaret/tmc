@ DHC Guard stone
SCRIPT_START script_GuardStone1
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0094
	JumpIf script_0800E1D0
	_0807E930 0x0010
	CallWithArg sub_0807F8E8, 0x00000001
	EndBlock
script_0800E176:
	CheckRoomFlag 0x0001
	JumpIfNot script_0800E176
	_0807E864
	Wait 0x001e
	DoPostScriptAction 0x0010
	PlaySound SFX_1C9
	_0807E930 0x0015
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
	CallWithArg sub_0807F3D8, 0x00000000
	Wait 0x000a
	MessageNoOverlap 0x2401
	WaitUntilTextboxCloses
	SetLocalFlag 0x0094
script_0800E1D0:
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4
	_0807E878
	EndBlock
script_0800E1E0:
	CheckEntityInteractType
	JumpIfNot script_0800E1E0
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	MessageNoOverlap 0x2401
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_0800E1E0
