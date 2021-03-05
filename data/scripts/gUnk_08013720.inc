SCRIPT_START gUnk_08013720
StartScript 
_0807EF80 0x0008
StopScript 
StartScript 
Call sub_0807F92C
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA04
.short 0x0003
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
StartPlayerScript gUnk_080136D8
WaitForSomething2 0x00000001
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095A1C
.short 0x3f34
.short 0x0801
@ End of parameters
SoundReq 0x01cd
Wait 0x005a
StartScript 
SoundReq 0x01ce
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D54
.short 0x3e4c
.short 0x0801
@ End of parameters
StopScript 
WaitForSomething2 0x20000000
StartScript 
SoundReq 0x01cf
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x4054
.short 0x0801
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x4074
.short 0x0801
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x4094
.short 0x0801
@ End of parameters
StopScript 
Wait 0x001e
StartScript 
SoundReq 0x01d0
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x40dc
.short 0x0801
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x4118
.short 0x0801
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x4154
.short 0x0801
@ End of parameters
StopScript 
Wait 0x003c
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DDEC
.short 0x0000
.short 0x0000
@ End of parameters
_0807E5F8 0x00000200
WaitForSomething2 0x00002000
SoundReq 0x01d2
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x41dc
.short 0x0801
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08095D8C
.short 0x4210
.short 0x0801
@ End of parameters
_0807E5F8 0x00000400
WaitForSomething2 0x00004000
_0807E5F8 0x00000800
WaitForSomething2 0x00008000
Wait 0x0078
_0807E5F8 0x00000060
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DE18
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x0078
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
Wait 0x003c
StartPlayerScript gUnk_08013B70
_0807E5F8 0x00000080
_0807F078 0x0004, 0x0001
Call sub_0806DC3C
Call sub_0806DC58
Call sub_0807F304
Wait 0x003c
_0807E778 0x0004
DoFade7 
SoundReq 0x00f6
WaitFor_2 
Wait 0x003c
_0807E5F8 0x00000010
_0807E778 0x0002
DoFade6 
WaitFor_2 
SoundReq 0x0109
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x0504
.short 0x000c
@ End of parameters
_0807EA94 
_0807E5F8 0x00040000
SetLocalFlag 0x007b
Call sub_08053250
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
