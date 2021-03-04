SCRIPT_START gUnk_080126FC
StartScript
SetEntityNonPlanarMovement 0x0040
_0807EF80 0x0007
StopScript
_0807E930 0x0020
WaitForSomething2 0x00000004
_0807E930 0x0022
Call sub_0807F3C8
TextboxNoOverlapFollowPos 0x1102, 0x000c
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0021
Call sub_0807F3C8
TextboxNoOverlapFollowPos 0x1103,0x000c
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x0004
Wait 0x003c
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x0011
_0807E930 0x001c
TextboxNoOverlapFollowPos 0x1105,0x000c
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0022
Call sub_0807F3C8
TextboxNoOverlapFollowPos 0x1106,0x000c
_0807EA94 
_0807E930 0x001c
Call sub_0806D96C // Ezlo Angry FX 
TextboxNoOverlapFollowPos 0x1107,0x000c
_0807EA94 
_0807E930 0x0020
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0021
Call sub_0807F3C8 // Ezlo Angry FX 
TextboxNoOverlapFollowPos 0x1108,0x000c
_0807EA94 
_0807E930 0x001c
Call sub_0806D96C// Ezlo Angry FX 
TextboxNoOverlapFollowPos 0x1109,0x000c
_0807EA94 
_0807E930 0x0020
_0807EF80 0x000a
_0807E9D4 
_0807E5F8 0x00000008
StopScript 
StartScript 
CheckRoomFlag 0x0000
JumpIf 0x0028
CheckEntityInteractType 
JumpIfNot 0xfff0
StopScript 
_0807E864 
Call sub_0806D944  // Ezlo look at player
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x1114,0x000c
_0807EA94 
_0807E930 0x0020
_0807E878 
Jump 0xffd0
_0807E864 
_0807E9DC 
CallWithArg sub_0807F5B0,0x0000003c
Call sub_080791D0 
StopScript 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x000b
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
Call sub_0806D944// Ezlo look at player
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x110a,0x000c
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x110b,0x000c
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EF80 0x0004
Wait 0x003c
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x110c,0x000c
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x110d,0x000c
_0807EA94 
_0807E930 0x001f
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x110e,0x000c
_0807EA94 
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call sub_0806D908 
_0807EC1C 0x0010
_0807EF80 0x000a
_0807E9D4 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
StopScript 
StartScript 
Call sub_0806D944 // Ezlo look at player
CheckEntityInteractType 
JumpIf 0x000e
CheckPlayerInRegion2 0x3030
JumpIfNot 0x0020
Jump 0xffe6
_0807E864 
_0807E930 0x0010
StopScript 
TextboxNoOverlapFollowPos 0x1115,0x000c
_0807EA94 
_0807E930 0x0018
_0807E878 
Jump 0xffcc
StopScript 
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
_0807EB8C 
Call sub_0806D944 // Ezlo look at player
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x110f,0x000c
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call sub_0806D908
_0807EC1C 0x0050
_0807EA94 
Call sub_0807DF50 
_0807E878 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
StopScript 
StartScript 
Call sub_0806D944 // Ezlo look at player
CheckEntityInteractType 
JumpIf 0x000e
CheckPlayerInRegion2 0x3030
JumpIfNot 0x0020
Jump 0xffe6
_0807E864 
_0807E930 0x0010
StopScript 
TextboxNoOverlapFollowPos 0x1115,0x000c
_0807EA94 
_0807E930 0x0018
_0807E878 
Jump 0xffcc
StopScript 
_0807E864 
Call sub_0807F9A4 
Call sub_0807DF28 
_0807EB8C 
Call sub_0806D944  // Ezlo look at player
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x1110,0x000c
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call sub_0806D908 
_0807EC1C 0x0050
_0807E930 0x0018
_0807EA94 
Call sub_0807DF50 
_0807E878 
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
StopScript 
StartScript 
Call sub_0806D944  // Ezlo look at player
CheckEntityInteractType 
JumpIf 0x000e
CheckPlayerInRegion2 0x3030
JumpIfNot 0x0020
Jump 0xffe6
_0807E864 
_0807E930 0x0010
StopScript 
TextboxNoOverlapFollowPos 0x1115,0x000c
_0807EA94 
_0807E930 0x0018
_0807E878 
Jump 0xffcc
StopScript 
_0807E864 
Call sub_0807F9A4 
Call sub_0807DF28 
SoundReq0x80100000 
_0807EF80 0x000b
_0807EB8C 
Call sub_0806D944  // Ezlo look at player
_0807E930 0x0010
TextboxNoOverlapFollowPos 0x1111,0x000c
_0807E930 0x0018
SetEntityNonPlanarMovement 0x0080
Call sub_0806D8A0 
_0807EE30 
JumpIfNot 0xfffc
_0807E930 0x001f
_0807EA94 
StartPlayerScript 0x08012b18
Call sub_0806D9A4 
_0807EF80 0x0008
Wait 0x0078
SoundReq2 0x000e
StartScript 
_0807E8E4_2 
_0807EB28 0x1112
StopScript 
_0807EA94 
_0807E5F8 0x00000008
_0807EF80 0x0006
SCRIPT_END