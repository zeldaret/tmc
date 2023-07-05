@ Cave NPC4E Fusion thingy Mysterious Wall
SCRIPT_START script_MysteriousWall
	BeginBlock
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0008
	Call NPC4E_IsKinstoneFused
	JumpIf script_0800B9AC
	Call NPC4E_MakeFuserInteractable
	CallWithArg NPC4E_ChangeInteractableHitbox, 0x00000005
	EndBlock
script_0800B98A:
	_0807EA4C
	UpdateFusion
	JumpIf script_0800B99E
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800B98A
script_0800B99E:
	Call MarkFuserDone
	Call EnablePauseMenu
	EnablePlayerControl
script_0800B9AC:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
