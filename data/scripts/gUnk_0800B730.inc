SCRIPT_START gUnk_0800B730
StartScript 
StopScript 
Call sub_0808747C
JumpIfNot 0xfff8
Call sub_08079184
_0807E864 
Wait 0x000a
Call sub_0807F9A4
StartPlayerScript 0x0800b7c4
WaitForSomething2 0x00000004
SetRoomFlag 0x0000
WaitForSomething2 0x00000004
CheckLocalFlag 0x00a0
JumpIf 0x0036
TextboxNoOverlap 0x0580
_0807EA94 
CallWithArg sub_0807F970, 0x00000582
JumpIf 0x0014
CallWithArg sub_08087424, 0x00000001
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
