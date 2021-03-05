SCRIPT_START gUnk_08009F14
StartScript 
_0807EB44 0x0004
Call 0x08060091
_0807EF80 0x000a
CheckKinstoneFused 0x001c
JumpIf 0x00a8
CheckInventory1 0x0007
JumpIf 0x0052
StopScript 
StopScript 
StartScript 
Call 0x08060159
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
Call 0x0807df29
_0807EF80 0x000b
StartPlayerScript 0x0800a088
WaitForSomething2 0x00000002
Call 0x0806014d
TextboxNoOverlapFollowPos
.short 0x1f01
.short 0x0000
@ End of 2 parameters
_0807EA94 
Wait 0x001e
_0807F034 0x0065
WaitPlayerAction8 
_0807EF80 0x000a
Call 0x0807df51
_0807E878 
StopScript 
StopScript 
StartScript 
Call 0x08060159
CheckEntityInteractType 
JumpIfNot 0xfff2
StopScript 
_0807E864 
Call 0x080602bd
_0807EA94 
CallWithArg
.short 0xf971
.short 0x0807
.short 0x1f03
.short 0x0000
@ End of 4 parameters
JumpIf 0x0008
_0807E878 
Jump 0xffd2
Wait 0x0008
SoundReq 0x0103
CallWithArg
.short 0x030d
.short 0x0806
.short 0x0063
.short 0x0000
@ End of 4 parameters
Wait 0x0008
_0807E878 
Jump 0xffb6
StopScript 
CheckLocalFlag 0x00b0
JumpIf 0x004a
StopScript 
StartScript 
Call 0x08060159
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
Call 0x08060319
WaitPlayerAction8 
Wait 0x0008
_0807EB8C 
TextboxNoOverlapFollow 0x1f13
_0807EA94 
SetLocalFlag 0x00b0
_0807E878 
StopScript 
StartScript 
Call 0x08060159
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
Jump 0xffc2
Wait 0x0008
_0807F034 0x0007
Call 0x08060319
WaitPlayerAction8 
Wait 0x0008
_0807EB8C 
TextboxNoOverlapFollow 0x1f10
_0807EA94 
_0807E878 
Jump 0xffa0
.short 0x0000
StartScript 
SetEntityNonPlanarMovement 0x0100
StopScript 
_0807ECC4 0x0010
_0807EDD4 0x0078, 0x0060
_0807EB44 0x0000
Wait 0x000f
_0807EF80 0x0000
_0807E5F8 0x00000002
Call 0x080791bd
SCRIPT_END
