@ Phonograph
SCRIPT_START script_Phonograph
	BeginBlock
	Call MakeCheckableObjectInteractable
	EndBlock
script_0800BA46:
	CheckEntityInteractType
	JumpIfNot script_0800BA46
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	MessageFromTarget TEXT_PHONOGRAPH, 0x01
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_0800BA6C
	StopBgm
	Call sub_0806E964
	PlayBGM
script_0800BA6C:
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800BA46
