SCRIPT_START gUnk_0800D0CE
_0807E914 0x00000000
Call sub_0806C028
TextboxNoOverlapFollowPos 0x123d, 0x0002
_0807EA94 
StartPlayerScript 0x0800d1b4
WaitForSomething2 0x00000008
_0807EB44 0x0002
_0807E914 0x00000000
Call sub_0806C028
SoundReq 0x00cd
Call sub_08068964
ComparePlayerAction 0x0008
JumpIf 0xfffa
SoundReq 0x00f8
_0807E5F8 0x00000010
SetLocalFlag 0x007e
TextboxNoOverlapFollowPos 0x123e, 0x0002
_0807EA94 
.byte 0x31
