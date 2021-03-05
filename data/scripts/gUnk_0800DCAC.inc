SCRIPT_START gUnk_0800DCAC
StartScript 
_0807EF80 0x000a
Call sub_08066E38
StopScript 
WaitForSomething2 0x00000001
CallWithArg sub_0807F8E8, 0x00000000
_0807E5F8 0x00000002
CheckRoomFlag 0x0000
JumpIfNot 0xfffa
.short 0x0879
.short 0x0010
