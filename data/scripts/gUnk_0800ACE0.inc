SCRIPT_START gUnk_0800ACE0
StartScript 
Call sub_08094BE0
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F238
.short 0x045b
.short 0x0000
@ End of parameters
SoundReq 0x0109
StopScript 
Call sub_0807F304
Wait 0x005a
_0807E5F8 0x00000008
StartScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F6F8
.short 0x0008
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F238
.short 0x08e4
.short 0x0000
@ End of parameters
StopScript 
Call sub_0807F304
_0807EB44 0x0004
_0807EF80 0x0000
Wait 0x003c
_0807EB44 0x0002
_0807EF80 0x0000
Wait 0x0004
_0807EB44 0x0000
_0807EF80 0x0000
_0807E5F8 0x00000001
Call sub_080791BC
.short 0x0000
