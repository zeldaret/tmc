SCRIPT_START gUnk_08009C68
StartScript 
_0807EB44 0x0002
SetEntityNonPlanarMovement 0x0100
Call sub_0807F348
StopScript 
WaitForSomething2 0x00000004
_0807EF80 0x0004
_0807EB74 
WaitForSomething2 0x00000004
_0807EB74 
WaitForSomething2 0x00000004
_0807EB74 
_0807EB8C 
_0807EF80 0x0001
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x100a
.short 0x0000
@ End of parameters
_0807EA94 
_0807EF80 0x0000
_0807E5F8 0x00000008
WaitForSomething2 0x00000004
_0807EB8C 
_0807EF80 0x0001
_0807EB8C 
_0807EB44 0x0002
.short 0x0c5c @ TextboxNoOverlapFollowPos with 2 parameters
.short 0x100d
.short 0x0000
@ End of parameters
_0807EA94 
_0807EF80 0x0000
_0807EDD4 0x0028, 0x0060
_0807EDD4 0x0000, 0x0060
Call sub_080536A8
Wait 0x001e
StartScript 
SetGlobalFlag 0x0013
Call sub_0807DF50
Call sub_080791D0
_0807E878 
StopScript 
SCRIPT_END
.short 0x0000
