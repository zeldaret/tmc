SCRIPT_START gUnk_0800F554
StartScript 
Call 0x08061fe5
_0807E9D4 
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fe5
Call 0x08061ff5
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
_0807EF80 0x0001
_0807E9D4 
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0806265d
_0807EA94 
_0807E878 
_0807EF80 0x0001
Jump 0xffe6
.short 0x0000
StartScript 
_0807EB44 0x0006
_0807E9D4 
_0807EF80 0x000a
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
Call 0x08064429
_0807EA94 
_0807E878 
Jump 0xffe0
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
_0807E9D4 
_0807EF80 0x000a
Call 0x0807f349
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of 4 parameters
TextboxNoOverlap 0x2511
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffde
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EF80 0x0001
StopScript 
_0807E30C 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0806c90d
_0807EA94 
_0807E878 
Jump 0xffea
.short 0x0000
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
_0807EF80 0x0001
Call 0x0806b4f1
_0807EA94 
Wait 0x000f
_0807E878 
_0807EF80 0x0000
Jump 0xffde
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
_0807E9D4 
_0807EF80 0x000a
Call 0x0807f349
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of 4 parameters
CheckLocalFlag 0x00cd
JumpIf 0x000a
TextboxNoOverlap 0x2512
Jump 0x0006
TextboxNoOverlap 0x251f
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffc4
.short 0x0000
StartScript 
_0807EF80 0x0001
_0807E9D4 
_0807EF80 0x000a
Call 0x08062789
StopScript 
CheckLocalFlag 0x00cd
JumpIf 0x001e
CheckEntityInteractType 
JumpIfNot 0xfff4
_0807E864 
_0807EB74 
Call 0x0806265d
_0807EA94 
_0807E878 
_0807EF80 0x0001
Jump 0xffde
Call 0x080627e9
_0807EF80 0x0006
SCRIPT_END
