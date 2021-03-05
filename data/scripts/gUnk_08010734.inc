SCRIPT_START gUnk_08010734
StartScript 
_0807EF80 0x0007
_0807E9D4 
_0807EF80 0x000a
_0807E930 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807E930 0x0004
StartScript 
Call sub_08062D18
JumpIfNot 0x002a
StopScript 
_0807EA94 
_0807E3E8 
JumpIfNot 0x0020
HasRupees 0x00c8
JumpIf 0x000a
TextboxNoOverlap 0x4008
Jump 0x0010
ModRupees 0xff38
Call sub_08062E14
TextboxNoOverlap 0x4007
StopScript 
_0807EA94 
_0807E878 
_0807E930 0x0008
.short 0x0803
.short 0xffb4
