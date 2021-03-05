SCRIPT_START gUnk_0801194C
StartScript 
_0807EB44 0x0002
Jump 0x0016
.short 0x0000
StartScript 
_0807EB44 0x0006
Jump 0x000a
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807E9D4 
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
CheckGlobalFlag 0x0015
JumpIf 0x000a
TextboxNoOverlapFollow 0x103d
Jump 0x0006
TextboxNoOverlapFollow 0x103f
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffce
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x000c
.short 0x0000
@ End of parameters
StopScript 
Wait 0x003c
Call 0x0806407d
Jump 0xfff4
.short 0x0000
StartScript 
_0807EB44 0x0002
Jump 0x0016
.short 0x0000
StartScript 
_0807EB44 0x0004
Jump 0x000a
.short 0x0000
StartScript 
_0807EB44 0x0006
_0807E9D4 
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Call 0x08064429
_0807EA94 
_0807E878 
Jump 0xffe0
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807E9D4 
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
TextboxNoOverlapFollow 0x1320
_0807EA94 
_0807E878 
Jump 0xffe2
StartScript 
_0807EB44 0x0002
_0807E9D4 
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0x44b5
.short 0x0806
.short 0x0006
.short 0x0000
@ End of parameters
JumpIf 0x005e
TextboxNoOverlapFollow 0x1320
_0807EA94 
_0807E878 
Jump 0xffd4
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807E9D4 
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
TextboxNoOverlapFollow 0x1322
_0807EA94 
_0807E878 
Jump 0xffe2
CheckRoomFlag 0x000f
JumpIfNot 0xfffa
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1321
.short 0x0007
@ End of parameters
_0807EA94 
SetLocalFlag 0x0010
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda1d
.short 0x0806
.short 0x0003
.short 0x0000
@ End of parameters
_0807E878 
Call 0x0807df51
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
