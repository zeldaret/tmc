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
Call 0x0807df29
_0807E5F8 0x00000001
_0807EF80 0x0004
WaitForSomething2 0x00000002
_0807E930 0x0010
Call 0x0806ccf9
Wait 0x0014
Call 0x0806cd05
Wait 0x0014
Call 0x0806cd15
Wait 0x0014
Call 0x0806cd21
Wait 0x0014
Call 0x0806cd31
Wait 0x0014
Call 0x0806cd3d
Wait 0x0014
Call 0x0806cd4d
SoundReq 0x0072
_0807E5F8 0x00000001
WaitForSomething2 0x00000002
Call 0x0807df51
_0807E878 
_0807E930 0x0010
Call 0x0806cd4d
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
Jump 0xffc8
StartScript 
Call 0x0806cd59
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0006
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0806ccd1
JumpIfNot 0xfff8
Call 0x0806ccb5
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
Jump 0xffb0
StartScript 
CheckGlobalFlag 0x0024
JumpIf 0x0038
Call 0x0806c871
_0807EF80 0x000a
_0807EF80 0x0000
StopScript 
StopScript 
StartScript 
CheckGlobalFlag 0x0024
JumpIf 0x001c
_0807E30C 
JumpIfNot 0xfff0
StopScript 
_0807E864 
_0807EB74 
Call 0x0806c90d
_0807EA94 
_0807E878 
Jump 0xffdc
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
