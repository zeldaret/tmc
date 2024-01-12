@ Veil Falls CUTSCENE_MISC_OBJECT Mirror Shield being spit out
SCRIPT_START script_CutsceneMiscObjectMirrorShield
	BeginBlock
	Call sub_0806D804
	SetEntitySpeed 0x0180
	EndBlock
	Wait 0x003c
	SetEntityVelocity 0x00018000
	Call sub_0806D858
script_080094EA:
	MoveTowardsTarget
	JumpIfNot script_080094EA
	Wait 0x001e
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
