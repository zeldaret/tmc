SCRIPT_START gUnk_080108D0
CheckPlayerInRegion2 0x0808
JumpIfNot 0xfffa
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
StartPlayerScript 0x080109f0
WaitForSomething2 0x00000001
CheckRoomFlag 0x0001
JumpIf 0x0008
_0807EB28 0x0b63
.byte 0x59
