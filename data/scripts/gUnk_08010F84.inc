SCRIPT_START gUnk_08010F84
Wait 0x003c
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
StartPlayerScript gUnk_080110BC
WaitForSomething2 0x00000400
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1047
.short 0x0000
@ End of parameters
_0807EA94 
Call sub_0806DC3C
Call sub_080791BC
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F244
.short 0x000d
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F29C
.short 0x49f6
.short 0x0800
@ End of parameters
Wait 0x001e
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F29C
.short 0x0000
.short 0x0000
@ End of parameters
Call sub_0806DC58
Wait 0x003c
_0807E5F8 0x08000000
SoundReq 0x0125
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807FB28
.short 0x0003
.short 0x0000
@ End of parameters
Wait 0x000f
SoundReq 0x0125
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807FB28
.short 0x0003
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DE18
.short 0x0002
.short 0x0000
@ End of parameters
_0807F0C8 0x0000, 0x0000
_0807E5F8 0x00000010
WaitForSomething2 0x00000020
SoundReq0x80100000 
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x104a
.short 0x0000
@ End of parameters
_0807EA94 
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1049
.short 0x0000
@ End of parameters
_0807EA94 
SetEntityPositionRelative 0x009801f8
Wait 0x0078
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
Call sub_0804BCDC
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
