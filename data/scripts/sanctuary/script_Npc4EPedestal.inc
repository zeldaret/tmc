@ Sanctuary NPC4E Pedestal for sword
SCRIPT_START script_Npc4EPedestal
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	BeginBlock
	Call sub_0807F92C
	CallWithArg sub_0806DA04, 0x00000003
	EndBlock
script_080134F8:
	CheckEntityInteractType
	JumpIfNot script_080134F8
	SetPlayerIdle
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtPedestal
	WaitForSyncFlagAndClear 0x00000001
	CallWithArg sub_08095A1C, script_Object6ASwordInPedestal
	PlaySound SFX_ELEMENT_PLACE
	Wait 0x005a
	BeginBlock
	PlaySound SFX_ELEMENT_FLOAT
	CallWithArg sub_08095D54, script_Object6AEarthElementFloating
	CallWithArg sub_08095D54, script_Object6AFireElementFloating
	EndBlock
	WaitForSyncFlagAndClear 0x18000000
	BeginBlock
	PlaySound SFX_ELEMENT_CHARGE
	CallWithArg sub_08095D8C, script_Object6ASwordChange1
	CallWithArg sub_08095D8C, script_Object6ASwordCharge2
	EndBlock
	Wait 0x001e
	BeginBlock
	PlaySound SFX_1D0
	CallWithArg sub_08095D8C, script_Object6ASwordCharge5
	CallWithArg sub_08095D8C, script_Object6ASwordCharge6
	EndBlock
	Wait 0x003c
	CallWithArg CreateManager36, 0x00000000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00002000
	PlaySound SFX_1D2
	CallWithArg sub_08095D8C, script_Object6ASwordCharge9
	CallWithArg sub_08095D8C, script_Object6ASwordCharge10
	SetSyncFlag 0x00000400
	WaitForSyncFlagAndClear 0x00004000
	Wait 0x0078
	SetSyncFlag 0x00000060
	CallWithArg DeleteManager36, 0x00000000
	Wait 0x0078
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	Wait 0x003c
	StartPlayerScript script_PlayerPickUpSword
	SetSyncFlag 0x00000080
	_0807F078 0x0003, 0x0001
	Call sub_0806DC3C
	Call sub_0806DC58
	Call WaitForPlayerFrameHiBit
	Wait 0x003c
	SetFadeTime 0x0004
	SetFade7
	PlaySound SFX_EVAPORATE
	WaitForFadeFinish
	Wait 0x003c
	SetSyncFlag 0x00000010
	SetFadeTime 0x0002
	SetFade6
	WaitForFadeFinish
	PlaySound SFX_109
	MessageFromTargetPos 0x0503, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00040000
	CallWithArg CreateManager36, 0x00000001
	_0807F0C8 0xffff, 0x0000
