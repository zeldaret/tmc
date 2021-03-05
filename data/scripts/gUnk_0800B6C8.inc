SCRIPT_START gUnk_0800B6C8
StartScript 
StopScript 
HasRupees 0x0001
JumpIfNot 0xfffa
CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
JumpIfNot 0xfff6
Call sub_08079184
_0807E864 
Call sub_0807F9A4
StartPlayerScript 0x0800b7c4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
.short 0x0812
.short 0x009f
