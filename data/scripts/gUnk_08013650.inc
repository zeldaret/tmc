SCRIPT_START gUnk_08013650
Call sub_0807F3F8
Wait 0x003c
_0807F0B4 0x0007
SetEntityPositionRelative 0x00a800e8
CameraTargetEntity 
Wait 0x003c
_0807E5F8 0x00000004
Wait 0x0078
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DE18
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0x0000, 0x0000
StartPlayerScript gUnk_080136B4
WaitForSomething2 0x00000002
_0807EB28 0x1501
_0807EA94 
_0807F0B4 0x0004
CameraTargetPlayer 
SetLocalFlag 0x007a
Call sub_08053250
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
