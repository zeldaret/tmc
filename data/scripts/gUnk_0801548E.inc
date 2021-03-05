SCRIPT_START gUnk_0801548E
_0807E5F8 0x00000800
WaitForSomething2 0x00001000
SoundReq 0x0125
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807FB28
.short 0x0003
.short 0x0000
@ End of parameters
_0807E5F8 0x00048000
WaitForSomething2 0x00090000
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1311
.short 0x0002
@ End of parameters
_0807EA94 
_0807E5F8 0x00008000
WaitForSomething2 0x00010000
_0807E5F8 0x00048000
WaitForSomething2 0x00010000
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DE18
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0x0000, 0x0000
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1312
.short 0x000c
@ End of parameters
_0807EA94 
_0807E5F8 0x00000800
WaitForSomething2 0x00001000
SoundReq0x80100000 
_0807E778 0x0004
DoFade5 
WaitFor_2 
SetRoomFlag 0x0001
_0807EF80 0x0006
SCRIPT_END
