@ Waterfalls OBJECT_3E during kinstone cutscene?
SCRIPT_START script_Object3ERightStoneOpening
	BeginBlock
	CheckKinstoneFused KINSTONE_9
	JumpIf script_Object3ERightStone
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x0010
	Wait 0x003c
	SetEntitySpeed 0x0020
	WalkEast 0x0080
	Wait 0x001e
	DoPostScriptAction 0x0010
	SetSyncFlag 0x00000004
SCRIPT_END
