@ Hyrule Town Inn Emma not enough rupees
SCRIPT_START script_EmmaNotEnoughRupees
	MessageFromTarget 0x4507
	Jump script_0800E914
script_0800E910: @ Rent no room
	MessageFromTarget 0x4509
script_0800E914:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0000
	Jump script_0800E832
