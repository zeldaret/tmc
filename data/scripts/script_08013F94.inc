SCRIPT_START script_08013F94
StartScript 
_0807EF80 0x0008
StopScript 
CheckLocalFlag 0x007d
JumpIf 0x003e
StopScript 
StartScript 
CheckInventory1 0x0003
JumpIfNot 0xfff6
CheckPlayerFlags 0x00400000
JumpIfNot 0xffec
StopScript 
Call sub_0807FA40
_0807E888 
Call sub_0807DF38
Wait 0x0078
_0807EB28 0x1505
_0807EA94 
SetLocalFlag 0x007d
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
