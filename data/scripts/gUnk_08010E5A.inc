SCRIPT_START gUnk_08010E5A
Wait 0x001e
SoundReq 0x0125
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
Wait 0x003c
SoundReq 0x0125
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
Wait 0x0004
SoundReq 0x0125
CallWithArg
.short 0xfb29
.short 0x0807
.short 0x0003
.short 0x0000
@ End of 4 parameters
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
CallWithArg
.short 0xde19
.short 0x0805
.short 0x0002
.short 0x0000
@ End of 4 parameters
_0807F0C8 0x0000, 0x0000
Call 0x0806dc3d
Call 0x080791bd
CallWithArg
.short 0xf245
.short 0x0807
.short 0x000d
.short 0x0000
@ End of 4 parameters
CallWithArg
.short 0xf29d
.short 0x0807
.short 0x49f6
.short 0x0800
@ End of 4 parameters
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
CallWithArg
.short 0xf29d
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
Call 0x0806dc59
_0807E5F8 0x40000000
_0807E5F8 0x00000010
_0807E5F8 0x00000100
WaitForSomething2 0x00000020
WaitForSomething2 0x00000200
TextboxNoOverlapFollowPos
.short 0x1045
.short 0x000c
@ End of 2 parameters
_0807EA94 
TextboxNoOverlapFollowPos
.short 0x1046
.short 0x0000
@ End of 2 parameters
_0807EA94 
CallWithArg
.short 0xdded
.short 0x0805
.short 0x0002
.short 0x0000
@ End of 4 parameters
_0807F0C8 0xffff, 0x0000
