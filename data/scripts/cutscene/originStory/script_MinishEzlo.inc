@ Ezlo Cutscene MinishEzlo
SCRIPT_START script_MinishEzlo
	BeginBlock
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	SetAnimationState 0x0000
	Call DeleteHitbox
	EndBlock
	CallWithArg sub_0806AF60, 0x00000000
	WaitForSyncFlagAndClear 0x00008000
	CallWithArg sub_0806AF60, 0x00000004
	MoveTo 0x0078, 0x00b8
	SetAnimationState 0x0000
	CallWithArg sub_0806AF60, 0x00000000
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	DoPostScriptAction 0x000d
	SetAnimationState 0x0000
	CallWithArg sub_0806AF60, 0x00000004
	MoveTo 0x0078, 0x00c8
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	SetAnimationState 0x0000
	CallWithArg sub_0806AF60, 0x00000000
	DoPostScriptAction 0x0010
	Wait 0x0028
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	Wait 0x000a
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	Wait 0x000a
	DoPostScriptAction 0x0010
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	SetAnimation 0x000d
	Call WaitForAnimDone
	SetSyncFlag 0x00010000
	Wait 0x003c
	DoPostScriptAction 0x0005
	Wait 0x003c
script_080155E6:
	CheckRoomFlag 0x0001
	JumpIfNot script_080155E6
	DoPostScriptAction 0x0006
SCRIPT_END
