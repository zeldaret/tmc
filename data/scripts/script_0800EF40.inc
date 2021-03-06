SCRIPT_START script_0800EF40
StartScript 
_0807EF80 0x0007
CheckGlobalFlag 0x001f
JumpIf 0x0046
StopScript 
Call sub_080869A4
JumpIfNot 0xfff8
_0807E864 
CheckLocalFlagByOffset 0x0200, 0x006d
JumpIf 0x001e
TextboxNoOverlapFollow 0x4d01
_0807EA94 
StartPlayerScript script_0800EF9C
WaitForSomething2 0x00000001
Wait 0x000f
_0807E878 
Jump 0xffd0
SetGlobalFlag 0x001f
TextboxNoOverlapFollow 0x4d02
_0807EA94 
Wait 0x000f
_0807E878 
Call sub_0808692C
SCRIPT_END
.short 0x0000
