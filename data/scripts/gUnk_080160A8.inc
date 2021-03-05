SCRIPT_START gUnk_080160A8
StartScript 
_0807E9D4 
_0807E930 0x0008
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x0028
TestBit 0x00000008
JumpIf 0x0010
TestBit 0x00000010
JumpIf 0x0006
Jump 0xffe0
StopScript 
_0807EB74 
WaitForSomething2 0x00000004
Jump 0xffd2
_0807E864 
_0807EB74 
StopScript 
.short 0x0411
.short 0x0805
