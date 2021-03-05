SCRIPT_START gUnk_080120B0
StartScript 
Call sub_08064928
_0807EB44 0x0004
_0807EF80 0x0001
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0000
CheckLocalFlag 0x0095
JumpIf 0x0010
TextboxNoOverlap 0x3116
_0807EA94 
SetLocalFlag 0x0095
Jump 0x0042
.byte 0x1f
.byte 0x8
.byte 0x2f
