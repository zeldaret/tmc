SCRIPT_START gUnk_08013720
StartScript 
_0807EF80 0x0008
StopScript 
StartScript 
Call sub_0807F92C
CallWithArg sub_0806DA04, 0x00000003
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
StartPlayerScript 0x080136d8
WaitForSomething2 0x00000001
CallWithArg sub_08095A1C, 0x08013f34
SoundReq 0x01cd
Wait 0x005a
StartScript 
SoundReq 0x01ce
CallWithArg sub_08095D54, 0x08013e4c
StopScript 
WaitForSomething2 0x20000000
StartScript 
SoundReq 0x01cf
CallWithArg sub_08095D8C, 0x08014054
CallWithArg sub_08095D8C, 0x08014074
CallWithArg sub_08095D8C, 0x08014094
StopScript 
Wait 0x001e
StartScript 
SoundReq 0x01d0
CallWithArg sub_08095D8C, 0x080140dc
CallWithArg sub_08095D8C, 0x08014118
CallWithArg sub_08095D8C, 0x08014154
StopScript 
Wait 0x003c
.short 0x140c
.short 0xdded
.short 0x0805
