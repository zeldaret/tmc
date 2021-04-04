SCRIPT_START script_080126FC
	BeginBlock 
	SetEntitySpeed 0x0040
	DoPostScriptAction 0x0007
	EndBlock 
	_0807E930 0x0020
	WaitForSomething2 0x00000004
	_0807E930 0x0022
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x1102, 0x000c
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0021
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x1103, 0x000c
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0011
	_0807E930 0x001c
	TextboxNoOverlapFollowPos 0x1105, 0x000c
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0022
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x1106, 0x000c
	_0807EA94 
	_0807E930 0x001c
	Call sub_0806D96C
	TextboxNoOverlapFollowPos 0x1107, 0x000c
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0021
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x1108, 0x000c
	_0807EA94 
	_0807E930 0x001c
	Call sub_0806D96C
	TextboxNoOverlapFollowPos 0x1109, 0x000c
	_0807EA94 
	_0807E930 0x0020
	DoPostScriptAction 0x000a
	_0807E9D4 
	_0807E5F8 0x00000008
script_080127F2:
	EndBlock 
	BeginBlock 
	CheckRoomFlag 0x0000
	JumpIf script_08012824
	CheckEntityInteractType 
	JumpIfNot script_080127F2
	EndBlock 
	_0807E864 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x1114, 0x000c
	_0807EA94 
	_0807E930 0x0020
	_0807E878 
	Jump script_080127F2
script_08012824:
	_0807E864 
	_0807E9DC 
	CallWithArg sub_0807F5B0, 0x0000003c
	Call sub_080791D0
	EndBlock 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x000b
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x110a, 0x000c
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x110b, 0x000c
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x110c, 0x000c
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x110d, 0x000c
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x110e, 0x000c
	_0807EA94 
	_0807E930 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D908
	_0807EC1C 0x0010
	DoPostScriptAction 0x000a
	_0807E9D4 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
script_08012904:
	EndBlock 
	BeginBlock 
	Call sub_0806D944
	CheckEntityInteractType 
	JumpIf script_08012920
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_0801293A
	Jump script_08012904
script_08012920:
	_0807E864 
	_0807E930 0x0010
	EndBlock 
	TextboxNoOverlapFollowPos 0x1115, 0x000c
	_0807EA94 
	_0807E930 0x0018
	_0807E878 
	Jump script_08012904
script_0801293A:
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB8C 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x110f, 0x000c
	_0807E930 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D908
	_0807EC1C 0x0050
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
script_08012984:
	EndBlock 
	BeginBlock 
	Call sub_0806D944
	CheckEntityInteractType 
	JumpIf script_080129A0
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080129BA
	Jump script_08012984
script_080129A0:
	_0807E864 
	_0807E930 0x0010
	EndBlock 
	TextboxNoOverlapFollowPos 0x1115, 0x000c
	_0807EA94 
	_0807E930 0x0018
	_0807E878 
	Jump script_08012984
script_080129BA:
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB8C 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x1110, 0x000c
	_0807E930 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D908
	_0807EC1C 0x0050
	_0807E930 0x0018
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
script_08012A08:
	EndBlock 
	BeginBlock 
	Call sub_0806D944
	CheckEntityInteractType 
	JumpIf script_08012A24
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_08012A3E
	Jump script_08012A08
script_08012A24:
	_0807E864 
	_0807E930 0x0010
	EndBlock 
	TextboxNoOverlapFollowPos 0x1115, 0x000c
	_0807EA94 
	_0807E930 0x0018
	_0807E878 
	Jump script_08012A08
script_08012A3E:
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StopBgm
	DoPostScriptAction 0x000b
	_0807EB8C 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x1111, 0x000c
	_0807E930 0x0018
	SetEntitySpeed 0x0080
	Call sub_0806D8A0
script_08012A74:
	_0807EE30 
	JumpIfNot script_08012A74
	_0807E930 0x001f
	_0807EA94 
	StartPlayerScript script_08012B18
	Call sub_0806D9A4
	DoPostScriptAction 0x0008
	Wait 0x0078
	PlayBgm BGM_EZLO_THEME
	BeginBlock 
	_0807E8E4_2 
	_0807EB28 0x1112
	EndBlock 
	_0807EA94 
	_0807E5F8 0x00000008
	DoPostScriptAction 0x0006
SCRIPT_END
