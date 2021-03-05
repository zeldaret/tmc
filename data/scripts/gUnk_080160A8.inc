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
.short 0x0411 @ HasRoomItemForSale with 0 parameters
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
Call sub_080787B4
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
GetInventoryValue 0x0025
.short 0x145d @ _0807EAF0 with 4 parameters
.short 0x2d03
.short 0x2d02
.short 0x2d02
.short 0x2d02
@ End of parameters
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
Call sub_080787B4
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
GetInventoryValue 0x0024
.short 0x145d @ _0807EAF0 with 4 parameters
.short 0x2d05
.short 0x2d04
.short 0x2d04
.short 0x2d04
@ End of parameters
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
Call sub_0807F348
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
Call sub_08068C28
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
_0807EB74 
Call sub_08068CA0
JumpIf 0x0122
Call sub_08068CFC
JumpIfNot 0x010c
Call sub_08068DB8
_0807EA94 
Call sub_08068DD0
_0807EA94 
_0807E3E8 
JumpIfNot 0x010a
StartPlayerScript gUnk_0801635C
WaitForSomething2 0x00000001
_0807EB74 
Call sub_08068C8C
JumpIf 0x000e
Call sub_08068DE8
_0807EA94 
Wait 0x001e
Call sub_08068E00
_0807EA94 
_0807EF80 0x0001
Call sub_0807F2D4
Call sub_08068E90
Call sub_08068C8C
JumpIf 0x009a
Call sub_08068F00
Call sub_08068F14
Call sub_08068BB4
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F244
.short 0x0001
.short 0x0001
@ End of parameters
Call sub_08068B84
Call sub_0807F2A8
Call sub_08068BD0
Wait 0x001e
Call sub_08068E18
_0807EA94 
Call sub_08068EB4
Call sub_0807DF50
_0807E878 
StopScript 
StartScript 
Call sub_08068EC4
JumpIf 0x001e
CheckEntityInteractType 
JumpIf 0x0006
Jump 0xffea
StopScript 
_0807E864 
Call sub_08068E78
_0807EA94 
_0807E878 
Jump 0xffd8
StopScript 
_0807E888 
Call sub_0807F594
Call sub_0807DF28
_0807E864 
SoundReq0x80100000 
SoundReq 0x00cd
Wait 0x003c
SoundReq2 0x005e
Call sub_08068F3C
Call sub_08068E30
_0807EA94 
Call sub_08068C6C
WaitPlayerAction8 
_0807EA94 
Jump 0x0016
Call sub_08068E60
_0807EA94 
Jump 0x000a
Call sub_08068E48
_0807EA94 
Call sub_0807DF50
_0807E878 
_0807EB44 0x0004
_0807EF80 0x0000
Jump 0xfea6
.short 0x0000
