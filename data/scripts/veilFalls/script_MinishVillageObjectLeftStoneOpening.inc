@ Waterfalls MINISH_VILLAGE_OBJECT during kinstone cutscene?
SCRIPT_START script_MinishVillageObjectLeftStoneOpening
	BeginBlock
	CheckKinstoneFused KINSTONE_SOURCE_FLOW
	JumpIf script_MinishVillageObjectLeftStone
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x0010
	Wait 0x003c
	SetEntitySpeed 0x0020
	WalkWest 0x0080
	Wait 0x001e
	DoPostScriptAction 0x0010
	SetSyncFlag 0x00000008
SCRIPT_END
