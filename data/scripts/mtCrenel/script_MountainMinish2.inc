@ Mines Mountain Minish
SCRIPT_START script_MountainMinish2
	BeginBlock
	Call MountainMinish_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800CF96:
	TriggerInteract
	SetPlayerIdle
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800CF96
