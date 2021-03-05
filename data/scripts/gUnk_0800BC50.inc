SCRIPT_START gUnk_0800BC50
StartScript 
_0807EB44 0x0004
_0807E930 0x0008
Call sub_08054EB8
StopScript 
CheckRoomFlag 0x00ff
JumpIfNot 0xfffa
_0807E930 0x0000
Wait 0x001e
_0807EF80 0x0004
Wait 0x003c
TextboxNoOverlap 0x0e08
_0807EA94 
_0807EF80 0x000f
_0807E930 0x0008
Wait 0x00f0
Call sub_08054EFC
_0807EB44 0x0000
_0807E930 0x0000
SetEntityNonPlanarMovement 0x0040
_0807EF80 0x000d
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F4F8
.short 0x0378
.short 0x0000
@ End of parameters
Wait 0x003c
_0807EF80 0x000c
Wait 0x003c
TextboxNoOverlap 0x0e09
_0807EA94 
Call sub_0807F158
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F4F8
.short 0x035c
.short 0x0000
@ End of parameters
Wait 0x001e
SoundReq 0x0188
_0807EF80 0x0008
Wait 0x0078
Call sub_08054968
SCRIPT_END
.short 0x0000
