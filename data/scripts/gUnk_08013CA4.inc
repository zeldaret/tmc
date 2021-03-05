SCRIPT_START gUnk_08013CA4
StopScript 
CheckPlayerInRegion 0x00e8, 0x01e8, 0x4080
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
Call 0x0807f3f9
Wait 0x003c
_0807F0B4 0x0001
SetEntityPositionRelative 0x013800e8
CameraTargetEntity 
Call 0x0807f5c1
Wait 0x0078
_0807F0B4 0x0004
CameraTargetPlayer 
Call 0x0807f5c1
_0807EB28 0x1504
_0807EA94 
SetLocalFlag 0x0079
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
