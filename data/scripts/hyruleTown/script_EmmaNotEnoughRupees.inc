@ Hyrule Town Inn Emma not enough rupees
SCRIPT_START script_EmmaNotEnoughRupees
	MessageFromTarget 0x4507
	Jump script_0800E914
script_0800E910: @ Rent no room
	MessageFromTarget 0x4509
script_0800E914:
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0000
	Jump script_0800E832
