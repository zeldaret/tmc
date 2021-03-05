SCRIPT_START gUnk_0800C350
StartScript 
.short 0x140c @ CallWithArg with 2 parameters
.word sub_0806D658
.short 0x0003
.short 0x0000
@ End of parameters
SetEntityNonPlanarMovement 0x0200
StopScript 
CheckRoomFlag 0x00ff
JumpIfNot 0xfffa
_0807F0C8 0xffff, 0x0000
