SCRIPT_START gUnk_08013AA6
Call 0x0807f3f9
Wait 0x003c
_0807E5F8 0x00000008
Wait 0x0078
.short 0x140c @ CallWithArg with 4 parameters
.short 0xde19
.short 0x0805
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0x0000, 0x0000
Wait 0x003c
_0807F0B4 0x0004
SetEntityPositionRelative 0x005000e8
CameraTargetEntity 
Wait 0x003c
LoadRoomEntityList 0x080f55d8
Wait 0x0078
_0807F0B4 0x0007
MoveEntityToPlayer 
CameraTargetEntity 
Wait 0x003c
_0807EB28 0x1502
_0807EA94 
_0807F0B4 0x0004
CameraTargetPlayer 
SetLocalFlag 0x007c
Call 0x08053251
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
