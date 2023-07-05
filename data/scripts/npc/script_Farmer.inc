@ Farmer
SCRIPT_START script_Farmer
	BeginBlock
	Call Farmers_MakeInteractable
	DoPostScriptAction 0x000a
	CallWithArg sub_0806BC94, 0x00000000
	EndBlock
script_0800B0E8:
	Call CheckInteractType
	JumpTable script_0800B0E8, script_0800B0F6, script_0800B134
script_0800B0F6:
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Call WaitForAnimDone
	FacePlayer
	CallWithArg sub_0806BC94, 0x00000004
	Call sub_0806BCE8
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Call sub_0806BCB8
	CallWithArg sub_0806BC94, 0x00000000
	Jump script_0800B0E8
script_0800B134:
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	Call WaitForAnimDone
	FacePlayer
	CallWithArg sub_0806BC94, 0x00000004
	Call sub_0807F650
	UpdateFusion
.ifndef EU
	@! @bug: In EU, Eenie is marked as done fusing if kinstone menu is closed without fusing
	JumpIfNot script_0800B160
.endif
	Call Farmers_MarkEenieFuserDoner
script_0800B160:
	Call EnablePauseMenu
	EnablePlayerControl
	Call sub_0806BCB8
	CallWithArg sub_0806BC94, 0x00000000
	Jump script_0800B0E8
