SCRIPT_START gUnk_0800B6C8
StartScript 
StopScript 
HasRupees 0x0001
JumpIfNot 0xfffa
CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
JumpIfNot 0xfff6
Call 0x08079185
_0807E864 
Call 0x0807f9a5
StartPlayerScript 0x0800b7c4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
CheckLocalFlag 0x009f
JumpIf 0x0098
TextboxNoOverlap 0x057b
_0807EA94 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf971
.short 0x0807
.short 0x057d
.short 0x0000
@ End of parameters
JumpIf 0xff88
_0807EA94 
SetLocalFlag 0x009f
_0807F034 0x0064
Jump 0xff6c
.short 0x0000
StartScript 
StopScript 
Call 0x0808747d
JumpIfNot 0xfff8
Call 0x08079185
_0807E864 
Wait 0x000a
Call 0x0807f9a5
StartPlayerScript 0x0800b7c4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
CheckLocalFlag 0x00a0
JumpIf 0x0036
TextboxNoOverlap 0x0580
_0807EA94 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf971
.short 0x0807
.short 0x0582
.short 0x0000
@ End of parameters
JumpIf 0x0014
.short 0x140c @ CallWithArg with 4 parameters
.short 0x7425
.short 0x0808
.short 0x0001
.short 0x0000
@ End of parameters
Wait 0x00b4
Jump 0xff14
_0807EA94 
SetLocalFlag 0x00a0
_0807F034 0x0065
Jump 0xfef8
TextboxNoOverlap 0x0590
_0807EA94 
_0807E778 0x0010
DoFade7 
WaitFor_2 
ModHealth 0x00a0
DoFade6 
WaitFor_2 
TextboxNoOverlap 0x057f
_0807EA94 
Jump 0xfee6
.short 0x0000
StartScript 
SetEntityNonPlanarMovement 0x0100
StopScript 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf6b5
.short 0x0807
.short 0x0090
.short 0x0000
@ End of parameters
JumpIfNot 0x0024
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf465
.short 0x0807
.short 0x0078
.short 0x0000
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf4f9
.short 0x0807
.short 0x0090
.short 0x0000
@ End of parameters
_0807E8E4_0 
_0807EF80 0x0000
_0807E5F8 0x00000004
SCRIPT_END
