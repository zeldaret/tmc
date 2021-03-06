SCRIPT_START gUnk_0800D414
StartScript 
SetEntityNonPlanarMovement 0x0100
Call sub_08068104
_0807EF80 0x000a
StopScript 
_0807EB44 0x0002
_0807E914 0x00000000
Call sub_0806AF60
Wait 0x0014
_0807EB44 0x0004
_0807E914 0x00000000
Call sub_0806AF60
Wait 0x0014
_0807EB44 0x0006
_0807E914 0x00000000
Call sub_0806AF60
Wait 0x0014
_0807EB44 0x0006
_0807E914 0x00000004
Call sub_0806AF60
_0807EDD4 0x00a8, 0x01e8
_0807EB44 0x0006
_0807E914 0x00000000
Call sub_0806AF60
Wait 0x0014
_0807EB44 0x0004
_0807E914 0x00000000
Call sub_0806AF60
Wait 0x0014
_0807EB44 0x0002
_0807E914 0x00000000
Call sub_0806AF60
Wait 0x0014
_0807EB44 0x0002
_0807E914 0x00000004
Call sub_0806AF60
_0807EDD4 0x0228, 0x01e8
Jump 0xff5a
.short 0x0000
StartScript 
_0807EF80 0x000a
Call sub_08062A48
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
Call sub_08062698
Call sub_080626AC
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F0EC
.short 0x0009
.short 0x0000
@ End of parameters
.short 0x2806 @ _0807E078 with 9 parameters
.short 0x0012
.short 0x001a
.short 0x0022
.short 0x002a
.short 0x0032
.short 0x003a
.short 0x0042
.short 0x004a
.short 0x0052
@ End of parameters
_0807EE04 0x0038, 0x0068
Jump 0x004e
_0807EE04 0x0078, 0x0068
Jump 0x0044
_0807EE04 0x00b8, 0x0068
Jump 0x003a
_0807EE04 0x0038, 0x0090
Jump 0x0030
_0807EE04 0x0078, 0x0090
Jump 0x0026
_0807EE04 0x00b8, 0x0090
Jump 0x001c
_0807EE04 0x0038, 0x00b8
Jump 0x0012
_0807EE04 0x0078, 0x00b8
Jump 0x0008
_0807EE04 0x00b8, 0x00b8
StopScript 
StartScript 
Call sub_080626C0
JumpIf 0xff72
CheckEntityInteractType 
JumpIf 0x000c
_0807EE30 
JumpIfNot 0xffe8
Jump 0xff62
StopScript 
_0807E864 
_0807EB74 
Call sub_0806265C
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xff4a
StartScript 
_0807EF80 0x000a
Call sub_08062A48
_0807EF80 0x0000
StopScript 
Call sub_08062698
Call sub_080626AC
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F0EC
.short 0x0004
.short 0x0000
@ End of parameters
.short 0x1406 @ _0807E078 with 4 parameters
.short 0x0008
.short 0x0010
.short 0x0018
.short 0x0020
@ End of parameters
_0807EE04 0x0038, 0x0098
Jump 0x001c
_0807EE04 0x0058, 0x0098
Jump 0x0012
_0807EE04 0x0038, 0x00c8
Jump 0x0008
_0807EE04 0x0058, 0x00c8
StopScript 
StartScript 
Call sub_080626C0
JumpIf 0xffae
_0807EE30 
JumpIfNot 0xffee
Jump 0xffa4
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x000b
_0807EF80 0x0008
Call sub_0806DAAC
JumpIf 0x008c
Call sub_0806DAD0
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806DA04
.short 0x0002
.short 0x0000
@ End of parameters
StopScript 
_0807EA4C 
_0807E9F0 
Call sub_0806DAAC
JumpIf 0x000e
Call sub_0807DF50
_0807E878 
Jump 0xffe8
_0807E864 
Call sub_0807DF28
Call sub_0807FBC4
Call sub_0807FBA0
SetEntityNonPlanarMovement 0x0700
_0807F0B4 0x0007
CameraTargetEntity 
_0807EDD4 0x01e8, 0x01b8
Wait 0x003c
Call sub_0806DAE8
Wait 0x0078
Call sub_0806DB44
JumpIfNot 0x000e
LoadRoomEntityList gUnk_080DD730
_0807EF80 0x0006
SCRIPT_END
