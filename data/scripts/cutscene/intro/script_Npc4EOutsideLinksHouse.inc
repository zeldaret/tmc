@ NPC4E in front of links house during intro
SCRIPT_START script_Npc4EOutsideLinksHouse
	BeginBlock
	SetEntityPositionRelative 0x0238, 0x01a8
	Call sub_0807F844
	Call sub_0807F348
	_0807E864
	Call sub_0807DF28
	EndBlock
	_0807E778 0x0010
	DoFade6
	WaitFor_2
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807F0B4 0x0004
	CameraTargetPlayer
	Call sub_0807DF50
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
