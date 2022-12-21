@ Gentari at beginning
SCRIPT_START script_Gentari
	BeginBlock
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	EndBlock
script_0800C780:
	TriggerInteract
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtGentari
	WaitForSyncFlagAndClear 0x00000001
	CheckInventory1 ITEM_EARTH_ELEMENT
	JumpIf script_0800C824
	CheckInventory1 ITEM_JABBERNUT
	JumpIf script_0800C7C0
	SetAnimation 0x0008
	MessageFromTarget TEXT_FOREST_MINISH, 0x22
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800C780
script_0800C7C0:
	SetAnimation 0x0008
	CheckLocalFlag 0x0081
	JumpIf script_0800C80A
	MessageFromTarget TEXT_FINDING_EZLO, 0x30
	WaitUntilTextboxCloses
	EzloMessage TEXT_FINDING_EZLO, 0x31
	WaitUntilTextboxCloses
	FaceAwayFromPlayer
	MessageFromTarget TEXT_FINDING_EZLO, 0x32
	WaitUntilTextboxCloses
	SetIntVariable 0x00000103
	Call LoadMenu
	MessageFromTarget TEXT_FINDING_EZLO, 0x33
	WaitUntilTextboxCloses
	Wait 0x000a
	DoPostScriptAction 0x0000
	SetLocalFlag 0x0081
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800C780
script_0800C80A:
	MessageFromTarget TEXT_FINDING_EZLO, 0x33
	WaitUntilTextboxCloses
	Wait 0x000a
	SetAnimation 0x0000
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800C780
script_0800C824:
	SetAnimation 0x0008
	CheckLocalFlag 0x0083
	JumpIf script_0800C8AE
	MessageFromTarget TEXT_FINDING_EZLO, 0x35
	WaitUntilTextboxCloses
	SetEntitySpeed 0x0040
	MoveTo 0x0038, 0x0044
	DoPostScriptAction 0x0000
	Wait 0x000f
	SetLocalFlag 0x0083
	Wait 0x003c
	PlaySound SFX_SECRET
	Wait 0x003c
	FacePlayer
	FaceAwayFromPlayer
	MessageFromTarget TEXT_FINDING_EZLO, 0x36
	WaitUntilTextboxCloses
	EzloMessage TEXT_FINDING_EZLO, 0x37
	WaitUntilTextboxCloses
	Wait 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Call EnablePauseMenu
	EnablePlayerControl
script_0800C87C:
	TriggerInteract
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	FacePlayer
	SetIntVariable 0x00000008
	Call sub_0807F3D8
	MessageFromTarget TEXT_FINDING_EZLO, 0x36
	WaitUntilTextboxCloses
	Wait 0x000a
	DoPostScriptAction 0x0000
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800C87C
script_0800C8AE:
	MessageFromTarget TEXT_FINDING_EZLO, 0x36
	WaitUntilTextboxCloses
	Wait 0x000a
	DoPostScriptAction 0x0000
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800C780
