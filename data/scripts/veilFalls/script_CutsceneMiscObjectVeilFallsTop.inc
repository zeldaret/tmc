@ CUTSCENE_MISC_OBJECT in Veil Falls Top?
SCRIPT_START script_CutsceneMiscObjectVeilFallsTop
	BeginBlock
	Call sub_0806D7C4
	SetEntitySpeed 0x0080
	EndBlock
	Wait 0x003c
	SetEntityVelocity 0x00018000
script_080094BC:
	MoveTowardsTarget
	JumpIfNot script_080094BC
	Wait 0x003c
	DoPostScriptAction 0x0006
SCRIPT_END
