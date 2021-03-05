SCRIPT_START gUnk_0800B308
StartScript 
CheckLocalFlag 0x001d
JumpIf 0x008c
_0807EF80 0x0001
SetEntityNonPlanarMovement 0x0040
SetEntityDirection 0x0010
CheckKinstoneFused 0x0006
JumpIfNot 0x0008
Call 0x080676d9
CheckKinstoneFused 0x0007
JumpIfNot 0x0008
Call 0x080676d9
CheckKinstoneFused 0x0008
JumpIfNot 0x0008
Call 0x080676d9
StopScript 
Call 0x0806757d
StopScript 
WaitForSomething2 0x00000002
SoundReq 0x00fd
Call 0x080676d9
Call 0x0806757d
Call 0x080675d5
Wait 0x0014
StartScript 
_0807E5F8 0x00000001
CheckKinstoneFused 0x0006
JumpIfNot 0xffd0
CheckKinstoneFused 0x0007
JumpIfNot 0xffc8
CheckKinstoneFused 0x0008
JumpIfNot 0xffc0
StopScript 
SetLocalFlag 0x001d
SoundReq 0x0072
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
