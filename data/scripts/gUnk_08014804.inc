SCRIPT_START gUnk_08014804
StartScript 
_0807E9D4 
_0807EB44 0x0000
_0807EF80 0x000a
StopScript 
_0807E864 
Call sub_0807DF38
Wait 0x0010
CheckLocalFlag 0x0093
JumpIf 0x0092
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x4215
.short 0x000c
@ End of parameters
_0807E878 
TestBit 0x00000001
JumpIf 0x002c
TestBit 0x00000004
JumpIf 0x0038
_0807E30C 
JumpIfNot 0xffe8
_0807E864 
_0807E930 0x0008
Wait 0x0020
_0807E930 0x0002
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x4215
.short 0x000c
@ End of parameters
_0807E878 
Jump 0xffce
_0807E930 0x0008
Wait 0x0020
_0807E930 0x0002
_0807E5F8 0x00000002
Jump 0xffb8
_0807E930 0x0009
Wait 0x003c
_0807E930 0x0002
_0807E5F8 0x00000008
Jump 0xffa2
TestBit 0x00000001
JumpIf 0x002c
TestBit 0x00000004
JumpIf 0x0038
_0807E30C 
JumpIfNot 0xffe8
_0807E864 
_0807E930 0x0008
Wait 0x0020
_0807E930 0x0002
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x4216
.short 0x000c
@ End of parameters
_0807E878 
Jump 0xffce
_0807E930 0x0008
Wait 0x0020
_0807E930 0x0002
_0807E5F8 0x00000002
Jump 0xffb8
_0807E930 0x0009
Wait 0x003c
_0807E930 0x0002
_0807E5F8 0x00000008
Jump 0xffa2
.short 0x0000
StartScript 
StopScript 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
ClearRoomFlag 0x0000
Call sub_0806E140
JumpIfNot 0x002a
_0807EA94 
_0807E3E8 
JumpIfNot 0x0028
_0807E864 
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call sub_0806E1E0
_0807EA94 
Wait 0x0018
_0807E878 
Jump 0xffc4
_0807EA94 
Jump 0x0002
_0807E5F8 0x00000004
WaitForSomething2 0x00000008
Call sub_0806E1FC
Wait 0x001e
Call sub_0807DF50
SCRIPT_END
.short 0x0000
