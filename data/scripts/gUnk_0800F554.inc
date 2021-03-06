SCRIPT_START gUnk_0800F554
StartScript 
Call sub_08061FE4
_0807E9D4 
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call sub_08061FE4
Call sub_08061FF4
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
Call sub_0806265C
_0807EA94 
_0807E878 
_0807EF80 0x0001
Jump 0xffe6
.short 0x0000
StartScript 
_0807EB44 0x0006
_0807E9D4 
_0807EF80 0x000a
CallWithArg sub_0807F3D8, 0x00000008
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000008
Call sub_08064428
_0807EA94 
_0807E878 
Jump 0xffe0
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807E930 0x0000
_0807E9D4 
_0807EF80 0x000a
Call sub_0807F348
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000008
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
Call sub_0806C90C
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
Call sub_0806B4F0
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
Call sub_0807F348
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg sub_0807F3D8, 0x00000004
CheckLocalFlag 0x00cd
JumpIf 0x000a
TextboxNoOverlap 0x2512
Jump 0x0006
TextboxNoOverlap 0x251f
_0807EA94 
Wait 0x000f
_0807E878 
CallWithArg sub_0807F3D8, 0x00000000
Jump 0xffc4
.short 0x0000
StartScript 
_0807EF80 0x0001
_0807E9D4 
_0807EF80 0x000a
Call sub_08062788
StopScript 
CheckLocalFlag 0x00cd
JumpIf 0x001e
CheckEntityInteractType 
JumpIfNot 0xfff4
_0807E864 
_0807EB74 
Call sub_0806265C
_0807EA94 
_0807E878 
_0807EF80 0x0001
Jump 0xffde
Call sub_080627E8
_0807EF80 0x0006
SCRIPT_END
