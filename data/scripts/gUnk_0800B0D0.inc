SCRIPT_START gUnk_0800B0D0
StartScript 
Call 0x0806bcd5
_0807EF80 0x000a
CallWithArg
.short 0xbc95
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
StopScript 
Call 0x0807f435
_0807E078
.short 0xfff8
.short 0x0004
.short 0x0040
@ End of 3 parameters
_0807E864 
Call 0x0807df29
Call 0x0807f2d5
_0807EB74 
CallWithArg
.short 0xbc95
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x0806bce9
_0807EA94 
Call 0x0807df51
_0807E878 
Call 0x0806bcb9
CallWithArg
.short 0xbc95
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffb6
_0807E864 
Call 0x0807df29
Call 0x0807f2d5
_0807EB74 
CallWithArg
.short 0xbc95
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x0807f651
_0807E9F0 
JumpIfNot 0x0008
Call 0x0806bcc1
Call 0x0807df51
_0807E878 
Call 0x0806bcb9
CallWithArg
.short 0xbc95
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xff6e
StartScript 
Call 0x0807df29
SetLocalFlag 0x0039
_0807E864 
StopScript 
WaitForPlayerAction0x17 
StartPlayerScript 0x0800b1c0
Wait 0x0018
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
SetRoomFlag 0x0000
Wait 0x0010
SoundReq2 0x002d
_0807EB28 0x2701
_0807E878 
Call 0x0807df51
SCRIPT_END
.short 0x0000
