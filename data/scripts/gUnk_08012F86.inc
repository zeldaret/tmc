SCRIPT_START gUnk_08012F86
StartScript 
CheckLocalFlag 0x0060
JumpIf 0x0044
_0807E864 
Call 0x0807df29
StartPlayerScript 0x080130e4
SetLocalFlag 0x0060
ClearLocalFlag 0x0061
StopScript 
WaitForSomething2 0x00000004
_0807E908 0x0004
Call 0x0806a959
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf93d
.short 0x0807
.short 0xf2f4
.short 0x0000
@ End of parameters
Call 0x0807df51
_0807E878 
SetLocalFlag 0x0062
Jump 0x002a
StartScript 
_0807E930 0x000d
_0807E908 0x0005
SetLocalFlag 0x0062
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf93d
.short 0x0807
.short 0xf2f4
.short 0x0000
@ End of parameters
Call 0x0806aa11
StopScript 
CheckInventory1 0x0038
JumpIf 0x000e
_0807E944 
TextboxNoOverlap 0x4403
_0807EA94 
Jump 0xfff6
_0807E944 
StartScript 
_0807E864 
Call 0x0807df29
StopScript 
SoundReq 0x00cd
_0807F088 0x0038
WaitPlayerAction8 
Wait 0x001e
_0807E8E4_0 
Call 0x0806ab9d
_0807E930 0x000b
Wait 0x003c
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlap 0x4404
_0807EA94 
Wait 0x001e
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlap 0x440e
_0807EA94 
Wait 0x001e
Call 0x0806a9e9
_0807E930 0x000f
Wait 0x00f0
TextboxNoOverlap 0x4405
_0807EA94 
_0807E5F8 0x00000200
_0807F034 0x0015
WaitPlayerAction8 
_0807EB8C 
TextboxNoOverlap 0x4406
_0807EA94 
_0807E908 0x0001
Call 0x0807df51
_0807E878 
Call 0x0806a96d
JumpIfNot 0xfff8
TextboxNoOverlap 0x4407
_0807EA94 
_0807E908 0x0001
Call 0x0806a96d
JumpIfNot 0xfff8
TextboxNoOverlap 0x440d
_0807EA94 
_0807E908 0x0001
Jump 0xffd6
CheckLocalFlag 0x0062
JumpIfNot 0x0008
Call 0x0806a9b1
StopScript 
Call 0x0806a96d
JumpIfNot 0xfff8
_0807E864 
Call 0x0806aa19
_0807EA94 
_0807E878 
_0807E908 0x0001
Jump 0xffe4
StartScript 
_0807EB44 0x0006
SetEntityNonPlanarMovement 0x0140
StopScript 
_0807EDD4 0x00a8, 0x0060
Wait 0x0008
_0807EF80 0x0000
Wait 0x0008
_0807EF80 0x0004
Wait 0x000f
_0807E5F8 0x00000004
SCRIPT_END
.short 0x0000
