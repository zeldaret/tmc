SCRIPT_START script_08012CD8
StopScript 
StartScript 
_0807E564 
JumpIfNot 0xfff8
CheckPlayerInRegion 0x0380, 0x03b0, 0x4040
JumpIfNot 0xffec
ComparePlayerAction 0x0015
JumpIf 0xffe4
_0807E864 
Call sub_0807DF28
StopScript 
_0807EB28 0x2203
_0807EA94 
SetLocalFlag 0x003e
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
