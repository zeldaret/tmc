@ Intro camera target
SCRIPT_START script_IntroCameraTarget
	SetEntityPositionRelative 0x0240, 0x0178
	CameraTargetEntity
	SetEntitySpeed 0x0080
	Wait 0x0078
	PlayBgm BGM_MINISH_CAP
	SetFadeTime 0x0002
	@ Fade in
	SetFade4
	WaitForFadeFinish
	Wait 0x0078
	SetSyncFlag 0x00000004
	Call sub_08053648
	@ Move camera target down
	MoveTo 0x0240, 0x0228
SCRIPT_END
