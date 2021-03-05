SCRIPT_START gUnk_0800B614
StartScript 
StopScript 
CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
JumpIfNot 0xfff6
Call sub_08079184
_0807E864 
Call sub_0807F9A4
StartPlayerScript 0x0800b7c4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
CheckLocalFlag 0x009e
JumpIf 0x0154
TextboxNoOverlap 0x0583
_0807EA94 
_0807E3E8 
JumpIfNot 0x002a
Wait 0x000f
TextboxNoOverlap 0x0584
CallWithArg sub_0807F970, 0x0000058b
JumpIf 0x001e
CallWithArg sub_08087424, 0x00000000
Wait 0x00b4
Jump 0x0024
TextboxNoOverlap 0x057d
_0807EA94 
Jump 0x001a
_0807EA94 
SetLocalFlag 0x009e
_0807F034 0x0066
WaitPlayerAction8 
_0807EB8C 
Wait 0x001e
TextboxNoOverlap 0x057f
_0807EA94 
_0807E778 0x0004
DoFade7 
WaitFor_2 
Call sub_080873FC
DoFade6 
WaitFor_2 
CameraTargetPlayer 
Wait 0x001e
Call sub_0807DF50
_0807E878 
SCRIPT_END
