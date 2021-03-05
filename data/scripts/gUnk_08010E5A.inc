SCRIPT_START gUnk_08010E5A
Wait 0x001e
SoundReq 0x0125
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807FB28
.short 0x0003
.short 0x0000
@ End of parameters
Wait 0x003c
SoundReq 0x0125
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807FB28
.short 0x0003
.short 0x0000
@ End of parameters
Wait 0x0004
SoundReq 0x0125
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807FB28
.short 0x0003
.short 0x0000
@ End of parameters
Wait 0x001e
SoundReq 0x012c
_0807E5F8 0x00800000
WaitForSomething2 0x01000000
_0807E778 0x0004
DoFade7 
WaitFor_2 
Wait 0x003c
SoundReq 0x00ab
SoundReq 0x01c2
LoadRoomEntityList 0x080f0770
_0807E5F8 0x00000010
WaitForSomething2 0x00000020
_0807E778 0x0002
DoFade6 
WaitFor_2 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DE18
.short 0x0002
.short 0x0000
@ End of parameters
_0807F0C8 0x0000, 0x0000
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
_0807F0B4 0x0001
SetEntityPositionRelative 0x006801f8
_0807E5F8 0x00000004
Wait 0x001e
_0807E5F8 0x00000040
WaitForSomething2 0x00000008
WaitForSomething2 0x00000080
SoundReq 0x01c3
_0807E5F8 0x20000000
Wait 0x0078
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F29C
.short 0x0000
.short 0x0000
@ End of parameters
Call sub_0806DC58
_0807E5F8 0x40000000
_0807E5F8 0x00000010
_0807E5F8 0x00000100
WaitForSomething2 0x00000020
WaitForSomething2 0x00000200
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1045
.short 0x000c
@ End of parameters
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1046
.short 0x0000
@ End of parameters
_0807EA94 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DDEC
.short 0x0002
.short 0x0000
@ End of parameters
_0807F0C8 0xffff, 0x0000
