@ Mines Mountain Minish
SCRIPT_START script_MountainMinish2
	BeginBlock
	Call sub_08068104
	DoPostScriptAction 0x000a
	EndBlock
script_0800CF96:
	_0807E944
	_0807E864
	Call sub_08068190
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800CF96
