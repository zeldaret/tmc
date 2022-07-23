@ TODO UNUSED?
SCRIPT_START script_0800D84C
	BeginBlock
	EndBlock
script_0800D850:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800D850
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Wait 0x003c
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
