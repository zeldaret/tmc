SCRIPT_START gUnk_08009348
StartScript 
_0807E9D4 
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
Call sub_0806D638
_0807F0B4 0x0001
CameraTargetEntity 
CheckGlobalFlag 0x0055
JumpIf 0x002c
TextboxNoOverlap 0x1d01
_0807EA94 
_0807EA94 
Call sub_0806D640
_0807F0B4 0x0001
CameraTargetPlayer 
Wait 0x002d
_0807F0B4 0x0004
_0807E878 
.byte 0xb
.byte 0xc
.byte 0x51
.byte 0xdf
.byte 0x7