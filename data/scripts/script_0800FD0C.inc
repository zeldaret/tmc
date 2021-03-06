SCRIPT_START script_0800FD0C
CheckLocalFlag 0x00cd
JumpIf 0x003e
WaitForSomething2 0x00000010
CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
JumpIfNot 0xfff6
CheckLocalFlag 0x00cd
JumpIf 0x0030
_0807E864 
Call sub_0807F9A4
TextboxNoOverlapFollowPos 0x00002506
_0807EA94 
StartPlayerScript script_0800FD80
WaitForSomething2 0x00000008
_0807E878 
Jump 0xffcc
CheckPlayerInRegion 0x00c8, 0x03c0, 0x1040
JumpIfNot 0xfff6
_0807E864 
Call sub_0807F9A4
TextboxNoOverlapFollowPos 0x0000106c
_0807EA94 
StartPlayerScript script_0800FD80
WaitForSomething2 0x00000008
_0807E878 
Jump 0xffd4
.short 0x0000
