	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080451CC
sub_080451CC: @ 0x080451CC
	ldrb r3, [r0, #0x10]
	movs r2, #0xfe
	ands r2, r3
	strb r2, [r1, #0x10]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x2c]
	ldr r2, [r0, #0x30]
	str r2, [r1, #0x30]
	ldr r2, [r0, #0x34]
	str r2, [r1, #0x34]
	adds r0, #0x68
	adds r1, #0x68
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	ldrb r2, [r0, #7]
	strb r2, [r1, #7]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
