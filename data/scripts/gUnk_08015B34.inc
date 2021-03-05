SCRIPT_START gUnk_08015B34
StopScript 
StartScript 
CheckLocalFlag 0x008b
JumpIf 0x0040
CallWithArg sub_0807F6B4, 0x00000318
JumpIfNot 0xffe8
StopScript 
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
TextboxNoOverlapFollowPos 0x2506, 0x0002
_0807EA94 
StartPlayerScript 0x08015b84
WaitForSomething2 0x00000004
Call sub_0807DF50
_0807E878 
Jump 0xffb8
_0807EF80 0x0006
SCRIPT_END
