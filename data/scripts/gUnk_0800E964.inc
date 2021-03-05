SCRIPT_START gUnk_0800E964
StartScript 
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807E930 0x0008
Call sub_0807F2D4
_0807E930 0x0009
Call sub_0806B260
JumpIfNot 0x0052
_0807EA94 
_0807EF80 0x000b
StartPlayerScript 0x0800e9f4
WaitForSomething2 0x00000001
_0807EF80 0x000a
TextboxNoOverlapFollow 0x4a24
_0807EA94 
_0807E930 0x000a
Wait 0x0014
TextboxNoOverlapFollow 0x4a25
_0807EA94 
_0807E930 0x0000
StartPlayerScript 0x0800ea1c
WaitForSomething2 0x00000001
SetLocalFlag 0x0074
.short 0x087b
.short 0x0072
