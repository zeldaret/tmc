@ Cloud Tops NPC4E after Kinstone has been fused
SCRIPT_START script_Npc4EKinstoneFused
	MoveToPlayer
	SetScrollSpeed 4
	CameraTargetPlayer
	Call sub_0807FBCC
	EnablePlayerControl
	Call EnablePauseMenu
script_0800D6AE:
	DoPostScriptAction 0x0006
SCRIPT_END
