SCRIPT_START gUnk_0800B0D0
StartScript 
Call sub_0806BCD4
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806BC94
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
Call sub_0807F434
.short 0x1006 @ _0807E078 with 3 parameters
.short 0xfff8
.short 0x0004
.short 0x0040
@ End of parameters
_0807E864 
Call sub_0807DF28
Call sub_0807F2D4
_0807EB74 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806BC94
.short 0x0004
.short 0x0000
@ End of parameters
Call sub_0806BCE8
_0807EA94 
Call sub_0807DF50
_0807E878 
Call sub_0806BCB8
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806BC94
.short 0x0000
.short 0x0000
@ End of parameters
Jump 0xffb6
_0807E864 
Call sub_0807DF28
Call sub_0807F2D4
_0807EB74 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806BC94
.short 0x0004
.short 0x0000
@ End of parameters
Call sub_0807F650
_0807E9F0 
JumpIfNot 0x0008
Call sub_0806BCC0
Call sub_0807DF50
_0807E878 
Call sub_0806BCB8
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806BC94
.short 0x0000
.short 0x0000
@ End of parameters
Jump 0xff6e
StartScript 
Call sub_0807DF28
SetLocalFlag 0x0039
_0807E864 
StopScript 
WaitForPlayerAction0x17 
StartPlayerScript gUnk_0800B1C0
Wait 0x0018
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
SetRoomFlag 0x0000
Wait 0x0010
SoundReq2 0x002d
_0807EB28 0x2701
_0807E878 
Call sub_0807DF50
SCRIPT_END
.short 0x0000
