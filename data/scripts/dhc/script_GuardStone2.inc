@ DHC guard stone 2
SCRIPT_START script_GuardStone2
	BeginBlock
	SetEntitySpeed 0x0100
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x0073
	JumpIfNot script_0800E232
	_0807E9D4
	SetEntityPositionRelative 0x0070, 0x0168
	_0807EB44 0x0002
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
	Jump script_0800E32E
script_0800E232:
	CheckLocalFlag 0x0095
	JumpIf script_0800E29A
	_0807E930 0x0010
	CallWithArg sub_0807F8E8, 0x00000002
	EndBlock
script_0800E24A:
	CheckRoomFlag 0x0002
	JumpIfNot script_0800E24A
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
	SetLocalFlag 0x0095
script_0800E29A:
	DoPostScriptAction 0x0000
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4
	_0807E878
	EndBlock
script_0800E2AE:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIf script_0800E312
	CheckLocalFlag 0x0093
	JumpIfNot script_0800E2AE
	CheckLocalFlag 0x0094
	JumpIfNot script_0800E2AE
	CheckLocalFlag 0x0095
	JumpIfNot script_0800E2AE
	_0807E9DC
	SetLocalFlag 0x0073
	EndBlock
	_0807EB44 0x0000
	CallWithArg sub_0807F3D8, 0x00000004
	_0807EDD4 0x0088, 0x0168
	_0807EB44 0x0006
	CallWithArg sub_0807F3D8, 0x00000004
	_0807EDD4 0x0070, 0x0168
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	_0807E9D4
	Jump script_0800E32E
script_0800E312:
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
	MessageNoOverlap 0x2404
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_0800E2AE
script_0800E32E:
	CheckEntityInteractType
	JumpIfNot script_0800E32E
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	MessageNoOverlap 0x2403
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_0800E32E
	.2byte 0x0000
