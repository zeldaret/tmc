SCRIPT_START gUnk_0800E544
StartScript 
StopScript 
CheckLocalFlag 0x007e
JumpIf 0x0034
CheckPlayerInRegion 0x00a8, 0x00c0, 0x0880
JumpIfNot 0xfff6
_0807E864 
Wait 0x001e
Call sub_0807F3F8
Wait 0x003c
SoundReq 0x0105
Wait 0x001e
_0807EB28 0x1622
Call sub_08053494
SetLocalFlag 0x007e
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
