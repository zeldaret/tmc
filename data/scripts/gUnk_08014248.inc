SCRIPT_START gUnk_08014248
TestBit 0x00020000
JumpIf 0x0014
Wait 0x0008
CallWithArg sub_08095EAC, 0x00000000
Jump 0xffe6
CallWithArg sub_08095EAC, 0x00000001
Jump 0xfff4
.short 0x0000
StartScript 
_0807EF80 0x0008
StopScript 
CheckLocalFlag 0x0078
JumpIfNot 0xfffa
StartScript 
Call sub_0807F934
CallWithArg sub_0806DA04, 0x00000008
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
TextboxNoOverlapFollowPos 0x000c0647
_0807EA94 
_0807E878 
Jump 0xffec
.short 0x0000
