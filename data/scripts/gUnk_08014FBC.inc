SCRIPT_START gUnk_08014FBC
StartScript 
SetEntityPositionRelative 0x00e001f8
Call sub_08054564
StopScript 
CheckPlayerInRegion 0x01f8, 0x00a0, 0x2040
JumpIfNot 0xfff6
_0807E864 
Call sub_0807F9A4
Call sub_0807DF28
SoundReq0x80100000 
_0807F0B4 0x0001
CameraTargetEntity 
StartPlayerScript 0x080152b4
WaitForSomething2 0x00000001
TextboxNoOverlapFollowPos 0x1301, 0x0002
.byte 0x59
