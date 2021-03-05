SCRIPT_START gUnk_0800FF74
StartScript 
_0807EB44 0x0002
_0807E9D4 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
Call 0x080644a5
ClearLocalFlag 0x00c7
StopScript 
StopScript 
StartScript 
_0807EF80 0x000a
CheckLocalFlag 0x00ce
JumpIf 0x002c
_0807EF80 0x000b
Call 0x08064199
CheckLocalFlag 0x00c7
JumpIfNot 0x001a
Call 0x08064489
CheckPlayerInRegion2 0x4040
JumpIfNot 0x000c
Call 0x08064471
JumpIf 0x004a
CheckEntityInteractType 
JumpIfNot 0xffc2
StopScript 
SetLocalFlag 0x00c7
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
CheckInventory1 0x0048
JumpIf 0x000c
TextboxNoOverlap 0x3401
_0807EA94 
Jump 0x006a
CheckLocalFlag 0x00ce
JumpIfNot 0x000c
TextboxNoOverlap 0x340b
_0807EA94 
Jump 0x0058
TextboxNoOverlap 0x3402
_0807EA94 
Jump 0x004e
StopScript 
_0807E888 
Call 0x0807f595
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
SoundReq 0x00cd
TextboxNoOverlap 0x340a
_0807EA94 
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x000c
.short 0x0000
@ End of parameters
SetEntityNonPlanarMovement 0x0100
_0807EDD4 0x0018, 0x0108
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
SetLocalFlag 0x00ce
Call 0x080644a5
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf5b1
.short 0x0807
.short 0x000a
.short 0x0000
@ End of parameters
_0807E878 
Jump 0xff1e
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0x72b1
.short 0x0806
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0x72b1
.short 0x0806
.short 0x0004
.short 0x0000
@ End of parameters
TextboxNoOverlapFollow 0x0a01
_0807EA94 
Wait 0x000f
_0807E878 
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0x72b1
.short 0x0806
.short 0x0000
.short 0x0000
@ End of parameters
Jump 0xffd0
_0807EF80 0x0006
SCRIPT_END
