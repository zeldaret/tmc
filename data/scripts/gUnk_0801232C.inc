SCRIPT_START gUnk_0801232C
StartScript 
_0807EB74 
_0807E9D4 
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807EB74 
_0807E864 
TextboxNoOverlapFollow 0x2304
_0807EA94 
CheckLocalFlag 0x0042
JumpIf 0x000c
SetLocalFlag 0x0042
_0807F034 0x0057
WaitPlayerAction8 
_0807E878 
Jump 0xffda
StartScript 
_0807EF80 0x0008
StopScript 
CheckLocalFlag 0x0004
JumpIfNot 0xfffa
Call sub_0807DF28
_0807E864 
SoundReq0x80100000 
StartScript 
_0807E778 0x0004
_0807E788 0x00007fff
DoFade5 
.short 0x0842 @ _0807E858 with 1 parameters
.short 0x0080
@ End of parameters
StopScript 
WaitFor_2 
SoundReq2 0x002c
_0807EB28 0x1401
_0807EA94 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x0007
SoundReq 0x01ce
SetEntity0x20 0xffff8000
Wait 0x003c
_0807E8E4_0 
StartPlayerScript gUnk_08012410
WaitForSomething2 0x00000001
TextboxNoOverlap 0x1402
_0807EA94 
SoundReq0x80100000 
SetEntity0x20 0x00010000
Wait 0x003c
StartScript 
_0807E778 0x0004
_0807E788 0xffffffff
DoFade4 
.short 0x0842 @ _0807E858 with 1 parameters
.short 0x0080
@ End of parameters
StopScript 
WaitFor_2 
SoundReq2 0xffff
_0807EB28 0x1403
_0807EA94 
_0807E914 0x00000203
Call sub_0807F420
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
