@ Sanctuary third time NPC4E controlling cutscene
SCRIPT_START script_Npc4EThirdSanctuary
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	BeginBlock
	Call sub_0807F92C
	CallWithArg sub_0806DA04, 0x00000003
	EndBlock
script_080138D0:
	CheckEntityInteractType
	JumpIfNot script_080138D0
	_0807E864
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtPedestal
	WaitForSyncFlagAndClear 0x00000001
	CallWithArg sub_08095A1C, script_Object6ASword3
	PlaySound SFX_ELEMENT_PLACE
	Wait 0x005a
	BeginBlock
	PlaySound SFX_ELEMENT_FLOAT
	CallWithArg sub_08095D54, script_Object6AWindElementFloating
	EndBlock
	WaitForSyncFlagAndClear 0x40000000
	BeginBlock
	PlaySound SFX_ELEMENT_CHARGE
	CallWithArg sub_08095D8C, script_Object6ASwordChange1
	CallWithArg sub_08095D8C, script_Object6ASwordCharge2
	CallWithArg sub_08095D8C, script_Object6ASwordCharge3
	CallWithArg sub_08095D8C, script_Object6ASwordCharge4
	EndBlock
	Wait 0x001e
	BeginBlock
	PlaySound SFX_1D0
	CallWithArg sub_08095D8C, script_Object6ASwordCharge5
	CallWithArg sub_08095D8C, script_Object6ASwordCharge6
	CallWithArg sub_08095D8C, script_Objet6ASwordCharge7
	CallWithArg sub_08095D8C, script_Object6ASwordCharge8
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
	SetSyncFlag 0x00000800
	WaitForSyncFlagAndClear 0x00008000
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00010000
	Wait 0x0078
	SetSyncFlag 0x00000060
	CallWithArg DeleteManager36, 0x00000000
	Wait 0x0078
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	Wait 0x003c
	StartPlayerScript script_PlayerPickUpFinalSword
	SetSyncFlag 0x00000080
	_0807F078 0x0006, 0x0001
	Call sub_0807AEE4
	Call sub_0806DC3C
	Call sub_0806DC58
	Call sub_0807F304
	Wait 0x003c
	_0807E778 0x0004
	DoFade7
	PlaySound SFX_EVAPORATE
	WaitForFadeFinish
	Wait 0x003c
	SetSyncFlag 0x00000010
	_0807E778 0x0002
	DoFade6
	WaitForFadeFinish
	PlaySound SFX_109
	MessageFromTargetPos 0x0505, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00040000
.ifndef EU
	_0807F0B4 0x0002
	SetEntityPositionRelative 0x00e8, 0x00d8
	CameraTargetEntity
.endif
	Call sub_0806DC3C
	CallWithArg sub_0807F244, 0x00010001
	CallWithArg sub_0807F29C, gUnk_080049FE
	Wait 0x00c8
	CallWithArg sub_0807F29C, 0x00000000
	Call sub_0806DC58
script_08013A8E:
.ifndef EU
	CheckRoomFlag 0x0004
	JumpIfNot script_08013A8E
.endif
	CallWithArg CreateManager36, 0x00000001
	_0807F0C8 0xffff, 0x0000
