SCRIPT_START gUnk_080145B0
StartScript 
SetEntityPositionRelative 0x00e001f8
CheckLocalFlag 0x005e
JumpIf 0x0026
StopScript 
CheckRoomFlag 0x0005
JumpIfNot 0xfffa
_0807E864 
ClearRoomFlag 0x0005
Wait 0x000c
_0807EB8C 
TextboxNoOverlapFollowPos 0x000c432e
_0807EA94 
_0807E878 
Jump 0xffe0
StopScript 
SCRIPT_END
