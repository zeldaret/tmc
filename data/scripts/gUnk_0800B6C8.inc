SCRIPT_START gUnk_0800B6C8
StartScript 
StopScript 
HasRupees 0x0001
JumpIfNot 0xfffa
CheckPlayerInRegion 0x0078, 0x00b8, 0x1060
JumpIfNot 0xfff6
Call sub_08079184
_0807E864 
Call sub_0807F9A4
StartPlayerScript gUnk_0800B7C4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
CheckLocalFlag 0x009f
JumpIf 0x0098
TextboxNoOverlap 0x057b
_0807EA94 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F970
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
Call sub_0808747C
JumpIfNot 0xfff8
Call sub_08079184
_0807E864 
Wait 0x000a
Call sub_0807F9A4
StartPlayerScript gUnk_0800B7C4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
CheckLocalFlag 0x00a0
JumpIf 0x0036
TextboxNoOverlap 0x0580
_0807EA94 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0807F970
.short 0x0582
.short 0x0000
@ End of parameters
JumpIf 0x0014
.short 0x140c @ CallWithArg with 2 parameters
.word sub_08087424
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
