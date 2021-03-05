SCRIPT_START gUnk_08015BE8
StartScript 
SetEntityNonPlanarMovement 0x0080
StopScript 
CheckPlayerInRegion 0x0160, 0x0020, 0x3040
JumpIfNot 0xfff6
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
Call sub_0807FBC4
StartPlayerScript 0x08015c7c
WaitForSomething2 0x00000100
CameraTargetPlayer 
_0807E778 0x0004
_0807E80C 0x00000000
WaitFor_2 
SoundReq0x80100000 
Call sub_08053BE8
StartScript 
_0807E864 
Call sub_0807FBC4
CameraTargetPlayer 
_0807E778 0x0100
DoFade4 
_0807E80C 0x00000000
StopScript 
_0807E778 0x0004
_0807E800 0x00000000
WaitFor_2 
SoundReq2 0xffff
_0807EB28 0x131f
_0807EA94 
SetLocalFlag 0x009c
Call sub_0807FBCC
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
.short 0x0401
.short 0x0867
.short 0x0080
.short 0x0402
.short 0x0879
.short 0x0001
.short 0x0c73
.short 0x0168
.short 0x0058
.short 0x0861
.short 0x0004
.short 0x0879
.short 0x0000
.short 0x140c
.short 0xf239
.short 0x0807
.short 0x03c5
.short 0x0000
.short 0x0c0b
.short 0xf305
.short 0x0807
.short 0x0c5c
.short 0x1318
.short 0x000c
.short 0x0459
.short 0x140c
.short 0xf239
.short 0x0807
.short 0x03c9
.short 0x0000
.short 0x0c0b
.short 0xf305
.short 0x0807
.short 0x0861
.short 0x0004
.short 0x0879
.short 0x0000
.short 0x0c28
.short 0x0100
.short 0x0000
.short 0x0c0b
.short 0x91bd
.short 0x0807
.short 0xffff
