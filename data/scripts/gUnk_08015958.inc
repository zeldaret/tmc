SCRIPT_START gUnk_08015958
StartScript 
SetEntityNonPlanarMovement 0x0180
_0807EF80 0x0008
_0807EF80 0x000b
Call sub_08066D04
StopScript 
WaitForSomething2 0x00000001
StartScript 
Call sub_08066D14
MoveEntityToPlayer 
StopScript 
_0807EF80 0x0007
_0807EB74 
_0807EDD4 0x01f8, 0x02f8
_0807EB44 0x0004
_0807EF80 0x0000
TextboxNoOverlapFollowPos 0x1011, 0x0002
_0807EA94 
_0807EDD4 0x01f8, 0x0268
SetEntityPositionRelative 0x02180248
_0807EB44 0x0006
_0807EF80 0x0000
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
Call sub_0807F3C8
SoundReq 0x0096
SetEntityNonPlanarMovement 0x0200
_0807ECC4 0x0008
_0807E930 0x0040
Call sub_0807F2D4
_0807EB44 0x0006
_0807EF80 0x0000
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
_0807EB44 0x0006
_0807EF80 0x0000
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
SetEntityNonPlanarMovement 0x0100
_0807EDD4 0x0238, 0x0238
_0807EB44 0x0000
_0807EF80 0x0000
_0807EF80 0x000a
_0807E9D4 
_0807E5F8 0x00000002
StopScript 
StartScript 
_0807EB74 
CheckRoomFlag 0x0000
JumpIf 0x0016
CheckEntityInteractType 
JumpIfNot 0xffee
StopScript 
TextboxNoOverlapFollowPos 0x1067, 0x0002
_0807EA94 
Jump 0xffe0
StopScript 
_0807EF80 0x000b
_0807EB44 0x0000
_0807EF80 0x0000
WaitForSomething2 0x00000001
Call sub_08066D4C
_0807E5F8 0x00000002
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
.short 0x0867
.short 0x0100
.short 0x0879
.short 0x0001
.short 0x086e
.short 0x0010
.short 0x0861
.short 0x0000
.short 0x0879
.short 0x0000
.short 0x0c28
.short 0x0004
.short 0x0000
.short 0x0c0b
.short 0x91bd
.short 0x0807
.short 0xffff
.short 0x0000
.short 0x0867
.short 0x0100
.short 0x0879
.short 0x0001
.short 0x086f
.short 0x0010
.short 0x0861
.short 0x0002
.short 0x0879
.short 0x0000
.short 0x0c28
.short 0x0004
.short 0x0000
.short 0x0c0b
.short 0x91bd
.short 0x0807
.short 0xffff
.short 0x0000