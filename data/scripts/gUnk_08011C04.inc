SCRIPT_START gUnk_08011C04
CheckRoomFlag 0x0064
JumpIfNot 0xfffa
SoundReq0x80100000 
_0807E864 
Wait 0x003c
CameraTargetEntity 
Wait 0x003c
Call Simon_CreateChest
Wait 0x003c
CameraTargetPlayer 
_0807E878 
CheckLocalFlag 0x0001
JumpIfNot 0xfffa
_0807E888 
WaitPlayerAction8 
Wait 0x001e
CallWithArg sub_0806C2A0, 0x00000000
WaitFor_2 
Wait 0x003c
Call sub_0806C280
SCRIPT_END
