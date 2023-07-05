@ Lon Lon Ranch Goron punching at cave
SCRIPT_START script_GoronPunching
	BeginBlock
	_0807E9D4
	Call sub_080694EC
	DoPostScriptAction 0x000a
	Call Goron_MakeInteractable
	EndBlock
script_0800B9CA:
	Call CheckInteractType
	JumpTable script_0800B9CA, script_0800B9D8, script_0800B9F4
script_0800B9D8:
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	Call sub_080694D8
	WaitUntilTextboxCloses
	Call sub_080694EC
	EnablePlayerControl
	Jump script_0800B9CA
script_0800B9F4:
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	Call sub_0807F650
	UpdateFusion
	SetPlayerIdle
	Call sub_0806948C
	JumpIf script_0800BA24
	WaitUntilTextboxCloses
	Call sub_080694EC
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B9CA
script_0800BA24:
	WaitUntilTextboxCloses
	_0807E9DC
	_0807E9D4
	Call sub_080694EC
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B9CA
