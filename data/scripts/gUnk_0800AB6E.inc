SCRIPT_START gUnk_0800AB6E
Call 0x0808d2cd
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807E8E4_0 
_0807E5F8 0x00000040
WaitForSomething2 0x00000080
SetEntityPosition 0x0000, 0xffe0
Call 0x0807f5c1
Wait 0x003c
CallWithArg
.short 0xde19
.short 0x0805
.short 0x0001
.short 0x0000
@ End of 4 parameters
_0807F0C8 0x0000, 0x0000
Wait 0x003c
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
TextboxNoOverlapFollowPos
.short 0x165f
.short 0x000e
@ End of 2 parameters
_0807EA94 
StartPlayerScript 0x0800acbc
WaitForSomething2 0x00000001
TextboxNoOverlapFollowPos
.short 0x1660
.short 0x000e
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
TextboxNoOverlapFollowPos
.short 0x1661
.short 0x000e
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000008
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
SetEntityPosition 0x0000, 0x0020
Call 0x0807f5c1
WaitForSomething2 0x00000010
StartPlayerScript 0x0800ace0
WaitForSomething2 0x00000001
Wait 0x003c
TextboxNoOverlapFollowPos
.short 0x1662
.short 0x000e
@ End of 2 parameters
_0807EA94 
TextboxNoOverlapFollowPos
.short 0x1663
.short 0x000e
@ End of 2 parameters
_0807EA94 
SetEntityPosition 0x0000, 0xffe0
Call 0x0807f5c1
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
StartPlayerScript 0x0800ad54
WaitForSomething2 0x00000001
Wait 0x003c
TextboxNoOverlapFollowPos
.short 0x1665
.short 0x000e
@ End of 2 parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
Wait 0x0078
Call 0x0808d281
Wait 0x0078
_0807E778 0x0004
DoFade5 
WaitFor_2 
Call 0x0807fb95
MoveEntityToPlayer 
Call 0x0807f845
_0807F0B4 0x0004
CameraTargetPlayer 
_0807E5F8 0x80000000
DoFade4 
WaitFor_2 
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
