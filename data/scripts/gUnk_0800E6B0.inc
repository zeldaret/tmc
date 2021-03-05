SCRIPT_START gUnk_0800E6B0
StartScript 
Call 0x08060091
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000e
Call 0x08060159
StopScript 
Jump 0xffee
StopScript 
_0807E864 
Call 0x0806025d
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffd8
StartScript 
Call 0x0806adfd
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x000c
Call 0x0806aee5
Jump 0xffee
StopScript 
_0807E864 
Call 0x0806afe9
JumpIf 0x000e
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffd4
_0807EA94 
_0807F034 0x0057
WaitPlayerAction8 
_0807EA94 
_0807E878 
Jump 0xffc4
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
.short 0x140c @ CallWithArg with 4 parameters
.short 0xaf61
.short 0x0806
.short 0x0000
.short 0x0000
@ End of parameters
Call 0x0806afe9
_0807EA94 
_0807E878 
Jump 0xffe0
StartScript 
_0807E9D4 
_0807EF80 0x000a
SetEntityNonPlanarMovement 0x0200
CheckGlobalFlag 0x0029
JumpIfNot 0x000a
CheckGlobalFlag 0x002a
JumpIfNot 0x000c
SetEntityPositionRelative 0x00980188
Jump 0xff70
StopScript 
StartScript 
CheckGlobalFlag 0x002a
JumpIf 0x002a
CheckEntityInteractType 
JumpIf 0x000e
Call 0x0806aee5
StopScript 
Jump 0xffe6
StopScript 
_0807E864 
Call 0x0806afe9
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffd0
_0807EF80 0x000f
_0807EB44 0x0002
.short 0x140c @ CallWithArg with 4 parameters
.short 0xaf61
.short 0x0806
.short 0x0004
.short 0x0000
@ End of parameters
Call 0x0806af71
_0807EE04 0x0188, 0x0058
StopScript 
StartScript 
Call 0x0806af79
_0807EE30 
JumpIfNot 0xfff2
EntityHasHeight 
JumpIf 0xffec
StopScript 
Jump 0xff02
StartScript 
Call 0x0806c675
_0807EF80 0x000a
_0807EB44 0x0004
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0806c70d
_0807EA94 
_0807E878 
_0807EB44 0x0004
Jump 0xffe6
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
_0807EB44 0x0000
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB44 0x0004
StartScript 
TextboxNoOverlapFollow 0x4501
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf855
.short 0x0807
.short 0x0032
.short 0x0001
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf855
.short 0x0807
.short 0x00c8
.short 0x0002
@ End of parameters
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf855
.short 0x0807
.short 0x0190
.short 0x0003
@ End of parameters
StopScript 
_0807EA94 
_0807EB38 
.short 0x1406 @ _0807E078 with 4 parameters
.short 0x00a6
.short 0x006a
.short 0x0036
.short 0x0002
@ End of parameters
StartScript 
TextboxNoOverlapFollow 0x4505
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf855
.short 0x0807
.short 0x0190
.short 0x0001
@ End of parameters
StopScript 
_0807EA94 
HasRupees 0x0190
JumpIfNot 0x007c
ModRupees 0xfe70
SetLocalFlag 0x0091
TextboxNoOverlapFollow 0x4508
_0807EA94 
Call 0x0806c579
SCRIPT_END
