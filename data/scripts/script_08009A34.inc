SCRIPT_START script_08009A34
	Wait 0x003c
script_08009A38:
	Call sub_08066258
	Wait 0x001e
	Call sub_08066258
	Wait 0x005a
	Jump script_08009A38
SCRIPT_START script_08009A50
	SetEntityPositionRelative 0x0240, 0x0178
	CameraTargetEntity 
	SetEntitySpeed 0x0080
	Wait 0x0078
	PlayBgm BGM_MINISH_CAP
	_0807E778 0x0002
	DoFade4 
	WaitFor_2 
	Wait 0x0078
	_0807E5F8 0x00000004
	Call sub_08053648
	_0807EDD4 0x0240, 0x0228
SCRIPT_END
