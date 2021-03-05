SCRIPT_START gUnk_080098D4
StartScript 
StopScript 
CheckGlobalFlag 0x0020
JumpIfNot 0xfffa
CheckInventory1 0x003c
JumpIfNot 0xfffa
CheckLocalFlag 0x005d
JumpIf 0x0022
SetLocalFlag 0x005d
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807EB28 0x280a
_0807EA94 
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
