SCRIPT_START gUnk_08010264
StartScript 
_0807EF80 0x0007
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0006
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08065f65
_0807EA94 
_0807E878 
Jump 0xffea
.short 0x0000
StartScript 
_0807EF80 0x0000
Call 0x08062a49
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
CheckRoomFlag 0x0009
JumpIfNot 0x001a
_0807E864 
_0807EB74 
Call 0x0806265d
_0807EA94 
_0807E878 
Call 0x08062501
Jump 0xffdc
_0807E864 
_0807EB74 
Call 0x0806265d
_0807EA94 
_0807E878 
Jump 0xffca
.short 0x0000
StartScript 
_0807EF80 0x0000
Call 0x08062a49
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0806265d
_0807EA94 
_0807E878 
Jump 0xffea
.short 0x0000
StartScript 
_0807EF80 0x0000
StopScript 
StopScript 
Call 0x08062699
Call 0x080626ad
CallWithArg
.short 0xf0ed
.short 0x0807
.short 0x0009
.short 0x0000
@ End of 4 parameters
_0807E078
.short 0x0012
.short 0x001a
.short 0x0022
.short 0x002a
.short 0x0032
.short 0x003a
.short 0x0042
.short 0x004a
.short 0x0052
@ End of 9 parameters
_0807EE04 0x0358, 0x0078
Jump 0x004e
_0807EE04 0x0390, 0x0078
Jump 0x0044
_0807EE04 0x03c8, 0x0078
Jump 0x003a
_0807EE04 0x0358, 0x0098
Jump 0x0030
_0807EE04 0x0390, 0x0098
Jump 0x0026
_0807EE04 0x03c8, 0x0098
Jump 0x001c
_0807EE04 0x0358, 0x00b8
Jump 0x0012
_0807EE04 0x0390, 0x00b8
Jump 0x0008
_0807EE04 0x03c8, 0x00b8
StopScript 
StartScript 
Call 0x080626c1
JumpIf 0xff72
_0807EE30 
JumpIfNot 0xffee
Jump 0xff68
.short 0x0000
StartScript 
_0807EF80 0x0000
Call 0x08062a49
_0807EF80 0x000a
StopScript 
Wait 0x001e
Call 0x08062949
Jump 0xfff4
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x000a
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of 4 parameters
StopScript 
Wait 0x003c
Call 0x0806407d
Jump 0xfff4
.short 0x0000
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x000a
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08064429
_0807EA94 
_0807E878 
Jump 0xffea
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
_0807E914 0x08064689
Call 0x08064645
StopScript 
Wait 0x003c
Call 0x080646a5
Jump 0xfff4
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
Call 0x080636f5
_0807EF80 0x000a
Call 0x0807f349
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x080636d9
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffd2
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
Call 0x08063cad
_0807EF80 0x000a
Call 0x0807f349
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x08063c91
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffd2
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
_0807EF80 0x000a
Call 0x0807f349
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0807df29
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
CheckRoomFlag 0x000e
JumpIf 0x000c
SetRoomFlag 0x000e
TextboxNoOverlap 0x2b10
_0807EA94 
Call 0x080634e5
_0807E078
.short 0x000e
.short 0x0020
.short 0x0036
.short 0x0034
.short 0x000e
.short 0x0024
.short 0x002e
@ End of 7 parameters
TextboxNoOverlap 0x2b0d
Jump 0x0096
CheckGlobalFlag 0x003d
JumpIfNot 0x008a
Jump 0x001a
CheckGlobalFlag 0x003c
JumpIfNot 0x007e
Jump 0x000e
CheckGlobalFlag 0x003b
JumpIfNot 0x0072
Jump 0x0002
Call 0x080634ed
CallWithArg
.short 0xf78d
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807EA94 
_0807E3E8 
JumpIfNot 0x005a
CallWithArg
.short 0xf7c5
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
JumpIfNot 0x0030
_0807E48C 0x0020
JumpIfNot 0x0030
Call 0x08063505
JumpIf 0x002e
TextboxNoOverlap 0x2b07
_0807EA94 
CallWithArg
.short 0xf801
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
WaitPlayerAction8 
_0807EA94 
TextboxNoOverlap 0x2b0c
Jump 0x001e
TextboxNoOverlap 0x2b09
Jump 0x0016
TextboxNoOverlap 0x2b0a
Jump 0x000e
TextboxNoOverlap 0x2b0b
Jump 0x0006
TextboxNoOverlap 0x2b0e
_0807EA94 
Call 0x0807df51
_0807E878 
Jump 0xff16
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlapFollow 0x0a01
_0807EA94 
_0807E878 
_0807EB44 0x0004
Jump 0xffe8
StartScript 
_0807E930 0x0008
Call 0x08062a49
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0806265d
_0807EA94 
_0807E878 
Jump 0xffec
StartScript 
_0807E930 0x0009
Jump 0xffd6
.short 0x0000
StartScript 
_0807E930 0x000b
Jump 0xffca
.short 0x0000
StartScript 
_0807E930 0x000c
Jump 0xffbe
.short 0x0000
StartScript 
_0807E930 0x000d
Jump 0xffb2
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
HasRoomItemForSale 
Call 0x0807f77d
_0807EAF0
.short 0x3c08
.short 0x3c09
@ End of 2 parameters
_0807EA94 
_0807E878 
_0807EB44 0x0004
Jump 0xffde
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0807f2d5
_0807EF80 0x0000
HasRoomItemForSale 
JumpIf 0x000a
TextboxNoOverlap 0x3c07
Jump 0x0048
Call 0x08062eb9
CallWithArg
.short 0xf78d
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807EA94 
_0807E3E8 
JumpIfNot 0x0030
_0807EA94 
BuyItem 0x0000, 0x0000
JumpIf 0x000a
TextboxNoOverlap 0x3c04
Jump 0x001c
WaitPlayerAction8 
ModHealth 0x0008
Call 0x08062edd
JumpIf 0x000a
TextboxNoOverlap 0x3c06
Jump 0x0004
WaitPlayerAction8 
_0807EA94 
_0807E878 
_0807EF80 0x0001
Jump 0xff8e
.short 0x0000
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
Call 0x08062d19
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
Call 0x08062e15
TextboxNoOverlap 0x4007
StopScript 
_0807EA94 
_0807E878 
_0807E930 0x0008
Jump 0xffb4
StartScript 
_0807EF80 0x0007
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0807f2d5
_0807EF80 0x0001
Call 0x08062cbd
_0807EA94 
_0807E878 
_0807EF80 0x0000
Jump 0xffde
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
_0807EF80 0x0007
_0807E9D4 
Call 0x0807f349
Call 0x08069685
StopScript 
StopScript 
StartScript 
CheckPlayerInRegion2 0x3030
JumpIfNot 0xfff6
Call 0x080696b1
StopScript 
StartScript 
CheckPlayerInRegion2 0x3030
JumpIfNot 0xffe4
HasRoomItemForSale 
JumpIf 0x004c
CheckEntityInteractType 
JumpIfNot 0xffea
StopScript 
_0807E864 
Call 0x0807df29
_0807EB74 
CheckGlobalFlag 0x0042
JumpIfNot 0x002a
CheckGlobalFlag 0x0043
JumpIfNot 0x0022
CheckGlobalFlag 0x0044
JumpIfNot 0x001a
CheckGlobalFlag 0x0041
JumpIfNot 0x000a
TextboxNoOverlap 0x3f39
Jump 0x006c
TextboxNoOverlap 0x2c1b
Jump 0x0064
TextboxNoOverlap 0x2c1a
Jump 0x005c
StopScript 
_0807E864 
Call 0x0807df39
_0807EB74 
Call 0x08069661
_0807EA94 
_0807E3E8 
JumpIfNot 0x003a
Call 0x08069719
JumpIfNot 0x0030
WaitPlayerAction8 
_0807EA94 
_0807EB8C 
CheckGlobalFlag 0x0042
JumpIfNot 0x001a
CheckGlobalFlag 0x0043
JumpIfNot 0x0012
CheckGlobalFlag 0x0044
JumpIfNot 0x000a
TextboxNoOverlap 0x2c21
Jump 0x000a
SetLocalFlag 0x00fa
TextboxNoOverlap 0x2c20
_0807EA94 
Call 0x0807f83d
_0807EA94 
Call 0x0807df51
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0000
Jump 0xff36
CheckPlayerInRegion2 0x0808
JumpIfNot 0xfffa
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
StartPlayerScript 0x080109f0
WaitForSomething2 0x00000001
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b63
_0807EA94 
Call 0x0807df51
_0807E878 
Jump 0xffc6
StartScript 
_0807EF80 0x0007
CheckKinstoneFused 0x001b
JumpIf 0xe67a
StopScript 
Call 0x080869a5
JumpIfNot 0xfff8
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b62
_0807EA94 
StartPlayerScript 0x080109f0
WaitForSomething2 0x00000001
Call 0x0807df51
_0807E878 
Jump 0xffc4
Call 0x0808692d
SCRIPT_END
.short 0x0000
