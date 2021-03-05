SCRIPT_START gUnk_08013F94
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
Call 0x0807fa41
_0807E888 
Call 0x0807df39
Wait 0x0078
_0807EB28 0x1505
_0807EA94 
SetLocalFlag 0x007d
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
