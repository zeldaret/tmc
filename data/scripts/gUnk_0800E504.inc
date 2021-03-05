SCRIPT_START gUnk_0800E504
StartScript 
StopScript 
CheckLocalFlag 0x007d
JumpIf 0x002e
CheckPlayerInRegion 0x00a8, 0x0178, 0x1080
JumpIfNot 0xfff6
_0807E864 
Wait 0x001e
Call sub_0807F3F8
Wait 0x003c
SoundReq 0x0105
Wait 0x001e
_0807EB28 0x1617
SetLocalFlag 0x007d
_0807E878 
_0807EF80 0x0006
SCRIPT_END
