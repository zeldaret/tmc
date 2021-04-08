SCRIPT_START script_08015CD4
	BeginBlock 
	_0807F0B4 0x0007
	SetEntityPositionRelative 0x0088, 0x0068
	CameraTargetEntity 
	EndBlock 
	_0807E778 0x0004
	DoFade4 
	WaitFor_2 
	Wait 0x003c
	_0807F0B4 0x0004
	SetEntityPositionRelative 0x0088, 0x00e0
	CameraTargetEntity 
	Wait 0x003c
	PlayBgm BGM_VAATI_THEME
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	_0807F0B4 0x0004
	SetEntityPositionRelative 0x0088, 0x0070
	CameraTargetEntity 
	Wait 0x003c
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807F0B4 0x0004
	SetEntityPositionRelative 0x0088, 0x00e0
	CameraTargetEntity 
	Wait 0x003c
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	_0807F0B4 0x0004
	SetEntityPositionRelative 0x0088, 0x0070
	CameraTargetEntity 
	Wait 0x003c
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	_0807E778 0x0004
	DoFade5 
	WaitFor_2 
	_0807E5F8 0x00000010
	LoadRoomEntityList gUnk_080FCE30
	StopBgm
	Wait 0x0078
	_0807E778 0x0004
	DoFade4 
	WaitFor_2 
	PlayBgm BGM_DIGGING_CAVE
	_0807E5F8 0x00000040
	WaitForSomething2 0x00000080
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000200
	Wait 0x003c
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E778 0x0004
	DoFade5 
	WaitFor_2 
	StopBgm
	SetRoomFlag 0x0000
	DoPostScriptAction 0x0006
SCRIPT_END
