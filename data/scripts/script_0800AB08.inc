SCRIPT_START script_0800AB08
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0148
	Call sub_0807F844
	_0807E8E4_3 
	CallWithArg sub_0807F6E8, 0x00000008
	CallWithArg sub_0807F75C, 0x00a80088
	PlaySound SFX_APPARATE
	EndBlock 
	Wait 0x0078
	_0807F0B4 0x0001
	SetEntityPositionRelative 0x0088, 0x0078
	Call sub_0807F5C0
	TextboxNoOverlapFollowPos 0x1664, 0x0000
	_0807EA94 
	TextboxNoOverlapFollowPos 0x165e, 0x000e
	_0807EA94 
	CallWithArg sub_0805DDEC, 0x00000001
	_0807F0C8 0xffff, 0x0000
