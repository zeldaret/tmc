	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	push {r4, lr}
	adds r4, r0, #0
	bl GreatFairy_InitializeAnimation
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	strb r1, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	ldr r0, _080871A0 @ =gUnk_0812079C
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	.align 2, 0
_080871A0: .4byte gUnk_0812079C
.syntax divided
