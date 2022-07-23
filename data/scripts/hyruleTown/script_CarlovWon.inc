@ Carlov when won
SCRIPT_START script_CarlovWon
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0000
	SetEntitySpeed 0x01c0
	DoPostScriptAction 0x000a
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Call sub_0806E20C
	WaitUntilTextboxCloses
	Call sub_0806E23C
	ClearLocalFlag 0x0093
	ClearLocalFlag 0x0092
	Call EnablePauseMenu
	Jump script_080144FC
	.2byte 0x0000
