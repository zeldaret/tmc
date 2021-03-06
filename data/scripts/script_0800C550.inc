SCRIPT_START script_0800C550
StartScript 
Call sub_08060090
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000e
Call sub_08060158
StopScript 
Jump 0xffee
StopScript 
_0807E864 
Call sub_08060208
_0807EA94 
_0807E878 
Jump 0xffdc
StartScript 
Call sub_08060090
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000e
Call sub_08060158
StopScript 
Jump 0xffee
StopScript 
_0807E864 
CheckInventory1 0x0067
JumpIfNot 0x000c
Call sub_08060208
Jump 0x0006
TextboxNoOverlap 0x4710
_0807EA94 
_0807E878 
Jump 0xffcc
StartScript 
Call sub_08060090
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000e
Call sub_08060158
StopScript 
Jump 0xffee
StopScript 
_0807E864 
Call sub_08060270
_0807EA94 
_0807E878 
Jump 0xffdc
StartScript 
Call sub_08060090
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000e
Call sub_08060158
StopScript 
Jump 0xffee
StopScript 
_0807E864 
Call sub_0806021C
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffd8
StartScript 
_0807EF80 0x000a
SetEntityNonPlanarMovement 0x0080
_0807EB44 0x0004
CheckLocalFlag 0x0082
JumpIfNot 0x0008
SetEntityPosition 0x0010, 0x0000
StopScript 
_0807E944 
_0807E864 
Call sub_0807DF28
CheckLocalFlag 0x0082
JumpIf 0x0022
CheckPlayerInRegion 0x00e8, 0x0028, 0x1810
JumpIfNot 0x0006
_0807EF80 0x000b
StartPlayerScript script_0800C8C8
WaitForSomething2 0x00000001
_0807EF80 0x000a
CheckInventory1 0x0040
JumpIf 0x00a6
CheckInventory1 0x005b
JumpIf 0x0024
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f16
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
SetLocalFlag 0x0080
Call sub_0807DF50
_0807E878 
Jump 0xff9e
CheckLocalFlag 0x0081
JumpIf 0x0020
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f1b
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
Call sub_0807DF50
_0807E878 
Jump 0xff78
CheckLocalFlag 0x0082
JumpIf 0x0030
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f17
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
_0807EB44 0x0002
_0807EF80 0x0001
_0807EC94 0x0020
_0807EB44 0x0004
Wait 0x000f
SoundReq 0x0072
SetLocalFlag 0x0082
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f18
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
Call sub_0807DF50
_0807E878 
Jump 0xff24
CheckLocalFlag 0x0083
JumpIf 0x0020
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f19
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
Call sub_0807DF50
_0807E878 
Jump 0xfefe
_0807EF80 0x0002
TextboxNoOverlapFollow 0x1f1a
_0807EA94 
_0807EF80 0x0015
Wait 0x000a
Call sub_0807DF50
_0807E878 
Jump 0xfee0
StartScript 
_0807EF80 0x000a
_0807EB44 0x0004
StopScript 
_0807E944 
_0807E864 
Call sub_0807DF28
StartPlayerScript script_0800C8F0
WaitForSomething2 0x00000001
CheckInventory1 0x0040
JumpIf 0x0088
CheckInventory1 0x005b
JumpIf 0x001c
_0807E930 0x0008
TextboxNoOverlapFollow 0x2122
_0807EA94 
_0807EF80 0x0000
Call sub_0807DF50
_0807E878 
Jump 0xffc2
_0807E930 0x0008
CheckLocalFlag 0x0081
JumpIf 0x0040
TextboxNoOverlapFollow 0x1130
_0807EA94 
_0807EB28 0x1131
_0807EA94 
_0807EB8C 
TextboxNoOverlapFollow 0x1132
_0807EA94 
_0807E914 0x00000103
Call sub_0807F420
TextboxNoOverlapFollow 0x1133
_0807EA94 
Wait 0x000a
_0807EF80 0x0000
SetLocalFlag 0x0081
Call sub_0807DF50
_0807E878 
Jump 0xff78
TextboxNoOverlapFollow 0x1133
_0807EA94 
Wait 0x000a
_0807E930 0x0000
Call sub_0807DF50
_0807E878 
Jump 0xff5e
_0807E930 0x0008
CheckLocalFlag 0x0083
JumpIf 0x0080
TextboxNoOverlapFollow 0x1135
_0807EA94 
SetEntityNonPlanarMovement 0x0040
_0807EDD4 0x0038, 0x0044
_0807EF80 0x0000
Wait 0x000f
SetLocalFlag 0x0083
Wait 0x003c
SoundReq 0x0072
Wait 0x003c
_0807EB74 
_0807EB8C 
TextboxNoOverlapFollow 0x1136
_0807EA94 
_0807EB28 0x1137
_0807EA94 
Wait 0x000a
_0807EB44 0x0004
_0807EF80 0x0000
Call sub_0807DF50
_0807E878 
_0807E944 
_0807E864 
Call sub_0807DF28
_0807EB74 
_0807E914 0x00000008
Call sub_0807F3D8
TextboxNoOverlapFollow 0x1136
_0807EA94 
Wait 0x000a
_0807EF80 0x0000
Call sub_0807DF50
_0807E878 
Jump 0xffd0
TextboxNoOverlapFollow 0x1136
_0807EA94 
Wait 0x000a
_0807EF80 0x0000
Call sub_0807DF50
_0807E878 
Jump 0xfeba
