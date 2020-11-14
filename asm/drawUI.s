	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0801C344
sub_0801C344: @ 0x0801C344
	push {r4, r5, lr}
	ldr r4, _0801C36C @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	bics r0, r1
	movs r5, #0
	strb r0, [r4]
	bl sub_0801C6B0
	bl sub_0801C85C
	bl sub_0801C4B0
	bl sub_0801C99C
	strb r5, [r4]
	bl sub_0801C1D4
	pop {r4, r5, pc}
	.align 2, 0
_0801C36C: .4byte gUnk_0200AF00
