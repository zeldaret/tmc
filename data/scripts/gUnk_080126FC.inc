SCRIPT_START gUnk_080126FC
StartScript 
SetEntityNonPlanarMovement 0x0040
_0807EF80 0x0007
StopScript 
_0807E930 0x0020
WaitForSomething2 0x00000004
_0807E930 0x0022
Call 0x0807f3c9
TextboxNoOverlapFollowPos
.short 0x1102
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0021
Call 0x0807f3c9
TextboxNoOverlapFollowPos
.short 0x1103
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x0004
Wait 0x003c
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x0011
_0807E930 0x001c
TextboxNoOverlapFollowPos
.short 0x1105
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0022
Call 0x0807f3c9
TextboxNoOverlapFollowPos
.short 0x1106
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x001c
Call 0x0806d96d
TextboxNoOverlapFollowPos
.short 0x1107
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0021
Call 0x0807f3c9
TextboxNoOverlapFollowPos
.short 0x1108
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x001c
Call 0x0806d96d
TextboxNoOverlapFollowPos
.short 0x1109
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0020
_0807EF80 0x000a
_0807E9D4 
_0807E5F8 0x00000008
StopScript 
StartScript 
CheckRoomFlag 0x0000
JumpIf 0x0028
CheckEntityInteractType 
JumpIfNot 0xfff0
StopScript 
_0807E864 
Call 0x0806d945
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x1114
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0020
_0807E878 
Jump 0xffd0
_0807E864 
_0807E9DC 
CallWithArg
.short 0xf5b1
.short 0x0807
.short 0x003c
.short 0x0000
@ End of 4 parameters
Call 0x080791d1
StopScript 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x000b
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
Call 0x0806d945
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x110a
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x110b
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x0004
Wait 0x003c
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x110c
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x110d
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x110e
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call 0x0806d909
_0807EC1C 0x0010
_0807EF80 0x000a
_0807E9D4 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
StopScript 
StartScript 
Call 0x0806d945
CheckEntityInteractType 
JumpIf 0x000e
CheckPlayerInRegion2 0x3030
JumpIfNot 0x0020
Jump 0xffe6
_0807E864 
_0807E930 0x0010
StopScript 
TextboxNoOverlapFollowPos
.short 0x1115
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0018
_0807E878 
Jump 0xffcc
StopScript 
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807EB8C 
Call 0x0806d945
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x110f
.short 0x000c
@ End of 2 parameters
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call 0x0806d909
_0807EC1C 0x0050
_0807EA94 
Call 0x0807df51
_0807E878 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
StopScript 
StartScript 
Call 0x0806d945
CheckEntityInteractType 
JumpIf 0x000e
CheckPlayerInRegion2 0x3030
JumpIfNot 0x0020
Jump 0xffe6
_0807E864 
_0807E930 0x0010
StopScript 
TextboxNoOverlapFollowPos
.short 0x1115
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0018
_0807E878 
Jump 0xffcc
StopScript 
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
_0807EB8C 
Call 0x0806d945
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x1110
.short 0x000c
@ End of 2 parameters
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call 0x0806d909
_0807EC1C 0x0050
_0807E930 0x0018
_0807EA94 
Call 0x0807df51
_0807E878 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
StopScript 
StartScript 
Call 0x0806d945
CheckEntityInteractType 
JumpIf 0x000e
CheckPlayerInRegion2 0x3030
JumpIfNot 0x0020
Jump 0xffe6
_0807E864 
_0807E930 0x0010
StopScript 
TextboxNoOverlapFollowPos
.short 0x1115
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E930 0x0018
_0807E878 
Jump 0xffcc
StopScript 
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
SoundReq0x80100000 
_0807EF80 0x000b
_0807EB8C 
Call 0x0806d945
_0807E930 0x0010
TextboxNoOverlapFollowPos
.short 0x1111
.short 0x000c
@ End of 2 parameters
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call 0x0806d8a1
_0807EE30 
JumpIfNot 0xfffc
_0807E930 0x001f
_0807EA94 
StartPlayerScript 0x08012b18
Call 0x0806d9a5
_0807EF80 0x0008
Wait 0x0078
SoundReq2 0x000e
StartScript 
_0807E8E4_2 
_0807EB28 0x1112
StopScript 
_0807EA94 
_0807E5F8 0x00000008
_0807EF80 0x0006
SCRIPT_END
