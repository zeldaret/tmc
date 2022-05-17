@ Intro Hyrule Town Kid
SCRIPT_START script_KidIntro3
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_0800F72C:
	CheckLocalFlag MACHI_01_DEMO
	JumpIfNot script_0800F72C
	DoPostScriptAction 0x0007
	Jump script_KidIntro1


