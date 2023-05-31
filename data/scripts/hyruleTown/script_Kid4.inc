@ Hyrule Town Kid pacing around in school garden
SCRIPT_START script_Kid4
	BeginBlock
	DoPostScriptAction 0x0000
	Call Kid_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_080103C2:
	Wait 0x001e
	Call sub_08062948
	Jump script_080103C2
