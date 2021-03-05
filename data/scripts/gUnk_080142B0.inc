SCRIPT_START gUnk_080142B0
StartScript 
CheckLocalFlag 0x0054
JumpIf 0x00ca
CheckLocalFlag 0x0053
JumpIf 0x0070
StopScript 
StopScript 
StartScript 
_0807E564 
JumpIfNot 0xfff8
CheckPlayerInRegion 0x0098, 0x0058, 0x1818
JumpIfNot 0xffec
StopScript 
_0807E864 
SetLocalFlag 0x0053
Wait 0x0014
_0807E908 0x0004
Call sub_080654DC
Wait 0x001e
_0807E930 0x0001
Wait 0x000a
_0807E930 0x0003
Wait 0x000a
_0807E930 0x0001
Wait 0x000a
_0807E930 0x0003
Wait 0x000a
_0807E930 0x0002
Wait 0x001e
TextboxNoOverlap 0x2c12
_0807EA94 
Wait 0x0014
_0807E930 0x0004
_0807E878 
_0807E908 0x0001
StopScript 
StartScript 
_0807E564 
JumpIf 0xfff8
EntityHasHeight 
JumpIf 0xfff2
CheckPlayerInRegion 0x00c0, 0x0068, 0x1010
JumpIfNot 0xffe6
StopScript 
_0807E864 
SetLocalFlag 0x0054
Wait 0x005a
_0807E908 0x0004
Call sub_080654EC
Wait 0x001e
_0807E930 0x0001
Wait 0x001e
TextboxNoOverlap 0x2c13
_0807EA94 
Wait 0x0014
_0807E930 0x0004
_0807E908 0x0001
_0807E878 
SCRIPT_END
