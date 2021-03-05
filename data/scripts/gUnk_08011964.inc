SCRIPT_START gUnk_08011964
StartScript 
_0807EB44 0x0004
_0807E9D4 
_0807EF80 0x000a
CallWithArg sub_0807F3D8, 0x00000000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000000
CheckGlobalFlag 0x0015
JumpIf 0x000a
TextboxNoOverlapFollow 0x103d
Jump 0x0006
TextboxNoOverlapFollow 0x103f
_0807EA94 
Wait 0x000f
_0807E878 
.short 0x0803
.short 0xffce
