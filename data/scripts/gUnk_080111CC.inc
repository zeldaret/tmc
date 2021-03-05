SCRIPT_START gUnk_080111CC
StartScript 
_0807EF80 0x0008
SetEntityNonPlanarMovement 0x0100
Call sub_08066D04
StopScript 
Call sub_0807F338
WaitForSomething2 0x00000010
Call sub_08066D14
JumpIf 0x0004
MoveEntityToPlayer 
Call sub_0807F8BC
JumpIf 0x0008
SetEntityPositionRelative 0x00b801f8
.short 0x0879
