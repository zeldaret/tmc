SCRIPT_START script_08014450
StartScript 
_0807E9D4 
_0807EB44 0x0000
SetEntityNonPlanarMovement 0x01c0
_0807EF80 0x000a
StopScript 
_0807E30C 
JumpIfNot 0xfffc
_0807E864 
_0807E930 0x0008
Wait 0x0020
_0807E930 0x0002
TextboxNoOverlapFollow 0x4202
TextboxNoOverlapFollow 0x4203
_0807EA94 
_0807E3E8 
JumpIfNot 0x006c
_0807EF80 0x0001
Wait 0x008c
_0807EF80 0x0000
HasRupees 0x000a
JumpIf 0x000a
TextboxNoOverlapFollow 0x4204
Jump 0x005c
Call sub_0806E250
JumpIfNot 0x000e
TextboxNoOverlapFollow 0x420b
_0807EB38 
_0807E078 0x0004, 0x000a
ClearLocalFlag 0x0093
Jump 0x000a
SetLocalFlag 0x0093
SetLocalFlag 0x00d3
ModRupees 0xfff6
TextboxNoOverlapFollow 0x420c
SoundReq 0x010c
Wait 0x0018
SetRoomFlag 0x0000
SetLocalFlag 0x0092
_0807EEF4 0x0000, 0xffa0
Call sub_0807DF38
Jump 0x000e
_0807E930 0x0009
Wait 0x003c
_0807E930 0x0002
_0807E878 
CheckRoomFlag 0x0000
JumpIfNot 0xff5e
_0807E9DC 
SCRIPT_END
.short 0x0000
