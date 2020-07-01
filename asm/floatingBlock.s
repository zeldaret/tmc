	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start FloatingBlock
FloatingBlock: @ 0x080A0554
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _080A0588
	movs r2, #1
	strb r2, [r3, #0xc]
	ldrb r0, [r3, #0xa]
	strb r0, [r3, #0x1e]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r0, r3, #0
	bl UpdateSpriteOrderAndFlip
_080A0588:
	pop {pc}
	.align 2, 0
