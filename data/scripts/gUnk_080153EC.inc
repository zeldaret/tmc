SCRIPT_START gUnk_080153EC
StartScript 
_0807F0B4 0x0007
SetEntityPositionRelative 0x00680078
CameraTargetEntity 
StopScript 
SoundReq2 0x002a
_0807E778 0x0004
DoFade4 
WaitFor_2 
Wait 0x003c
_0807E5F8 0x00000080
WaitForSomething2 0x00000100
_0807E5F8 0x00000800
WaitForSomething2 0x00001000
_0807E5F8 0x00000880
WaitForSomething2 0x00001100
_0807F0B4 0x0004
SetEntityPositionRelative 0x00900078
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1330
.short 0x0002
@ End of parameters
_0807EA94 
_0807E5F8 0x00008000
WaitForSomething2 0x00010000
_0807E5F8 0x00000880
WaitForSomething2 0x00001000
Wait 0x003c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x130d
.short 0x0002
@ End of parameters
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x130e
.short 0x000c
@ End of parameters
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x130f
.short 0x0002
@ End of parameters
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1310
.short 0x000c
@ End of parameters
_0807EA94 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0805DDEC
.short 0x0001
.short 0x0000
@ End of parameters
_0807F0C8 0xffff, 0x0000
