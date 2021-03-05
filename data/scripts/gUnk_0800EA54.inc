SCRIPT_START gUnk_0800EA54
StartScript 
Call 0x0806ce5d
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0008
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0xf3d9
.short 0x0807
.short 0x0004
.short 0x0000
@ End of 4 parameters
Call 0x0807f2d5
_0807E930 0x0009
Call 0x0806ce81
_0807EA94 
_0807E878 
_0807E930 0x000a
Call 0x0807f2d5
_0807E930 0x0008
Jump 0xffc8
StartScript 
_0807E9D4 
Call 0x0806c09d
_0807EF80 0x000a
_0807E930 0x0000
_0807EB44 0x0004
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
StartScript 
_0807E864 
_0807EB74 
CallWithArg
.short 0xc029
.short 0x0806
.short 0x0004
.short 0x0000
@ End of 4 parameters
StopScript 
Call 0x0806c00d
JumpIfNot 0xfff8
_0807E930 0x0008
Call 0x0806c039
_0807EA94 
Wait 0x000f
_0807E878 
_0807E930 0x0000
Jump 0xffc6
StartScript 
Call 0x0806c871
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0000
StopScript 
_0807E30C 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x0806c90d
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffe6
.short 0x0000
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0004
Call 0x08061fd9
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0006
Call 0x08061fd9
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
_0807EB44 0x0006
Call 0x08061fd9
Jump 0xffda
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0002
Call 0x08061fd9
StopScript 
Jump 0x0036
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0004
Call 0x08061fd9
StopScript 
Jump 0x001a
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0006
Call 0x08061fd9
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0002
Call 0x08061fd9
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
_0807EB44 0x0002
Call 0x08061fd9
Jump 0xffda
StartScript 
Call 0x08061e71
_0807EF80 0x000a
_0807EB44 0x0004
Call 0x08061fd9
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
Call 0x08061fd9
Call 0x08062049
_0807EA94 
_0807E878 
Jump 0xffe4
.short 0x0000
StartScript 
_0807E9D4 
CallWithArg
.short 0x1fb9
.short 0x0806
.short 0x0001
.short 0x0000
@ End of 4 parameters
SetEntityNonPlanarMovement 0x0040
_0807EF80 0x000a
_0807EB44 0x0004
_0807E930 0x0002
StopScript 
_0807EB44 0x0006
_0807E930 0x0007
_0807EDD4 0x0028, 0x0050
Wait 0x001e
_0807EB44 0x0004
_0807E930 0x0002
Wait 0x001e
_0807EB44 0x0002
_0807E930 0x0001
Wait 0x001e
_0807EB44 0x0002
_0807E930 0x0005
_0807EDD4 0x0048, 0x0050
Wait 0x001e
_0807EB44 0x0004
_0807E930 0x0002
Wait 0x001e
_0807EB44 0x0006
_0807E930 0x0003
Wait 0x001e
Jump 0xffaa
StartScript 
Call 0x080639d1
_0807EF80 0x000a
StopScript 
StartScript 
CallWithArg
.short 0x3851
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
_0807EB74 
CallWithArg
.short 0x3851
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
Call 0x08063945
_0807EA94 
JumpIfNot 0x0008
_0807F050 0x0070
WaitPlayerAction8 
_0807E878 
Call 0x08063875
CallWithArg
.short 0x3851
.short 0x0806
.short 0x0000
.short 0x0000
@ End of 4 parameters
Jump 0xffc6
StartScript 
Call 0x08064cc1
_0807EF80 0x000a
_0807EF80 0x0007
_0807EB44 0x0002
_0807E930 0x0000
StopScript 
_0807E944 
_0807E864 
_0807EB74 
Call 0x08064cd9
_0807EA94 
Wait 0x000f
_0807E878 
Jump 0xffea
.short 0x0000
StartScript 
_0807E9D4 
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x0016
TestBit 0x00000001
JumpIf 0x0068
Call 0x0806aee5
Jump 0xffe4
StopScript 
_0807E864 
Call 0x0807df29
CheckLocalFlag 0x00ae
JumpIf 0x0078
Wait 0x000a
_0807E5F8 0x00000001
TextboxNoOverlapFollow 0x4c07
_0807EA94 
_0807E5F8 0x00000010
TextboxNoOverlapFollow 0x4c08
_0807EA94 
_0807E5F8 0x00000020
TextboxNoOverlapFollow 0x4c09
_0807EA94 
_0807E914 0x00000503
Call 0x0807f421
_0807E5F8 0x00000040
Call 0x0807df51
_0807E878 
SetLocalFlag 0x00ae
Jump 0xff88
StopScript 
WaitForSomething2 0x00000002
_0807EB44 0x0002
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
WaitForSomething2 0x00000004
Call 0x0806aed9
WaitForSomething2 0x00000008
Jump 0xff5c
TextboxNoOverlapFollow 0x4c16
_0807EA94 
Call 0x0807df51
_0807E878 
Jump 0xff4a
StartScript 
_0807E9D4 
_0807EF80 0x000a
StopScript 
StartScript 
CheckEntityInteractType 
JumpIf 0x0016
TestBit 0x00000001
JumpIf 0x0068
Call 0x0806aee5
Jump 0xffe4
StopScript 
_0807E864 
Call 0x0807df29
CheckLocalFlag 0x00ae
JumpIf 0x0078
Wait 0x000a
_0807E5F8 0x00000001
TextboxNoOverlapFollow 0x4c07
_0807EA94 
_0807E5F8 0x00000002
TextboxNoOverlapFollow 0x4c08
_0807EA94 
_0807E5F8 0x00000004
TextboxNoOverlapFollow 0x4c09
_0807EA94 
_0807E914 0x00000503
Call 0x0807f421
_0807E5F8 0x00000008
Call 0x0807df51
_0807E878 
SetLocalFlag 0x00ae
Jump 0xff88
StopScript 
WaitForSomething2 0x00000010
_0807EB44 0x0006
CallWithArg
.short 0xaf61
.short 0x0806
.short 0x0008
.short 0x0000
@ End of 4 parameters
WaitForSomething2 0x00000020
Call 0x0806aed9
WaitForSomething2 0x00000040
Jump 0xff5c
TextboxNoOverlapFollow 0x4c15
_0807EA94 
Call 0x0807df51
_0807E878 
Jump 0xff4a
TextboxNoOverlapFollow 0x4c07
_0807EA94 
_0807E5F8 0x00000012
Wait 0x000a
TextboxNoOverlapFollow 0x4c08
_0807EA94 
_0807E5F8 0x00000024
TextboxNoOverlapFollow 0x4c09
_0807EA94 
_0807E5F8 0x00000048
Call 0x080791bd
SCRIPT_END
