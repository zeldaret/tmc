SCRIPT_START gUnk_08010F84
Wait 0x003c
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
StartPlayerScript 0x080110bc
WaitForSomething2 0x00000400
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1047
.short 0x0000
@ End of parameters
_0807EA94 
Call 0x0806dc3d
Call 0x080791bd
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf245
.short 0x0807
.short 0x000d
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf29d
.short 0x0807
.short 0x49f6
.short 0x0800
@ End of parameters
Wait 0x001e
_0807E5F8 0x00000100
WaitForSomething2 0x00000200
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf29d
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Call 0x0806dc59
Wait 0x003c
_0807E5F8 0x08000000
SoundReq 0x0125
.short 0x140c @ CallWithArg with 4 parameters
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of parameters
Wait 0x000f
SoundReq 0x0125
.short 0x140c @ CallWithArg with 4 parameters
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0xde19
.short 0x0805
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
Call 0x0804bcdd
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
