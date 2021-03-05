SCRIPT_START gUnk_08012E88
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
Call 0x0806b60d
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0001
Call 0x0806b4f1
_0807EA94 
_0807E878 
_0807EF80 0x0000
Jump 0xffe2
.short 0x0000
StartScript 
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
_0807EF80 0x000a
Call 0x0806b60d
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x000c
.short 0x0000
@ End of parameters
Call 0x0806b4f1
_0807EA94 
Wait 0x000f
_0807E878 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
Jump 0xffd2
