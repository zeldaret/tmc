SCRIPT_START gUnk_0800E0BC
StartScript 
_0807EB44 0x0004
_0807EF80 0x000a
CheckLocalFlag 0x0093
JumpIf 0x0062
_0807E930 0x0008
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf8e9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Wait 0x001e
_0807EF80 0x0010
SoundReq 0x01c9
_0807E930 0x0009
Wait 0x003c
SoundReq 0x01ca
_0807EF80 0x0010
Wait 0x001e
SoundReq 0x0072
Wait 0x0078
_0807EF80 0x0004
Wait 0x001e
_0807EF80 0x0000
_0807EB8C 
_0807EB74 
Wait 0x000a
TextboxNoOverlap 0x2402
_0807EA94 
SetLocalFlag 0x0093
Call 0x080668f1
_0807E878 
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x2402
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffe8
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x000a
CheckLocalFlag 0x0094
JumpIf 0x006c
_0807E930 0x0010
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf8e9
.short 0x0807
.short 0x0001
.short 0x0000
@ End of parameters
StopScript 
CheckRoomFlag 0x0001
JumpIfNot 0xfffa
_0807E864 
Wait 0x001e
_0807EF80 0x0010
SoundReq 0x01c9
_0807E930 0x0015
Wait 0x003c
SoundReq 0x01ca
_0807EF80 0x0010
Wait 0x001e
SoundReq 0x0072
Wait 0x0078
_0807EF80 0x0004
Wait 0x001e
_0807EF80 0x0000
_0807EB8C 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
Wait 0x000a
TextboxNoOverlap 0x2401
_0807EA94 
SetLocalFlag 0x0094
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807E9D4 
_0807E878 
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
TextboxNoOverlap 0x2401
_0807EA94 
_0807E878 
Jump 0xffe2
StartScript 
SetEntityNonPlanarMovement 0x0100
_0807EB44 0x0004
_0807EF80 0x000a
CheckLocalFlag 0x0073
JumpIfNot 0x001e
_0807E9D4 
SetEntityPositionRelative 0x01680070
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
Jump 0x00fe
CheckLocalFlag 0x0095
JumpIf 0x0062
_0807E930 0x0010
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf8e9
.short 0x0807
.short 0x0002
.short 0x0000
@ End of parameters
StopScript 
CheckRoomFlag 0x0002
JumpIfNot 0xfffa
_0807E864 
Wait 0x001e
_0807EF80 0x0010
SoundReq 0x01c9
_0807E930 0x0015
Wait 0x003c
SoundReq 0x01ca
_0807EF80 0x0010
Wait 0x001e
SoundReq 0x0072
Wait 0x0078
_0807EF80 0x0004
Wait 0x001e
_0807EF80 0x0000
_0807EB8C 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
SetLocalFlag 0x0095
_0807EF80 0x0000
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807E9D4 
_0807E878 
StopScript 
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x005c
CheckLocalFlag 0x0093
JumpIfNot 0xfff0
CheckLocalFlag 0x0094
JumpIfNot 0xffe8
CheckLocalFlag 0x0095
JumpIfNot 0xffe0
_0807E9DC 
SetLocalFlag 0x0073
StopScript 
_0807EB44 0x0000
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of parameters
_0807EDD4 0x0088, 0x0168
_0807EB44 0x0006
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of parameters
_0807EDD4 0x0070, 0x0168
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807E9D4 
Jump 0x001e
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
TextboxNoOverlap 0x2404
_0807EA94 
_0807E878 
Jump 0xff82
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
TextboxNoOverlap 0x2403
_0807EA94 
_0807E878 
Jump 0xffe2
.short 0x0000
StartScript 
_0807EB44 0x0004
_0807EF80 0x000a
CheckLocalFlag 0x0071
JumpIf 0x0088
CheckLocalFlag 0x0096
JumpIf 0x0056
_0807E930 0x000c
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf8e9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
StopScript 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Wait 0x001e
_0807EF80 0x0010
SoundReq 0x01c9
_0807E930 0x000d
Wait 0x003c
SoundReq 0x01ca
_0807EF80 0x0010
Wait 0x001e
SoundReq 0x0072
Wait 0x0078
_0807EF80 0x0004
Wait 0x001e
_0807EF80 0x0000
_0807EB74 
SetLocalFlag 0x0096
_0807EF80 0x0000
_0807E9D4 
_0807E878 
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x240c
_0807EA94 
Wait 0x000f
_0807F034 0x0053
WaitPlayerAction8 
SetLocalFlag 0x0071
_0807E878 
_0807E9D4 
_0807E878 
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x240d
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffe8
StartScript 
_0807EB44 0x0002
_0807EF80 0x000a
Call 0x080668f1
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x2406
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffe8
StartScript 
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807EF80 0x000a
_0807E9D4 
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
TextboxNoOverlap 0x2405
_0807EA94 
_0807E878 
Jump 0xffe2
StartScript 
_0807EB44 0x0004
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf3d9
.short 0x0807
.short 0x0000
.short 0x0000
@ End of parameters
_0807EF80 0x000a
_0807E9D4 
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
TextboxNoOverlap 0x2407
_0807EA94 
_0807E878 
Jump 0xffe2
StartScript 
Call 0x0807f355
StopScript 
CheckLocalFlag 0x007c
JumpIf 0x0046
CheckPlayerInRegion 0x0088, 0x00f8, 0x0820
JumpIfNot 0xfff6
StartScript 
_0807E864 
StopScript 
Call 0x0807f3f9
Wait 0x003c
TextboxNoOverlapFollow 0x160c
_0807EA94 
Wait 0x001e
TextboxNoOverlapFollow 0x160d
_0807EA94 
Wait 0x001e
_0807EB28 0x160e
Wait 0x003c
_0807EA94 
StartScript 
SoundReq2 0x0033
SetLocalFlag 0x007c
_0807E878 
_0807EF80 0x0006
StopScript 
SCRIPT_END
