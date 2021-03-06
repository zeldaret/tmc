SCRIPT_START script_08013720
	StartScript 
	_0807EF80 0x0008
	StopScript 
	StartScript 
	Call sub_0807F92C
	CallWithArg sub_0806DA04, 0x00000003
	StopScript 
script_0801373C:
	CheckEntityInteractType 
	JumpIfNot script_0801373C
	_0807E864 
	Call sub_0807DF28
	StartPlayerScript script_080136D8
	WaitForSomething2 0x00000001
	CallWithArg sub_08095A1C, 0x08013f34
	SoundReq 0x01cd
	Wait 0x005a
	StartScript 
	SoundReq 0x01ce
	CallWithArg sub_08095D54, 0x08013e4c
	StopScript 
	WaitForSomething2 0x20000000
	StartScript 
	SoundReq 0x01cf
	CallWithArg sub_08095D8C, 0x08014054
	CallWithArg sub_08095D8C, 0x08014074
	CallWithArg sub_08095D8C, 0x08014094
	StopScript 
	Wait 0x001e
	StartScript 
	SoundReq 0x01d0
	CallWithArg sub_08095D8C, 0x080140dc
	CallWithArg sub_08095D8C, 0x08014118
	CallWithArg sub_08095D8C, 0x08014154
	StopScript 
	Wait 0x003c
	CallWithArg sub_0805DDEC, 0x00000000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00002000
	SoundReq 0x01d2
	CallWithArg sub_08095D8C, 0x080141dc
	CallWithArg sub_08095D8C, 0x08014210
	_0807E5F8 0x00000400
	WaitForSomething2 0x00004000
	_0807E5F8 0x00000800
	WaitForSomething2 0x00008000
	Wait 0x0078
	_0807E5F8 0x00000060
	CallWithArg sub_0805DE18, 0x00000000
	Wait 0x0078
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	Wait 0x003c
	StartPlayerScript script_08013B70
	_0807E5F8 0x00000080
	_0807F078 0x0004, 0x0001
	Call sub_0806DC3C
	Call sub_0806DC58
	Call sub_0807F304
	Wait 0x003c
	_0807E778 0x0004
	DoFade7 
	SoundReq 0x00f6
	WaitFor_2 
	Wait 0x003c
	_0807E5F8 0x00000010
	_0807E778 0x0002
	DoFade6 
	WaitFor_2 
	SoundReq 0x0109
	TextboxNoOverlapFollowPos 0x0504, 0x000c
	_0807EA94 
	_0807E5F8 0x00040000
	SetLocalFlag 0x007b
	Call sub_08053250
	Call sub_0807DF50
	_0807E878 
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
