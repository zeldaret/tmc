	.syntax unified
	ldr r0, _08057694 @ =gScreen
	ldr r1, _08057698 @ =0x00001D48
	strh r1, [r0, #0x2c]
	ldr r1, _0805769C @ =0x00001E48
	strh r1, [r0, #0x14]
	bx lr
	.align 2, 0
_08057694: .4byte gScreen
_08057698: .4byte 0x00001D48
_0805769C: .4byte 0x00001E48
	.syntax divided
