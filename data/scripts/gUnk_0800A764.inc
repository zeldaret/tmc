SCRIPT_START gUnk_0800A764
StartScript 
_0807E864 
Call 0x0807df29
SetEntityPositionRelative 0x01b800f8
Call 0x0807f845
StopScript 
Wait 0x003c
SoundReq 0x00f6
_0807E778 0x0004
DoFade7 
WaitFor_2 
_0807E5F8 0x00000001
SoundReq 0x00f7
_0807E778 0x0002
DoFade6 
WaitFor_2 
Wait 0x001e
_0807E5F8 0x00000002
Wait 0x0014
_0807E5F8 0x00000004
Wait 0x000a
_0807E5F8 0x00000008
Wait 0x0005
_0807E5F8 0x00000010
Wait 0x0002
_0807E5F8 0x00000020
Wait 0x0078
.short 0x140c @ CallWithArg with 4 parameters
.short 0xda1d
.short 0x0806
.short 0x000c
.short 0x0000
@ End of parameters
_0807EF80 0x0006
SCRIPT_END
