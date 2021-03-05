SCRIPT_START gUnk_0800A0FC
StopScript 
CheckGlobalFlag 0x0051
JumpIfNot 0xfffa
StartScript 
_0807E864 
Call 0x0807df29
SoundReq0x80100000 
Call 0x0807fbfd
SetEntityPositionRelative 0x005800b0
Call 0x0807f845
_0807E8E4_3 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf75d
.short 0x0807
.short 0x0060
.short 0x00d0
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0x4ae9
.short 0x0809
.short 0xa160
.short 0x0800
@ End of parameters
SoundReq 0x00f7
_0807E778 0x0002
DoFade6 
StopScript 
WaitFor_2 
WaitForSomething2 0x00000004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda1d
.short 0x0806
.short 0x0006
.short 0x0000
@ End of parameters
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
