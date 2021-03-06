SCRIPT_START gUnk_08011B40
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
StopScript 
CheckGlobalFlag 0x0050
JumpIfNot 0x002c
WaitForSomething2 0x00000004
_0807EB44 0x0006
_0807EF80 0x0004
Wait 0x003c
_0807EB8C 
TextboxNoOverlap 0x3d07
_0807EA94 
_0807EB44 0x0004
ClearGlobalFlag 0x0050
Call sub_0807DF50
_0807E878 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x3d01
_0807EA94 
_0807E3E8 
JumpIf 0x000c
_0807E878 
_0807EB44 0x0004
Jump 0xffe2
HasRupees 0x000a
JumpIf 0x0012
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlap 0x3d05
Jump 0xffe0
ModRupees 0xfff6
Wait 0x001e
TextboxNoOverlap 0x3d06
_0807EA94 
CallWithArg sub_0806C2A0, 0x00000000
WaitFor_2 
Wait 0x003c
Call sub_0806C224
Jump 0xffb8
StartScript 
_0807E888 
StopScript 
CallWithArg sub_0806C2A0, 0x00000001
WaitFor_2 
Wait 0x003c
_0807E878 
SetRoomFlag 0x0000
SoundReq2 0x0033
CheckRoomFlag 0x0064
JumpIfNot 0xfffa
SoundReq0x80100000 
_0807E864 
Wait 0x003c
CameraTargetEntity 
Wait 0x003c
Call Simon_CreateChest
Wait 0x003c
CameraTargetPlayer 
_0807E878 
CheckLocalFlag 0x0001
JumpIfNot 0xfffa
_0807E888 
WaitPlayerAction8 
Wait 0x001e
CallWithArg sub_0806C2A0, 0x00000000
WaitFor_2 
Wait 0x003c
Call sub_0806C280
SCRIPT_END
