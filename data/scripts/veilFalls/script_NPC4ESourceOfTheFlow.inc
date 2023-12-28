@ Veil Falls NPC4E Source of the Flow
SCRIPT_START script_NPC4ESourceOfTheFlow
	BeginBlock
	Call sub_0806DB84
	CheckKinstoneFused KINSTONE_SOURCE_FLOW
	JumpIf script_08016028
	_0807EA88 KINSTONE_SOURCE_FLOW
	CallWithArg NPC4E_ChangeInteractableHitbox, 0x00000007
	DoPostScriptAction 0x000a
	EndBlock
script_08015FE4:
	_0807EA4C
	UpdateFusion
	SetPlayerIdle
	CheckKinstoneFused KINSTONE_SOURCE_FLOW
	JumpIf script_08015FFE
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_08015FE4
script_08015FFE:
	_0807F0C8 0xffff, 0x0000
