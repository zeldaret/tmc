SCRIPT_START gUnk_08010A98
StartScript 
_0807EB44 0x0004
CallWithArg
.short 0x72b1
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
_0807EF80 0x000a
Call 0x08067315
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0x72b1
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x08067305
_0807EA94 
_0807E878 
_0807EB44 0x0004
CallWithArg
.short 0x72b1
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffd2
StartScript 
CheckInventory1 0x0067
JumpIfNot 0x0076
_0807EB44 0x0004
_0807EF80 0x0000
SetEntityNonPlanarMovement 0x0180
CallWithArg
.short 0xf349
.short 0x0807
@ End of 2 parameters
Call 0x0806075d
StopScript 
_0807EA94 
Call 0x080606c1
StopScript 
Call 0x0806076d
_0807EF80 0x0007
Call 0x08060701
StopScript 
StartScript 
_0807E564 
JumpIf 0x0010
CallWithArg
.short 0x08e5
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
JumpIf 0x000c
_0807EE30 
JumpIfNot 0xffe4
Jump 0xffce
StopScript 
_0807EF80 0x0000
StopScript 
StartScript 
CallWithArg
.short 0x08e5
.short 0x0806
.short 0x0001
.short 0x0000
@ End of 4 parameters
JumpIf 0xfff0
StopScript 
Jump 0xffbc
_0807EF80 0x0006
SCRIPT_END
