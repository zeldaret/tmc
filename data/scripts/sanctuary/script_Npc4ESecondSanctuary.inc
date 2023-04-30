@ Sanctuary second time NPC4E? Handles cutscene
SCRIPT_START script_Npc4ESecondSanctuary
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	BeginBlock
	Call MakePedestalInteractable
	CallWithArg NPC4E_ChangeInteractableHitbox, 0x00000003
	EndBlock
script_0801373C:
	CheckEntityInteractType
	JumpIfNot script_0801373C
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtPedestal
	WaitForSyncFlagAndClear 0x00000001
	CallWithArg sub_08095A1C, script_CutsceneMiscObjectSword2
	PlaySound SFX_ELEMENT_PLACE
	Wait 0x005a
	BeginBlock
	PlaySound SFX_ELEMENT_FLOAT
	CallWithArg sub_08095D54, script_CutsceneMiscObjectWaterElementFloating
	EndBlock
	WaitForSyncFlagAndClear 0x20000000
	BeginBlock
	PlaySound SFX_ELEMENT_CHARGE
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordChange1
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge2
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge3
	EndBlock
	Wait 0x001e
	BeginBlock
	PlaySound SFX_1D0
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge5
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge6
	CallWithArg sub_08095D8C, script_CutsceneMiscObjectSwordCharge7
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
	Wait 0x0078
	SetSyncFlag 0x00000060
	CallWithArg DeleteRepeatedSoundManager, 0x00000000
	Wait 0x0078
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	Wait 0x003c
	StartPlayerScript script_PlayerPickUpSword
	SetSyncFlag 0x00000080
	SetInventoryValue ITEM_BLUE_SWORD, 0x0001
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
	MessageFromTargetPos TEXT_ITEM_GET, 0x04, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00040000
	SetLocalFlag 0x007b
	Call sub_08053250
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
