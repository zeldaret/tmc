SCRIPT_START script_0800DF24
	BeginBlock 
	DoPostScriptAction 0x0008
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StopBgm
	_0807E8E4_2 
	Wait 0x005a
	Call sub_0807F3F8
	Wait 0x003c
	_0807E8E4_0 
	_0807F0B4 0x0001
	CameraTargetEntity 
	Call sub_0807F5C0
	Call sub_08066C94
	Wait 0x00e9
	DoPostScriptAction 0x0007
	TextboxNoOverlapFollowPos 0x162f, 0x0002
	_0807EA94 
	PlayBgm BGM_VAATI_REBORN
	DoPostScriptAction 0x0019
	PlaySound SFX_198
	Call sub_0807F2D4
	SetRoomFlag 0x0000
	DoPostScriptAction 0x0008
	Wait 0x0080
	_0807F0B4 0x0004
	CameraTargetPlayer 
	Call sub_0807F5C0
	SetLocalFlag 0x0078
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
