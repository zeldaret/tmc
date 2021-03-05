SCRIPT_START gUnk_08014248
TestBit 0x00020000
JumpIf 0x0014
Wait 0x0008
CallWithArg
.short 0x5ead
.short 0x0809
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffe6
CallWithArg
.short 0x5ead
.short 0x0809
.short 0x0001
.short 0x0000
@ End of 4 parameters
Jump 0xfff4
.short 0x0000
StartScript 
_0807EF80 0x0008
StopScript 
CheckLocalFlag 0x0078
JumpIfNot 0xfffa
StartScript 
Call 0x0807f935
CallWithArg
.short 0xda05
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
TextboxNoOverlapFollowPos
.short 0x0647
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E878 
Jump 0xffec
.short 0x0000

.globl gUnk_080142B0
gUnk_080142B0:
StartScript 
CheckLocalFlag 0x0054
JumpIf 0x00ca
CheckLocalFlag 0x0053
JumpIf 0x0070
StopScript 
StopScript 
StartScript 
_0807E564 
JumpIfNot 0xfff8
CheckPlayerInRegion 0x0098, 0x0058, 0x1818
JumpIfNot 0xffec
StopScript 
_0807E864 
SetLocalFlag 0x0053
Wait 0x0014
_0807E908 0x0004
Call 0x080654dd
Wait 0x001e
_0807E930 0x0001
Wait 0x000a
_0807E930 0x0003
Wait 0x000a
_0807E930 0x0001
Wait 0x000a
_0807E930 0x0003
Wait 0x000a
_0807E930 0x0002
Wait 0x001e
TextboxNoOverlap 0x2c12
_0807EA94 
Wait 0x0014
_0807E930 0x0004
_0807E878 
_0807E908 0x0001
StopScript 
StartScript 
_0807E564 
JumpIf 0xfff8
EntityHasHeight 
JumpIf 0xfff2
CheckPlayerInRegion 0x00c0, 0x0068, 0x1010
JumpIfNot 0xffe6
StopScript 
_0807E864 
SetLocalFlag 0x0054
Wait 0x005a
_0807E908 0x0004
Call 0x080654ed
Wait 0x001e
_0807E930 0x0001
Wait 0x001e
TextboxNoOverlap 0x2c13
_0807EA94 
Wait 0x0014
_0807E930 0x0004
_0807E908 0x0001
_0807E878 
SCRIPT_END
