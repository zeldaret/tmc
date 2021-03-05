SCRIPT_START gUnk_08009F72
_0807F034 0x0065
WaitPlayerAction8 
_0807EF80 0x000a
Call sub_0807DF50
_0807E878 
StopScript 
StopScript 
StartScript 
Call sub_08060158
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
Call sub_080602BC
_0807EA94 
CallWithArg sub_0807F970, 0x00001f03
JumpIf 0x0008
_0807E878 
Jump 0xffd2
Wait 0x0008
SoundReq 0x0103
CallWithArg sub_0806030C, 0x00000063
Wait 0x0008
_0807E878 
Jump 0xffb6
StopScript 
CheckLocalFlag 0x00b0
JumpIf 0x004a
StopScript 
StartScript 
Call sub_08060158
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
TextboxNoOverlap 0x1f0e
_0807EA94 
_0807E3E8 
JumpIf 0x0008
_0807E878 
Jump 0xffdc
Wait 0x0008
_0807F034 0x0008
Call sub_08060318
WaitPlayerAction8 
Wait 0x0008
_0807EB8C 
TextboxNoOverlapFollow 0x1f13
_0807EA94 
SetLocalFlag 0x00b0
_0807E878 
StopScript 
StartScript 
Call sub_08060158
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
CheckInventory1 0x0008
JumpIf 0x0014
TextboxNoOverlap 0x1f14
_0807EA94 
_0807E3E8 
JumpIf 0xffb8
_0807E878 
Jump 0xffd4
TextboxNoOverlap 0x1f11
_0807EA94 
_0807E3E8 
JumpIf 0x0008
_0807E878 
.short 0x0803
.short 0xffc2
