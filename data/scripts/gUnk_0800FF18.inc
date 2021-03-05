SCRIPT_START gUnk_0800FF18
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
Call 0x08064199
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
