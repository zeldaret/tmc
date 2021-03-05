SCRIPT_START gUnk_08013B18
StartScript 
_0807EF80 0x0008
StopScript 
StartScript 
CallWithArg
.short 0xf6b5
.short 0x0807
.short 0x01c8
.short 0x0000
@ End of 4 parameters
JumpIfNot 0xfff0
CheckInventory1 0x0006
JumpIfNot 0xffe8
CheckLocalFlag 0x0078
JumpIf 0xffe0
StopScript 
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807EB28 0x1507
_0807EA94 
StartPlayerScript 0x08010a14
WaitForSomething2 0x00000001
Call 0x0807df51
_0807E878 
Jump 0xffb2
.short 0x0000
SoundReq 0x01d3
CallWithArg
.short 0xf239
.short 0x0807
.short 0x08bf
.short 0x0000
@ End of 4 parameters
Call 0x08096029
Wait 0x003c
_0807E5F8 0x00020000
Call 0x0807f305
Wait 0x0078
WaitForSomething2 0x00040000
Call 0x080791bd
SCRIPT_END
.short 0x0000
