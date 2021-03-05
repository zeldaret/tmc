SCRIPT_START gUnk_08012E88
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
Call 0x0806b60d
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0001
Call 0x0806b4f1
_0807EA94 
_0807E878 
_0807EF80 0x0000
Jump 0xffe2
.short 0x0000
StartScript 
_0807EB44 0x0004
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
_0807EF80 0x000a
Call 0x0806b60d
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x000c
.short 0x0000
@ End of 4 parameters
Call 0x0806b4f1
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
Jump 0xffd2

.globl gUnk_08012F0C
gUnk_08012F0C:
StartScript 
CallWithArg
.short 0xa93d
.short 0x0806
.short 0x5678
.short 0x1234
@ End of 4 parameters
_0807EB44 0x0004
_0807E930 0x0002
CheckInventory1 0x0015
JumpIf 0x0190
CheckLocalFlag 0x0060
JumpIf 0x00a4
CheckGlobalFlag 0x001e
JumpIf 0x0050
StopScript 
CheckLocalFlag 0x0062
JumpIfNot 0x0008
Call 0x0806a9b1
CheckLocalFlag 0x0061
JumpIf 0x001e
Call 0x0806a96d
JumpIfNot 0xfff8
_0807E864 
TextboxNoOverlap 0x4401
_0807EA94 
SetLocalFlag 0x0061
_0807E878 
_0807E908 0x0001
Call 0x0806a96d
JumpIfNot 0xfff8
TextboxNoOverlap 0x4402
_0807EA94 
_0807E908 0x0001
Jump 0xffea
SCRIPT_END
