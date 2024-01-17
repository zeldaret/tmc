@ Intro Hyrule Town Player at Pina
SCRIPT_START script_PlayerIntro5
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	Call ReadPlayerAnimationState
	JumpTable script_0800FB06, script_0800FB10, script_0800FB06, script_0800FAFC
script_0800FAFC:
	CallWithArg sub_0807F4F8, 0x0000027c
script_0800FB06:
	CallWithArg sub_0807F464, 0x000000e8
script_0800FB10:
	MoveTo 0x00e8, 0x0270
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
