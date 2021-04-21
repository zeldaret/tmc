SCRIPT_START script_08014E14
	BeginBlock 
	_0807EB44 0x0004
	_0807E9D4 
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08014E2C:
	CheckEntityInteractType 
	JumpIfNot script_08014E2C
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	Call sub_08064428
	_0807EA94 
	_0807E878 
	Jump script_08014E2C
	.2byte 0x0000
SCRIPT_START script_08014E50
	BeginBlock 
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_08014E64:
	CheckEntityInteractType 
	JumpIfNot script_08014E64
	_0807E864 
	Call sub_0807DF28
	_0807EB74 
	CallWithArg sub_0807F78C, 0x00000022
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08014EBC
	CallWithArg sub_0807F7C4, 0x00000022
	JumpIfNot script_08014EB0
	_0807E48C 0x0020
	JumpIfNot script_08014EB8
	CallWithArg sub_0807F800, 0x00000022
	WaitPlayerAction8 
	TextboxNoOverlap 0x0a04
	Jump script_08014EBC
script_08014EB0:
	TextboxNoOverlap 0x0a03
	Jump script_08014EBC
script_08014EB8:
	TextboxNoOverlap 0x0a02
script_08014EBC:
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	Jump script_08014E64
	.2byte 0x0000
SCRIPT_START script_08014ECC
	BeginBlock 
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_08014EE0:
	CheckEntityInteractType 
	JumpIfNot script_08014EE0
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x200d
	_0807EA94 
	_0807E878 
	Jump script_08014EE0
	.2byte 0x0000
SCRIPT_START script_08014EF8
	BeginBlock 
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x000a
	EndBlock 
script_08014F0C:
	CheckEntityInteractType 
	JumpIfNot script_08014F0C
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0000
	TextboxNoOverlap 0x200e
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	_0807E930 0x000a
	Jump script_08014F0C
	.2byte 0x0000
SCRIPT_START script_08014F30
	BeginBlock 
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x000e
	EndBlock 
	Call sub_08065914
script_08014F4A:
	CheckEntityInteractType 
	JumpIfNot script_08014F4A
	_0807E864 
	Call sub_0807DF28
	_0807EB74 
	DoPostScriptAction 0x0000
	BeginBlock 
	TextboxNoOverlap 0x3b0b
	CallWithArg sub_0807F854, 0x00010064
	EndBlock 
	_0807EA94 
	_0807E3E8 
	JumpIfNot script_08014FA6
	HasRupees 0x0064
	JumpIfNot script_08014F9A
	_0807E48C 0x0020
	JumpIfNot script_08014FA2
	ModRupees 0xff9c
	_0807F034 0x0022
	WaitPlayerAction8 
	TextboxNoOverlap 0x3b11
	Jump script_08014FA6
script_08014F9A:
	TextboxNoOverlap 0x3b0e
	Jump script_08014FA6
script_08014FA2:
	TextboxNoOverlap 0x3b0f
script_08014FA6:
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	_0807EB44 0x0004
	_0807E930 0x000e
	Jump script_08014F4A
SCRIPT_START script_08014FBC
	BeginBlock 
	SetEntityPositionRelative 0x01f8, 0x00e0
	Call sub_08054564
	EndBlock 
script_08014FCC:
	CheckPlayerInRegion 0x01f8, 0x00a0, 0x2040
	JumpIfNot script_08014FCC
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StopBgm
	_0807F0B4 0x0001
	CameraTargetEntity 
	StartPlayerScript script_080152B4
	WaitForSomething2 0x00000001
	TextboxNoOverlapFollowPos 0x1301, 0x0002
	_0807EA94 
	Call sub_0807F3F8
	Wait 0x003c
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	PlayBgm BGM_VAATI_THEME
	_0807EB28 0x1302
	_0807EA94 
	TextboxNoOverlapFollowPos 0x1303, 0x0002
	_0807EA94 
	_0807EB28 0x1304
	_0807EA94 
	TextboxNoOverlapFollowPos 0x1305, 0x0002
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807EB28 0x1306
	_0807EA94 
	StopBgm
	StartPlayerScript script_080152DC
	CameraTargetEntity 
	_0807F0B4 0x0003
	SetEntityPositionRelative 0x01f8, 0x0148
	WaitForSomething2 0x00000001
	Call sub_0804F6A8
	Wait 0x0004
	Call sub_0804F808
	PlaySound SFX_10B
	StartPlayerScript script_08015304
	Call sub_0804F6C8
	Wait 0x0004
	Call sub_0804F830
	PlaySound SFX_10B
	Call sub_0804F6E8
	Wait 0x0004
	Call sub_0804F854
	PlaySound SFX_10B
	Call sub_0804F724
	Wait 0x0004
	Call sub_0804F89C
	PlaySound SFX_10B
	Call sub_0804F760
	Wait 0x0004
	Call sub_0804F8E0
	PlaySound SFX_10B
	Wait 0x003c
	WaitForSomething2 0x00000001
	PlaySound SFX_1B0
	Call sub_0804F79C
	Wait 0x000a
	LoadRoomEntityList gUnk_080F7FC0
	PlayBgm BGM_FIGHT_THEME
	Call sub_0807DF50
	_0807E878 
script_08015104:
	CheckRoomFlag 0x0000
	JumpIfNot script_08015104
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StopBgm
	StartPlayerScript script_08015338
	WaitForSomething2 0x00000001
	Wait 0x003c
	Call sub_0804F6A8
	Wait 0x0004
	Call sub_0804F928
	PlaySound SFX_10B
	Call sub_0804F6C8
	Wait 0x0004
	Call sub_0804F944
	PlaySound SFX_10B
	Call sub_0804F6E8
	Wait 0x0004
	Call sub_0804F960
	PlaySound SFX_10B
	Call sub_0804F724
	Wait 0x0004
	Call sub_0804F994
	PlaySound SFX_10B
	Call sub_0804F760
	Wait 0x0004
	Call sub_0804F9C8
	PlaySound SFX_10B
	Wait 0x003c
	PlaySound SFX_SECRET
	_0807F0B4 0x0004
	CameraTargetPlayer 
	SetLocalFlag 0x008c
	_0807EB28 0x130c
	_0807EA94 
	CameraTargetPlayer 
	_0807E778 0x0004
	_0807E80C 0x00000000
	WaitFor_2 
	Call sub_08053B3C
	BeginBlock 
	_0807E864 
	CallWithArg sub_0807F6E8, 0x00000008
	MoveEntityToPlayer 
	_0807F0B4 0x0004
	CameraTargetEntity 
	_0807E778 0x0100
	DoFade4 
	_0807E80C 0x00000000
	EndBlock 
	StartPlayerScript script_08015360
	WaitForSomething2 0x00000001
	LoadRoomEntityList gUnk_080F7CB0
	_0807E778 0x0004
	_0807E800 0x00000000
	WaitFor_2 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000010
	BeginBlock 
	_0807E8E4_2 
	_0807EB28 0x1315
	EndBlock 
	_0807EA94 
	_0807F0B4 0x0004
	CameraTargetPlayer 
	Call sub_08054570
	PlayBGM
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
