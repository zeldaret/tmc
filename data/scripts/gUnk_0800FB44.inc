SCRIPT_START gUnk_0800FB44
StartScript 
_0807EF80 0x0008
_0807EF80 0x000b
SetEntityNonPlanarMovement 0x0080
Call sub_08066D04
StopScript 
WaitForSomething2 0x00000002
Call sub_08066D14
JumpIf 0x0004
MoveEntityToPlayer 
_0807EF80 0x0007
SetEntityPositionRelative 0x039800b8
_0807EB44 0x0002
_0807EF80 0x0000
_0807E5F8 0x00000004
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x0200
_0807EDD4 0x00b8, 0x0318
SetEntityPositionRelative 0x026000a0
_0807EB44 0x0000
_0807EF80 0x0001
_0807E5F8 0x00000004
_0807EF80 0x000a
_0807E9D4 
_0807E30C 
JumpIfNot 0xfffc
_0807EF80 0x000b
.byte 0x28
.byte 0xc
.byte 0x4