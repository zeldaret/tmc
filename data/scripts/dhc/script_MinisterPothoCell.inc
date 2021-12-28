@ DHC Minister Potho in King cell
SCRIPT_START script_MinisterPothoCell
	BeginBlock
	_0807EB44 0x0002
	DoPostScriptAction 0x000a
	Call sub_080668F0
	EndBlock
script_0800E41A:
	CheckEntityInteractType
	JumpIfNot script_0800E41A
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x2406
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800E41A
