SCRIPT_START gUnk_0800F184
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0008
_0807EF80 0x000a
StopScript 
Call 0x0807f349
_0807EB44 0x0002
WaitForSomething2 0x00000002
_0807EF80 0x0007
_0807EDD4 0x01b8, 0x0328
_0807E5F8 0x00000040
_0807EDD4 0x01f8, 0x0328
_0807EB44 0x0004
_0807E930 0x0008
_0807E8E4_0 
_0807E5F8 0x00000040
WaitForSomething2 0x00000002
Call 0x0806e441
Wait 0x0078
_0807E5F8 0x00000040
WaitForSomething2 0x00000002
StopScript 
StartScript 
CallWithArg
.short 0xf681
.short 0x0807
.short 0x01c0
.short 0x0000
@ End of 4 parameters
JumpIf 0x0034
StopScript 
_0807E864 
Call 0x0807f9a5
_0807EB74 
_0807E930 0x0008
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlapFollowPos
.short 0x1206
.short 0x000c
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800f33c
WaitForSomething2 0x00000400
_0807E878 
Jump 0xffbe
CallWithArg
.short 0xf681
.short 0x0807
.short 0x0230
.short 0x0000
@ End of 4 parameters
JumpIfNot 0x0034
StopScript 
_0807E864 
Call 0x0807f9a5
_0807EB74 
_0807E930 0x0008
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlapFollowPos
.short 0x1206
.short 0x000c
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800f354
WaitForSomething2 0x00000400
_0807E878 
Jump 0xff7e
CallWithArg
.short 0xf6b5
.short 0x0807
.short 0x0310
.short 0x0000
@ End of 4 parameters
JumpIf 0x0034
StopScript 
_0807E864 
Call 0x0807f9a5
_0807EB74 
_0807E930 0x0008
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlapFollowPos
.short 0x1206
.short 0x000c
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800f36c
WaitForSomething2 0x00000400
_0807E878 
Jump 0xff3e
CallWithArg
.short 0xf6b5
.short 0x0807
.short 0x0340
.short 0x0000
@ End of 4 parameters
JumpIfNot 0x0034
StopScript 
_0807E864 
Call 0x0807f9a5
_0807EB74 
_0807E930 0x0008
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlapFollowPos
.short 0x1206
.short 0x000c
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800f384
WaitForSomething2 0x00000400
_0807E878 
Jump 0xfefe
StopScript 
StartScript 
CheckKinstoneFused 0x0032
JumpIf 0x0020
CheckEntityInteractType 
JumpIfNot 0xfff0
StopScript 
_0807E864 
_0807EB74 
_0807E930 0x0008
TextboxNoOverlapFollowPos
.short 0x1208
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E878 
Jump 0xfed4
StopScript 
_0807E5F8 0x00000040
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x0100
_0807EB44 0x0002
_0807EEF4 0x00c0, 0x0000
_0807E5F8 0x00000040
_0807EF80 0x0006
SCRIPT_END
