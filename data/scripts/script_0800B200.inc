SCRIPT_START script_0800B200
StartScript 
_0807E5F8 0x00000000
CheckLocalFlag 0x001d
JumpIf 0x0044
SetEntityNonPlanarMovement 0x00c0
StopScript 
WaitForSomething2 0x00000001
Call sub_0807DF28
MoveEntityToPlayer 
CameraTargetEntity 
_0807EDD4 0x0068, 0x0380
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
Call sub_0807DF50
Wait 0x000c
CameraTargetPlayer 
Wait 0x0008
_0807E878 
CheckLocalFlag 0x001d
JumpIfNot 0xffc6
SCRIPT_END
