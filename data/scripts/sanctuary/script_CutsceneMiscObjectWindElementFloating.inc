@ Sanctuary third time CUTSCENE_MISC_OBJECT ?
SCRIPT_START script_CutsceneMiscObjectWindElementFloating
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0006
	EndBlock
	SetEntitySpeed 0x0080
	MoveTo 0x00b0, 0x0168
	SetAnimation 0x0007
	SetSyncFlag 0x40000000
SCRIPT_END
	.2byte 0x0000
