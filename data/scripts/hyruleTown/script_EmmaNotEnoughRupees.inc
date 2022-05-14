@ Hyrule Town Inn Emma not enough rupees
SCRIPT_START script_EmmaNotEnoughRupees
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x07
	Jump script_0800E914
script_0800E910: @ Rent no room
	MessageFromTarget TEXT_HAPPY_HEARTH, 0x09
script_0800E914:
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0000
	Jump script_0800E832
