SCRIPT_START gUnk_0800B828
StartScript 
_0807E9D4 
_0807EB44 0x0000
_0807EF80 0x000a
StopScript 
_0807E944 
_0807E864 
TextboxNoOverlapFollow 0x0a01
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffee
.short 0x0000
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
StopScript 
Wait 0x003c
Call 0x080646a5
Jump 0xfff4
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807E930 0x0000
_0807EF80 0x000a
StopScript 
Wait 0x003c
Call 0x0806407d
Jump 0xfff4
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlapFollow 0x0a01
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffe8
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
.short 0x140c @ CallWithArg with 4 parameters
.short 0x4645
.short 0x0806
.short 0x464d
.short 0x0806
@ End of parameters
StopScript 
Wait 0x003c
Call 0x080646a5
Jump 0xfff4
.short 0x0000
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0004
Call 0x08061fd9
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x0000
_0807EF80 0x000a
StopScript 
CheckLocalFlag 0x005f
JumpIf 0x001c
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlapFollow 0x3f19
_0807EA94 
SetLocalFlag 0x005f
_0807E878 
Jump 0xffe8
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlapFollow 0x3f1a
_0807EA94 
_0807E878 
Jump 0xffec
StartScript 
_0807EF80 0x000b
_0807EF80 0x0008
Call 0x0806daad
JumpIf 0x0036
Call 0x0806dad1
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda05
.short 0x0806
.short 0x0005
.short 0x0000
@ End of parameters
StopScript 
_0807EA4C 
_0807E9F0 
JumpIf 0x000e
Call 0x0807df51
_0807E878 
Jump 0xffee
Call 0x0806f189
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
