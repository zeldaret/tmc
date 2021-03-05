SCRIPT_START gUnk_0800FDA0
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
_0807E9D4 
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08069889
_0807EA94 
_0807E878 
Jump 0xffea
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
_0807E9D4 
SetEntityNonPlanarMovement 0x0040
StopScript 
Call 0x08069a61
Call 0x0806991d
StopScript 
StartScript 
Call 0x08069acd
JumpIf 0x000c
_0807EE30 
JumpIfNot 0xffee
Jump 0xffde
StopScript 
_0807EB44 0x0002
_0807EF80 0x0000
Wait 0x001e
_0807EB44 0x0006
_0807EF80 0x0000
Wait 0x001e
_0807EB44 0x0002
_0807EF80 0x0000
Wait 0x001e
_0807EB44 0x0006
_0807EF80 0x0000
Wait 0x003c
Call 0x08069a3d
Jump 0xffa8
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
_0807E9D4 
SetEntityNonPlanarMovement 0x0040
StopScript 
Call 0x08069aa9
Call 0x080699ad
StopScript 
StartScript 
Call 0x08069acd
JumpIf 0x000c
_0807EE30 
JumpIfNot 0xffee
Jump 0xffde
StopScript 
_0807EB44 0x0002
_0807EF80 0x0000
Wait 0x001e
_0807EB44 0x0006
_0807EF80 0x0000
Wait 0x001e
_0807EB44 0x0002
_0807EF80 0x0000
Wait 0x001e
_0807EB44 0x0006
_0807EF80 0x0000
Wait 0x003c
Call 0x08069a85
Jump 0xffa8
.short 0x0000
StartScript 
CheckInventory1 0x0012
JumpIf 0x004a
_0807EB44 0x0006
_0807E9D4 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
StopScript 
StopScript 
StartScript 
_0807EF80 0x000b
Call 0x080642b9
CheckEntityInteractType 
JumpIfNot 0xffee
StopScript 
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
Call 0x08064429
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffcc
_0807EF80 0x0008
_0807EF80 0x0006
SCRIPT_END
