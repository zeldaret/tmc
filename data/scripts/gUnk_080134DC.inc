SCRIPT_START gUnk_080134DC
StartScript 
_0807EF80 0x0008
StopScript 
StartScript 
Call 0x0807f92d
CallWithArg
.short 0xda05
.short 0x0806
.short 0x0003
.short 0x0000
@ End of 4 parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0807df29
StartPlayerScript 0x080136d8
WaitForSomething2 0x00000001
CallWithArg
.short 0x5a1d
.short 0x0809
.short 0x3f04
.short 0x0801
@ End of 4 parameters
SoundReq 0x01cd
Wait 0x005a
StartScript 
SoundReq 0x01ce
CallWithArg
.short 0x5d55
.short 0x0809
.short 0x3e04
.short 0x0801
@ End of 4 parameters
CallWithArg
.short 0x5d55
.short 0x0809
.short 0x3e28
.short 0x0801
@ End of 4 parameters
StopScript 
WaitForSomething2 0x18000000
StartScript 
SoundReq 0x01cf
CallWithArg
.short 0x5d8d
.short 0x0809
.short 0x4054
.short 0x0801
@ End of 4 parameters
CallWithArg
.short 0x5d8d
.short 0x0809
.short 0x4074
.short 0x0801
@ End of 4 parameters
StopScript 
Wait 0x001e
StartScript 
SoundReq 0x01d0
CallWithArg
.short 0x5d8d
.short 0x0809
.short 0x40dc
.short 0x0801
@ End of 4 parameters
CallWithArg
.short 0x5d8d
.short 0x0809
.short 0x4118
.short 0x0801
@ End of 4 parameters
StopScript 
Wait 0x003c
CallWithArg
.short 0xdded
.short 0x0805
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807E5F8 0x00000200
WaitForSomething2 0x00002000
SoundReq 0x01d2
CallWithArg
.short 0x5d8d
.short 0x0809
.short 0x41dc
.short 0x0801
@ End of 4 parameters
CallWithArg
.short 0x5d8d
.short 0x0809
.short 0x4210
.short 0x0801
@ End of 4 parameters
_0807E5F8 0x00000400
WaitForSomething2 0x00004000
Wait 0x0078
_0807E5F8 0x00000060
CallWithArg
.short 0xde19
.short 0x0805
.short 0x0000
.short 0x0000
@ End of 4 parameters
Wait 0x0078
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
Wait 0x003c
StartPlayerScript 0x08013b70
_0807E5F8 0x00000080
_0807F078 0x0003, 0x0001
Call 0x0806dc3d
Call 0x0806dc59
Call 0x0807f305
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
TextboxNoOverlapFollowPos
.short 0x0503
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00040000
CallWithArg
.short 0xdded
.short 0x0805
.short 0x0001
.short 0x0000
@ End of 4 parameters
_0807F0C8 0xffff, 0x0000
