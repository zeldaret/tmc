@ Sanctuary third time NPC4E controlling cutscene
SCRIPT_START script_Npc4EThirdSanctuary
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	BeginBlock
	Call MakePedestalInteractable
	CallWithArg NPC4E_ChangeInteractableHitbox, 0x00000003
	EndBlock
script_080138D0:
	CheckEntityInteractType
	JumpIfNot script_080138D0
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtPedestal
	WaitForSyncFlagAndClear 0x00000001
	CallWithArg sub_08095A1C, script_CutsceneMiscObjectSword3
	PlaySound SFX_ELEMENT_PLACE
	Wait 0x005a
	BeginBlock
	PlaySound SFX_ELEMENT_FLOAT
	CallWithArg sub_08095D54, script_CutsceneMiscObjectWindElementFloating
	EndBlock
	WaitForSyncFlagAndClear 0x40000000
	BeginBlock
	PlaySound SFX_ELEMENT_CHARGE
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordChange1
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge2
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge3
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge4
	EndBlock
	Wait 0x001e
	BeginBlock
	PlaySound SFX_1D0
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge5
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge6
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge7
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge8
	EndBlock
	Wait 0x003c
	CallWithArg CreateRepeatedSoundManager, 0x00000000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00002000
	PlaySound SFX_1D2
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge9
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge10
	SetSyncFlag 0x00000400
	WaitForSyncFlagAndClear 0x00004000
	SetSyncFlag 0x00000800
	WaitForSyncFlagAndClear 0x00008000
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00010000
	Wait 0x0078
	SetSyncFlag 0x00000060
	CallWithArg DeleteRepeatedSoundManager, 0x00000000
	Wait 0x0078
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	Wait 0x003c
	StartPlayerScript script_PlayerPickUpFinalSword
	SetSyncFlag 0x00000080
	SetInventoryValue ITEM_FOURSWORD, 0x0001
	Call UpdatePlayerSkills
	Call NPC4E_SaveEquippedItems
	Call NPC4E_RestoreEquippedItems
	Call WaitForPlayerAnim
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
	PlaySound SFX_ITEM_GET
	MessageFromTargetPos TEXT_ITEM_GET, 0x05, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00040000
.ifndef EU
	SetScrollSpeed 2
	SetEntityPositionRelative 0x00e8, 0x00d8
	CameraTargetEntity
.endif
	Call NPC4E_SaveEquippedItems
	CallWithArg EquipItem, 0x00010001
	CallWithArg SetPlayerMacro, gPlayerMacroSanctuary
	Wait 0x00c8
	CallWithArg SetPlayerMacro, 0
	Call NPC4E_RestoreEquippedItems
script_08013A8E:
.ifndef EU
	CheckRoomFlag 0x0004
	JumpIfNot script_08013A8E
.endif
	CallWithArg CreateRepeatedSoundManager, 0x00000001
	_0807F0C8 0xffff, 0x0000
