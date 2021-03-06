SCRIPT_START gUnk_08012F86
StartScript 
CheckLocalFlag 0x0060
JumpIf 0x0044
_0807E864 
Call sub_0807DF28
StartPlayerScript gUnk_080130E4
SetLocalFlag 0x0060
ClearLocalFlag 0x0061
StopScript 
WaitForSomething2 0x00000004
_0807E908 0x0004
Call sub_0806A958
CallWithArg sub_0807F93C, 0x0000f2f4
Call sub_0807DF50
_0807E878 
SetLocalFlag 0x0062
Jump 0x002a
StartScript 
_0807E930 0x000d
_0807E908 0x0005
SetLocalFlag 0x0062
CallWithArg sub_0807F93C, 0x0000f2f4
Call sub_0806AA10
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
Call sub_0807DF28
StopScript 
SoundReq 0x00cd
_0807F088 0x0038
WaitPlayerAction8 
Wait 0x001e
_0807E8E4_0 
Call sub_0806AB9C
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
Call sub_0806A9E8
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
Call sub_0807DF50
_0807E878 
Call sub_0806A96C
JumpIfNot 0xfff8
TextboxNoOverlap 0x4407
_0807EA94 
_0807E908 0x0001
Call sub_0806A96C
JumpIfNot 0xfff8
TextboxNoOverlap 0x440d
_0807EA94 
_0807E908 0x0001
Jump 0xffd6
CheckLocalFlag 0x0062
JumpIfNot 0x0008
Call sub_0806A9B0
StopScript 
Call sub_0806A96C
JumpIfNot 0xfff8
_0807E864 
Call sub_0806AA18
_0807EA94 
_0807E878 
_0807E908 0x0001
Jump 0xffe4
