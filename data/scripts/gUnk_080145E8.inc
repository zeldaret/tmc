SCRIPT_START gUnk_080145E8
StartScript 
_0807EF80 0x0008
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Call 0x0807df29
CheckRoomFlag 0x0004
JumpIf 0xfffa
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
Call 0x0807df51
_0807E878 
Jump 0xffd2
StartScript 
_0807E9D4 
_0807EB44 0x0004
SetEntityDirection 0x0000
_0807EF80 0x000a
StopScript 
_0807E30C 
JumpIf 0x0062
TestBit 0x00000004
JumpIf 0x0132
CheckRoomFlag 0x0004
JumpIf 0x0022
Call 0x0808861d
JumpIfNot 0xffe0
CheckLocalFlag 0x005e
JumpIf 0x003e
_0807E864 
_0807EB8C 
TextboxNoOverlapFollowPos
.short 0x432b
.short 0x000c
@ End of 2 parameters
Jump 0x015e
Call 0x08088659
JumpIfNot 0xffc0
_0807E864 
_0807EB28 0x431f
_0807EA94 
StartPlayerScript 0x080147dc
Wait 0x0010
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
_0807E878 
Jump 0xff9c
_0807E864 
_0807E930 0x0008
Wait 0x0010
_0807EB8C 
Wait 0x0010
_0807E930 0x0002
CheckGlobalFlag 0x0059
JumpIfNot 0x000c
TextboxNoOverlapFollowPos
.short 0x432f
.short 0x000c
@ End of 2 parameters
Jump 0x010a
CheckRoomFlag 0x0004
JumpIf 0x0028
CheckLocalFlag 0x005e
JumpIfNot 0x002a
CheckRoomFlag 0x0006
JumpIf 0x0052
CheckLocalFlag 0x005f
JumpIf 0x003c
Call 0x08088575
SetRoomFlag 0x0009
Jump 0x004a
TextboxNoOverlapFollowPos
.short 0x431e
.short 0x000c
@ End of 2 parameters
Jump 0x00d2
SetRoomFlag 0x0009
SetLocalFlag 0x005c
TextboxNoOverlapFollowPos
.short 0x4305
.short 0x000c
@ End of 2 parameters
_0807EA94 
_0807E3BC 0x0001
JumpIfNot 0x00b0
TextboxNoOverlapFollowPos
.short 0x4306
.short 0x000c
@ End of 2 parameters
Jump 0x001e
SetRoomFlag 0x0009
Call 0x08088505
Jump 0x0010
SetRoomFlag 0x0009
ClearRoomFlag 0x0006
Call 0x08088545
_0807E3E8 
JumpIfNot 0x0030
_0807EA94 
_0807E3BC 0x0001
JumpIfNot 0x007a
SetRoomFlag 0x0001
Wait 0x0014
CheckRoomFlag 0x0003
JumpIfNot 0xfffa
ClearRoomFlag 0x0003
_0807EA94 
SetRoomFlag 0x0004
TextboxNoOverlapFollowPos
.short 0x431e
.short 0x000c
@ End of 2 parameters
Jump 0x0060
SetRoomFlag 0x0009
_0807EA94 
Jump 0x0056
CheckRoomFlag 0x0008
JumpIf 0x0034
CheckRoomFlag 0x0007
JumpIf 0x001c
Call 0x08088479
_0807EA94 
Call 0x080885b1
WaitPlayerAction8 
_0807E5F8 0x00000008
Jump 0x002c
_0807E930 0x0009
Wait 0x003c
_0807E930 0x0002
Jump 0xffd8
_0807E930 0x000a
Wait 0x008c
_0807E930 0x0002
Jump 0xffc8
SetRoomFlag 0x0009
TextboxNoOverlapFollowPos
.short 0x4307
.short 0x000c
@ End of 2 parameters
_0807EA94 
Wait 0x0004
_0807E878 
Jump 0xfe62
.short 0x0000
StopScript 
WaitForSomething2 0x00000002
SetEntityNonPlanarMovement 0x00e0
_0807EDD4 0x0078, 0x0068
_0807EF80 0x0000
Wait 0x0010
_0807E5F8 0x00000001
Call 0x0807921d
SCRIPT_END
