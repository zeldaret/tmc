SCRIPT_START gUnk_080145E8
StartScript 
_0807EF80 0x0008
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Call sub_0807DF28
CheckRoomFlag 0x0004
JumpIf 0xfffa
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
Call sub_0807DF50
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
Call sub_0808861C
JumpIfNot 0xffe0
CheckLocalFlag 0x005e
JumpIf 0x003e
_0807E864 
_0807EB8C 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x432b
.short 0x000c
@ End of parameters
Jump 0x015e
Call sub_08088658
JumpIfNot 0xffc0
_0807E864 
_0807EB28 0x431f
_0807EA94 
StartPlayerScript gUnk_080147DC
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
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x432f
.short 0x000c
@ End of parameters
Jump 0x010a
CheckRoomFlag 0x0004
JumpIf 0x0028
CheckLocalFlag 0x005e
JumpIfNot 0x002a
CheckRoomFlag 0x0006
JumpIf 0x0052
CheckLocalFlag 0x005f
JumpIf 0x003c
Call sub_08088574
SetRoomFlag 0x0009
Jump 0x004a
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x431e
.short 0x000c
@ End of parameters
Jump 0x00d2
SetRoomFlag 0x0009
SetLocalFlag 0x005c
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x4305
.short 0x000c
@ End of parameters
_0807EA94 
_0807E3BC 0x0001
JumpIfNot 0x00b0
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x4306
.short 0x000c
@ End of parameters
Jump 0x001e
SetRoomFlag 0x0009
Call sub_08088504
Jump 0x0010
SetRoomFlag 0x0009
ClearRoomFlag 0x0006
Call sub_08088544
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
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x431e
.short 0x000c
@ End of parameters
Jump 0x0060
SetRoomFlag 0x0009
_0807EA94 
Jump 0x0056
CheckRoomFlag 0x0008
JumpIf 0x0034
CheckRoomFlag 0x0007
JumpIf 0x001c
Call sub_08088478
_0807EA94 
Call sub_080885B0
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
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x4307
.short 0x000c
@ End of parameters
_0807EA94 
Wait 0x0004
_0807E878 
Jump 0xfe62
.short 0x0000
