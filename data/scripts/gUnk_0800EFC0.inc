SCRIPT_START gUnk_0800EFC0
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807E9D4 
_0807EF80 0x000a
CheckLocalFlag 0x007b
JumpIf 0x00b0
StopScript 
Jump 0x0026
_0807EB44 0x0006
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
Wait 0x0004
_0807EB44 0x0004
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
Wait 0x0004
_0807EB44 0x0002
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
Wait 0x0004
_0807EB44 0x0002
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
_0807EDD4 0x0088, 0x0040
_0807EF80 0x000a
_0807EB44 0x0002
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
Wait 0x0004
_0807EB44 0x0004
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
Wait 0x0004
_0807EB44 0x0006
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
Wait 0x0004
_0807EB44 0x0006
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
_0807EDD4 0x0068, 0x0040
_0807EF80 0x000a
CheckLocalFlag 0x007b
JumpIf 0x0006
Jump 0xff5a
StopScript 
Call 0x0806aee5
Jump 0xfff6
.short 0x0000
StartScript 
_0807F0B4 0x0001
CameraTargetPlayer 
StopScript 
CheckPlayerInRegion 0x01f8, 0x0338, 0x1030
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
LoadRoomEntityList 0x080ee8ac
StartPlayerScript 0x0800f14c
WaitForSomething2 0x00000001
_0807E5F8 0x0000001e
WaitForSomething2 0x00000040
TextboxNoOverlapFollowPos
.short 0x1201
.short 0x000c
@ End of 2 parameters
_0807EA94 
WaitForSomething2 0x000003c0
_0807E8E4_0 
TextboxNoOverlapFollowPos
.short 0x1202
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807F034 0x0067
WaitPlayerAction8 
_0807E8E4_0 
_0807E5F8 0x00000002
WaitForSomething2 0x00000040
TextboxNoOverlapFollowPos
.short 0x1203
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000002
Call 0x0807df51
_0807E878 
WaitForSomething2 0x00000040
CheckKinstoneFused 0x0032
JumpIfNot 0xfffa
_0807E864 
Call 0x0807df29
_0807E5F8 0x0000001e
Wait 0x003c
_0807E8E4_1 
WaitForSomething2 0x000003c0
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
