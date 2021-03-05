SCRIPT_START gUnk_08012F0C
StartScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806A93C
.short 0x5678
.short 0x1234
@ End of parameters
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
Call sub_0806A9B0
CheckLocalFlag 0x0061
JumpIf 0x001e
Call sub_0806A96C
JumpIfNot 0xfff8
_0807E864 
TextboxNoOverlap 0x4401
_0807EA94 
SetLocalFlag 0x0061
_0807E878 
_0807E908 0x0001
Call sub_0806A96C
JumpIfNot 0xfff8
TextboxNoOverlap 0x4402
_0807EA94 
_0807E908 0x0001
Jump 0xffea
SCRIPT_END
