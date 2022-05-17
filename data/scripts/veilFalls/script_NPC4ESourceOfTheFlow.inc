@ Veil Falls NPC4E Source of the Flow
SCRIPT_START script_NPC4ESourceOfTheFlow
	BeginBlock
	Call sub_0806DB84
	CheckKinstoneFused KINSTONE_9
	JumpIf script_08016028
	_0807EA88 0x0009
	CallWithArg sub_0806DA04, 0x00000007
	DoPostScriptAction 0x000a
	EndBlock
script_08015FE4:
	_0807EA4C
	_0807E9F0
	SetPlayerIdle
	CheckKinstoneFused KINSTONE_9
	JumpIf script_08015FFE
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_08015FE4
script_08015FFE:
	_0807F0C8 0xffff, 0x0000
