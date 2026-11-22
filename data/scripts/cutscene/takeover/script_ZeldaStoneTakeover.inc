@ Western Wood Cutscene Zelda
script_ZeldaStoneTakeover::
	BeginBlock
	DoPostScriptAction 0x000a
	Call sub_08066E38
	EndBlock
	WaitForSyncFlag 0x00000400
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
