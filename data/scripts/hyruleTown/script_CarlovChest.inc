@ Hyrule Town Picolyte Bottle object in Carlov Chest room
SCRIPT_START script_CarlovChest
	BeginBlock
	EndBlock
script_080148F4:
	CheckRoomFlag 0x0000
	JumpIfNot script_080148F4
	ClearRoomFlag 0x0000
	Call sub_0806E140
	JumpIfNot script_08014932
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08014938
	SetPlayerIdle
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	Call sub_0806E1E0
	WaitUntilTextboxCloses
	Wait 0x0018
	EnablePlayerControl
	Jump script_080148F4
script_08014932:
	WaitUntilTextboxCloses
	Jump script_08014938
script_08014938:
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	Call sub_0806E1FC
	Wait 0x001e
	Call EnablePauseMenu
SCRIPT_END
	.2byte 0x0000
