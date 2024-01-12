@ Player in Sanctuary when spawning text board
SCRIPT_START script_PlayerTextBoardAppears
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x00e8, 0x00a8
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
SCRIPT_END
