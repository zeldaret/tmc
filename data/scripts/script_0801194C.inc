SCRIPT_START script_0801194C
	BeginBlock 
	_0807EB44 0x0002
	Jump script_0801196A
	.2byte 0x0000
SCRIPT_START script_08011958
	BeginBlock 
	_0807EB44 0x0006
	Jump script_0801196A
	.2byte 0x0000
SCRIPT_START script_08011964
	BeginBlock 
	_0807EB44 0x0004
script_0801196A:
	_0807E9D4 
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_0801197C:
	CheckEntityInteractType 
	JumpIfNot script_0801197C
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	CheckGlobalFlag 0x0015
	JumpIf script_080119A0
	TextboxNoOverlapFollow 0x103d
	Jump script_080119A4
script_080119A0:
	TextboxNoOverlapFollow 0x103f
script_080119A4:
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0801197C
SCRIPT_START script_080119B0
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0004
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x0000000c
	EndBlock 
script_080119C8:
	Wait 0x003c
	Call sub_0806407C
	Jump script_080119C8
	.2byte 0x0000
SCRIPT_START script_080119D8	
	BeginBlock 
	_0807EB44 0x0002
	Jump script_080119F6
	.2byte 0x0000
SCRIPT_START script_080119E4
	BeginBlock 
	_0807EB44 0x0004
	Jump script_080119F6
	.2byte 0x0000
SCRIPT_START script_080119F0
	BeginBlock 
	_0807EB44 0x0006
script_080119F6:
	_0807E9D4 
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08011A08:
	CheckEntityInteractType 
	JumpIfNot script_08011A08
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	Call sub_08064428
	_0807EA94 
	_0807E878 
	Jump script_08011A08
	.2byte 0x0000
SCRIPT_START script_08011A2C
	BeginBlock 
	_0807EB44 0x0004
	_0807E9D4 
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08011A44:
	CheckEntityInteractType 
	JumpIfNot script_08011A44
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	TextboxNoOverlapFollow 0x1320
	_0807EA94 
	_0807E878 
	Jump script_08011A44
SCRIPT_START script_08011A64
	BeginBlock 
	_0807EB44 0x0002
	_0807E9D4 
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08011A7C:
	CheckEntityInteractType 
	JumpIfNot script_08011A7C
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	CallWithArg sub_080644B4, 0x00000006
	JumpIf script_08011AFA
	TextboxNoOverlapFollow 0x1320
	_0807EA94 
	_0807E878 
	Jump script_08011A7C
	.2byte 0x0000
	BeginBlock 
	_0807EB44 0x0004
	_0807E9D4 
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08011AC4:
	CheckEntityInteractType 
	JumpIfNot script_08011AC4
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	TextboxNoOverlapFollow 0x1322
	_0807EA94 
	_0807E878 
	Jump script_08011AC4
SCRIPT_START script_08011AE4
	CheckRoomFlag 0x000f
	JumpIfNot script_08011AE4
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
script_08011AFA:
	TextboxNoOverlapFollowPos 0x1321, 0x0007
	_0807EA94 
	SetLocalFlag 0x0010
	CallWithArg sub_0806DA1C, 0x00000003
	_0807E878 
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
