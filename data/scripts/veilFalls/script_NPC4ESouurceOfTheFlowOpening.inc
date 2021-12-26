@ Veil Falls NPC4E Source of the Flow during opening Kinstone cutscene
SCRIPT_START script_NPC4ESouurceOfTheFlowOpening
	_0807E5F8 0x00000003
	WaitForSomething2 0x0000000c
	_0807F0C8 0x0000, 0x0000
	PlaySound SFX_SECRET
	_0807EB28 0x0b1f
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
script_08016028:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
