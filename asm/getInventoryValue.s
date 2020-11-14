
	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start GetInventoryValue
GetInventoryValue: @ 0x0807CA84
	adds r2, r0, #0
	lsrs r0, r2, #2
	ldr r1, _0807CA9C @ =gUnk_02002B32
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	ands r2, r1
	lsls r2, r2, #1
	asrs r0, r2
	ands r0, r1
	bx lr
		.align 2, 0
_0807CA9C: .4byte gUnk_02002B32
