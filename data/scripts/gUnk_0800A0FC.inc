SCRIPT_START gUnk_0800A0FC
StopScript 
CheckGlobalFlag 0x0051
JumpIfNot 0xfffa
StartScript 
_0807E864 
Call sub_0807DF28
SoundReq0x80100000 
Call sub_0807FBFC
SetEntityPositionRelative 0x005800b0
Call sub_0807F844
_0807E8E4_3 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F75C
.short 0x0060
.short 0x00d0
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08094AE8
.short 0xa160
.short 0x0800
@ End of parameters
SoundReq 0x00f7
_0807E778 0x0002
DoFade6 
StopScript 
WaitFor_2 
WaitForSomething2 0x00000004
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA1C
.short 0x0006
.short 0x0000
@ End of parameters
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
