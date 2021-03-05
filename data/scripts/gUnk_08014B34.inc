SCRIPT_START gUnk_08014B34
StartScript 
_0807EF80 0x000a
_0807E930 0x0000
StopScript 
CheckLocalFlag 0x0063
JumpIf 0x00a2
StopScript 
StartScript 
CheckRoomFlag 0x0000
JumpIf 0x001e
CheckEntityInteractType 
JumpIfNot 0xfff0
StopScript 
_0807E864 
_0807EB74 
TextboxNoOverlap 0x2f01
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffda
StopScript 
_0807E864 
Call sub_0807DF28
_0807E5F8 0x00000001
_0807EF80 0x0004
WaitForSomething2 0x00000002
_0807E930 0x0010
Call sub_0806CCF8
Wait 0x0014
Call sub_0806CD04
Wait 0x0014
Call sub_0806CD14
Wait 0x0014
Call sub_0806CD20
Wait 0x0014
Call sub_0806CD30
Wait 0x0014
Call sub_0806CD3C
Wait 0x0014
Call sub_0806CD4C
SoundReq 0x0072
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call sub_0807DF50
_0807E878 
_0807E930 0x0010
Call sub_0806CD4C
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
CheckLocalFlag 0x0065
JumpIf 0x001c
SetLocalFlag 0x0065
TextboxNoOverlap 0x2f07
_0807EA94 
_0807E914 0x00000064
_0807F034 0x003f
WaitPlayerAction8 
Jump 0x0008
TextboxNoOverlap 0x2f08
_0807EA94 
Wait 0x000f
_0807E878 
.short 0x0803
.short 0xffc8
