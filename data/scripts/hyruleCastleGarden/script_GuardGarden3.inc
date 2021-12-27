@ Intro Hyrule Castle Garden Guard
SCRIPT_START script_GuardGarden3
	BeginBlock
	_0807EB44 0x0004
script_0801196A:
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_0801197C:
	CheckEntityInteractType
	JumpIfNot script_0801197C
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	CheckGlobalFlag 0x0015
	JumpIf script_080119A0
	MessageFromTarget 0x103d
	Jump script_080119A4
script_080119A0:
	MessageFromTarget 0x103f
script_080119A4:
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0801197C
