SCRIPT_START gUnk_0800DC4C
Wait 0x003c
SoundReq2 0x0031
StartPlayerScript gUnk_0800DE50
WaitForSomething2 0x00000006
_0807EB28 0x1646
_0807EA94 
_0807E5F8 0x00000001
StartPlayerScript gUnk_0800DE2C
CameraTargetPlayer 
_0807E778 0x0004
_0807E80C 0x00000000
WaitFor_2 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DE18
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0x0000, 0x0000
SetLocalFlag 0x0079
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA1C
.short 0x0002
.short 0x0000
@ End of parameters
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
