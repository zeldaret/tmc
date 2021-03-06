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
Call sub_08065F64
_0807EA94 
_0807E878 
Jump 0xffea
.short 0x0000
StartScript 
_0807EF80 0x0000
Call sub_08062A48
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
CheckRoomFlag 0x0009
JumpIfNot 0x001a
_0807E864 
_0807EB74 
Call sub_0806265C
_0807EA94 
_0807E878 
Call sub_08062500
Jump 0xffdc
_0807E864 
_0807EB74 
Call sub_0806265C
_0807EA94 
_0807E878 
Jump 0xffca
.short 0x0000
StartScript 
_0807EF80 0x0000
Call sub_08062A48
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call sub_0806265C
_0807EA94 
_0807E878 
Jump 0xffea
.short 0x0000
StartScript 
_0807EF80 0x0000
StopScript 
StopScript 
Call sub_08062698
Call sub_080626AC
CallWithArg sub_0807F0EC, 0x00000009
_0807E078_sssssssss 0x0012, 0x001a, 0x0022, 0x002a, 0x0032, 0x003a, 0x0042, 0x004a, 0x0052
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
Call sub_080626C0
JumpIf 0xff72
_0807EE30 
JumpIfNot 0xffee
Jump 0xff68
.short 0x0000
StartScript 
_0807EF80 0x0000
Call sub_08062A48
_0807EF80 0x000a
StopScript 
Wait 0x001e
Call sub_08062948
Jump 0xfff4
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x000a
CallWithArg sub_0807F3D8, 0x00000004
StopScript 
Wait 0x003c
Call sub_0806407C
Jump 0xfff4
.short 0x0000
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x000a
CallWithArg sub_0807F3D8, 0x00000000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call sub_08064428
_0807EA94 
_0807E878 
Jump 0xffea
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
_0807E914 0x08064689
Call sub_08064644
StopScript 
Wait 0x003c
Call sub_080646A4
Jump 0xfff4
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
Call sub_080636F4
_0807EF80 0x000a
Call sub_0807F348
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000004
Call sub_080636D8
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg sub_0807F3D8, 0x00000000
Jump 0xffd2
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
Call sub_08063CAC
_0807EF80 0x000a
Call sub_0807F348
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000004
Call sub_08063C90
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg sub_0807F3D8, 0x00000000
Jump 0xffd2
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
_0807EF80 0x000a
Call sub_0807F348
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000008
CheckRoomFlag 0x000e
JumpIf 0x000c
SetRoomFlag 0x000e
TextboxNoOverlap 0x2b10
_0807EA94 
Call sub_080634E4
_0807E078_sssssss 0x000e, 0x0020, 0x0036, 0x0034, 0x000e, 0x0024, 0x002e
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
Call sub_080634EC
CallWithArg sub_0807F78C, 0x00000000
_0807EA94 
_0807E3E8 
JumpIfNot 0x005a
CallWithArg sub_0807F7C4, 0x00000000
JumpIfNot 0x0030
_0807E48C 0x0020
JumpIfNot 0x0030
Call sub_08063504
JumpIf 0x002e
TextboxNoOverlap 0x2b07
_0807EA94 
CallWithArg sub_0807F800, 0x00000000
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
Call sub_0807DF50
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
Call sub_08062A48
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0806265C
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
Call sub_0807F77C
_0807EAF0 0x3c08, 0x3c09
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
Call sub_0807F2D4
_0807EF80 0x0000
HasRoomItemForSale 
JumpIf 0x000a
TextboxNoOverlap 0x3c07
Jump 0x0048
Call sub_08062EB8
CallWithArg sub_0807F78C, 0x00000000
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
Call sub_08062EDC
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
Call sub_0807F2D4
_0807EF80 0x0001
Call sub_08062CBC
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
Call sub_0807F348
Call sub_08069684
StopScript 
StopScript 
StartScript 
CheckPlayerInRegion2 0x3030
JumpIfNot 0xfff6
Call sub_080696B0
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
Call sub_0807DF28
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
Call sub_0807DF38
_0807EB74 
Call sub_08069660
_0807EA94 
_0807E3E8 
JumpIfNot 0x003a
Call sub_08069718
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
Call sub_0807F83C
_0807EA94 
Call sub_0807DF50
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0000
Jump 0xff36
CheckPlayerInRegion2 0x0808
JumpIfNot 0xfffa
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
StartPlayerScript gUnk_080109F0
WaitForSomething2 0x00000001
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b63
_0807EA94 
Call sub_0807DF50
_0807E878 
Jump 0xffc6
StartScript 
_0807EF80 0x0007
CheckKinstoneFused 0x001b
JumpIf 0xe67a
StopScript 
Call sub_080869A4
JumpIfNot 0xfff8
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b62
_0807EA94 
StartPlayerScript gUnk_080109F0
WaitForSomething2 0x00000001
Call sub_0807DF50
_0807E878 
Jump 0xffc4
Call sub_0808692C
SCRIPT_END
.short 0x0000
