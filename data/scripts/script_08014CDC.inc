SCRIPT_START script_08014CDC
	BeginBlock 
	SetEntitySpeed 0x0180
	DoPostScriptAction 0x000a
	Call sub_08066D04
	Call sub_08066D14
	SetEntityPositionRelative 0x01e8, 0x0180
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
	WaitForSomething2 0x00000001
	Call sub_08066E08
	_0807E864 
	TextboxNoOverlapFollowPos 0x1010, 0x000c
	_0807EA94 
	_0807E5F8 0x00000002
script_08014D1E:
	EndBlock 
	BeginBlock 
	CheckPlayerInRegion 0x01d8, 0x0160, 0x3050
	JumpIfNot script_08014D1E
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	TextboxNoOverlap 0x1012
	_0807EA94 
	_0807EC64 0x0040
	_0807EB44 0x0004
	Call sub_08066E08
	SetEntityPositionRelative 0x01f8, 0x00c8
	Call sub_0807DF50
	_0807E878 
script_08014D60:
	CallWithArg sub_0807F6B4, 0x000000e8
	JumpIf script_08014D60
	_0807E864 
	Call sub_0807DF28
	TextboxNoOverlap 0x1013
	_0807EA94 
	_0807EC64 0x0040
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetEntityPositionRelative 0x01e8, 0x0028
	Call sub_0807DF50
	_0807E878 
script_08014D96:
	CheckPlayerInRegion 0x01f8, 0x0028, 0x2040
	JumpIfNot script_08014D96
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	TextboxNoOverlap 0x1014
	_0807EA94 
	_0807EC64 0x0018
.ifdef JP
	SetLocalFlag 0x006b
.else
.ifdef EU
	SetLocalFlag 0x006b
.else
	SetLocalFlag 0x006d
.endif
.endif
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
