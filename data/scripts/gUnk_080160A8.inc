SCRIPT_START gUnk_080160A8
StartScript 
_0807E9D4 
_0807E930 0x0008
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x0028
TestBit 0x00000008
JumpIf 0x0010
TestBit 0x00000010
JumpIf 0x0006
Jump 0xffe0
StopScript 
_0807EB74 
WaitForSomething2 0x00000004
Jump 0xffd2
_0807E864 
_0807EB74 
StopScript 
HasRoomItemForSale 
JumpIfNot 0x0030
TextboxNoOverlapFollow 0x2d07
_0807EA94 
_0807E3E8 
JumpIfNot 0x003c
BuyItem 0x0000, 0x0000
JumpIf 0x000c
TextboxNoOverlapFollow 0x2d0b
_0807EA94 
Jump 0x0028
WaitPlayerAction8 
_0807EB8C 
TextboxNoOverlapFollow 0x2d0d
_0807EA94 
Jump 0x001a
CheckKinstoneFused 0x0014
JumpIfNot 0x000c
TextboxNoOverlapFollow 0x2d09
_0807EA94 
Jump 0x0008
TextboxNoOverlapFollow 0x2d01
_0807EA94 
_0807E878 
_0807EB44 0x0004
Jump 0xff76
StartScript 
Call 0x080787b5
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
GetInventoryValue 0x0025
_0807EAF0
.short 0x2d03
.short 0x2d02
.short 0x2d02
.short 0x2d02
@ End of 4 parameters
_0807E3E8 
JumpIfNot 0x002a
_0807E48C 0x0020
JumpIf 0x000a
TextboxNoOverlapFollow 0x2d0c
Jump 0x001a
BuyItem 0x0025, 0x0000
JumpIf 0x000a
TextboxNoOverlapFollow 0x2d0b
Jump 0x0008
WaitPlayerAction8 
TextboxNoOverlapFollow 0x2d06
_0807E878 
Jump 0xffb8
StartScript 
Call 0x080787b5
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
GetInventoryValue 0x0024
_0807EAF0
.short 0x2d05
.short 0x2d04
.short 0x2d04
.short 0x2d04
@ End of 4 parameters
_0807E3E8 
JumpIfNot 0x002e
_0807E48C 0x0020
JumpIf 0x000a
TextboxNoOverlapFollow 0x2d0c
Jump 0x001e
BuyItem 0x0024, 0x0000
JumpIf 0x000a
TextboxNoOverlapFollow 0x2d0b
Jump 0x000c
WaitPlayerAction8 
_0807EA94 
_0807EB8C 
TextboxNoOverlap 0x2d06
_0807E878 
Jump 0xffb4
StartScript 
Call 0x0807f349
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
Call 0x08068c29
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0807df29
_0807EB74 
Call 0x08068ca1
JumpIf 0x0122
Call 0x08068cfd
JumpIfNot 0x010c
Call 0x08068db9
_0807EA94 
Call 0x08068dd1
_0807EA94 
_0807E3E8 
JumpIfNot 0x010a
StartPlayerScript 0x0801635c
WaitForSomething2 0x00000001
_0807EB74 
Call 0x08068c8d
JumpIf 0x000e
Call 0x08068de9
_0807EA94 
Wait 0x001e
Call 0x08068e01
_0807EA94 
_0807EF80 0x0001
Call 0x0807f2d5
Call 0x08068e91
Call 0x08068c8d
JumpIf 0x009a
Call 0x08068f01
Call 0x08068f15
Call 0x08068bb5
CallWithArg
.short 0xf245
.short 0x0807
.short 0x0001
.short 0x0001
@ End of 4 parameters
Call 0x08068b85
Call 0x0807f2a9
Call 0x08068bd1
Wait 0x001e
Call 0x08068e19
_0807EA94 
Call 0x08068eb5
Call 0x0807df51
_0807E878 
StopScript 
StartScript 
Call 0x08068ec5
JumpIf 0x001e
CheckEntityInteractType 
JumpIf 0x0006
Jump 0xffea
StopScript 
_0807E864 
Call 0x08068e79
_0807EA94 
_0807E878 
Jump 0xffd8
StopScript 
_0807E888 
Call 0x0807f595
Call 0x0807df29
_0807E864 
SoundReq0x80100000 
SoundReq 0x00cd
Wait 0x003c
SoundReq2 0x005e
Call 0x08068f3d
Call 0x08068e31
_0807EA94 
Call 0x08068c6d
WaitPlayerAction8 
_0807EA94 
Jump 0x0016
Call 0x08068e61
_0807EA94 
Jump 0x000a
Call 0x08068e49
_0807EA94 
Call 0x0807df51
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0000
Jump 0xfea6
.short 0x0000
SetEntityNonPlanarMovement 0x0100
_0807EDD4 0x0078, 0x0050
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call 0x080791bd
SCRIPT_END
