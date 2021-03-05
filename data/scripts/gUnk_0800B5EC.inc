SCRIPT_START gUnk_0800B5EC
StartScript 
_0807EF80 0x000a
_0807EF80 0x0001
_0807E9D4 
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
TextboxNoOverlap 0x2009
_0807EA94 
_0807E878 
_0807EB44 0x0004
Jump 0xffe8
StartScript 
StopScript 
CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
JumpIfNot 0xfff6
Call 0x08079185
_0807E864 
Call 0x0807f9a5
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
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf971
.short 0x0807
.short 0x058b
.short 0x0000
@ End of parameters
JumpIf 0x001e
.short 0x140c @ CallWithArg with 4 parameters
.short 0x7425
.short 0x0808
.short 0x0000
.short 0x0000
@ End of parameters
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
Call 0x080873fd
DoFade6 
WaitFor_2 
CameraTargetPlayer 
Wait 0x001e
Call 0x0807df51
_0807E878 
SCRIPT_END
