SCRIPT_START gUnk_08014E14
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
Call 0x08064429
_0807EA94 
_0807E878 
Jump 0xffe0
.short 0x0000
StartScript 
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0807df29
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf78d
.short 0x0807
.short 0x0022
.short 0x0000
@ End of parameters
_0807EA94 
_0807E3E8 
JumpIfNot 0x0038
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf7c5
.short 0x0807
.short 0x0022
.short 0x0000
@ End of parameters
JumpIfNot 0x001e
_0807E48C 0x0020
JumpIfNot 0x001e
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf801
.short 0x0807
.short 0x0022
.short 0x0000
@ End of parameters
WaitPlayerAction8 
TextboxNoOverlap 0x0a04
Jump 0x000e
TextboxNoOverlap 0x0a03
Jump 0x0006
TextboxNoOverlap 0x0a02
_0807EA94 
Call 0x0807df51
_0807E878 
Jump 0xff9c
.short 0x0000
StartScript 
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x200d
_0807EA94 
_0807E878 
Jump 0xffec
.short 0x0000
StartScript 
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0004
_0807E930 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
_0807EF80 0x0000
TextboxNoOverlap 0x200e
_0807EA94 
_0807E878 
_0807EB44 0x0004
_0807E930 0x000a
Jump 0xffe0
.short 0x0000
StartScript 
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0004
_0807E930 0x000e
StopScript 
Call 0x08065915
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call 0x0807df29
_0807EB74 
_0807EF80 0x0000
StartScript 
TextboxNoOverlap 0x3b0b
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf855
.short 0x0807
.short 0x0064
.short 0x0001
@ End of parameters
StopScript 
_0807EA94 
_0807E3E8 
JumpIfNot 0x0030
HasRupees 0x0064
JumpIfNot 0x001c
_0807E48C 0x0020
JumpIfNot 0x001c
ModRupees 0xff9c
_0807F034 0x0022
WaitPlayerAction8 
TextboxNoOverlap 0x3b11
Jump 0x000e
TextboxNoOverlap 0x3b0e
Jump 0x0006
TextboxNoOverlap 0x3b0f
_0807EA94 
Call 0x0807df51
_0807E878 
_0807EB44 0x0004
_0807E930 0x000e
Jump 0xff90
StartScript 
SetEntityPositionRelative 0x00e001f8
Call 0x08054565
StopScript 
CheckPlayerInRegion 0x01f8, 0x00a0, 0x2040
JumpIfNot 0xfff6
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
SoundReq0x80100000 
_0807F0B4 0x0001
CameraTargetEntity 
StartPlayerScript 0x080152b4
WaitForSomething2 0x00000001
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1301
.short 0x0002
@ End of parameters
_0807EA94 
Call 0x0807f3f9
Wait 0x003c
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
SoundReq2 0x000d
_0807EB28 0x1302
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1303
.short 0x0002
@ End of parameters
_0807EA94 
_0807EB28 0x1304
_0807EA94 
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x1305
.short 0x0002
@ End of parameters
_0807EA94 
_0807E5F8 0x00000002
WaitForSomething2 0x00000004
_0807EB28 0x1306
_0807EA94 
SoundReq0x80100000 
StartPlayerScript 0x080152dc
CameraTargetEntity 
_0807F0B4 0x0003
SetEntityPositionRelative 0x014801f8
WaitForSomething2 0x00000001
Call 0x0804f6a9
Wait 0x0004
Call 0x0804f809
SoundReq 0x010b
StartPlayerScript 0x08015304
Call 0x0804f6c9
Wait 0x0004
Call 0x0804f831
SoundReq 0x010b
Call 0x0804f6e9
Wait 0x0004
Call 0x0804f855
SoundReq 0x010b
Call 0x0804f725
Wait 0x0004
Call 0x0804f89d
SoundReq 0x010b
Call 0x0804f761
Wait 0x0004
Call 0x0804f8e1
SoundReq 0x010b
Wait 0x003c
WaitForSomething2 0x00000001
SoundReq 0x01b0
Call 0x0804f79d
Wait 0x000a
LoadRoomEntityList 0x080f7fc0
SoundReq2 0x002d
Call 0x0807df51
_0807E878 
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
_0807E864 
Call 0x0807f9a5
Call 0x0807df29
SoundReq0x80100000 
StartPlayerScript 0x08015338
WaitForSomething2 0x00000001
Wait 0x003c
Call 0x0804f6a9
Wait 0x0004
Call 0x0804f929
SoundReq 0x010b
Call 0x0804f6c9
Wait 0x0004
Call 0x0804f945
SoundReq 0x010b
Call 0x0804f6e9
Wait 0x0004
Call 0x0804f961
SoundReq 0x010b
Call 0x0804f725
Wait 0x0004
Call 0x0804f995
SoundReq 0x010b
Call 0x0804f761
Wait 0x0004
Call 0x0804f9c9
SoundReq 0x010b
Wait 0x003c
SoundReq 0x0072
_0807F0B4 0x0004
CameraTargetPlayer 
SetLocalFlag 0x008c
_0807EB28 0x130c
_0807EA94 
CameraTargetPlayer 
_0807E778 0x0004
_0807E80C 0x00000000
WaitFor_2 
Call 0x08053b3d
StartScript 
_0807E864 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf6e9
.short 0x0807
.short 0x0008
.short 0x0000
@ End of parameters
MoveEntityToPlayer 
_0807F0B4 0x0004
CameraTargetEntity 
_0807E778 0x0100
DoFade4 
_0807E80C 0x00000000
StopScript 
StartPlayerScript 0x08015360
WaitForSomething2 0x00000001
LoadRoomEntityList 0x080f7cb0
_0807E778 0x0004
_0807E800 0x00000000
WaitFor_2 
_0807E5F8 0x00000008
WaitForSomething2 0x00000010
StartScript 
_0807E8E4_2 
_0807EB28 0x1315
StopScript 
_0807EA94 
_0807F0B4 0x0004
CameraTargetPlayer 
Call 0x08054571
SoundReq2 0xffff
Call 0x0807df51
_0807E878 
_0807EF80 0x0006
SCRIPT_END
