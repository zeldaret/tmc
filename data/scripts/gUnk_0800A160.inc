SCRIPT_START gUnk_0800A160
StartScript 
SetEntityNonPlanarMovement 0x0080
_0807EF80 0x0007
_0807EF80 0x000b
_0807E930 0x0002
SetEntityPositionRelative 0x008000b0
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F98C
.short 0x0000
.short 0xff80
@ End of parameters
.short 0x140c @ CallWithArg with 2 parameters
.word sub_080960C4
.short 0xa1b4
.short 0x0800
@ End of parameters
StopScript 
SoundReq 0x0142
_0807EF3C 0xff80, 0x0000
SoundReq 0x0143
_0807E930 0x0004
_0807E5F8 0x00000002
Wait 0x003c
_0807E5F8 0x00000004
SCRIPT_END
.short 0x0000
