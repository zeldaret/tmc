SCRIPT_START gUnk_08014C2C
StartScript 
Call sub_0806CD58
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0006
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call sub_0806CCD0
JumpIfNot 0xfff8
Call sub_0806CCB4
JumpIfNot 0xfff8
CheckLocalFlag 0x0066
JumpIf 0x0016
SetLocalFlag 0x0066
TextboxNoOverlap 0x2f0d
_0807EA94 
_0807F034 0x000a
WaitPlayerAction8 
Jump 0x0008
TextboxNoOverlap 0x2f09
_0807EA94 
Wait 0x000f
_0807E878 
_0807EB44 0x0004
_0807E930 0x0006
.short 0x0803
.short 0xffb0
