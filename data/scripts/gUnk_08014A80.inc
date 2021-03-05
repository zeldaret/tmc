SCRIPT_START gUnk_08014A80
StartScript 
_0807EF80 0x000a
StopScript 
WaitForSomething2 0x00000001
_0807EB74 
_0807EF80 0x0004
_0807E5F8 0x00000002
WaitForSomething2 0x00000001
TextboxNoOverlap 0x2f0a
_0807EA94 
_0807E5F8 0x00000002
_0807E30C 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x2f0a
_0807EA94 
_0807E878 
Jump 0xffec
.short 0x0000
StartScript 
Call sub_0806C870
_0807EF80 0x000a
StopScript 
_0807E30C 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
StartPlayerScript gUnk_08014B10
WaitForSomething2 0x00000001
_0807EB74 
CheckLocalFlag 0x0064
JumpIf 0x000e
SetLocalFlag 0x0064
TextboxNoOverlap 0x2f0b
Jump 0x0006
TextboxNoOverlap 0x2f0c
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffc6
.short 0x0000
