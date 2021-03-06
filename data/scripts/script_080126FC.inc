SCRIPT_START script_080126FC
	StartScript 
	SetEntityNonPlanarMovement 0x0040
	_0807EF80 0x0007
	StopScript 
	_0807E930 0x0020
	WaitForSomething2 0x00000004
	_0807E930 0x0022
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x000c1102
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0021
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x000c1103
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EF80 0x0004
	Wait 0x003c
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EF80 0x0011
	_0807E930 0x001c
	TextboxNoOverlapFollowPos 0x000c1105
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0022
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x000c1106
	_0807EA94 
	_0807E930 0x001c
	Call sub_0806D96C
	TextboxNoOverlapFollowPos 0x000c1107
	_0807EA94 
	_0807E930 0x0020
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0021
	Call sub_0807F3C8
	TextboxNoOverlapFollowPos 0x000c1108
	_0807EA94 
	_0807E930 0x001c
	Call sub_0806D96C
	TextboxNoOverlapFollowPos 0x000c1109
	_0807EA94 
	_0807E930 0x0020
	_0807EF80 0x000a
	_0807E9D4 
	_0807E5F8 0x00000008
script_080127F2:
	StopScript 
	StartScript 
	CheckRoomFlag 0x0000
	JumpIf script_08012824
	CheckEntityInteractType 
	JumpIfNot script_080127F2
	StopScript 
	_0807E864 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c1114
	_0807EA94 
	_0807E930 0x0020
	_0807E878 
	Jump script_080127F2
script_08012824:
	_0807E864 
	_0807E9DC 
	CallWithArg sub_0807F5B0, 0x0000003c
	Call sub_080791D0
	StopScript 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EF80 0x000b
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c110a
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c110b
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EF80 0x0004
	Wait 0x003c
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c110c
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c110d
	_0807EA94 
	_0807E930 0x001f
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c110e
	_0807EA94 
	_0807E930 0x0018
	SetEntityNonPlanarMovement 0x0080
	Call sub_0806D908
	_0807EC1C 0x0010
	_0807EF80 0x000a
	_0807E9D4 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
script_08012904:
	StopScript 
	StartScript 
	Call sub_0806D944
	CheckEntityInteractType 
	JumpIf script_08012920
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_0801293A
	Jump script_08012904
script_08012920:
	_0807E864 
	_0807E930 0x0010
	StopScript 
	TextboxNoOverlapFollowPos 0x000c1115
	_0807EA94 
	_0807E930 0x0018
	_0807E878 
	Jump script_08012904
script_0801293A:
	StopScript 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB8C 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c110f
	_0807E930 0x0018
	SetEntityNonPlanarMovement 0x0080
	Call sub_0806D908
	_0807EC1C 0x0050
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
script_08012984:
	StopScript 
	StartScript 
	Call sub_0806D944
	CheckEntityInteractType 
	JumpIf script_080129A0
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080129BA
	Jump script_08012984
script_080129A0:
	_0807E864 
	_0807E930 0x0010
	StopScript 
	TextboxNoOverlapFollowPos 0x000c1115
	_0807EA94 
	_0807E930 0x0018
	_0807E878 
	Jump script_08012984
script_080129BA:
	StopScript 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB8C 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c1110
	_0807E930 0x0018
	SetEntityNonPlanarMovement 0x0080
	Call sub_0806D908
	_0807EC1C 0x0050
	_0807E930 0x0018
	_0807EA94 
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
script_08012A08:
	StopScript 
	StartScript 
	Call sub_0806D944
	CheckEntityInteractType 
	JumpIf script_08012A24
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_08012A3E
	Jump script_08012A08
script_08012A24:
	_0807E864 
	_0807E930 0x0010
	StopScript 
	TextboxNoOverlapFollowPos 0x000c1115
	_0807EA94 
	_0807E930 0x0018
	_0807E878 
	Jump script_08012A08
script_08012A3E:
	StopScript 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	SoundReq0x80100000 
	_0807EF80 0x000b
	_0807EB8C 
	Call sub_0806D944
	_0807E930 0x0010
	TextboxNoOverlapFollowPos 0x000c1111
	_0807E930 0x0018
	SetEntityNonPlanarMovement 0x0080
	Call sub_0806D8A0
script_08012A74:
	_0807EE30 
	JumpIfNot script_08012A74
	_0807E930 0x001f
	_0807EA94 
	StartPlayerScript script_08012B18
	Call sub_0806D9A4
	_0807EF80 0x0008
	Wait 0x0078
	SoundReq2 0x000e
	StartScript 
	_0807E8E4_2 
	_0807EB28 0x1112
	StopScript 
	_0807EA94 
	_0807E5F8 0x00000008
	_0807EF80 0x0006
SCRIPT_END
