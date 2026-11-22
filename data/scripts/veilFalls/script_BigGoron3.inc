@ Veil Falls BigGoron 3
script_BigGoron3::
	BeginBlock
	AddInteractableWhenBigObject
	EndBlock
script_0800934E:
	CheckEntityInteractType
	JumpIfNot script_0800934E
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Call sub_0806D638
	SetScrollSpeed 1
	CameraTargetEntity
	CheckGlobalFlag GAMECLEAR
	JumpIf script_BigGoronTalk
	MessageNoOverlap TEXT_GORONS, 0x01
	WaitUntilTextboxCloses
script_08009376:
	WaitUntilTextboxCloses
	Call sub_0806D640
	SetScrollSpeed 1
	CameraTargetPlayer
	Wait 0x002d
	SetScrollSpeed 4
	EnablePlayerControl
	Call EnablePauseMenu
	Jump script_0800934E
	EndScript
