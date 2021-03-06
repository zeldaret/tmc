SCRIPT_START script_0801194C
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
Jump 0xffce
StartScript 
_0807E9D4 
_0807EB44 0x0004
_0807EF80 0x000a
CallWithArg sub_0807F3D8, 0x0000000c
StopScript 
Wait 0x003c
Call sub_0806407C
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
CallWithArg sub_0807F3D8, 0x00000000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000000
Call sub_08064428
_0807EA94 
_0807E878 
Jump 0xffe0
.short 0x0000
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
TextboxNoOverlapFollow 0x1320
_0807EA94 
_0807E878 
Jump 0xffe2
StartScript 
_0807EB44 0x0002
_0807E9D4 
_0807EF80 0x000a
CallWithArg sub_0807F3D8, 0x00000000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000000
CallWithArg sub_080644B4, 0x00000006
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
CallWithArg sub_0807F3D8, 0x00000000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000000
TextboxNoOverlapFollow 0x1322
_0807EA94 
_0807E878 
Jump 0xffe2
CheckRoomFlag 0x000f
JumpIfNot 0xfffa
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
TextboxNoOverlapFollowPos 0x00071321
_0807EA94 
SetLocalFlag 0x0010
CallWithArg sub_0806DA1C, 0x00000003
_0807E878 
Call sub_0807DF50
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
