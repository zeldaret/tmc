SCRIPT_START gUnk_0800B00C
StartScript 
Call sub_0807F934
Call sub_080A2124
_0807EF80 0x000a
_0807EF80 0x0007
StopScript 
CheckEntityInteractType 
JumpIfNot 0xfffc
_0807E864 
Call sub_0807DF28
CheckGlobalFlag 0x0052
JumpIf 0x004a
CheckGlobalFlag 0x0053
JumpIf 0x0024
TextboxNoOverlap 0x3f32
_0807EA94 
_0807EF80 0x0008
Call Windcrest_Unlock
Wait 0x003c
_0807EB28 0x0b5c
_0807EA94 
SetGlobalFlag 0x0053
Jump 0x003a
TextboxNoOverlap 0x3f32
_0807EA94 
_0807EF80 0x0008
Call Windcrest_Unlock
Wait 0x003c
_0807EB28 0x0b5d
_0807EA94 
Jump 0x001c
TextboxNoOverlap 0x3f32
_0807EA94 
_0807EF80 0x0008
Call Windcrest_Unlock
Wait 0x003c
_0807EB28 0x0b5e
_0807EA94 
Call sub_0807DF50
_0807E878 
_0807EF80 0x0006
SCRIPT_END
.short 0x0000
