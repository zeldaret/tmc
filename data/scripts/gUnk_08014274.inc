SCRIPT_START gUnk_08014274
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
TextboxNoOverlapFollowPos 0x0647, 0x000c
_0807EA94 
_0807E878 
Jump 0xffec
.short 0x0000
