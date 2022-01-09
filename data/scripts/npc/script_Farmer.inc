@ Farmer
SCRIPT_START script_Farmer
	BeginBlock
	Call sub_0806BCD4
	DoPostScriptAction 0x000a
	CallWithArg sub_0806BC94, 0x00000000
	EndBlock
script_0800B0E8:
	Call sub_0807F434
	JumpTable script_0800B0E8, script_0800B0F6, script_0800B134
script_0800B0F6:
	SetPlayerIdle
	Call sub_0807DF28
	Call WaitForFrameHiBit
	FacePlayer
	CallWithArg sub_0806BC94, 0x00000004
	Call sub_0806BCE8
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	Call sub_0806BCB8
	CallWithArg sub_0806BC94, 0x00000000
	Jump script_0800B0E8
script_0800B134:
	SetPlayerIdle
	Call sub_0807DF28
	Call WaitForFrameHiBit
	FacePlayer
	CallWithArg sub_0806BC94, 0x00000004
	Call sub_0807F650
	_0807E9F0
.ifndef EU
	JumpIfNot script_0800B160
.endif
	Call sub_0806BCC0
script_0800B160:
	Call sub_0807DF50
	EnablePlayerControl
	Call sub_0806BCB8
	CallWithArg sub_0806BC94, 0x00000000
	Jump script_0800B0E8
